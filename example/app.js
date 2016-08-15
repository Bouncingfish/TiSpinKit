// This is a test harness for your module
// You should do something interesting in this harness
// to test out the module and to provide instructions
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor: '#3498db'
});


// TODO: write your module tests here
var TiSpinKit = require('com.bf.TiSpinKit');
var view = Ti.UI.createView({
	top: 20,
	height: Ti.UI.SIZE,
	layout: 'horizontal'
});

var styles = [
	"Plane",
	"CircleFlip",
	"Bounce",
	"Wave",
	"WanderingCubes",
	"Pulse",
	"ChasingDots",
	"ThreeBounce",
	"Circle",
	"9CubeGrid",
	"WordPress",
	"FadingCircle",
	"FadingCircleAlt",
	"Arc",
	"ArcAlt" // default
];

for (var i = 0, maxi = styles.length; i < maxi; i++) {
	var actInd = TiSpinKit.createActivityIndicator({
		top: 20, left: 20,
		width: 70, height: 70, // FIXME: have to use these properties to set frame
		size: 50,
		color: "white",
		style: styles[i]
	});
	view.add(actInd);
}

win.add(view);
win.open();
