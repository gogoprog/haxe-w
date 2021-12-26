# haxe-w

Haxe externs for [W the micro WebGL2 framework](https://xem.github.io/W/)

## Example

```haxe
import js.Browser.document;
import w.W;

function main() {
    var c:js.html.CanvasElement = cast document.querySelector("canvas");
    W.reset(c);
    W.camera({x:9, y:8, z:20, rx:-13, ry:15});
    W.light({x:0.5, y:-1, z:-0.5});
    W.cube({x:5, w:3, h:.5, d:.5, b:"f44"});
    W.sphere({x:0, size:4, b:"388"});
    W.pyramid({x:-5, size:4, b:"909"});
}
```

produces

![Image](https://gogoprog.github.io/haxe-w/example.png)
