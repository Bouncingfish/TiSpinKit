
# TiSpinKit

### Screenshot
![Screenshot](https://github.com/Bouncingfish/TiSpinKit/blob/master/example.gif)

## Description

Simple loading spinners based on SpinKit. 

## Usage

To access this module from a Titanium project, you would do the following:

    var tispinkit = require("com.bf.TiSpinKit");

## Example

    var win = Ti.UI.createWindow({
    	backgroundColor: '#3498db'
    });

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
    		top: 20, 
    		left: 20,
    		width: 70, 
    		height: 70,
    		size: 50,
    		color: "white",
    		style: styles[i]
    	});
    	view.add(actInd);
    }
    
    win.add(view);
    win.open();

## License

<pre>
Copyright 2016 BouncingFish

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
</pre>

