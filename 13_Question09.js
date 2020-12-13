// JavaScript source code
var n = 0;

setInterval(second, 1000);

function second() {
    n += 1;
    postMessage(n);
}