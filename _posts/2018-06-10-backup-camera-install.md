---
layout: post
title: "Installation of Wired Backup Camera"
date: 2018-06-10 00:00:00
description: The installation of an wired backup camera in my 1977 Toyota Chinook with simple automatic enable from reverse light signal.
comments: true
tags: 
 - electronics
 - chinook
 - mechanical
 - vehicles
---

# Preface
The RV I restored called [Paris]({{ site.baseurl }}/2017/09/toyota-chinook-paris-restore){:target="_blank"} needed a backup camera due to the difficulty of seeing exactly what was behind me in tight parking situations. A simple $20 wired [ZSMJ Backup Camera](http://a.co/aM2Q0GZ){:target="_blank"} with a 4.3" LCD was used.


# Camera
There are plentiful options when browsing Amazon for a backup camera. I was pleasantly surprised at how low cost the camera systems are and settled on a round camera that could easily be mounted in a 3/4" hole drilled in the rigid metal bumper. The camera has 8 white LEDs that illuminate to improve low light performance at night.

The camera is wired to the reverse lights so it only gets turned on when reversing. The yellow analog video wire has a 12V wire embedded to power the LCD in the front of the vehicle from the hacked in wire on the reverse lights in the rear.

Here are some pictures from the manufacturer that detail the camera kit with a schematic indicating how to connect the wires.

<div>
	<a rel="camera" href="{{ site.baseurl }}/images/backup_cam/big/16.jpg" class="swipebox" title="Camera and LCD">
	<img src="{{ site.baseurl }}/images/backup_cam/small/16.jpg" alt="image"></a>
	<a rel="camera" href="{{ site.baseurl }}/images/backup_cam/big/17.jpg" class="swipebox" title="Wiring schematic">
	<img src="{{ site.baseurl }}/images/backup_cam/small/17.jpg" alt="image"></a>
	<a rel="camera" href="{{ site.baseurl }}/images/backup_cam/big/18.jpg" class="swipebox" title="LCD and wiring">
	<img src="{{ site.baseurl }}/images/backup_cam/small/18.jpg" alt="image"></a>
	<a rel="camera" href="{{ site.baseurl }}/images/backup_cam/big/19.jpg" class="swipebox" title="Small round camera">
	<img src="{{ site.baseurl }}/images/backup_cam/small/19.jpg" alt="image"></a>
</div>

# Wiring and Installation

## Bench Testing
The wiring was cleaned up a bit to have only a single power ground wire in the front near the LCD and power and ground wires in the back to hack into the reverse lights. When powered the entire unit (camera, LEDs, and LCD) consume 400mA at 12.3V which is right around 5W of power. The camera has some basic adjustments using the buttons on the back of the LCD for brightness, saturation, etc. that can be tuned to your liking but the default seemed to work well for me.

<div>
	<a rel="bench_test" href="{{ site.baseurl }}/images/backup_cam/big/20.jpg" class="swipebox" title="Cleaned up wiring">
	<img src="{{ site.baseurl }}/images/backup_cam/small/20.jpg" alt="image"></a>
	<a rel="bench_test" href="{{ site.baseurl }}/images/backup_cam/big/2.jpg" class="swipebox" title="Connectors near LCD">
	<img src="{{ site.baseurl }}/images/backup_cam/small/2.jpg" alt="image"></a>
	<a rel="bench_test" href="{{ site.baseurl }}/images/backup_cam/big/3.jpg" class="swipebox" title="Connectors near camera">
	<img src="{{ site.baseurl }}/images/backup_cam/small/3.jpg" alt="image"></a>
	<a rel="bench_test" href="{{ site.baseurl }}/images/backup_cam/big/4.jpg" class="swipebox" title="About 5W power consumption">
	<img src="{{ site.baseurl }}/images/backup_cam/small/4.jpg" alt="image"></a>
	<a rel="bench_test" href="{{ site.baseurl }}/images/backup_cam/big/5.jpg" class="swipebox" title="A quick bench test with a MacBeth chart">
	<img src="{{ site.baseurl }}/images/backup_cam/small/5.jpg" alt="image"></a>
</div>

## Drilling a Hole
The camera mounts almost flush in a 3/4" hole drilled into a thick metal bumper. Using a bi-metal hole saw and a bit of lubricating oil cut through it like butter which then needed to be cleaned up a bit with a rounded file.

<div>
	<a rel="hole" href="{{ site.baseurl }}/images/backup_cam/big/1.jpg" class="swipebox" title="B-metal hole saw">
	<img src="{{ site.baseurl }}/images/backup_cam/small/1.jpg" alt="image"></a>
	<a rel="hole" href="{{ site.baseurl }}/images/backup_cam/big/7.jpg" class="swipebox" title="Camera and wiring installed">
	<img src="{{ site.baseurl }}/images/backup_cam/small/7.jpg" alt="image"></a>
	<a rel="hole" href="{{ site.baseurl }}/images/backup_cam/big/6.jpg" class="swipebox" title="Camera installed">
	<img src="{{ site.baseurl }}/images/backup_cam/small/6.jpg" alt="image"></a>
</div>

## Wiring
I am a stickler for clean tidy wiring so the wiring is fish taped through the frame of the truck in parallel with the large 4 AWG power wired to my AC inverter in the cabin. The RCA cables were made sure to be electrical taped to avoid the elements as those would surely rust and fail. The wiring harness for the rear tail lights on the driver's side was hacked into. Since I was the one that cleaned up this wiring I knew the red/yellow wire was the reverse lights. The camera power wire was soldered on and electrical taped while the ground was attached using an existing self tapping screw at the AC inverter's ground. 

The wire that runs to the front is the analog video cable with embedded power snaked up through an existing hole in the driver's floorboard and sealed up to prevent the wire from rubbing against the metal hole. Then it goes up near the radio where the additional ground is connected and back down near the heater core to the LCD.

The LCD was mounted with the provided sticky 3M tape on the platform I intended to be a "center console" of sorts. Hopefully the sticky tape holds up on the wood platform.

<div>
	<a rel="wiring" href="{{ site.baseurl }}/images/backup_cam/big/8.jpg" class="swipebox" title="RCA cables electrical taped">
	<img src="{{ site.baseurl }}/images/backup_cam/small/8.jpg" alt="image"></a>
	<a rel="wiring" href="{{ site.baseurl }}/images/backup_cam/big/9.jpg" class="swipebox" title="Hacking into reverse tail light wire">
	<img src="{{ site.baseurl }}/images/backup_cam/small/9.jpg" alt="image"></a>
	<a rel="wiring" href="{{ site.baseurl }}/images/backup_cam/big/10.jpg" class="swipebox" title="Re-taping the tail light wiring">
	<img src="{{ site.baseurl }}/images/backup_cam/small/10.jpg" alt="image"></a>
	<a rel="wiring" href="{{ site.baseurl }}/images/backup_cam/big/11.jpg" class="swipebox" title="Analog video wire snaking through frame">
	<img src="{{ site.baseurl }}/images/backup_cam/small/11.jpg" alt="image"></a>
	<a rel="wiring" href="{{ site.baseurl }}/images/backup_cam/big/12.jpg" class="swipebox" title="Initial LCD placement">
	<img src="{{ site.baseurl }}/images/backup_cam/small/12.jpg" alt="image"></a>
</div>

# Final Product
A simple glance down near the wooden center console platform shows a clear display of any objects at the rear. 

<div>
	<a rel="final" href="{{ site.baseurl }}/images/backup_cam/big/13.jpg" class="swipebox" title="Camera fully installed LCD off">
	<img src="{{ site.baseurl }}/images/backup_cam/small/13.jpg" alt="image"></a>
	<a rel="final" href="{{ site.baseurl }}/images/backup_cam/big/14.jpg" class="swipebox" title="Close up of LCD with camera on">
	<img src="{{ site.baseurl }}/images/backup_cam/small/14.jpg" alt="image"></a>
	<a rel="final" href="{{ site.baseurl }}/images/backup_cam/big/15.jpg" class="swipebox" title="Camera fully installed LCD on">
	<img src="{{ site.baseurl }}/images/backup_cam/small/15.jpg" alt="image"></a>
</div>

## Automatic Turn On/Off
Here is a short video of putting the truck into reverse to illustrate the functionality. The camera takes only about 1 second to start displaying video. 

<div class="intrinsic-container intrinsic-container-16x9">
  <iframe src="https://www.youtube.com/embed/Brdaw7iRNkk" frameborder="0" allowfullscreen></iframe>
</div>







