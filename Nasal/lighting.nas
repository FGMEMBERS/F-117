var beacon = aircraft.light.new( "/sim/model/lights/beacon", [0.5, 0.4,],
                                "/controls/lighting/beacon" );

beacon_switch = props.globals.getNode("controls/lighting/beacon", 1);