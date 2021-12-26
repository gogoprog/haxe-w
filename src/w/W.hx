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



@:native("W")
extern class W {
    static public function reset(c:js.html.CanvasElement):Void;
    static public function camera(settings:CameraSettings, ?delay:Float):Void;
    static public function light(settings:LightSettings, ?delay:Float):Void;

    static public function cube(settings:ObjectSettings):Void;
    static public function plane(settings:ObjectSettings):Void;
    static public function billboard(settings:ObjectSettings):Void;
    static public function pyramid(settings:ObjectSettings):Void;
    static public function sphere(settings:ObjectSettings):Void;

    static public function move(settings:MoveSettings, ?delay:Float):Void;
}
