// This is a test harness for your module
// You should do something interesting in this harness
// to test out the module and to provide instructions
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});


// TODO: write your module tests here
var TiSpinKit = require('com.bf.TiSpinKit');
var actInd = TiSpinKit.createActivityIndicator({
	top: 200, left: 100,
	size: 20,
	// STYLES
	// Plane
	// CircleFlip
	// Bounce
	// Wave
	// WanderingCubes
	// Pulse
	// ChasingDots
	// ThreeBounce
	// Circle
	// 9CubeGrid
	// WordPress
	// FadingCircle
	// FadingCircleAlt
	// Arc
	// ArcAlt - default
	style: "FadingCircle",
	color: "red"
});

win.add(actInd);
win.open();
