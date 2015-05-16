settimer(func {

# Add listener for bomb impact
    setlistener("sim/armament/weapons/impact", func(n) {
        var impact = n.getValue();
        var solid = getprop(impact ~ "/material/solid");

        if (solid){
            var long = getprop(impact ~ "/impact/longitude-deg");    
            var lat = getprop(impact ~ "/impact/latitude-deg");

            geo.put_model(
                "Aircraft/F-117/Models/crater.ac",
                lat, 
                long
                );
        }
    });

}, 0);