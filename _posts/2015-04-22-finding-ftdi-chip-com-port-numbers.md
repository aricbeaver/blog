---
layout: post
title: "Finding FTDI Chip COM Port Numbers with LabVIEW"
date: 2015-04-22 00:00:00
description: I was searching for any easy way to obtain the COM port numbers of FTDI Chips to know whether or not to attempt to connect to a device. FTDI Chip has LabVIEW drivers but they only use an ID number (Handle) to communicate with the devices. Here is how to do it for those interested.
comments: true
tags: 
 - electronics
 - code
---

I was searching for any easy way to obtain the COM port numbers of FTDI Chips to know whether or not to attempt to connect to a device. FTDI Chip has LabVIEW drivers on [this page](http://www.ftdichip.com/Support/SoftwareExamples/CodeExamples/LabVIEW.htm){:target="_blank"} but they only use an ID number (Handle) to communicate with the devices. Here is how to do it for those interested.

Referencing the FTDI Chip manual:

<http://www.ftdichip.com/Support/Documents/ProgramGuides/D2XX_Programmer%27s_Guide%28FT_000071%29.pdf>{:target="_blank"}

All the functions in the manual call "FTD2XX.DLL" which is installed with the FTDI Chip D2XX driver. A call not included in the LabVIEW drivers is the "FT_GetComPortNumber" function which uses a the ID number (Handle) to obtain a COM port number.

Linked below are the edited FTDI Chip drivers with two new VIs.

[Download the VIs here](../../files/FTDI/FTDI.zip)

1) FT_Get_Com_Port_Number.vi
2) Get COM Port Number Demo.vi

Block diagrams:

1)

![](https://ni.i.lithium.com/t5/image/serverpage/image-id/166105iB01B424ACB1C2687/image-size/original?v=1.0&px=-1)

2)

![](https://ni.i.lithium.com/t5/image/serverpage/image-id/166106iBD0C5DE7688B7D95/image-size/original?v=1.0&px=-1) 