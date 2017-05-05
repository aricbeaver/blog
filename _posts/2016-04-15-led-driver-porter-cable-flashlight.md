---
layout: post
title: "Replacing Incandescent Bulb with LED in Porter Cable PCXMVC NI-CD/LI-ION Flashlight"
date: 2015-12-08 00:00:00
description: The incandescent bulb in my flashlight that came with my drill/impact set kept burning out. I'll cover replacing it with an LED by making a custom schematic and PCB.
comments: true
tags: 
 - electronics
---

# Description

Incandescent bulbs are slowing being phased out and replaced with LEDs (light emitting diode) due to their superior efficiency and size. Incandescent bulbs are easy to drive; connect a positive voltage on one terminal and a negative on the other and, viola, let there be light. LEDs are more complicated to drive as they required a very specific positive and negative voltage across (around 0.7V for a single diode) and controlled current through its terminals; called anode and cathode. 

# Design Files

The schematic and PCB files can be downloaded in their entirety [here](../../files/LM3409 LED Driver for PC Flashlight/LM3409 LED Driver for PC Flashlight.zip).

# Engineering

The diode used is the [Luminus SST-50 15W LED](http://www.luminus.com/products/Luminus_SST50_Datasheet.pdf){:target="_blank"} mounted on a octagon shape heat sink that was purchased pre-assembled from eBay. The forward voltage of that LED is 3.2V (multiple diodes in series) but the battery voltage of my battery is 18V nominal so it needs to be reduced. The [Texas Instruments LM3409](http://www.ti.com/lit/ds/symlink/lm3409.pdf){:target="_blank"} chip will "buck", i.e. reduce, the voltage based on the RC time constant of R7 and C5. The voltage is reduced by switching the input voltage off and on repetitively then averaging that voltage with the inductor L3. 

The LM3409 also limits the forward current through the LED by monitoring the current through R4. As current increases through R4 the voltage across it also increases and eventually it meets the threshold set by the voltage on the IADJ pin. The LM3409 then limits the current by reducing the time the input voltage is switched on through Q2. Q2 can be thought of as a mechanical switch but operating at a much rate much higher than you could flip your light switch on and off. In this case over two hundred thousand times per second. The resistor R5 is an adjustable resistor that allows the current through the LED to be adjusted, more current more light.  

The UVLO (under voltage lock out) pin of the LM3409 monitors the voltage on the input. If the voltage on that pin falls below its internal voltage threshold of 1.24V the chip will shut off. This feature isn't used because the required minimum operating voltage of the LM3409 is greater than the diode's forward voltage. Additionally, the lithium battery input is 18V = 6 series 3V batteries and since lithium batteries cannot be discharged below usually 2-2.5V without damaging them the minimum input voltage would be 6*2V = 12V. This is a UVLO within the battery pack.

The switch SW1 enables or disables LM3409. The diode D2 doesn't emit light like and LED but instead allows for current to circulate through the LED and inductor L3 during the period of time when the input voltage is switched off. Capacitors C3 and C6 help stabilize the input voltage ripple caused by it being switch off and on repetitively. Inductors resist the instantaneous change in current while capacitors resist the instantaneous change in voltage. 

Since this PCB is two layer PCB and made by a service that names themselves "dirty" it's not the highest quality circuit board. The main draw back of this cheap circuit board is its ability to dissipate heat (power loss in the components) which directly correlates to brightness of the LED. At room temperature (23°C) the current through the LED was adjusted using R5 until the circuit board was measured with a FLIR thermal camera to be 100°C. Unfortunately, the PCB does not offer enough heat sinking capability to take advantage of the full 15W power rating of the Luminus LED used yielding a less bright flashlight, yet still very bright!

# Schematic

Here is the schematic PDF whose components are referenced above.

<iframe src="../../files/LM3409 LED Driver for PC Flashlight/LM3409 LED Driver for PC Flashlight_schematic.pdf" style="width: 100%;height: 500px;border: none;"></iframe>

# PCB Layout

Here is the PCB layout in PDF form. The order of the pages is as follows.

1. Fabrication drawing with dimensions, stackup, drill, and revision information
2. Assembly top layer, shows the location of the components
3. Assembly bottom layer
4. Top copper etch layer
5. Bottom copper etch layer
6. Top pastemask layer, used to determine the location for solder
7. Bottom pastemask layer
8. Top silkscreen layer, used as visible ink indication
9. Bottom silkscreen layer
10. Top soldermask, used to expose copper
11. Bottom soldermask

<iframe src="../../files/LM3409 LED Driver for PC Flashlight/LM3409 LED Driver for PC Flashlight_pcb.pdf" style="width: 100%;height: 500px;border: none;"></iframe>

## Design Software

Cadence PCB Editor was used to design this PCB. They have a free viewer that can be used to open the .BRD file. 

<https://www.cadence.com/content/cadence-www/global/en_US/home/tools/allegro-downloads-start.html>{:target="_blank"}

## Fabrication Company

One of the most hilariously named, yet entirely truthful, PCB fabrication services was used: Dirty PCBs. Even better with the nickname "Dirt Cheap Dirty Boards". Upload the gerber artwork files pay $11.95 and get the boards in 1 month. Free shipping even!

<http://dirtypcbs.com/>{:target="_blank"}

## Gerber Artwork Files

The gerber files are a industry standard digital representation of a circuit board. These files can be viewed using a free program like [Gerbv](http://gerbv.geda-project.org/){:target="_blank"} if desired.

## Layer Stackup

This PCB uses Dirty PCB's standard two layer stackup. Often PCB copper layer thickness is specified in weight (oz) which is not intuitive. 1 oz of copper equals 1.4 mils thickness but does not account for additional plating all PCBs with plated drill holes (vias, pins, etc) have. 1 oz copper foil is 1.4 mils of foil + 0.3 mils of additional plating = 1.7 mils total thickness.

L1 Top - 1.7 mils 
FR4 Dielectric - 58 mils
L2 Bottom - 1.7 mils

Total board thickness is approximately 62 mils with soldermask.

# Pictures

Front of the PCB before assembling all of the components, the LED is the large octagon in the middle. All the drive circuit but the inductor is on the right and the on/off switch + current control is on the left

![](https://lh3.googleusercontent.com/2rZSmGm_8GV38VfStuPJoQ2bY5mrQaxwUj2HXmQs3poqpZyQwyVp1EtrBDQ1NoOZxg4WgykatiFMJS2PXyZBJ3Z4OfYtiGe4WCKWxxg38DHqFMaViQghhzkHfJlZA8WhoUgwUVUrgKD7-ZhzPygaUOl8cbEwr6yji3gSDzwZkfoYzR54TgSe2gX0-YvpbRi0mZWpaiprGDJeKobtdPHhPnoIUhA9WY1Fc234N77pbpwEgfQWPaXDpyshRf_-ACBK7R12fNBD_nR2zPWczn7BKol0TtKcAH7KziSro9x8P65tFaTWJJ7Vys-IC77i3jxK1bDSFQV7Ux60b4OjgNz53J2UaI-vzL8OuttHNS1XNMoGzMo_Tx3VbN_Pg3orkvgitCQuIqrbbfiMwBxXwBw5i6fgBy9qEEC9_I6G9RmUvgo4JViSvOPPYYfZiO_AJYpzh6HyppblBZHy2-6jmfz7EaTvTnkUXzt-sEFnBE6at9idRC1ylOzjoq-q_HR6_4S-pOhF-jfrYgXxP9YKBNcZB2-g5IQG-Iiq_8Xvm4d5aWdo_pTUHmxwp0g_tJVN9_jPgZquy3318Uin5_X4UTaUO2eOQ4Q9jDy92A4mV3XNysk3RJKteTm8=w1206-h541-no)

The back of the PCB only has the inductor and two connectors on the left for input from the battery

![](https://lh3.googleusercontent.com/CoqfNT00wJ6nFlmP0tqCpqunE52cdWoElNbLcwxlzzsHJibzk_OprvqbMHeznfgJDdHTwXbFGcQxWxqo70LiVarumTpeM51HGbcVFH9-5-YnpQplby5tFxT90NcN1a1TCa_GgNJO0rlhDlRKORmeuWei-Uvt0CNKN_tW7LDTIBWoR7GAKotnWdoHp05HhFQsjUfdB475oyJ4Pgr9g_9xBccjUKNOHjqbODDhzmh719y-E14Dqc9ttiaxEqp0JexRMyUe0SsiJ8ZL2LkX2qskcyGHtMYqWgDirr9HkgCqbXbfzbQyfW4WnO9EfwneHFMeeXKBUp9FD3VBgBhdYW2tgLUSX23wrhjbKlIfT_aGXY6M-B_Yw4pUoyOArcpZUty8rcq2rp1YoS0akOw-xMTSxX1d_qVE93dSRL0FSET9kjUxJQ32EEaU5g-hfWkS4Kth35FjhjjWU5xN1jBeFWt74dmUtk8byvsM16XFOH046zqztMtd01SkQorvVoIG1B8n9ChfN7orxE-TY10P-16M6SSpA20bxd8VHVRHztH_PGPzyX5L8yIkWMiGPOW0hEIOGrHoWcYgL5f41buiDAifWwGR0oiPSkEWqSFGI-kpW-SVTKYPDbuQ=w1206-h512-no)

Inside the flashlight's housing with all the components assembled. The LED isn't a surface mount or through hole part so wires have to be manually cut and stripped to electrically connect the LED. Plastic screws and washers were used to prevent shorts from the screws eating away the soldermask.

![](https://lh3.googleusercontent.com/zHluk8MHeGx-5-pkjzznK4YDnZQicHZycDaARB1YxD7WV03qQf-275986BI8Xj4mRJIvi08GdLw2BrKC8onBG4MQUUGMPaN_8u5UBBdeshhQYi9IfvDU6TXMOAsqb_tkUwpxiDmVJrfiIzJ8s1EuaODOVx6sAUIDlU9rTvUifHUAtwpbFrz0e7Lfo2RvJi_Vq3QsOXdZToEHdEr1Ikz6pSiJ3_ARuwZDGKtGpNae0s1PD1WM8iOuJVj-_Gt7Cjh6T0RFb7qfYx_y1I2ZnTc2jCqOZKkbIfMH1Q8vJR_T6eFJKoXC9-ZGvfIBV2uLR_CXLkit3TDT1I2CgZF3unhUC1wpP9l9B6J79pf9b29pRx4-5kLQ2iuzJ0e3HtcNJxI2fQJBgihlasHvjl0Ejzp0YGyirYySXn-oF7VAeAXv5zAXI6g-zngGT7EJirOLVQimywuANSRqyFpj-jsn7Brv6GzQExLqV_xHOKHxfaW7640amRzWck9i8DmI8SS1FPf36WDaHPbr9k4xUSYh4y1uoud1Ss2MlsgjoYyP5G6RZLBQIodIBXayxefwaIgbbXuzrDvrkPS5yiErocLy79vITrKOLeKWX9h_lXu48jM9qmxSqNQyqetjSfMyQKIsQI783fuGAu16Nu5R0jc2eJM5wCLvibSl1ItNK2wTYu6HAw=w879-h659-no)

Zoom out of the entire flashlight

![](https://lh3.googleusercontent.com/Rx9XMg-K-CGE8ZBwAivPuuzQMmGXsDP14IOT2uU3vuqbsfCrUNR71SY5awWtTaLpknpj01p6f19XY2zJpF7lstW6_vmTl_5KELRkf_FQ0QJ9U4xZSPunGP19l82OhGwB_E_XU-2Ev3QARQRuNGSBNbDV61DahJemn2s2H4MDdW01IA_bS3GLaqPPA1FfXjgMvndgo48dnvoTyDCx60_TCpBZvCpysI2o7HiwjEbV2jIQ1kkqkY1WUcgUGslCEvx9CNEN44j-IpTob8jq_ZV1vOVJya1vfjGGaVKUKejcF9yVimGqIOgqzdIow98pXZstnV63tLwVmAqcvuOokXbdbPCpCXiskZc_lidDYlg2f0GBYYSUSRnwQC-S3J_Zypl6XJjdD7DN5xOLuovLb6bxIxiNBOGBxUl99gkNkx_V3ifaGguzRadzVD1v1IKZxv08qhT55R_wE6r9V-ONGOjR6EoTdYB2XNRkhFoulKx7QR70jUhZ724tcXyvlE3KDp98m8YmwllXywwiT_OrQTKsi5m1V6ckFLInCJmuETY7sBWjw6T_Os_wrW6yIxj0zmblZvpc-6ba1ZFhkQfD2dXZHf4tlS1mSgI1Dp0Y4jPQx_-z0Kfvhata7-sAf599WaA-kRR-5XgwhL98bdcmfkSsxKZYZF01wic2jsE67KjOjA=w879-h659-no)

Zoom out of the entire flashlight with the clear (kind of) cover

![](https://lh3.googleusercontent.com/e-K5OMNgmW68OziciZ_MBgogSyLe6ZSCYxb5xX_ZJ3Yil_swlzgLVgqDlfYR-MpEheO50w9H89cGx-DqATI5lI-l8jYIhVlYD-Wavb7PAfCYP9hIluiaZNog7HQs4pws7mOjx4r7dkH7M4d_wbBSqD5WBPQFzi3_eBS3oW3lV5J-1Uw1Hxl2v0bTbeOaP36A6VtF30aKb-zSYszzpKF_90Jd8gdxfZ2BbhQpxc-ug16_RdHqZ5e6LcHojICGA1yV1k95Akw7c-cpFYEEJ8YYOYe6boD9E6PlvGmt2Qv34T--GYxYrMM-jkB2u7M9j4-RtO5KFWDiackzBFtylz6C2c3ek5xN5swX5anr9vH7qlcAndBYSfiJ8tCzB7-kS9TWrFaJz-wgP2XBqUAW4kW3ZE68kHagwtDqnfb-85OH2yaCDafoRuWuz2p3Q-zuAncTZyRHausSfG0xWCB1xZe0Kbvddil2IPlTWyluZ0jNEr14_Z2nedcGhw8hXPuUuJY678Hg9eU7T9ipHpxeFzK184qDs47SZvNMh_6xGHz4xYtu9U0haXU8tJuJM5zgp7-Z9cZyRSOVPH5s7b89IMKXMPJwc9FQwj_6gTczCiLuQcxB1YHtwZh0jJMtSTwXaQRwMkPQPzs5vUb4ATXQv1KN7uFaC69L_bPBzk9A1VDcag=w495-h659-no)

Side view of the flashlight

![](https://lh3.googleusercontent.com/7m_Vd0p-HA6UBCbkNeNkrnN20ICzMyD7wWBdzMP15Qujna7hgno7IT-9-J1_kRxfZ0AOsZA3jMdsGORCgRB59vcRuEQyAUKYHF8IqqUQ-xo9Ild8AFQmpm7S_uvuH_RE49XkUyerrkSTnhuIprTfucb4eEeYG-tapXt8RmB2sfEVG-SKgox7NssKtuXTN0s74-smGgvGh7hmduCy9-pjXdAcG50yvZxpI3kGIoD__v-Po4RKqRM6DwOCtwnH42F4DXyHOaeVGQ7807uUhCy4GgzcWMqfbYclnIx9JpBk--J4XmjScBXkyeTBqQc5_53s1Uq09EZWKpekEVzhASDd7sliN_RHIgHCnPHTOpto3-ALS28qnVQiHnII6lb3jSqCUO_Y5FfRkAXUdTFyzjSzV34J-dflHWzTzljaG7nf7vRZpCXKeQARh0s0tvRI_ip2jyJbBWYpUtoOCt7Xk_qmSe5umTRejMVOH8IBXblDU1uRP9rsw0TxwdjUzg6WMGxgKuXg20zjnv7JiIfWooO0b8KyOMXmIQT6x3qZjLIyAuaABv9rMA4ypPNxxpOZIlADRhEWtvXW7WC4ExntjAHo7gxQC1_uHEjFOVoSogPuKyMq2mmqaxTwLJUDm3JUfA13_eAf6OI4cz8uxLxHbsdsNAtoYehzjS2SIKNMcEszmQ=w495-h659-no)

This picture was taken when the flashlight was on, you can see the LED array because the camera's exposure was adjusted due to the brightness the LED target.

![](https://lh3.googleusercontent.com/aTaw-2naKakcsOg6OBctH08bGlEjfoujIbDqrBT-Ua_x8BriFKbwIwlf5a8UH9J80MOz9_0Kaid577zQ8w-tdTIQH0_aG7Ivw4SCVCAvLmvbU163tUdxWLdK61zPzGjybVRP3vH2jsBVBC6jpptn0CL9h8A-QyWQtKgK1qzIAJKnEXi14qDogbTAunAY2VDBTRqK8b4PqCbsp3KU11fX19bO90a1F4rbd5Qim5ZNKYo5YhElafS5z-pWQkWzT4FYZqqAQ6VqXYWIwqqqT1JvZLJW8QCoYPc8R5IjDtipoUsSrwYwzf5F7wRwc0UrEocu2n4RZ22BYTs26rxIH0xyBX_Y6b9XzFnzIQyrxvj9sjNex_ABXNWB0u48x1uTjMLkMXT2xbkxiDpKCYUVbsLpprETePHDrCIhrbSlBttTCYPSUdG_xwV4h5L1tpwUL7sg4oOwP2JoyoxxaOOtGgD_Cnv91myrQzektv4V7shTMPSPlwq33JPXRqIsNqlE-7YGlqFykSOeaJ9PLAf-UwULDfJWeevuOFK6tWB6E3Cx__tccGmQ109_db2ZID_LQa1nAc4AQ5wD1RCv2VVzxeLgWf2b1AWHi2w4aYMzavKBoykYBZ6xlPz3NijBBswJwKhl4io2MPwsSoqHGj-xuJgnnBacqHsnzTkx2j5v6sMTDw=w495-h659-no)