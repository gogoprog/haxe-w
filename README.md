# haxe-w

Haxe externs for [W the micro WebGL2 framework](https://xem.github.io/W/)

## Requirements

 *  Haxe 4

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
    W.add("custom_model", {
        vertices: [
            -.5, -.5, .5, .5, -.5, .5,  0, .5, 0,
            .5, -.5, .5, .5, -.5, -.5,  0, .5, 0,
            .5, -.5, -.5, -.5, -.5, -.5,  0, .5, 0,
            -.5, -.5, -.5, -.5, -.5, .5,  0, .5, 0,
        ],
        uv: [
            0, 0, 1, 0, .5, 1,
            0, 0, 1, 0, .5, 1,
            0, 0, 1, 0, .5, 1,
            0, 0, 1, 0, .5, 1,
        ]
    });
    W.custom_model({x:1, y:5, z:-15, size:10});
}

```

produces

![Image](https://gogoprog.github.io/haxe-w/example.png)
