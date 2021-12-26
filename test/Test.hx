import w.W;
import js.Browser.document;

function main() {
    var c:js.html.CanvasElement = cast document.querySelector("canvas");
    W.reset(c);
    W.camera({x:9, y:8, z:20, rx:-13, ry:15});
    W.cube({x:5, w:2, h:.5, d:.5, b:"f44"});
    W.sphere({x:0, size:2, b:"388"});
    W.pyramid({x:-5, size:4, b:"909"});
}
