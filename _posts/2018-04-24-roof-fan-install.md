---
layout: post
title: "Installation and Modification of RV Roof Fan"
date: 2018-04-24 00:00:00
description: The installation of an RV roof fan in my 1977 Toyota Chinook with pulse width modulation speed control modification.
comments: true
tags: 
 - electronics
 - chinook
 - mechanical
 - vehicles
---

# Preface
The RV I restored called [Paris]({{ site.baseurl }}/2017/09/toyota-chinook-paris-restore){:target="_blank"} didn't have a roof fan stock or after restoration. With the summer months coming up hot air needs to escape from the roof to keep it nice and cool inside the cabin. I was hesitant to make any holes in the roof during restoration to provide optimal protection from leaks but the hot weather supersedes!

# Materials and Supplies
There are only two supplies uses: the fan itself and a small circuit board that controls the speed of the fan motor.

## Ventline Vanair Trailer Roof Vent
The [Ventline Vanair Trailer Roof Vent](https://www.etrailer.com/Enclosed-Trailer-Parts/Ventline/VP-543SP.html){:target="_blank"} from etrailer was used rather than the standard 15x15" square fans because they are too big for my tiny RV and the weight would potentially cause the pop-up roof to sag.

See etrailers website for more information on this fan or peruse the pictures below. The fan operates from 12V and at maximum speed it pulls 1.5A (18W total power consumption). The stock functionality of this fan is either on or off but with the help of the circuit board described below the speed is adjustable to reduce noise and power consumption.

<div>
	<a rel="ventline" href="{{ site.baseurl }}/images/fan/large/21.jpg" class="swipebox" title="Fan from side">
	<img src="{{ site.baseurl }}/images/fan/small/21.jpg" alt="image"></a>
	<a rel="ventline" href="{{ site.baseurl }}/images/fan/large/22.jpg" class="swipebox" title="Interior trim piece removed">
	<img src="{{ site.baseurl }}/images/fan/small/22.jpg" alt="image"></a>
	<a rel="ventline" href="{{ site.baseurl }}/images/fan/large/23.jpg" class="swipebox" title="Trim removed and fan updside down">
	<img src="{{ site.baseurl }}/images/fan/small/23.jpg" alt="image"></a>
	<a rel="ventline" href="{{ site.baseurl }}/images/fan/large/24.jpg" class="swipebox" title="Vent closed">
	<img src="{{ site.baseurl }}/images/fan/small/24.jpg" alt="image"></a>
	<a rel="ventline" href="{{ site.baseurl }}/images/fan/large/25.jpg" class="swipebox" title="Vent open">
	<img src="{{ site.baseurl }}/images/fan/small/25.jpg" alt="image"></a>
	<a rel="ventline" href="{{ site.baseurl }}/images/fan/large/26.jpg" class="swipebox" title="Vent open with fan blades through opening">
	<img src="{{ site.baseurl }}/images/fan/small/26.jpg" alt="image"></a>
</div>

## 2V 2A PWM Motor Controller
To control the speed of the fan motor a small [12V 2A PWM Motor Controller](https://www.ebay.com/sch/i.html?__isEmpty=&_from=R40&_trksid=p2334524.m570.l1313.TR0.TRC0.H0.Xpwm+motor+controller+dc+2a.TRS1&_nkw=pwm+motor+controller+dc+2a&_sacat=0&LH_TitleDesc=0&__isEmpty=&_osacat=0&_odkw=pwm+motor+controller+dc+mini&LH_TitleDesc=0){:target="_blank"} was used. The link brings you to an eBay search that should show a PWM control similar to the one pictured below.

The switch from the stock fan setup was removed because control knob on this PWM controller has an OFF option if it is turned all the way to the left.

<div>
	<a rel="pwmcontroller" href="{{ site.baseurl }}/images/fan/large/1.jpg" class="swipebox" title="Cheap $6 brushed DC motor PWM controller from eBay">
	<img src="{{ site.baseurl }}/images/fan/small/1.jpg" alt="image"></a>
</div>

# Controlling Fan Speed with Pulse Width Modulation (PWM)
Using PWM to control a DC brushed motor is actually quite simple: periodically apply voltage to the motor then remove voltage. In other words we could create a PWM controller with a simple toggle switch: manually flip the switch on then off, on then off, on then off, and the motor speed never reaches maximum. Real PWM control does this just much much faster, on the order of 1,000 to 100,000 times per second depending on the system.

# Modifying PWM Controller for Installation
To install the PWM controller in the fan housing the 4 wire screw terminal and potentiometer were removed with a soldering iron. The potentiometer was then reconnected with a few inches of wire so it could be mounted elsewhere. The capacitor was also moved to the bottom of the PCB to prevent interference with the fan motor.

<div>
	<a rel="modpwmcontroller" href="{{ site.baseurl }}/images/fan/large/2.jpg" class="swipebox" title="Connector and control potentiometer removed for custom install">
	<img src="{{ site.baseurl }}/images/fan/small/2.jpg" alt="image"></a>
	<a rel="modpwmcontroller" href="{{ site.baseurl }}/images/fan/large/3.jpg" class="swipebox" title="Potentiometer installed with wires">
	<img src="{{ site.baseurl }}/images/fan/small/3.jpg" alt="image"></a>
	<a rel="modpwmcontroller" href="{{ site.baseurl }}/images/fan/large/6.jpg" class="swipebox" title="Capacitor moved to other side of board to prevent interference with fan motor">
	<img src="{{ site.baseurl }}/images/fan/small/6.jpg" alt="image"></a>
</div>

# Installing the PWM Controller
There is a metal bracket inside of the fan housing that was the perfect size to mount the PWM controller's PCB. Four holes were drilled in this bracket and plastic standoffs were secured with screws from the back side. The PCB was mounted to the other side of these standoffs. 

There are 4 input/output terminals on the PWM controller's PCB. The top two are the PWM output to drive the DC motor and the bottom two are 12V DC input from a battery. A zip tie was used to provide some strain relief for the wire leaving the fan housing.

The potentiometer has a small 10mm nut that securely pinches the potentiometer body to the fan's dust screen. This was original placement for the stock on/off switch. This potentiometer control has an OFF option if it is turned all the way to the left so the stock switch was removed.

<div>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/4.jpg" class="swipebox" title="PCB standoffs for mounting">
	<img src="{{ site.baseurl }}/images/fan/small/4.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/5.jpg" class="swipebox" title="Standoffs secured with screws">
	<img src="{{ site.baseurl }}/images/fan/small/5.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/8.jpg" class="swipebox" title="Controller mounted to standoffs">
	<img src="{{ site.baseurl }}/images/fan/small/8.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/9.jpg" class="swipebox" title="Capacitor moved to the bottom or it would hit motor">
	<img src="{{ site.baseurl }}/images/fan/small/9.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/10.jpg" class="swipebox" title="Motor wired to top two terminals">
	<img src="{{ site.baseurl }}/images/fan/small/10.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/11.jpg" class="swipebox" title="12V input to bottom two terminals, secured with zip ties for strain relief">
	<img src="{{ site.baseurl }}/images/fan/small/11.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/12.jpg" class="swipebox" title="Anderson connectors ready to be soldered">
	<img src="{{ site.baseurl }}/images/fan/small/12.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/13.jpg" class="swipebox" title="Anderson connectors soldered">
	<img src="{{ site.baseurl }}/images/fan/small/13.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/14.jpg" class="swipebox" title="Anderson connectors installed in housing">
	<img src="{{ site.baseurl }}/images/fan/small/14.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/15.jpg" class="swipebox" title="Potentiometer installed from rear">
	<img src="{{ site.baseurl }}/images/fan/small/15.jpg" alt="image"></a>
	<a rel="installpwmcontroller" href="{{ site.baseurl }}/images/fan/large/16.jpg" class="swipebox" title="Potentiometer from front with dust shield installed">
	<img src="{{ site.baseurl }}/images/fan/small/16.jpg" alt="image"></a>
</div>

# Testing Fan Speed Control
Before installing the fan in the RV roof the speed control functionality was tested on a lab bench with a standard variable voltage power supply set to 12.2V and 1.98A current limit. 

<div>
	<a rel="testspeed" href="{{ site.baseurl }}/images/fan/large/18.jpg" class="swipebox" title="Power supply connected for testing">
	<img src="{{ site.baseurl }}/images/fan/small/18.jpg" alt="image"></a>
	<a rel="testspeed" href="{{ site.baseurl }}/images/fan/large/19.jpg" class="swipebox" title="Power supplyl set at 12.2V with 1.98A current limit">
	<img src="{{ site.baseurl }}/images/fan/small/19.jpg" alt="image"></a>
</div>

Here is a video of the fan control in action with some awesome paper tails. The fan is initially off, turned on (listen for the click), increased to maximum speed, and then decreased to an off state. The power supply shows the current being draw at various speeds with 1.5A being maximum.

<div class="intrinsic-container intrinsic-container-16x9">
  <iframe src="https://www.youtube.com/embed/TK0-Itrnijo" frameborder="0" allowfullscreen></iframe>
</div>

# Installing Roof Fan in RV Roof
This roof fan essentially clamps to the roof from the inside and outside and is secured with screws around the perimeter of the fan.

## Wood Ring for Securing Fan
A wood ring spacer was made to fit inside the empty space between the thin fiberglass roof and interior roof to ensure rigidity. It was cut from a small sheet of plywood with a jigsaw. Four sheets glued on top of each other was about the right thickness for this empty space. The circle was then cut in half so it can fit into the hole to be cut in the roof.

<div>
	<a rel="woodring" href="{{ site.baseurl }}/images/fan/large/30.jpg" class="swipebox" title="Wood rings cut and glued for specific thickness inside roof">
	<img src="{{ site.baseurl }}/images/fan/small/30.jpg" alt="image"></a>
	<a rel="woodring" href="{{ site.baseurl }}/images/fan/large/27.jpg" class="swipebox" title="Rings being glued together">
	<img src="{{ site.baseurl }}/images/fan/small/27.jpg" alt="image"></a>
	<a rel="woodring" href="{{ site.baseurl }}/images/fan/large/28.jpg" class="swipebox" title="Rings being glued together weighted with books">
	<img src="{{ site.baseurl }}/images/fan/small/28.jpg" alt="image"></a>
	<a rel="woodring" href="{{ site.baseurl }}/images/fan/large/29.jpg" class="swipebox" title="Final wood ring design">
	<img src="{{ site.baseurl }}/images/fan/small/29.jpg" alt="image"></a>
</div>

## Cutting Hole in Roof
Description

<div>
	<a rel="replaceme" href="{{ site.baseurl }}/images/fan/large/number.jpg" class="swipebox" title="description">
	<img src="{{ site.baseurl }}/images/fan/small/number.jpg" alt="image"></a>
</div>

## Securing and Sealing
Description

<div>
	<a rel="replaceme" href="{{ site.baseurl }}/images/fan/large/number.jpg" class="swipebox" title="description">
	<img src="{{ site.baseurl }}/images/fan/small/number.jpg" alt="image"></a>
</div>

## Wiring to Fuse Block
Description

<div>
	<a rel="replaceme" href="{{ site.baseurl }}/images/fan/large/number.jpg" class="swipebox" title="description">
	<img src="{{ site.baseurl }}/images/fan/small/number.jpg" alt="image"></a>
</div>

# Conclusions and Thoughts
Description 





