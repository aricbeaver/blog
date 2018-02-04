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
More info coming soon! Here is a teaser for now.

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
	  	<td>Total</td>
	    <td><a href=""></a></td>
	    <td>$2722</td>
	  </tr>
	</table>
</div>

# Build
Text

## Pictures
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

# Windows 10 Install
Text

# BIOS Motherboard Settings
Text

# Vertcoin (VTC) Core Wallet
Text

# Vertcoin (VTC) One Click Miner
Text

# EVGA Precision XOC Monitoring
Text

# Ledger Nano S Hardware Wallet
Text




