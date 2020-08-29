<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="raspberrypi_bastelstube_v13">
<description>&lt;b&gt;Raspberry Pi&lt;/b&gt; by &lt;b&gt;Martin's Bastelstube&lt;/b&gt;
&lt;p&gt;
Different shapes of piggyback boards for the famous &amp;amp; fabulous
&lt;a href="http://www.raspberrypi.org/"&gt;Raspberry Pi&lt;/a&gt; computer.
&lt;p&gt;
The outline of the Raspberry Pi board is drawn on layer 52 bDocu, so you can make it invisible if necessary.&lt;br/&gt;
Recommendation: Start your design with RASPI_BOARD_*_FULL, so you are aware of all the big components and
connectors when you're drawing the dimensions of your board and placing your own components.&lt;br/&gt;
Later, you can simply change the package of your Raspberry Pi connector to the RASPI_BOARD_*_EDGES type,
so you can concentrate on your own design.
&lt;p&gt;
Most of my board packages don't have the outline drawn in layer 20 Dimension (except the HATs). This allows you to deviate from the original Raspberry Pi board shape, e.g. when you need more space behind the GPIO connector for the routing of the power supply lines. If you want to stick exactly to the Raspberry Pi board shape, then just draw the Dimension layer right on the lines in layer bDocu.

&lt;hr&gt;&lt;br/&gt;

