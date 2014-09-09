## Doors ##

var baydoors = aircraft.door.new("/controls/baydoors", 6);
var canopy = aircraft.door.new("/controls/canopy", 6, 1);

## Gear                                        ##
## Prevent gear from being retracted on ground ##

controls.gearDown = func(v) {
    if (v < 0) {
        if(!getprop("gear/gear[1]/wow")) setprop("/controls/gear/gear-down", 0);
    }
    elsif (v > 0) {
        setprop("/controls/gear/gear-down", 1);
    }
}

## Lighting ##
var beacon = aircraft.light.new( "/sim/model/lights/beacon", [0.5, 0.4,],"/controls/lighting/beacon" );
beacon_switch = props.globals.getNode("controls/lighting/beacon", 1);