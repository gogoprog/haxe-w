(function ($global) { "use strict";
function Test_main() {
	var c = window.document.querySelector("canvas");
	w_W_W.reset(c);
	w_W_W.camera({ x : 9, y : 8, z : 20, rx : -13, ry : 15});
	w_W_W.light({ x : 0.5, y : -1, z : -0.5});
	w_W_W.cube({ x : 5, w : 3, h : .5, d : .5, b : "f44"});
	w_W_W.sphere({ x : 0, size : 4, b : "388"});
	w_W_W.pyramid({ x : -5, size : 4, b : "909"});
	w_W_W.add("custom_model",{ vertices : [-.5,-.5,.5,.5,-.5,.5,0,.5,0,.5,-.5,.5,.5,-.5,-.5,0,.5,0,.5,-.5,-.5,-.5,-.5,-.5,0,.5,0,-.5,-.5,-.5,-.5,-.5,.5,0,.5,0], uv : [0,0,1,0,.5,1,0,0,1,0,.5,1,0,0,1,0,.5,1,0,0,1,0,.5,1]});
	w_W_W.custom_model({ x : 1, y : 5, z : -15, size : 10});
}
var haxe_iterators_ArrayIterator = function(array) {
	this.current = 0;
	this.array = array;
};
haxe_iterators_ArrayIterator.prototype = {
	hasNext: function() {
		return this.current < this.array.length;
	}
	,next: function() {
		return this.array[this.current++];
	}
};
var w_W_W = W;
Test_main();
})({});
