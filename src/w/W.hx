package w;

typedef CameraSettings = {
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var z:Float;
    @:optional var rx:Float;
    @:optional var ry:Float;
    @:optional var rz:Float;
    @:optional var fov:Float;
};

typedef LightSettings = {
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var z:Float;
};

typedef ObjectSettings = {
    @:optional var g:String;
    @:optional var n:String;
    @:optional var size:Float;
    @:optional var w:Float;
    @:optional var h:Float;
    @:optional var d:Float;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var z:Float;
    @:optional var rx:Float;
    @:optional var ry:Float;
    @:optional var rz:Float;
    @:optional var b:String;
    @:optional var t:js.html.Element;
    @:optional var s:Bool;
    @:optional var mode:String;
    @:optional var M:Array<Float>;
    @:optional var ns:Bool;
};

typedef MoveSettings = {
    @:optional var n:String;
    @:optional var size:Float;
    @:optional var w:Float;
    @:optional var h:Float;
    @:optional var d:Float;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var z:Float;
    @:optional var rx:Float;
    @:optional var ry:Float;
    @:optional var rz:Float;
};

typedef ModelData = {
    var vertices:Array<Float>;
    @:optional var indices:Array<Float>;
    var uv:Array<Float>;
};

extern class W_ implements Dynamic {
    public function reset(c:js.html.CanvasElement):Void;
    public function clearColor(color:String):Void;
    public function camera(settings:CameraSettings, ?delay:Float):Void;
    public function light(settings:LightSettings, ?delay:Float):Void;

    public function cube(settings:ObjectSettings):Void;
    public function plane(settings:ObjectSettings):Void;
    public function billboard(settings:ObjectSettings):Void;
    public function pyramid(settings:ObjectSettings):Void;
    public function sphere(settings:ObjectSettings):Void;

    public function add(name:String, data:ModelData):Void;

    public function move(settings:MoveSettings, ?delay:Float):Void;
    public function delete(name:String, ?delay:Float):Void;
}

var W:W_ = js.Syntax.code("W");
