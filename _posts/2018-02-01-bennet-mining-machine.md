---
layout: post
title: "Crypto Curreny Mining Machine with Four GTX 1080s"
date: 2018-02-01 00:00:00
description: Building a crypto currency mining machine with four GTX 1080s to mine Lyra2REv2 ASIC-proof currency
comments: true
tags: 
 - electronics
---

# Preface
In an attempt to make some side money, I decided to build a crypto currency mining machine for mining Vertcoin (VTC) Lyra2REv2 ASIC-proof currency. The website [What To Mine](http://whattomine.com/){:target="_blank"} will give you a great idea about what currencies are the most profitable to mine in the current market.

# Components, Cost, and Links
The table below shows the bill of materials and total cost for this build. Building a mining machine is quite the investment! Luckily the video cards were purchased in November of 2017 before the prices tripled in January of 2018.

<div>
	<style>
	table {
	    border-collapse: collapse;
	    word-break: break-all;
	    width: 100%;
	}

	td, th {
	    border: 1px solid #dddddd;
	    text-align: left;
	    padding: 8px;
	}

	tr:nth-child(even) {
	    background-color: #646464;
	}
	</style>

	<table>
	  <tr>
	  	<th>Item</th>
	    <th>Part Number</th>
	    <th>Cost</th>
	  </tr>
	  <tr>
	  	<td>Four Video Cards</td>
	    <td><a href="https://www.newegg.com/Product/Product.aspx?Item=9SIA85V4RS1590&cm_re=EVGA_GeForce_GTX_1080_SC-_-9SIA85V4RS1590-_-Product" target="_blank">EVGA GeForce GTX 1080 SC</a></td>
	    <td>4x $540</td>
	  </tr>
	  <tr>
	  	<td>Computer Case</td>
	    <td><a href="https://www.rosewill.com/rosewill-rsv-l4000b-4u-rackmount-server-case-chassis-for-bitcoin-mining-machine.html" target="_blank">Rosewill RSV-L4000B Mining Case</a></td>
	    <td>$150</td>
	  </tr>
	  <tr>
	  	<td>1000W Power Supply</td>
	    <td><a href="https://www.newegg.com/Product/Product.aspx?Item=N82E16817438010&nm_mc=TEMC-RMA-Approvel&cm_mmc=TEMC-RMA-Approvel-_-Content-_-text-_-" target="_blank">EVGA 120-G2-1000-XR</a></td>
	    <td>$160</td>
	  </tr>
	  <tr>
	  	<td>PCIe Riser Cards</td>
	    <td><a href="http://a.co/h0OACrX" target="_blank">LTERIVER VER006C</a></td>
	    <td>$49</td>
	  </tr>
	  <tr>
	  	<td>Seven Cooling Fans</td>
	    <td><a href="https://www.newegg.com/Product/Product.aspx?Item=N82E16835226033" target="_blank">SilenX EFX-08-12 80mm</a></td>
	    <td>7x $9</td>
	  </tr>
	  <tr>
	  	<td>Motherboard</td>
	    <td><a href="https://www.asus.com/us/Motherboards/Z170-E/" target="_blank">ASUS Z170-E</a></td>
	    <td>$80</td>
	  </tr>
	  <tr>
	  	<td>CPU (used)</td>
	    <td><a href="https://ark.intel.com/products/90741/Intel-Celeron-Processor-G3900-2M-Cache-2_80-GHz" target="_blank">Intel Celeron G3930</a></td>
	    <td>$30</td>
	  </tr>
	  <tr>
	  	<td>Memory (used)</td>
	    <td><a href="http://www.crucial.com/usa/en/ct4g4dfs824a" target="_blank">Crucial CT4G4DFS824A</a></td>
	    <td>$30</td>
	  </tr>
	  <tr>
	  	<td>Operating System</td>
	    <td><a href="https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2380057.m570.l1313.TR12.TRC2.A0.H0.Xwindows+10+key.TRS0&_nkw=windows+10+key&_sacat=0" target="_blank">Windows 10</a></td>
	    <td>$15</td>
	  </tr>
	  <tr>
	  	<td>SSD Hard Drive</td>
	    <td><a href="https://www.newegg.com/Product/Product.aspx?Item=N82E16820156172" target="_blank">Crucial MX500</a></td>
	    <td>$90</td>
	  </tr>
	  <tr>
	  	<td>Total</td>
	    <td><a href=""></a></td>
	    <td>$2827</td>
	  </tr>
	</table>
</div>

# Pictures
Here are the pictures I took during the build process.
<div>
	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/1.jpg" class="swipebox" title="Before unboxing components">
	<img src="{{ site.baseurl}}/images/bennett/small/1.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/2.jpg" class="swipebox" title="Scattered fans before installation">
	<img src="{{ site.baseurl}}/images/bennett/small/2.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/3.jpg" class="swipebox" title="Starting to install fans on middle fan bracket">
	<img src="{{ site.baseurl}}/images/bennett/small/3.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/4.jpg" class="swipebox" title="Motherboard back IO panel">
	<img src="{{ site.baseurl}}/images/bennett/small/4.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/5.jpg" class="swipebox" title="Nice clean wiring on middle fan bracket">
	<img src="{{ site.baseurl}}/images/bennett/small/5.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/6.jpg" class="swipebox" title="Middle fan bracket installed">
	<img src="{{ site.baseurl}}/images/bennett/small/6.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/7.jpg" class="swipebox" title="Rear exhaust fans installed">
	<img src="{{ site.baseurl}}/images/bennett/small/7.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/8.jpg" class="swipebox" title="GTX 1080 unboxing">
	<img src="{{ site.baseurl}}/images/bennett/small/8.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/9.jpg" class="swipebox" title="Intial placement of GTX1080">
	<img src="{{ site.baseurl}}/images/bennett/small/9.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/10.jpg" class="swipebox" title="Two GTX1080 placed">
	<img src="{{ site.baseurl}}/images/bennett/small/10.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/11.jpg" class="swipebox" title="Power supply installed">
	<img src="{{ site.baseurl}}/images/bennett/small/11.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/12.jpg" class="swipebox" title="CPU and memory installed">
	<img src="{{ site.baseurl}}/images/bennett/small/12.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/13.jpg" class="swipebox" title="First riser card wired and installed">
	<img src="{{ site.baseurl}}/images/bennett/small/13.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/14.jpg" class="swipebox" title="All wiring installed, quite a few of them!">
	<img src="{{ site.baseurl}}/images/bennett/small/14.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/15.jpg" class="swipebox" title="SSD drive for Windows 10 OS">
	<img src="{{ site.baseurl}}/images/bennett/small/15.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/16.jpg" class="swipebox" title="SSD drive for Windows 10 OS">
	<img src="{{ site.baseurl}}/images/bennett/small/16.jpg" alt="image"></a>

	<a rel="gallery-build" href="{{ site.baseurl}}/images/bennett/big/17.jpg" class="swipebox" title="All four GTX1080s installed">
	<img src="{{ site.baseurl}}/images/bennett/small/17.jpg" alt="image"></a>
</div>

# Build Information

## Fans
There are seven 80mm and two 120mm fans (120mm not shown in the pictures). Five of the 80mm fans sit in the middle of the Rosewill case and the others exhaust out the rear. The two 120mm fans sit at the front of the case.

## Computer
The CPU and RAM are not critical to this mining machine because the video cards do the heavy lifting. A simple Intel Celeron with only 4GB of RAM is all that is needed. A 250GB SSD is used to host the Windows 10 operating system.

## Video Cards
Four GTX1080 video cards are used to do the intense block chain math for confirming transactions. That many video cards will not fit directly next to each other on a motherboard so they are remotely located using PCIe riser cards specifically for mining. Decoding a block chain doesn't take much network capability just local processing power. The PCIe riser cards convert the PCIe x16 slots on the video card down to a PCIe x1 slot on the motherboard.

Power for the PCIe slot must be connected along with the main 2x4 8pin Molex main power input connector on the video card. Each GTX1080 pulls around 150W of power so sizing the power supply is critical. The PCIe slot power can be connected and daisy chained to the SATA power from the power supply. However, the main power input must be connected directly to the power supply via high current cabling.

## Power Supply
A 1000W power supply was chosen to power the 4 GTX1080s. If more power supplies are needed in the future this power supply will need to be upgraded as each GTX1080 pull around 150W adding up to total computer consumption of ~950W which includes the CPU/motherboard/RAM/etc.

# Windows 10 Install
Windows 10 was chosen because it has native support for Nvidia graphics cards and requires almost no configuration to get up and running. You can buy an arguably counterfeit Windows 10 key on eBay for $15.  

# BIOS Motherboard Settings
There are a few tweaks that are required for the motherboard to support the riser cards with the GTX1080s. 'Angry Chicken' on YouTube did an awesome video that shows the tweaks required to get up and running. 

<blockquote>
	<div class="intrinsic-container intrinsic-container-16x9">
	  <iframe src="https://www.youtube.com/embed/4cd1qoTAHmA" frameborder="0" allowfullscreen></iframe>
	</div>
</blockquote>

# VTC Core Wallet
A wallet is required to store the currency you earn for mining and each currency has a specific wallet. Vertcoin (VTC) has their own called "Vertcoin Core Wallet" which can be downloaded from their website [here](https://vertcoin.org/#downloads){:target="_blank"}. 

Each wallet has an alpha-numeric address which is used to receive money, for example mine is "Vh5NhXwndniGFrKi1hNDkguMCaGHTAsuyS". Feel free to send me some coin :). This address will be input into the software that mines to periodically transfer the payout earned for mining.

# VTC One Click Miner
Software is required to latch onto the mining network. Vertcoin (VTC) has their own called "Vertcoin One Click Miner" which can be downloaded from their github repository [here](https://github.com/vertcoin/One-Click-Miner/releases){:target="_blank"}.

Click "Find P2Pool Nodes" and select the ones that offer the lowest latency and fee of 1% or less. It is recommended to add more than one pool in case the first pool goes down. Next, "Select All Pools" and click "Start". You should immediately see the "Miner Hashrate" start increasing. With my 4 GTX1080 setup I get around 200Mh/s which currently equates to about $15 USD a day - not including electricity costs.

It will take some time for the earned mining credit to show up in the VTC Core Wallet so just be patient. 

# EVGA Precision XOC Monitoring
EVGA has a tool used to monitor the status of the GTX video cards: temperature, clock frequencies, overclocking controls, etc. It can be a useful indicator if the machine is mining or not as the "VTC One Click Miner" hashrate status lags out sometimes. The software can be downloaded from EVGA's website [here](https://www.evga.com/precisionxoc/){:target="_blank"}.

# Ledger Nano S Hardware Wallet
It is highly recommended to use a hardware wallet to store crypto currency. The [Ledger Nano S](https://www.ledgerwallet.com/products/ledger-nano-s){:target="_blank"} is a good choice and can be purchased for about $100 USD. There are three types of wallets in the order of least to most secure: 1) web software wallet, 2) local software wallet, and 3) hardware wallet. The software wallets are hosted either on your local machine or a company hosts it on the web for you. Web software wallets have been hacked many times in the past and are not safe to store currency. Local software wallets are safer but can still be stolen if your computer is hacked.

Hardware wallets on the other hand offer security by requiring an external piece of hardware to be connected to transfer money. Transactions can only be sent when the hardware is connected to a computer and validated through a user pin on the hardware wallet.

# Conclusion
This was an awesome project to get myself familiarized with crypto currency since I basically didn't know anything before this project. I've been mining for 1 month and made about $400 USD in VTC which equates to about a 5-6 month ROI but of course is not guaranteed and subject to fluctuations in VTC price. Ask any questions you may have in the comments below! Thanks for reading.