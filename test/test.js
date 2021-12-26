(function ($global) { "use strict";
function Test_main() {
	var c = window.document.querySelector("canvas");
	W.reset(c);
	W.camera({ x : 9, y : 8, z : 20, rx : -13, ry : 15});
	W.light({ x : 0.5, y : -1, z : -0.5});
	W.cube({ x : 5, w : 3, h : .5, d : .5, b : "f44"});
	W.sphere({ x : 0, size : 4, b : "388"});
	W.pyramid({ x : -5, size : 4, b : "909"});
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
Test_main();
})({});