Version 1.3
&lt;ul&gt;
&lt;li&gt;Added the shape and dimensions of the HAT board with &amp;amp; without the camera and display flex cutout&lt;/li&gt;
&lt;li&gt;New GPIO connector version (suffix &amp;quot;#&amp;quot;) with all pins connected (no more &amp;quot;n.c.&amp;quot; pins)&lt;/li&gt;
&lt;li&gt;Two more &amp;quot;AB-&amp;quot; boards with 5 and 6 drill holes / pads, mechanically compatible with all RasPi versions&lt;/li&gt;
&lt;/ul&gt;

Version 1.2
&lt;ul&gt;
&lt;li&gt;Added a 26-pin GPIO connector with board dimensions of model B+&lt;br/&gt;
       for backwards compatibility with models A and B, named &amp;quot;B-&amp;quot;&lt;/li&gt;
&lt;/ul&gt;

Version 1.1
&lt;ul&gt;
&lt;li&gt;New GPIO connector and board dimensions of model B+&lt;/li&gt;
&lt;li&gt;Old connector and board (for models A and B) renamed to AB&lt;/li&gt;
&lt;li&gt;GPIO pin numbers on connector changed to match Rev2 board design&lt;/li&gt;
&lt;/ul&gt;

Version 1.0
&lt;ul&gt;
&lt;li&gt;More detailed descriptions for all components&lt;/li&gt;
&lt;li&gt;Published on Cadsoft webpage&lt;/li&gt;
&lt;/ul&gt;

&lt;hr&gt;&lt;br/&gt;

Designed by &lt;a href="http://bastelstube.rocci.net/"&gt;Martin's Bastelstube&lt;/a&gt;&lt;br&gt;
Comments / complaints / bug reports / suggestions to &lt;author&gt;eightbit@web.de&lt;/author&gt;</description>
<packages>
<package name="RASPI_BOARD_B+_FULL">
<description>Raspberry Pi board model B+, full outline with position of big connectors &amp;amp; drill holes</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0.254" layer="52" curve="90"/>
<wire x1="3" y1="0" x2="6.85" y2="0" width="0.254" layer="52"/>
<wire x1="6.85" y1="0" x2="14.35" y2="0" width="0.254" layer="52"/>
<wire x1="14.35" y1="0" x2="50.5" y2="0" width="0.254" layer="52"/>
<wire x1="50.5" y1="0" x2="51.5" y2="0" width="0.254" layer="52"/>
<wire x1="51.5" y1="0" x2="55.5" y2="0" width="0.254" layer="52"/>
<wire x1="55.5" y1="0" x2="56.5" y2="0" width="0.254" layer="52"/>
<wire x1="56.5" y1="0" x2="82" y2="0" width="0.254" layer="52"/>
<wire x1="82" y1="0" x2="85" y2="3" width="0.254" layer="52" curve="90"/>
<wire x1="85" y1="3" x2="85" y2="53" width="0.254" layer="52"/>
<wire x1="85" y1="53" x2="82" y2="56" width="0.254" layer="52" curve="90"/>
<wire x1="82" y1="56" x2="3" y2="56" width="0.254" layer="52"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0.254" layer="52" curve="90"/>
<wire x1="0" y1="53" x2="0" y2="3" width="0.254" layer="52"/>
<hole x="3.5" y="3.5" drill="2.75"/>
<hole x="3.5" y="52.5" drill="2.75"/>
<hole x="61.5" y="3.5" drill="2.75"/>
<hole x="61.5" y="52.5" drill="2.75"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<wire x1="65.25" y1="2.25" x2="86.5" y2="2.25" width="0.127" layer="52"/>
<wire x1="86.5" y1="2.25" x2="86.5" y2="18.25" width="0.127" layer="52"/>
<wire x1="86.5" y1="18.25" x2="65.25" y2="18.25" width="0.127" layer="52"/>
<wire x1="65.25" y1="18.25" x2="65.25" y2="2.25" width="0.127" layer="52"/>
<wire x1="69" y1="35.6" x2="69" y2="22.4" width="0.127" layer="52"/>
<wire x1="69" y1="22.4" x2="86" y2="22.4" width="0.127" layer="52"/>
<wire x1="86" y1="22.4" x2="86" y2="21.7" width="0.127" layer="52"/>
<wire x1="86" y1="21.7" x2="86.5" y2="21.7" width="0.127" layer="52"/>
<wire x1="86.5" y1="21.7" x2="86.5" y2="36.3" width="0.127" layer="52"/>
<wire x1="86.5" y1="36.3" x2="86" y2="36.3" width="0.127" layer="52"/>
<wire x1="86" y1="36.3" x2="86" y2="35.6" width="0.127" layer="52"/>
<wire x1="86" y1="35.6" x2="69" y2="35.6" width="0.127" layer="52"/>
<wire x1="69" y1="40.4" x2="86" y2="40.4" width="0.127" layer="52"/>
<wire x1="86" y1="40.4" x2="86" y2="39.7" width="0.127" layer="52"/>
<wire x1="86" y1="39.7" x2="86.5" y2="39.7" width="0.127" layer="52"/>
<wire x1="86.5" y1="39.7" x2="86.5" y2="54.3" width="0.127" layer="52"/>
<wire x1="86.5" y1="54.3" x2="86" y2="54.3" width="0.127" layer="52"/>
<wire x1="86" y1="54.3" x2="86" y2="53.6" width="0.127" layer="52"/>
<wire x1="86" y1="53.6" x2="69" y2="53.6" width="0.127" layer="52"/>
<wire x1="69" y1="53.6" x2="69" y2="40.4" width="0.127" layer="52"/>
<wire x1="24.5" y1="10.5" x2="24.5" y2="-1.25" width="0.127" layer="52"/>
<wire x1="24.5" y1="-1.25" x2="39.5" y2="-1.25" width="0.127" layer="52"/>
<wire x1="39.5" y1="-1.25" x2="39.5" y2="10.5" width="0.127" layer="52"/>
<wire x1="39.5" y1="10.5" x2="24.5" y2="10.5" width="0.127" layer="52"/>
<wire x1="50.5" y1="0" x2="50.5" y2="11" width="0.127" layer="52"/>
<wire x1="50.5" y1="11" x2="56.5" y2="11" width="0.127" layer="52"/>
<wire x1="56.5" y1="11" x2="56.5" y2="0" width="0.127" layer="52"/>
<wire x1="51.5" y1="0" x2="51.5" y2="-2" width="0.127" layer="52"/>
<wire x1="51.5" y1="-2" x2="55.5" y2="-2" width="0.127" layer="52"/>
<wire x1="55.5" y1="-2" x2="55.5" y2="0" width="0.127" layer="52"/>
<wire x1="6.85" y1="0" x2="6.85" y2="5.75" width="0.127" layer="52"/>
<wire x1="6.85" y1="5.75" x2="14.35" y2="5.75" width="0.127" layer="52"/>
<wire x1="14.35" y1="5.75" x2="14.35" y2="0" width="0.127" layer="52"/>
<wire x1="6.85" y1="0" x2="6.6" y2="-0.5" width="0.127" layer="52"/>
<wire x1="6.6" y1="-0.5" x2="14.6" y2="-0.5" width="0.127" layer="52"/>
<wire x1="14.6" y1="-0.5" x2="14.35" y2="0" width="0.127" layer="52"/>
<circle x="3.5" y="3.5" radius="3.1" width="0.127" layer="52"/>
<circle x="61.5" y="3.5" radius="3.1" width="0.127" layer="52"/>
<circle x="61.5" y="52.5" radius="3.1" width="0.127" layer="52"/>
<circle x="3.5" y="52.5" radius="3.1" width="0.127" layer="52"/>
</package>
<package name="RASPI_BOARD_B+_FULL_PAD">
<description>Raspberry Pi board model B+, full outline with position of big connectors &amp;amp; mounting pads</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0.254" layer="52" curve="90"/>
<wire x1="3" y1="0" x2="6.85" y2="0" width="0.254" layer="52"/>
<wire x1="6.85" y1="0" x2="14.35" y2="0" width="0.254" layer="52"/>
<wire x1="14.35" y1="0" x2="50.5" y2="0" width="0.254" layer="52"/>
<wire x1="50.5" y1="0" x2="51.5" y2="0" width="0.254" layer="52"/>
<wire x1="51.5" y1="0" x2="55.5" y2="0" width="0.254" layer="52"/>
<wire x1="55.5" y1="0" x2="56.5" y2="0" width="0.254" layer="52"/>
<wire x1="56.5" y1="0" x2="82" y2="0" width="0.254" layer="52"/>
<wire x1="82" y1="0" x2="85" y2="3" width="0.254" layer="52" curve="90"/>
<wire x1="85" y1="3" x2="85" y2="53" width="0.254" layer="52"/>
<wire x1="85" y1="53" x2="82" y2="56" width="0.254" layer="52" curve="90"/>
<wire x1="82" y1="56" x2="3" y2="56" width="0.254" layer="52"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0.254" layer="52" curve="90"/>
<wire x1="0" y1="53" x2="0" y2="3" width="0.254" layer="52"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<wire x1="65.25" y1="2.25" x2="86.5" y2="2.25" width="0.127" layer="52"/>
<wire x1="86.5" y1="2.25" x2="86.5" y2="18.25" width="0.127" layer="52"/>
<wire x1="86.5" y1="18.25" x2="65.25" y2="18.25" width="0.127" layer="52"/>
<wire x1="65.25" y1="18.25" x2="65.25" y2="2.25" width="0.127" layer="52"/>
<wire x1="69" y1="35.6" x2="69" y2="22.4" width="0.127" layer="52"/>
<wire x1="69" y1="22.4" x2="86" y2="22.4" width="0.127" layer="52"/>
<wire x1="86" y1="22.4" x2="86" y2="21.7" width="0.127" layer="52"/>
<wire x1="86" y1="21.7" x2="86.5" y2="21.7" width="0.127" layer="52"/>
<wire x1="86.5" y1="21.7" x2="86.5" y2="36.3" width="0.127" layer="52"/>
<wire x1="86.5" y1="36.3" x2="86" y2="36.3" width="0.127" layer="52"/>
<wire x1="86" y1="36.3" x2="86" y2="35.6" width="0.127" layer="52"/>
<wire x1="86" y1="35.6" x2="69" y2="35.6" width="0.127" layer="52"/>
<wire x1="69" y1="40.4" x2="86" y2="40.4" width="0.127" layer="52"/>
<wire x1="86" y1="40.4" x2="86" y2="39.7" width="0.127" layer="52"/>
<wire x1="86" y1="39.7" x2="86.5" y2="39.7" width="0.127" layer="52"/>
<wire x1="86.5" y1="39.7" x2="86.5" y2="54.3" width="0.127" layer="52"/>
<wire x1="86.5" y1="54.3" x2="86" y2="54.3" width="0.127" layer="52"/>
<wire x1="86" y1="54.3" x2="86" y2="53.6" width="0.127" layer="52"/>
<wire x1="86" y1="53.6" x2="69" y2="53.6" width="0.127" layer="52"/>
<wire x1="69" y1="53.6" x2="69" y2="40.4" width="0.127" layer="52"/>
<wire x1="24.5" y1="10.5" x2="24.5" y2="-1.25" width="0.127" layer="52"/>
<wire x1="24.5" y1="-1.25" x2="39.5" y2="-1.25" width="0.127" layer="52"/>
<wire x1="39.5" y1="-1.25" x2="39.5" y2="10.5" width="0.127" layer="52"/>
<wire x1="39.5" y1="10.5" x2="24.5" y2="10.5" width="0.127" layer="52"/>
<wire x1="50.5" y1="0" x2="50.5" y2="11" width="0.127" layer="52"/>
<wire x1="50.5" y1="11" x2="56.5" y2="11" width="0.127" layer="52"/>
<wire x1="56.5" y1="11" x2="56.5" y2="0" width="0.127" layer="52"/>
<wire x1="51.5" y1="0" x2="51.5" y2="-2" width="0.127" layer="52"/>
<wire x1="51.5" y1="-2" x2="55.5" y2="-2" width="0.127" layer="52"/>
<wire x1="55.5" y1="-2" x2="55.5" y2="0" width="0.127" layer="52"/>
<wire x1="6.85" y1="0" x2="6.85" y2="5.75" width="0.127" layer="52"/>
<wire x1="6.85" y1="5.75" x2="14.35" y2="5.75" width="0.127" layer="52"/>
<wire x1="14.35" y1="5.75" x2="14.35" y2="0" width="0.127" layer="52"/>
<wire x1="6.85" y1="0" x2="6.6" y2="-0.5" width="0.127" layer="52"/>
<wire x1="6.6" y1="-0.5" x2="14.6" y2="-0.5" width="0.127" layer="52"/>
<wire x1="14.6" y1="-0.5" x2="14.35" y2="0" width="0.127" layer="52"/>
<pad name="DRILL_3" x="3.5" y="3.5" drill="2.75" diameter="6.2"/>
<pad name="DRILL_1" x="3.5" y="52.5" drill="2.75" diameter="6.2"/>
<pad name="DRILL_2" x="61.5" y="52.5" drill="2.75" diameter="6.2"/>
<pad name="DRILL_4" x="61.5" y="3.5" drill="2.75" diameter="6.2"/>
</package>
<package name="RASPI_BOARD_B+_EDGES_0DRILL">
<description>Raspberry Pi board model B+, outline is only marked by its edges&lt;br&gt;
without any drill holes</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0.254" layer="52" curve="90"/>
<wire x1="82" y1="0" x2="85" y2="3" width="0.254" layer="52" curve="90"/>
<wire x1="85" y1="53" x2="82" y2="56" width="0.254" layer="52" curve="90"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0.254" layer="52" curve="90"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
</package>
<package name="RASPI_BOARD_B+_EDGES_4DRILL">
<description>Raspberry Pi board model B+, outline is only marked by its edges&lt;br/&gt;
with all 4 drill holes</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0.254" layer="52" curve="90"/>
<wire x1="82" y1="0" x2="85" y2="3" width="0.254" layer="52" curve="90"/>
<wire x1="85" y1="53" x2="82" y2="56" width="0.254" layer="52" curve="90"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0.254" layer="52" curve="90"/>
<hole x="3.5" y="3.5" drill="2.75"/>
<hole x="3.5" y="52.5" drill="2.75"/>
<hole x="61.5" y="3.5" drill="2.75"/>
<hole x="61.5" y="52.5" drill="2.75"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<circle x="3.5" y="3.5" radius="3.1" width="0.127" layer="52"/>
<circle x="61.5" y="3.5" radius="3.1" width="0.127" layer="52"/>
<circle x="61.5" y="52.5" radius="3.1" width="0.127" layer="52"/>
<circle x="3.5" y="52.5" radius="3.1" width="0.127" layer="52"/>
</package>
<package name="RASPI_BOARD_B+_EDGES_4DRILL_PAD">
<description>Raspberry Pi board model B+, outline is only marked by its edges&lt;br/&gt;
with all 4 mounting pads</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0.254" layer="52" curve="90"/>
<wire x1="82" y1="0" x2="85" y2="3" width="0.254" layer="52" curve="90"/>
<wire x1="85" y1="53" x2="82" y2="56" width="0.254" layer="52" curve="90"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0.254" layer="52" curve="90"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<pad name="41" x="3.5" y="3.5" drill="2.75" diameter="6.2"/>
<pad name="42" x="61.5" y="3.5" drill="2.75" diameter="6.2"/>
<pad name="43" x="61.5" y="52.5" drill="2.75" diameter="6.2"/>
<pad name="44" x="3.5" y="52.5" drill="2.75" diameter="6.2"/>
</package>
<package name="RASPI_BOARD_B+_EDGES_3DRILL">
<description>Raspberry Pi board model B+, outline is only marked by its edges&lt;br&gt;
with 3 drill holes (top left hole is missing to allow routing of power supply lines)</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0.254" layer="52" curve="90"/>
<wire x1="82" y1="0" x2="85" y2="3" width="0.254" layer="52" curve="90"/>
<wire x1="85" y1="53" x2="82" y2="56" width="0.254" layer="52" curve="90"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0.254" layer="52" curve="90"/>
<hole x="3.5" y="3.5" drill="2.75"/>
<hole x="61.5" y="3.5" drill="2.75"/>
<hole x="61.5" y="52.5" drill="2.75"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<circle x="3.5" y="3.5" radius="3.1" width="0.127" layer="52"/>
<circle x="61.5" y="3.5" radius="3.1" width="0.127" layer="52"/>
<circle x="61.5" y="52.5" radius="3.1" width="0.127" layer="52"/>
</package>
<package name="RASPI_BOARD_B+_EDGES_3DRILL_PAD">
<description>Raspberry Pi board model B+, outline is only marked by its edges&lt;br&gt;
with 3 mounting pads (top left pad is missing to allow routing of power supply lines)</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0.254" layer="52" curve="90"/>
<wire x1="82" y1="0" x2="85" y2="3" width="0.254" layer="52" curve="90"/>
<wire x1="85" y1="53" x2="82" y2="56" width="0.254" layer="52" curve="90"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0.254" layer="52" curve="90"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<pad name="41" x="3.5" y="3.5" drill="2.75" diameter="6.2"/>
<pad name="42" x="61.5" y="3.5" drill="2.75" diameter="6.2"/>
<pad name="43" x="61.5" y="52.5" drill="2.75" diameter="6.2"/>
</package>
<package name="RASPI_BOARD_B+HAT">
<description>Raspberry Pi board model B+ HAT board&lt;br/&gt;
Official outline, but without cutouts for display &amp;amp; camera flex connector</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0" layer="20" curve="90"/>
<wire x1="3" y1="0" x2="62" y2="0" width="0" layer="20"/>
<wire x1="62" y1="0" x2="65" y2="3" width="0" layer="20" curve="90"/>
<wire x1="65" y1="3" x2="65" y2="53" width="0" layer="20"/>
<wire x1="65" y1="53" x2="62" y2="56" width="0" layer="20" curve="90"/>
<wire x1="62" y1="56" x2="3" y2="56" width="0" layer="20"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0" layer="20" curve="90"/>
<hole x="3.5" y="3.5" drill="2.75"/>
<hole x="3.5" y="52.5" drill="2.75"/>
<hole x="61.5" y="3.5" drill="2.75"/>
<hole x="61.5" y="52.5" drill="2.75"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<circle x="3.5" y="3.5" radius="3.2" width="0.127" layer="52"/>
<circle x="61.5" y="3.5" radius="3.2" width="0.127" layer="52"/>
<circle x="61.5" y="52.5" radius="3.2" width="0.127" layer="52"/>
<circle x="3.5" y="52.5" radius="3.2" width="0.127" layer="52"/>
<circle x="3.5" y="52.5" radius="3.2" width="0" layer="29"/>
<circle x="61.5" y="52.5" radius="3.2" width="0" layer="29"/>
<circle x="3.5" y="3.5" radius="3.2" width="0" layer="29"/>
<circle x="61.5" y="3.5" radius="3.2" width="0" layer="29"/>
<circle x="3.5" y="52.5" radius="3.2" width="0" layer="30"/>
<circle x="61.5" y="52.5" radius="3.2" width="0" layer="30"/>
<circle x="61.5" y="3.5" radius="3.2" width="0" layer="30"/>
<circle x="3.5" y="3.5" radius="3.2" width="0" layer="30"/>
<wire x1="0" y1="3" x2="0" y2="53" width="0" layer="20"/>
</package>
<package name="RASPI_BOARD_B+HAT_DF">
<description>Raspberry Pi board model B+ HAT board&lt;br/&gt;
Official outline with cutout for display flex connector</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0" layer="20" curve="90"/>
<wire x1="3" y1="0" x2="62" y2="0" width="0" layer="20"/>
<wire x1="62" y1="0" x2="65" y2="3" width="0" layer="20" curve="90"/>
<wire x1="65" y1="3" x2="65" y2="53" width="0" layer="20"/>
<wire x1="65" y1="53" x2="62" y2="56" width="0" layer="20" curve="90"/>
<wire x1="62" y1="56" x2="3" y2="56" width="0" layer="20"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0" layer="20" curve="90"/>
<hole x="3.5" y="3.5" drill="2.75"/>
<hole x="3.5" y="52.5" drill="2.75"/>
<hole x="61.5" y="3.5" drill="2.75"/>
<hole x="61.5" y="52.5" drill="2.75"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<circle x="3.5" y="3.5" radius="3.2" width="0.127" layer="52"/>
<circle x="61.5" y="3.5" radius="3.2" width="0.127" layer="52"/>
<circle x="61.5" y="52.5" radius="3.2" width="0.127" layer="52"/>
<circle x="3.5" y="52.5" radius="3.2" width="0.127" layer="52"/>
<circle x="3.5" y="52.5" radius="3.2" width="0" layer="29"/>
<circle x="61.5" y="52.5" radius="3.2" width="0" layer="29"/>
<circle x="3.5" y="3.5" radius="3.2" width="0" layer="29"/>
<circle x="61.5" y="3.5" radius="3.2" width="0" layer="29"/>
<circle x="3.5" y="52.5" radius="3.2" width="0" layer="30"/>
<circle x="61.5" y="52.5" radius="3.2" width="0" layer="30"/>
<circle x="61.5" y="3.5" radius="3.2" width="0" layer="30"/>
<circle x="3.5" y="3.5" radius="3.2" width="0" layer="30"/>
<wire x1="0" y1="3" x2="0" y2="17.5" width="0" layer="20"/>
<wire x1="0" y1="17.5" x2="2" y2="19.5" width="0" layer="20" curve="-90"/>
<wire x1="2" y1="19.5" x2="3" y2="19.5" width="0" layer="20"/>
<wire x1="3" y1="19.5" x2="5" y2="21.5" width="0" layer="20" curve="90"/>
<wire x1="5" y1="21.5" x2="5" y2="34.5" width="0" layer="20"/>
<wire x1="5" y1="34.5" x2="3" y2="36.5" width="0" layer="20" curve="90"/>
<wire x1="3" y1="36.5" x2="2" y2="36.5" width="0" layer="20"/>
<wire x1="2" y1="36.5" x2="0" y2="38.5" width="0" layer="20" curve="-90"/>
<wire x1="0" y1="38.5" x2="0" y2="53" width="0" layer="20"/>
<text x="4" y="21" size="1.016" layer="51" font="vector" ratio="10" rot="R90">Display Flex Slot</text>
</package>
<package name="RASPI_BOARD_B+HAT_DF_CF">
<description>Raspberry Pi board model B+ HAT board&lt;br/&gt;
Official outline with cutouts for display &amp;amp; camera flex connector</description>
<wire x1="0" y1="3" x2="3" y2="0" width="0" layer="20" curve="90"/>
<wire x1="3" y1="0" x2="62" y2="0" width="0" layer="20"/>
<wire x1="62" y1="0" x2="65" y2="3" width="0" layer="20" curve="90"/>
<wire x1="65" y1="3" x2="65" y2="53" width="0" layer="20"/>
<wire x1="65" y1="53" x2="62" y2="56" width="0" layer="20" curve="90"/>
<wire x1="62" y1="56" x2="3" y2="56" width="0" layer="20"/>
<wire x1="3" y1="56" x2="0" y2="53" width="0" layer="20" curve="90"/>
<hole x="3.5" y="3.5" drill="2.75"/>
<hole x="3.5" y="52.5" drill="2.75"/>
<hole x="61.5" y="3.5" drill="2.75"/>
<hole x="61.5" y="52.5" drill="2.75"/>
<pad name="1" x="8.37" y="51.23" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="8.37" y="53.77" drill="1" diameter="1.778"/>
<pad name="3" x="10.91" y="51.23" drill="1" diameter="1.778"/>
<pad name="4" x="10.91" y="53.77" drill="1" diameter="1.778"/>
<pad name="5" x="13.45" y="51.23" drill="1" diameter="1.778"/>
<pad name="6" x="13.45" y="53.77" drill="1" diameter="1.778"/>
<pad name="7" x="15.99" y="51.23" drill="1" diameter="1.778"/>
<pad name="8" x="15.99" y="53.77" drill="1" diameter="1.778"/>
<pad name="9" x="18.53" y="51.23" drill="1" diameter="1.778"/>
<pad name="10" x="18.53" y="53.77" drill="1" diameter="1.778"/>
<pad name="11" x="21.07" y="51.23" drill="1" diameter="1.778"/>
<pad name="12" x="21.07" y="53.77" drill="1" diameter="1.778"/>
<pad name="13" x="23.61" y="51.23" drill="1" diameter="1.778"/>
<pad name="14" x="23.61" y="53.77" drill="1" diameter="1.778"/>
<pad name="15" x="26.15" y="51.23" drill="1" diameter="1.778"/>
<pad name="16" x="26.15" y="53.77" drill="1" diameter="1.778"/>
<pad name="17" x="28.69" y="51.23" drill="1" diameter="1.778"/>
<pad name="18" x="28.69" y="53.77" drill="1" diameter="1.778"/>
<pad name="19" x="31.23" y="51.23" drill="1" diameter="1.778"/>
<pad name="20" x="31.23" y="53.77" drill="1" diameter="1.778"/>
<pad name="21" x="33.77" y="51.23" drill="1" diameter="1.778"/>
<pad name="22" x="33.77" y="53.77" drill="1" diameter="1.778"/>
<pad name="23" x="36.31" y="51.23" drill="1" diameter="1.778"/>
<pad name="24" x="36.31" y="53.77" drill="1" diameter="1.778"/>
<pad name="25" x="38.85" y="51.23" drill="1" diameter="1.778"/>
<pad name="26" x="38.85" y="53.77" drill="1" diameter="1.778"/>
<pad name="27" x="41.39" y="51.23" drill="1" diameter="1.778"/>
<pad name="28" x="41.39" y="53.77" drill="1" diameter="1.778"/>
<pad name="29" x="43.93" y="51.23" drill="1" diameter="1.778"/>
<pad name="30" x="43.93" y="53.77" drill="1" diameter="1.778"/>
<pad name="31" x="46.47" y="51.23" drill="1" diameter="1.778"/>
<pad name="32" x="46.47" y="53.77" drill="1" diameter="1.778"/>
<pad name="33" x="49.01" y="51.23" drill="1" diameter="1.778"/>
<pad name="34" x="49.01" y="53.77" drill="1" diameter="1.778"/>
<pad name="35" x="51.55" y="51.23" drill="1" diameter="1.778"/>
<pad name="36" x="51.55" y="53.77" drill="1" diameter="1.778"/>
<pad name="37" x="54.09" y="51.23" drill="1" diameter="1.778"/>
<pad name="38" x="54.09" y="53.77" drill="1" diameter="1.778"/>
<pad name="39" x="56.63" y="51.23" drill="1" diameter="1.778"/>
<pad name="40" x="56.63" y="53.77" drill="1" diameter="1.778"/>
<wire x1="7.1" y1="55.04" x2="7.1" y2="52.5" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="7.1" y2="49.96" width="0.127" layer="21"/>
<wire x1="7.1" y1="49.96" x2="8.0525" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.96" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="9.64" y1="49.96" x2="57.9" y2="49.96" width="0.127" layer="21"/>
<wire x1="57.9" y1="49.96" x2="57.9" y2="55.04" width="0.127" layer="21"/>
<wire x1="57.9" y1="55.04" x2="7.1" y2="55.04" width="0.127" layer="21"/>
<wire x1="7.1" y1="52.5" x2="9.64" y2="52.5" width="0.127" layer="21"/>
<wire x1="9.64" y1="52.5" x2="9.64" y2="49.96" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.96" x2="8.0525" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.0525" y1="49.6425" x2="8.6875" y2="49.6425" width="0.127" layer="21"/>
<wire x1="8.6875" y1="49.6425" x2="8.6875" y2="49.96" width="0.127" layer="21"/>
<text x="8.0525" y="48.3725" size="1.016" layer="21" font="vector" ratio="10">1</text>
<circle x="3.5" y="3.5" radius="3.2" width="0.127" layer="52"/>
<circle x="61.5" y="3.5" radius="3.2" width="0.127" layer="52"/>
<circle x="61.5" y="52.5" radius="3.2" width="0.127" layer="52"/>
<circle x="3.5" y="52.5" radius="3.2" width="0.127" layer="52"/>
<circle x="3.5" y="52.5" radius="3.2" width="0" layer="29"/>
<circle x="61.5" y="52.5" radius="3.2" width="0" layer="29"/>
<circle x="3.5" y="3.5" radius="3.2" width="0" layer="29"/>
<circle x="61.5" y="3.5" radius="3.2" width="0" layer="29"/>
<circle x="3.5" y="52.5" radius="3.2" width="0" layer="30"/>
<circle x="61.5" y="52.5" radius="3.2" width="0" layer="30"/>
<circle x="61.5" y="3.5" radius="3.2" width="0" layer="30"/>
<circle x="3.5" y="3.5" radius="3.2" width="0" layer="30"/>
<wire x1="0" y1="3" x2="0" y2="17.5" width="0" layer="20"/>
<wire x1="0" y1="17.5" x2="2" y2="19.5" width="0" layer="20" curve="-90"/>
<wire x1="2" y1="19.5" x2="3" y2="19.5" width="0" layer="20"/>
<wire x1="3" y1="19.5" x2="5" y2="21.5" width="0" layer="20" curve="90"/>
<wire x1="5" y1="21.5" x2="5" y2="34.5" width="0" layer="20"/>
<wire x1="5" y1="34.5" x2="3" y2="36.5" width="0" layer="20" curve="90"/>
<wire x1="3" y1="36.5" x2="2" y2="36.5" width="0" layer="20"/>
<wire x1="2" y1="36.5" x2="0" y2="38.5" width="0" layer="20" curve="-90"/>
<wire x1="0" y1="38.5" x2="0" y2="53" width="0" layer="20"/>
<wire x1="44" y1="4" x2="45" y2="3" width="0" layer="20" curve="90"/>
<wire x1="45" y1="3" x2="46" y2="4" width="0" layer="20" curve="90"/>
<wire x1="46" y1="4" x2="46" y2="19" width="0" layer="20"/>
<wire x1="46" y1="19" x2="45" y2="20" width="0" layer="20" curve="90"/>
<wire x1="45" y1="20" x2="44" y2="19" width="0" layer="20" curve="90"/>
<wire x1="44" y1="19" x2="44" y2="4" width="0" layer="20"/>
<text x="4" y="21" size="1.016" layer="51" font="vector" ratio="10" rot="R90">Display Flex Slot</text>
<text x="45.5" y="4.75" size="1.016" layer="51" font="vector" ratio="10" rot="R90">Camera Flex Slot</text>
</package>
</packages>
<symbols>
<symbol name="RASPI_GPIO_B+">
<description>Generic schematic symbol for the Raspberry Pi GPIO connector&lt;br/&gt;
Model B+ &amp;nbsp; with 9 &amp;quot;not connected&amp;quot; pins</description>
<wire x1="-12.7" y1="25.4" x2="12.7" y2="25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="25.4" x2="12.7" y2="-38.1" width="0.254" layer="94"/>
<wire x1="12.7" y1="-38.1" x2="-12.7" y2="-38.1" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-38.1" x2="-12.7" y2="25.4" width="0.254" layer="94"/>
<text x="13.97" y="22.86" size="1.778" layer="97" ratio="10">Raspberry Pi</text>
<text x="13.97" y="20.32" size="1.778" layer="97" ratio="10">GPIO Port</text>
<pin name="5V0" x="-5.08" y="27.94" length="short" direction="pwr" rot="R270"/>
<pin name="3V3" x="5.08" y="27.94" length="short" direction="pwr" rot="R270"/>
<pin name="GND" x="0" y="-40.64" length="short" direction="pwr" rot="R90"/>
<pin name="SDA" x="-15.24" y="-35.56" length="short"/>
<pin name="SCL" x="-15.24" y="-33.02" length="short"/>
<pin name="GPIO17" x="-15.24" y="15.24" length="short"/>
<pin name="GPIO18" x="-15.24" y="12.7" length="short"/>
<pin name="GPIO27" x="-15.24" y="10.16" length="short"/>
<pin name="GPIO22" x="-15.24" y="7.62" length="short"/>
<pin name="GPIO23" x="-15.24" y="5.08" length="short"/>
<pin name="GPIO24" x="-15.24" y="2.54" length="short"/>
<pin name="GPIO25" x="-15.24" y="0" length="short"/>
<pin name="GPIO04" x="-15.24" y="-2.54" length="short"/>
<pin name="TXD" x="15.24" y="-25.4" length="short" rot="R180"/>
<pin name="RXD" x="15.24" y="-27.94" length="short" rot="R180"/>
<pin name="SPI_MOSI" x="15.24" y="15.24" length="short" rot="R180"/>
<pin name="SPI_MISO" x="15.24" y="12.7" length="short" rot="R180"/>
<pin name="SPI_SCLK" x="15.24" y="10.16" length="short" rot="R180"/>
<pin name="SPI_CE0" x="15.24" y="7.62" length="short" rot="R180"/>
<pin name="SPI_CE1" x="15.24" y="5.08" length="short" rot="R180"/>
<pin name="N.C.0" x="15.24" y="0" length="short" direction="nc" rot="R180"/>
<pin name="N.C.1" x="15.24" y="-2.54" length="short" direction="nc" rot="R180"/>
<pin name="N.C.2" x="15.24" y="-5.08" length="short" direction="nc" rot="R180"/>
<pin name="N.C.3" x="15.24" y="-7.62" length="short" direction="nc" rot="R180"/>
<pin name="N.C.4" x="15.24" y="-10.16" length="short" direction="nc" rot="R180"/>
<pin name="N.C.5" x="15.24" y="-12.7" length="short" direction="nc" rot="R180"/>
<text x="13.97" y="17.78" size="1.778" layer="97" ratio="10">Model B+</text>
<pin name="ID_SC" x="15.24" y="-33.02" length="short" direction="nc" rot="R180"/>
<pin name="ID_SD" x="15.24" y="-35.56" length="short" direction="nc" rot="R180"/>
<pin name="GPIO05" x="-15.24" y="-7.62" length="short" direction="nc"/>
<pin name="GPIO06" x="-15.24" y="-10.16" length="short" direction="nc"/>
<pin name="GPIO12" x="-15.24" y="-12.7" length="short" direction="nc"/>
<pin name="GPIO13" x="-15.24" y="-15.24" length="short" direction="nc"/>
<pin name="GPIO19" x="-15.24" y="-17.78" length="short" direction="nc"/>
<pin name="GPIO16" x="-15.24" y="-20.32" length="short" direction="nc"/>
<pin name="GPIO26" x="-15.24" y="-22.86" length="short" direction="nc"/>
<pin name="GPIO20" x="-15.24" y="-25.4" length="short" direction="nc"/>
<pin name="GPIO21" x="-15.24" y="-27.94" length="short" direction="nc"/>
<pin name="N.C.6" x="15.24" y="-15.24" length="short" direction="nc" rot="R180"/>
<pin name="N.C.7" x="15.24" y="-17.78" length="short" direction="nc" rot="R180"/>
<pin name="N.C.8" x="15.24" y="-20.32" length="short" direction="nc" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RASPI_BOARD_B+" prefix="X">
<description>Raspberry Pi GPIO connector with markings for the outer dimensions of the Raspberry Pi board model B+&lt;br&gt;
with different sets of drill holes or mounting pads</description>
<gates>
<gate name="G$1" symbol="RASPI_GPIO_B+" x="0" y="0"/>
</gates>
<devices>
<device name="_F" package="RASPI_BOARD_B+_FULL">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_FP" package="RASPI_BOARD_B+_FULL_PAD">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_E0" package="RASPI_BOARD_B+_EDGES_0DRILL">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_E4" package="RASPI_BOARD_B+_EDGES_4DRILL">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_E4P" package="RASPI_BOARD_B+_EDGES_4DRILL_PAD">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_E3" package="RASPI_BOARD_B+_EDGES_3DRILL">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_E3P" package="RASPI_BOARD_B+_EDGES_3DRILL_PAD">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_H" package="RASPI_BOARD_B+HAT">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_HD" package="RASPI_BOARD_B+HAT_DF">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_HDC" package="RASPI_BOARD_B+HAT_DF_CF">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V0" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="N.C.0" pad="4"/>
<connect gate="G$1" pin="N.C.1" pad="9"/>
<connect gate="G$1" pin="N.C.2" pad="14"/>
<connect gate="G$1" pin="N.C.3" pad="17"/>
<connect gate="G$1" pin="N.C.4" pad="20"/>
<connect gate="G$1" pin="N.C.5" pad="25"/>
<connect gate="G$1" pin="N.C.6" pad="30"/>
<connect gate="G$1" pin="N.C.7" pad="34"/>
<connect gate="G$1" pin="N.C.8" pad="39"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BlueShift">
<packages>
<package name="2CONTAC_ULTRAFIT_R/A">
<pad name="1" x="-1.75" y="-2.5" drill="1.02"/>
<pad name="2" x="1.75" y="-2.5" drill="1.02"/>
<hole x="0" y="-10.5" drill="3.05"/>
<wire x1="4" y1="0" x2="4" y2="-15.66" width="0.127" layer="21"/>
<wire x1="4" y1="-15.66" x2="-4" y2="-15.66" width="0.127" layer="21"/>
<wire x1="-4" y1="-15.66" x2="-4" y2="0" width="0.127" layer="21"/>
<wire x1="-4" y1="0" x2="4" y2="0" width="0.127" layer="21"/>
<text x="-3.81" y="0" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-17.78" size="1.27" layer="25">&gt;VALUE</text>
<circle x="0" y="-6.35" radius="1.27" width="0.127" layer="23"/>
</package>
<package name="2CONTAC_ULTRAFIT_VERT">
<pad name="1" x="-1.75" y="0" drill="1.02"/>
<pad name="2" x="1.75" y="0" drill="1.02"/>
<wire x1="-4" y1="2.42" x2="-4" y2="-2.93" width="0.127" layer="21"/>
<wire x1="-4" y1="-2.93" x2="4" y2="-2.93" width="0.127" layer="21"/>
<wire x1="4" y1="-2.93" x2="4" y2="2.42" width="0.127" layer="21"/>
<wire x1="4" y1="2.42" x2="3.645" y2="2.42" width="0.127" layer="21"/>
<wire x1="3.645" y1="2.42" x2="3.645" y2="5.48" width="0.127" layer="21"/>
<wire x1="3.645" y1="5.48" x2="-3.645" y2="5.48" width="0.127" layer="21"/>
<wire x1="-3.645" y1="5.48" x2="-3.645" y2="2.42" width="0.127" layer="21"/>
<wire x1="-3.645" y1="2.42" x2="-4" y2="2.42" width="0.127" layer="21"/>
<text x="-3" y="6" size="1.27" layer="21">&gt;NAME</text>
<text x="3.5" y="-3" size="1.27" layer="21" rot="R180">&gt;VALUE</text>
<hole x="0" y="-2.23" drill="1.02"/>
</package>
<package name="3CONTAC_ULTRAFIT_VERT">
<pad name="1" x="-3.5" y="0" drill="1.02"/>
<pad name="2" x="0" y="0" drill="1.02"/>
<wire x1="-5.75" y1="2.42" x2="-5.75" y2="-2.93" width="0.127" layer="21"/>
<wire x1="-5.75" y1="-2.93" x2="5.75" y2="-2.93" width="0.127" layer="21"/>
<wire x1="5.75" y1="-2.93" x2="5.75" y2="2.42" width="0.127" layer="21"/>
<wire x1="5.75" y1="2.42" x2="3.645" y2="2.42" width="0.127" layer="21"/>
<wire x1="3.645" y1="2.42" x2="3.645" y2="5.48" width="0.127" layer="21"/>
<wire x1="3.645" y1="5.48" x2="-3.645" y2="5.48" width="0.127" layer="21"/>
<wire x1="-3.645" y1="5.48" x2="-3.645" y2="2.42" width="0.127" layer="21"/>
<wire x1="-3.645" y1="2.42" x2="-5.75" y2="2.42" width="0.127" layer="21"/>
<text x="-3" y="6" size="1.27" layer="21">&gt;NAME</text>
<text x="3.5" y="-3" size="1.27" layer="21" rot="R180">&gt;VALUE</text>
<pad name="3" x="3.5" y="0" drill="1.02"/>
<hole x="-1.75" y="-2.23" drill="1.6"/>
</package>
<package name="VOLTAGE_CONVERTERS">
<pad name="P$1" x="0" y="2.35" drill="1"/>
<pad name="P$2" x="-2.54" y="2.35" drill="1"/>
<pad name="P$3" x="2.54" y="2.35" drill="1"/>
<wire x1="-5.75" y1="4.5" x2="5.75" y2="4.5" width="0.127" layer="21"/>
<wire x1="5.75" y1="4.5" x2="5.75" y2="-4.5" width="0.127" layer="21"/>
<wire x1="5.75" y1="-4.5" x2="-5.75" y2="-4.5" width="0.127" layer="21"/>
<wire x1="-5.75" y1="-4.5" x2="-5.75" y2="4.5" width="0.127" layer="21"/>
<text x="-5.08" y="5.08" size="1.27" layer="21">&gt;NAME</text>
<text x="5.08" y="-5.08" size="1.27" layer="21" rot="R180">&gt;VALUE</text>
</package>
<package name="3CONTAC_ULTRAFIT_R/A">
<pad name="1" x="-3.5" y="-2.5" drill="1.02"/>
<pad name="2" x="0" y="-2.5" drill="1.02"/>
<pad name="3" x="3.5" y="-2.5" drill="1.02"/>
<hole x="0" y="-10.5" drill="3.05"/>
<wire x1="5.75" y1="0" x2="5.75" y2="-15.66" width="0.127" layer="21"/>
<wire x1="5.75" y1="-15.66" x2="-5.75" y2="-15.66" width="0.127" layer="21"/>
<wire x1="-5.75" y1="-15.66" x2="-5.75" y2="0" width="0.127" layer="21"/>
<wire x1="-5.75" y1="0" x2="5.75" y2="0" width="0.127" layer="21"/>
<text x="-3.81" y="0" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-17.78" size="1.27" layer="25">&gt;VALUE</text>
</package>
<package name="6CONTACT_ULTRAFIT_R/A">
<pad name="1-A" x="-3.5" y="0" drill="1.02"/>
<pad name="1-B" x="0" y="0" drill="1.02"/>
<pad name="1-C" x="3.5" y="0" drill="1.02"/>
<pad name="2-A" x="-3.5" y="-3" drill="1.02"/>
<pad name="2-B" x="0" y="-3" drill="1.02"/>
<pad name="2-C" x="3.5" y="-3" drill="1.02"/>
<hole x="0" y="-10.91" drill="3.05"/>
<wire x1="-5.75" y1="2" x2="5.75" y2="2" width="0.127" layer="21"/>
<wire x1="5.75" y1="2" x2="5.75" y2="-16.16" width="0.127" layer="21"/>
<wire x1="5.75" y1="-16.16" x2="-5.75" y2="-16.16" width="0.127" layer="21"/>
<wire x1="-5.75" y1="-16.16" x2="-5.75" y2="2" width="0.127" layer="21"/>
</package>
<package name="2-CONTACT-SUPER">
<hole x="0" y="0" drill="3"/>
<pad name="GND" x="-4.8" y="-14.715" drill="0.6" diameter="2.65" shape="long" rot="R90"/>
<wire x1="-5.05" y1="-12.39" x2="-4.55" y2="-12.39" width="0.127" layer="46" curve="-180"/>
<wire x1="-4.55" y1="-12.39" x2="-4.55" y2="-17.04" width="0.127" layer="46"/>
<wire x1="-4.55" y1="-17.04" x2="-5.05" y2="-17.04" width="0.127" layer="46" curve="-180"/>
<wire x1="-5.05" y1="-17.04" x2="-5.05" y2="-12.39" width="0.127" layer="46"/>
<pad name="12V" x="-12.29" y="-14.715" drill="0.6" diameter="2.65" shape="long" rot="R90"/>
<wire x1="-12.54" y1="-12.39" x2="-12.04" y2="-12.39" width="0.127" layer="46" curve="-180"/>
<wire x1="-12.04" y1="-12.39" x2="-12.04" y2="-17.04" width="0.127" layer="46"/>
<wire x1="-12.04" y1="-17.04" x2="-12.54" y2="-17.04" width="0.127" layer="46" curve="-180"/>
<wire x1="-12.54" y1="-17.04" x2="-12.54" y2="-12.39" width="0.127" layer="46"/>
<hole x="-17.09" y="0" drill="3"/>
<wire x1="-19.08" y1="2.77" x2="1.99" y2="2.77" width="0.127" layer="21"/>
<wire x1="1.99" y1="2.77" x2="1.99" y2="-11.98" width="0.127" layer="21"/>
<wire x1="1.99" y1="-11.98" x2="-19.08" y2="-11.98" width="0.127" layer="21"/>
<wire x1="-19.08" y1="-11.98" x2="-19.08" y2="2.77" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="2CONTAC_ULTRAFIT_R/A">
<wire x1="-2.54" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<pin name="1" x="-7.62" y="2.54" length="middle"/>
<pin name="2" x="-7.62" y="-2.54" length="middle"/>
<text x="-2.54" y="5.08" size="1.27" layer="94">&gt;NAME</text>
<text x="-2.54" y="-7.62" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="2CONTAC_ULTRAFIT">
<wire x1="-2.54" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<pin name="1" x="-7.62" y="2.54" length="middle"/>
<pin name="2" x="-7.62" y="-2.54" length="middle"/>
<text x="-2.54" y="5.08" size="1.27" layer="94">&gt;NAME</text>
<text x="2.54" y="2.54" size="1.27" layer="94" rot="R270">&gt;VALUE</text>
</symbol>
<symbol name="3CONTACT_ULTRAFIT">
<pin name="3" x="-7.62" y="2.54" length="middle"/>
<pin name="2" x="-7.62" y="0" length="middle"/>
<pin name="1" x="-7.62" y="-2.54" length="middle"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<text x="-2.54" y="5.08" size="1.27" layer="94">&gt;NAME</text>
<text x="2.54" y="2.54" size="1.27" layer="94" rot="R270">&gt;VALUE</text>
</symbol>
<symbol name="VOLTAGE_CONVERTER">
<pin name="VOUT" x="-10.16" y="0" length="middle"/>
<wire x1="-5.08" y1="7.62" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<text x="2.54" y="7.62" size="1.27" layer="94" rot="R180">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.27" layer="94">&gt;VALUE</text>
<pin name="VIN" x="-10.16" y="5.08" length="middle"/>
<pin name="GND" x="-10.16" y="-5.08" length="middle"/>
</symbol>
<symbol name="6CONTACT_ULTRAFIT_R/A">
<wire x1="-5.08" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="12.7" x2="-5.08" y2="12.7" width="0.254" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="-12.7" x2="-5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-12.7" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<pin name="1-A" x="7.62" y="10.16" length="middle" rot="R180"/>
<pin name="1-B" x="7.62" y="7.62" length="middle" rot="R180"/>
<pin name="1-C" x="7.62" y="5.08" length="middle" rot="R180"/>
<pin name="2-A" x="7.62" y="-5.08" length="middle" rot="R180"/>
<pin name="2-B" x="7.62" y="-7.62" length="middle" rot="R180"/>
<pin name="2-C" x="7.62" y="-10.16" length="middle" rot="R180"/>
<text x="-5.08" y="12.7" size="1.778" layer="94">&gt;VALUE</text>
<text x="2.54" y="-12.7" size="1.778" layer="94" rot="R180">&gt;NAME</text>
</symbol>
<symbol name="2-CONTACT-SUPER">
<wire x1="-5.08" y1="7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<pin name="GND" x="10.16" y="5.08" length="middle" rot="R180"/>
<pin name="12V" x="10.16" y="-2.54" length="middle" rot="R180"/>
<text x="-2.54" y="7.62" size="1.27" layer="94">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.27" layer="94" rot="R180">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="2CONTACT_ULTRAFIT_R/A" prefix="CONN" uservalue="yes">
<gates>
<gate name="G$1" symbol="2CONTAC_ULTRAFIT_R/A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2CONTAC_ULTRAFIT_R/A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2CONTACT_ULTRAFIT_VERT" prefix="CONN" uservalue="yes">
<gates>
<gate name="G$1" symbol="2CONTAC_ULTRAFIT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2CONTAC_ULTRAFIT_VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="3CONTACT_ULTRAFIT_VERT" prefix="CONN" uservalue="yes">
<gates>
<gate name="G$1" symbol="3CONTACT_ULTRAFIT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="3CONTAC_ULTRAFIT_VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VOLTAGE_CONVERTER" prefix="CONN" uservalue="yes">
<gates>
<gate name="G$1" symbol="VOLTAGE_CONVERTER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="VOLTAGE_CONVERTERS">
<connects>
<connect gate="G$1" pin="GND" pad="P$2"/>
<connect gate="G$1" pin="VIN" pad="P$1"/>
<connect gate="G$1" pin="VOUT" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="3CONTAC_ULTRAFIT_R/A" prefix="CONN" uservalue="yes">
<description>Molex 1723161112 

12 Position (two Row) Ultra-Fit (14 A) Right Angle Connector 

Used in 2020 for Underwater Motor to ESC (Through the PCB) Connections 

Keep in mind you need the Contacts (the bits that get crimped on a wire) the Housing (the bits the contacts get shoved into) and this thing for it to work. 

Purchase: https://www.digikey.com/product-detail/en/molex/1723161112/WM11853-ND/5360318 

Documentation: http://www.literature.molex.com/SQLImages/kelmscott/Molex/PDF_Images/987651-1008.pdf 

Technical Drawings: https://www.molex.com/pdm_docs/sd/1723161112_sd.pdf 

All Molex Connectors on Digikey: https://www.digikey.com/en/product-highlight/m/molex/power-connectors</description>
<gates>
<gate name="G$1" symbol="3CONTACT_ULTRAFIT" x="10.16" y="-5.08"/>
</gates>
<devices>
<device name="" package="3CONTAC_ULTRAFIT_R/A">
<connects>
<connect gate="G$1" pin="1" pad="3"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="6CONTACT_ULTRAFIT_R/A" prefix="CONN" uservalue="yes">
<gates>
<gate name="G$1" symbol="6CONTACT_ULTRAFIT_R/A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="6CONTACT_ULTRAFIT_R/A">
<connects>
<connect gate="G$1" pin="1-A" pad="1-A"/>
<connect gate="G$1" pin="1-B" pad="1-B"/>
<connect gate="G$1" pin="1-C" pad="1-C"/>
<connect gate="G$1" pin="2-A" pad="2-A"/>
<connect gate="G$1" pin="2-B" pad="2-B"/>
<connect gate="G$1" pin="2-C" pad="2-C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2-CONTACT-SUPER" prefix="CONN" uservalue="yes">
<gates>
<gate name="G$1" symbol="2-CONTACT-SUPER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2-CONTACT-SUPER">
<connects>
<connect gate="G$1" pin="12V" pad="12V"/>
<connect gate="G$1" pin="GND" pad="GND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+12V" urn="urn:adsk.eagle:symbol:26931/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+12V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+3V3" urn="urn:adsk.eagle:symbol:26950/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+12V" urn="urn:adsk.eagle:component:26959/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+12V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" urn="urn:adsk.eagle:component:26981/1" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
<class number="1" name="PWM" width="0.254" drill="0">
</class>
<class number="2" name="ESC" width="1.016" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="raspberrypi_bastelstube_v13" deviceset="RASPI_BOARD_B+" device="_F"/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+12V" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+12V" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="PI_POWER" library="BlueShift" deviceset="2CONTACT_ULTRAFIT_R/A" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="ESC1-V" library="BlueShift" deviceset="2CONTACT_ULTRAFIT_VERT" device=""/>
<part name="ESC1-M" library="BlueShift" deviceset="3CONTACT_ULTRAFIT_VERT" device=""/>
<part name="VOLTAGE_CONVERTER" library="BlueShift" deviceset="VOLTAGE_CONVERTER" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+12V" device=""/>
<part name="INTERBOARD_DATA" library="BlueShift" deviceset="3CONTAC_ULTRAFIT_R/A" device=""/>
<part name="CONN1" library="BlueShift" deviceset="6CONTACT_ULTRAFIT_R/A" device=""/>
<part name="CONN2" library="BlueShift" deviceset="6CONTACT_ULTRAFIT_R/A" device=""/>
<part name="CONN3" library="BlueShift" deviceset="6CONTACT_ULTRAFIT_R/A" device=""/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+12V" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="ESC2-V" library="BlueShift" deviceset="2CONTACT_ULTRAFIT_VERT" device=""/>
<part name="ESC2-M" library="BlueShift" deviceset="3CONTACT_ULTRAFIT_VERT" device=""/>
<part name="P+5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+12V" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="ESC3-V" library="BlueShift" deviceset="2CONTACT_ULTRAFIT_VERT" device=""/>
<part name="ESC3-M" library="BlueShift" deviceset="3CONTACT_ULTRAFIT_VERT" device=""/>
<part name="P+6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+12V" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="ESC4-V" library="BlueShift" deviceset="2CONTACT_ULTRAFIT_VERT" device=""/>
<part name="ESC4-M" library="BlueShift" deviceset="3CONTACT_ULTRAFIT_VERT" device=""/>
<part name="P+8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+12V" device=""/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="ESC5-V" library="BlueShift" deviceset="2CONTACT_ULTRAFIT_VERT" device=""/>
<part name="ESC5-M" library="BlueShift" deviceset="3CONTACT_ULTRAFIT_VERT" device=""/>
<part name="P+9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+12V" device=""/>
<part name="GND11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="ESC6-V" library="BlueShift" deviceset="2CONTACT_ULTRAFIT_VERT" device=""/>
<part name="ESC6-M" library="BlueShift" deviceset="3CONTACT_ULTRAFIT_VERT" device=""/>
<part name="INTERBOARD-POWER" library="BlueShift" deviceset="2-CONTACT-SUPER" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="G$1" x="15.24" y="30.48" smashed="yes" rot="R90"/>
<instance part="P+3" gate="1" x="33.02" y="10.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="27.94" y="12.7" size="1.778" layer="96"/>
</instance>
<instance part="GND1" gate="1" x="33.02" y="5.08" smashed="yes" rot="R90">
<attribute name="VALUE" x="35.56" y="2.54" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+2" gate="1" x="-45.72" y="0" smashed="yes" rot="R270">
<attribute name="VALUE" x="-50.8" y="2.54" size="1.778" layer="96"/>
</instance>
<instance part="GND5" gate="1" x="-45.72" y="7.62" smashed="yes" rot="R90">
<attribute name="VALUE" x="-43.18" y="5.08" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND7" gate="1" x="58.42" y="30.48" smashed="yes" rot="R90">
<attribute name="VALUE" x="60.96" y="27.94" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="+3V1" gate="G$1" x="-15.24" y="35.56" smashed="yes" rot="R90">
<attribute name="VALUE" x="-10.16" y="33.02" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PI_POWER" gate="G$1" x="-27.94" y="30.48" smashed="yes">
<attribute name="NAME" x="-30.48" y="35.56" size="1.27" layer="94"/>
<attribute name="VALUE" x="-30.48" y="22.86" size="1.27" layer="94"/>
</instance>
<instance part="GND9" gate="1" x="-38.1" y="27.94" smashed="yes" rot="R270">
<attribute name="VALUE" x="-40.64" y="30.48" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="+3V2" gate="G$1" x="45.72" y="-20.32" smashed="yes">
<attribute name="VALUE" x="43.18" y="-25.4" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="ESC1-V" gate="G$1" x="22.86" y="7.62" smashed="yes" rot="R180">
<attribute name="NAME" x="25.4" y="2.54" size="1.27" layer="94" rot="R180"/>
<attribute name="VALUE" x="20.32" y="5.08" size="1.27" layer="94" rot="R90"/>
</instance>
<instance part="ESC1-M" gate="G$1" x="15.24" y="7.62" smashed="yes">
<attribute name="NAME" x="12.7" y="12.7" size="1.27" layer="94"/>
<attribute name="VALUE" x="17.78" y="10.16" size="1.27" layer="94" rot="R270"/>
</instance>
<instance part="VOLTAGE_CONVERTER" gate="G$1" x="-55.88" y="33.02" smashed="yes" rot="R180">
<attribute name="NAME" x="-58.42" y="25.4" size="1.27" layer="94"/>
<attribute name="VALUE" x="-50.8" y="40.64" size="1.27" layer="94" rot="R180"/>
</instance>
<instance part="GND8" gate="1" x="-43.18" y="27.94" smashed="yes" rot="R90">
<attribute name="VALUE" x="-40.64" y="25.4" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+7" gate="1" x="-43.18" y="38.1" smashed="yes" rot="R270">
<attribute name="VALUE" x="-48.26" y="40.64" size="1.778" layer="96"/>
</instance>
<instance part="INTERBOARD_DATA" gate="G$1" x="48.26" y="-30.48" smashed="yes" rot="R270">
<attribute name="NAME" x="53.34" y="-27.94" size="1.27" layer="94" rot="R270"/>
<attribute name="VALUE" x="50.8" y="-33.02" size="1.27" layer="94" rot="R180"/>
</instance>
<instance part="CONN1" gate="G$1" x="-2.54" y="0" smashed="yes">
<attribute name="VALUE" x="-7.62" y="12.7" size="1.778" layer="94"/>
<attribute name="NAME" x="0" y="-12.7" size="1.778" layer="94" rot="R180"/>
</instance>
<instance part="CONN2" gate="G$1" x="-2.54" y="-30.48" smashed="yes">
<attribute name="VALUE" x="-7.62" y="-17.78" size="1.778" layer="94"/>
<attribute name="NAME" x="0" y="-43.18" size="1.778" layer="94" rot="R180"/>
</instance>
<instance part="CONN3" gate="G$1" x="-55.88" y="-25.4" smashed="yes">
<attribute name="VALUE" x="-60.96" y="-12.7" size="1.778" layer="94"/>
<attribute name="NAME" x="-53.34" y="-38.1" size="1.778" layer="94" rot="R180"/>
</instance>
<instance part="P+4" gate="1" x="33.02" y="-5.08" smashed="yes" rot="R270">
<attribute name="VALUE" x="27.94" y="-2.54" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="33.02" y="-10.16" smashed="yes" rot="R90">
<attribute name="VALUE" x="35.56" y="-12.7" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="ESC2-V" gate="G$1" x="22.86" y="-7.62" smashed="yes" rot="R180">
<attribute name="NAME" x="25.4" y="-12.7" size="1.27" layer="94" rot="R180"/>
<attribute name="VALUE" x="20.32" y="-10.16" size="1.27" layer="94" rot="R90"/>
</instance>
<instance part="ESC2-M" gate="G$1" x="15.24" y="-7.62" smashed="yes">
<attribute name="NAME" x="12.7" y="-2.54" size="1.27" layer="94"/>
<attribute name="VALUE" x="17.78" y="-5.08" size="1.27" layer="94" rot="R270"/>
</instance>
<instance part="P+5" gate="1" x="33.02" y="-20.32" smashed="yes" rot="R270">
<attribute name="VALUE" x="27.94" y="-17.78" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="33.02" y="-25.4" smashed="yes" rot="R90">
<attribute name="VALUE" x="35.56" y="-27.94" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="ESC3-V" gate="G$1" x="22.86" y="-22.86" smashed="yes" rot="R180">
<attribute name="NAME" x="25.4" y="-27.94" size="1.27" layer="94" rot="R180"/>
<attribute name="VALUE" x="20.32" y="-25.4" size="1.27" layer="94" rot="R90"/>
</instance>
<instance part="ESC3-M" gate="G$1" x="15.24" y="-22.86" smashed="yes">
<attribute name="NAME" x="12.7" y="-17.78" size="1.27" layer="94"/>
<attribute name="VALUE" x="17.78" y="-20.32" size="1.27" layer="94" rot="R270"/>
</instance>
<instance part="P+6" gate="1" x="33.02" y="-35.56" smashed="yes" rot="R270">
<attribute name="VALUE" x="27.94" y="-33.02" size="1.778" layer="96"/>
</instance>
<instance part="GND4" gate="1" x="33.02" y="-40.64" smashed="yes" rot="R90">
<attribute name="VALUE" x="35.56" y="-43.18" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="ESC4-V" gate="G$1" x="22.86" y="-38.1" smashed="yes" rot="R180">
<attribute name="NAME" x="25.4" y="-43.18" size="1.27" layer="94" rot="R180"/>
<attribute name="VALUE" x="20.32" y="-40.64" size="1.27" layer="94" rot="R90"/>
</instance>
<instance part="ESC4-M" gate="G$1" x="15.24" y="-38.1" smashed="yes">
<attribute name="NAME" x="12.7" y="-33.02" size="1.27" layer="94"/>
<attribute name="VALUE" x="17.78" y="-35.56" size="1.27" layer="94" rot="R270"/>
</instance>
<instance part="P+8" gate="1" x="-20.32" y="-15.24" smashed="yes" rot="R270">
<attribute name="VALUE" x="-25.4" y="-12.7" size="1.778" layer="96"/>
</instance>
<instance part="GND10" gate="1" x="-20.32" y="-20.32" smashed="yes" rot="R90">
<attribute name="VALUE" x="-17.78" y="-22.86" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="ESC5-V" gate="G$1" x="-30.48" y="-17.78" smashed="yes" rot="R180">
<attribute name="NAME" x="-27.94" y="-22.86" size="1.27" layer="94" rot="R180"/>
<attribute name="VALUE" x="-33.02" y="-20.32" size="1.27" layer="94" rot="R90"/>
</instance>
<instance part="ESC5-M" gate="G$1" x="-38.1" y="-17.78" smashed="yes">
<attribute name="NAME" x="-40.64" y="-12.7" size="1.27" layer="94"/>
<attribute name="VALUE" x="-35.56" y="-15.24" size="1.27" layer="94" rot="R270"/>
</instance>
<instance part="P+9" gate="1" x="-20.32" y="-30.48" smashed="yes" rot="R270">
<attribute name="VALUE" x="-25.4" y="-27.94" size="1.778" layer="96"/>
</instance>
<instance part="GND11" gate="1" x="-20.32" y="-35.56" smashed="yes" rot="R90">
<attribute name="VALUE" x="-17.78" y="-38.1" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="ESC6-V" gate="G$1" x="-30.48" y="-33.02" smashed="yes" rot="R180">
<attribute name="NAME" x="-27.94" y="-38.1" size="1.27" layer="94" rot="R180"/>
<attribute name="VALUE" x="-33.02" y="-35.56" size="1.27" layer="94" rot="R90"/>
</instance>
<instance part="ESC6-M" gate="G$1" x="-38.1" y="-33.02" smashed="yes">
<attribute name="NAME" x="-40.64" y="-27.94" size="1.27" layer="94"/>
<attribute name="VALUE" x="-35.56" y="-30.48" size="1.27" layer="94" rot="R270"/>
</instance>
<instance part="INTERBOARD-POWER" gate="G$1" x="-58.42" y="2.54" smashed="yes">
<attribute name="NAME" x="-60.96" y="10.16" size="1.27" layer="94"/>
<attribute name="VALUE" x="-55.88" y="-2.54" size="1.27" layer="94" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="+12V" class="0">
<segment>
<pinref part="ESC1-V" gate="G$1" pin="2"/>
<pinref part="P+3" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="VOLTAGE_CONVERTER" gate="G$1" pin="GND"/>
<pinref part="P+7" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="ESC2-V" gate="G$1" pin="2"/>
<pinref part="P+4" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="ESC3-V" gate="G$1" pin="2"/>
<pinref part="P+5" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="ESC4-V" gate="G$1" pin="2"/>
<pinref part="P+6" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="ESC5-V" gate="G$1" pin="2"/>
<pinref part="P+8" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="ESC6-V" gate="G$1" pin="2"/>
<pinref part="P+9" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="INTERBOARD-POWER" gate="G$1" pin="12V"/>
<pinref part="P+2" gate="1" pin="+12V"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GND"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PI_POWER" gate="G$1" pin="2"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="ESC1-V" gate="G$1" pin="1"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="VOLTAGE_CONVERTER" gate="G$1" pin="VIN"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="ESC2-V" gate="G$1" pin="1"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="ESC3-V" gate="G$1" pin="1"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="ESC4-V" gate="G$1" pin="1"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="ESC5-V" gate="G$1" pin="1"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="ESC6-V" gate="G$1" pin="1"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="INTERBOARD-POWER" gate="G$1" pin="GND"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
</net>
<net name="N$14" class="1">
<segment>
<pinref part="X1" gate="G$1" pin="SDA"/>
<wire x1="50.8" y1="15.24" x2="45.72" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="INTERBOARD_DATA" gate="G$1" pin="1"/>
</segment>
</net>
<net name="+3V3" class="1">
<segment>
<pinref part="X1" gate="G$1" pin="3V3"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="INTERBOARD_DATA" gate="G$1" pin="3"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<wire x1="45.72" y1="-22.86" x2="50.8" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="VOLTAGE_CONVERTER" gate="G$1" pin="VOUT"/>
<pinref part="PI_POWER" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="33.02" x2="-35.56" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="1">
<segment>
<pinref part="X1" gate="G$1" pin="SCL"/>
<wire x1="48.26" y1="15.24" x2="48.26" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="INTERBOARD_DATA" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="CONN1" gate="G$1" pin="1-B"/>
<pinref part="ESC1-M" gate="G$1" pin="2"/>
<wire x1="5.08" y1="7.62" x2="7.62" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="ESC2-M" gate="G$1" pin="2"/>
<pinref part="CONN1" gate="G$1" pin="2-B"/>
<wire x1="7.62" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="CONN2" gate="G$1" pin="1-B"/>
<pinref part="ESC3-M" gate="G$1" pin="2"/>
<wire x1="5.08" y1="-22.86" x2="7.62" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="ESC5-M" gate="G$1" pin="3"/>
<pinref part="CONN3" gate="G$1" pin="1-A"/>
<wire x1="-45.72" y1="-15.24" x2="-48.26" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="CONN3" gate="G$1" pin="1-B"/>
<pinref part="ESC5-M" gate="G$1" pin="2"/>
<wire x1="-48.26" y1="-17.78" x2="-45.72" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="ESC5-M" gate="G$1" pin="1"/>
<pinref part="CONN3" gate="G$1" pin="1-C"/>
<wire x1="-45.72" y1="-20.32" x2="-48.26" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="CONN3" gate="G$1" pin="2-A"/>
<pinref part="ESC6-M" gate="G$1" pin="3"/>
<wire x1="-48.26" y1="-30.48" x2="-45.72" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="ESC6-M" gate="G$1" pin="2"/>
<pinref part="CONN3" gate="G$1" pin="2-B"/>
<wire x1="-45.72" y1="-33.02" x2="-48.26" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="CONN3" gate="G$1" pin="2-C"/>
<pinref part="ESC6-M" gate="G$1" pin="1"/>
<wire x1="-48.26" y1="-35.56" x2="-45.72" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="CONN2" gate="G$1" pin="2-C"/>
<pinref part="ESC4-M" gate="G$1" pin="1"/>
<wire x1="5.08" y1="-40.64" x2="7.62" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="ESC4-M" gate="G$1" pin="2"/>
<pinref part="CONN2" gate="G$1" pin="2-B"/>
<wire x1="7.62" y1="-38.1" x2="5.08" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="CONN2" gate="G$1" pin="2-A"/>
<pinref part="ESC4-M" gate="G$1" pin="3"/>
<wire x1="5.08" y1="-35.56" x2="7.62" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="ESC3-M" gate="G$1" pin="1"/>
<pinref part="CONN2" gate="G$1" pin="1-C"/>
<wire x1="7.62" y1="-25.4" x2="5.08" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="CONN2" gate="G$1" pin="1-A"/>
<pinref part="ESC3-M" gate="G$1" pin="3"/>
<wire x1="5.08" y1="-20.32" x2="7.62" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="ESC2-M" gate="G$1" pin="1"/>
<pinref part="CONN1" gate="G$1" pin="2-C"/>
<wire x1="7.62" y1="-10.16" x2="5.08" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="CONN1" gate="G$1" pin="2-A"/>
<pinref part="ESC2-M" gate="G$1" pin="3"/>
<wire x1="5.08" y1="-5.08" x2="7.62" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="ESC1-M" gate="G$1" pin="1"/>
<pinref part="CONN1" gate="G$1" pin="1-C"/>
<wire x1="7.62" y1="5.08" x2="5.08" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="CONN1" gate="G$1" pin="1-A"/>
<pinref part="ESC1-M" gate="G$1" pin="3"/>
<wire x1="5.08" y1="10.16" x2="7.62" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
