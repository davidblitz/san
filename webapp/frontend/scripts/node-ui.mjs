/*jslint browser: true, maxlen: 80 */

var hostname = window.location.hostname;
import client from "./web-socket-client.mjs";
var nodeId = window.location.pathname.substr(1, 1);
var oscillatorFrequencyExpEl =
    document.getElementById("oscillator-frequency-exp");
var oscillatorFrequencyEl =
    document.getElementById("oscillator-frequency");
var audioCtx = new window.AudioContext();

var setUpHidpiCanvas = function (canvasEl) {
    var rect = canvasEl.getBoundingClientRect();
    var w = rect.width;
    var h = rect.height;
    var dpr = window.devicePixelRatio || 1;
    canvasEl.width = w * dpr;
    canvasEl.height = h * dpr;
    canvasEl.style.width = w + "px";
    canvasEl.style.height = h + "px";
    var ctx = canvasEl.getContext("2d");
    ctx.lineWidth = dpr;
    console.log("dpr", dpr, canvasEl.height);
    return ctx;
};

const canvasEl = document.querySelector("canvas");
const canvasCtx = setUpHidpiCanvas(canvasEl);
var oscillatorGain = audioCtx.createGain();
var oscillatorOffset = audioCtx.createConstantSource();
oscillatorOffset.connect(oscillatorGain);
oscillatorOffset.start();
var oscillator = audioCtx.createOscillator();
oscillator.start();
oscillator.connect(oscillatorGain);

var oscillatorGainEl = document.querySelector("#oscillator-gain");

var updateOscillatorFrequency = function () {
    var oscillatorFrequencyExp = oscillatorFrequencyExpEl.value;
    var oscillatorFrequency = Math.pow(2, oscillatorFrequencyExp); // Hz
    oscillatorFrequencyEl.textContent = oscillatorFrequency.toFixed(2);
};

var selectedOscillatorFrequency = function () { // Hz
    updateOscillatorFrequency();
    return parseFloat(oscillatorFrequencyEl.textContent);
};

var selectedOscillatorFrequencyExp = function () {
    return parseFloat(oscillatorFrequencyExpEl.textContent);
};

var setOscillatorFrequency = function (value) {
    oscillatorFrequencyEl.textContent = value;
};

var selectedOscillatorType = function () {
    return document.querySelector("input[name=oscillator-type]:checked").value;
};

var selectedOscillatorGain = function () {
    return parseFloat(oscillatorGainEl.value);
};

var selectedOscillatorOffset = function (i) {
    return parseFloat(document.querySelector("#oscillator-offset").value);
};

var updateOscillator = function () {
    oscillatorOffset.offset.value = selectedOscillatorOffset();
    oscillatorGain.gain.value = selectedOscillatorGain();
    oscillator.type = selectedOscillatorType();
    oscillator.frequency.value = selectedOscillatorFrequency();
};

var showGraph = function () {
    var hiddenGraphEl = document.querySelector(".hidden.graph");
    if (hiddenGraphEl) {
        hiddenGraphEl.classList.remove("hidden");
    }
};

var resumeAudioCtx = function () {
    if (audioCtx.state !== "running") {
        audioCtx.resume();
        showGraph();
    }
};

var showButtonEl = document.querySelector(".graph button.show");
showButtonEl.onclick = resumeAudioCtx;

var oscillatorAnalyser = audioCtx.createAnalyser();
oscillatorGain.connect(oscillatorAnalyser);
oscillatorAnalyser.fftSize = 32768;
var bufferLength = oscillatorAnalyser.frequencyBinCount;
var dataArray = new Uint8Array(bufferLength);

var drawZeroLine = function () {
    canvasCtx.beginPath();
    canvasCtx.moveTo(0, canvasEl.height / 2);
    canvasCtx.lineTo(canvasEl.width, canvasEl.height / 2);
    canvasCtx.strokeStyle = "gray";
    canvasCtx.stroke();
};

var drawWaveForm = function () {
    window.requestAnimationFrame(drawWaveForm);

    if (audioCtx.state === "running") {
        showGraph();
    }

    const w = canvasEl.width;
    const h = canvasEl.height;

    oscillatorAnalyser.getByteTimeDomainData(dataArray);
    canvasCtx.clearRect(0, 0, w, h);

    var sliceWidth = w / bufferLength;
    var x = 0;

    drawZeroLine();

    canvasCtx.beginPath();
    dataArray.forEach(function (value, i) {
        var v = value / 128;
        var y = h - v * h / 2;

        if (i === 0) {
            canvasCtx.moveTo(x, y);
        } else {
            canvasCtx.lineTo(x, y);
        }

        x += sliceWidth;
    });

    canvasCtx.strokeStyle = "green";
    canvasCtx.stroke();
};

drawWaveForm();

var selectedModulator = function () {
    return document.querySelector("input[name=modulator]:checked").value;
};

var selectedOutputGain = function (i) {
    return parseFloat(document.querySelector("#output-gain").value);
};

var selectedOutputDelay = function (i) {
    return parseFloat(document.querySelector("#output-delay").value);
};

var selectedOscillatorDetuningFactor = function () {
    return parseFloat(
        document.querySelector("#oscillator-detuning-factor").value
    );
};

var selectedOutputCompressor = function () {
    return document.querySelector("#output-compressor").checked;
};

var sendSelection = function () {
    var data = {
        type: "audio module",
        modulator: selectedModulator(),
        outputGain: selectedOutputGain(),
        outputDelay: selectedOutputDelay(),
        outputCompressorShouldBeEnabled: selectedOutputCompressor(),
        oscillatorType: selectedOscillatorType(),
        oscillatorOffset: selectedOscillatorOffset(),
        oscillatorGain: selectedOscillatorGain(),
        oscillatorFrequency: selectedOscillatorFrequency(),
        oscillatorFrequencyExp: selectedOscillatorFrequencyExp(),
        oscillatorDetuningFactor: selectedOscillatorDetuningFactor(),
        nodeId: nodeId
    };
    console.log(JSON.stringify(data));

    try {
        client.send(JSON.stringify(data));
    } catch (ignore) {
    }
};

var setOscillatorGain = function (value) {
    oscillatorGainEl.value = value;
};

/* TODO: first rename oscillatorFrequency to oscillatorFrequency
   TODo: maybe also store slider position (or exp)
var selectBaseFreq = function () {
    oscillatorFrequencySliderEl.value = gain;
};
*/

var parseModuleMessage = function (message) {
    if (nodeId !== message.nodeId) {
        return;
    }

    console.log("change gain to: ", message.oscillatorGain);

    setOscillatorGain(message.oscillatorGain);
};

client.onerror = function () {
    console.log("WebSocket error");
};

client.onopen = function () {
    console.log("WebSocket opened");
};

client.onclose = function () {
    console.log("WebSocket closed");
};

client.onmessage = function (e) {
    var message;
    var json;
    if (typeof e.data === "string") {
        json = e.data;
        message = JSON.parse(json);
    } else {
        return;
    }

    if (message.type === "audio module") {
        parseModuleMessage(message);
    }
};

var radioButtonEl = function (moduleName) {
    return document.querySelector("#" + moduleName + "-module");
};

document.querySelectorAll("input").forEach(
    (el) => el.addEventListener("change", function () {
        updateOscillator();
        sendSelection();
        resumeAudioCtx();
    })
);

oscillatorFrequencyExpEl.addEventListener("input", updateOscillatorFrequency);

updateOscillatorFrequency();
updateOscillator();
