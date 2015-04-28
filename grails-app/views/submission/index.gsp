<%--
  Created by IntelliJ IDEA.
  User: Mitch
  Date: 1/29/2015
  Time: 1:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <style>
  body{
    margin: auto;
    height: inherit;
    max-width: inherit;
    background-color: #0b3841;
    color: white;
    font-size: 14px;
  }
  /* Might want to move the Jumbotron by adding top margin */
  .jumbotron{
    margin-top: 0px;
    background-color: #072d45;
    color: white;
  }
  .h2{
    font-size: 28px;
  }
  /* TOP NAVIGATION BAR
  /////////////////////////////////////*/
  ul#topnav {
    width:530px;
    list-style:none;
    height:71px;
    align-content: center;
  }
  ul#topnav li {
    display:inline;
  }
  ul#topnav li a {
    height:40px;
    float: left;
    text-indent:-9999px;
  }
  ul#topnav li#topnav-1 a {
    width:106px;
    height:71px;
    background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
    -webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
    -moz-filter: brightness(1.8) grayscale(1) opacity(.7);
    filter: brightness(1.8) grayscale(1) opacity(.7);
  }
  ul#topnav  li#topnav-1 a:hover {
    background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
    -webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
    -moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
    filter: brightness(1.2) grayscale(.5) opacity(.9);
    height:71px;
  }
  ul#topnav  li#topnav-1 a.current {
    background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }
  ul#topnav li#topnav-1a a {
    width:106px;
    height:71px;
    background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
  }
  ul#topnav  li#topnav-1a a:hover {
    background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }
  ul#topnav  li#topnav-1a a.current {
    background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }
  ul#topnav li#topnav-2 a {
    width:106px;
    height:71px;
    background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
    -webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
    -moz-filter: brightness(1.8) grayscale(1) opacity(.7);
    filter: brightness(1.8) grayscale(1) opacity(.7);
  }
  ul#topnav  li#topnav-2 a:hover {
    background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
    -webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
    -moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
    filter: brightness(1.2) grayscale(.5) opacity(.9);
  }
  ul#topnav  li#topnav-2 a.current {
    background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }

  ul#topnav li#topnav-2a a {
    width:106px;
    height:71px;
    background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */

  }
  ul#topnav  li#topnav-2a a:hover {
    background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;

  }
  ul#topnav  li#topnav-2a a.current {
    background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }
  ul#topnav li#topnav-3 a {
    width:106px;
    background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
    -webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
    -moz-filter: brightness(1.8) grayscale(1) opacity(.7);
    filter: brightness(1.8) grayscale(1) opacity(.7);
  }
  ul#topnav  li#topnav-3 a:hover {
    background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
    -webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
    -moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
    filter: brightness(1.2) grayscale(.5) opacity(.9);
  }
  ul#topnav  li#topnav-3 a.current {
    background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }

  ul#topnav li#topnav-3a a {
    width:106px;
    background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;

  }
  ul#topnav  li#topnav-3a a:hover {
    background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;

  }
  ul#topnav  li#topnav-3a a.current {
    background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }

  ul#topnav li#topnav-4 a {
    width:106px;
    background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
    -webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
    -moz-filter: brightness(1.8) grayscale(1) opacity(.7);
    filter: brightness(1.8) grayscale(1) opacity(.7);
  }
  ul#topnav  li#topnav-4 a:hover {
    background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
    -webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
    -moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
    filter: brightness(1.2) grayscale(.5) opacity(.9);
  }
  ul#topnav  li#topnav-4 a.current {
    background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }

  ul#topnav li#topnav-4a a {
    width:106px;
    background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;

  }
  ul#topnav  li#topnav-4a a:hover {
    background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }
  ul#topnav  li#topnav-4a a.current {
    background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }
  ul#topnav li#topnav-5 a {
    width:106px;
    background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
    -webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
    -moz-filter: brightness(1.8) grayscale(1) opacity(.7);
    filter: brightness(1.8) grayscale(1) opacity(.7);
  }
  ul#topnav  li#topnav-5 a:hover {
    background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
    -webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
    -moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
    filter: brightness(1.2) grayscale(.5) opacity(.9);
  }
  ul#topnav  li#topnav-5 a.current {
    background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }

  ul#topnav li#topnav-5a a {
    width:106px;
    background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;

  }
  ul#topnav  li#topnav-5a a:hover {
    background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;

  }
  ul#topnav  li#topnav-5a a.current {
    background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
    height:71px;
  }
  .cc-selector input{
    margin:0;padding:0;
    -webkit-appearance:none;
    -moz-appearance:none;
    appearance:none;
  }
  .est{background-image:url(http://i.imgur.com/P0gNo8I.jpg);}
  .exact{background-image:url(http://i.imgur.com/8J1qSBh.jpg);}
  .smooth{background-image:url(http://i.imgur.com/f99Uvqm.jpg);}
  .rug{background-image:url(http://i.imgur.com/Skh70S5.jpg);}
  .snow{background-image:url(http://i.imgur.com/KZIEMKp.jpg);}
  .standard{background-image:url(http://i.imgur.com/ZHOFaow.jpg);}
  .metric{background-image:url(http://i.imgur.com/13P1BqO.jpg);}
  .tape{background-image:url(http://i.imgur.com/nWGHZOj.jpg);}
  .other{background-image:url(http://i.imgur.com/nVRH5TN.jpg);}
  .cc-selector input:active +.drinkcard-cc{opacity: .9;}
  .cc-selector input:checked +.drinkcard-cc{
    -webkit-filter: none;
    -moz-filter: none;
    filter: none;
  }
  .drinkcard-cc{
    cursor:pointer;
    background-repeat:no-repeat;
    display:inline-block;
    width:250px;height:40px;
    -webkit-transition: all 100ms ease-in;
    -moz-transition: all 100ms ease-in;
    transition: all 100ms ease-in;
    -webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
    -moz-filter: brightness(1.8) grayscale(1) opacity(.7);
    filter: brightness(1.8) grayscale(1) opacity(.7);
  }
  .drinkcard-cc:hover{
    -webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
    -moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
    filter: brightness(1.2) grayscale(.5) opacity(.9);
  }
  .drinkcar-cc{
    cursor:pointer;
    background-repeat:no-repeat;
    display:inline-block;
    width:160px;height:40px;
    -webkit-transition: all 100ms ease-in;
    -moz-transition: all 100ms ease-in;
    transition: all 100ms ease-in;
    -webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
    -moz-filter: brightness(1.8) grayscale(1) opacity(.7);
    filter: brightness(1.8) grayscale(1) opacity(.7);
  }
  .drinkcar-cc:hover{
    -webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
    -moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
    filter: brightness(1.2) grayscale(.5) opacity(.9);
  }
  .cc-selector input:active +.drinkcar-cc{opacity: .9;}
  .cc-selector input:checked +.drinkcar-cc{
    -webkit-filter: none;
    -moz-filter: none;
    filter: none;
  }
  .tb1{
    color: black;
  }
  </style>
  <meta name="layout" content="site"/>
  <r:require modules="bootstrap"/>
  <title></title>
  <asset:javascript src="geolocation.js"/>
  <asset:javascript src="check.js"/>
</head>

<body>
<div class="jumbotron jumb-margin">
  <div class="container" height="150">
    <h2 class="text-center">Mapping ICE</h2>
  </div>

</div>

<div id="latlong-out"></div>
&nbsp;&nbsp;&nbsp;<div id="map-canvas" style="width:300px; height:250px"></div>
<script>geoFindMe()</script>
<br/>
<g:form controller="measurement" action="save">
  &nbsp;&nbsp;&nbsp;Click location on map to change latitude and longitude below.<br/>
  &nbsp;&nbsp;&nbsp;<g:textField class="tb1" id="lat" name="locationA" size="4"/><g:textField class="tb1" id="long" name="locationL" size="4"/>
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:img uri="http://i.imgur.com/H73RWPB.jpg"/>
  <br/>
  <br/><h3>

    &nbsp;&nbsp;&nbsp;<g:textField class="tb1" name="measurementData" size="4" value ="0.0" required="true"/>
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:radioGroup name="measurementUnit" required="true" values="['Standard','Metric']"
                                  labels="['Standard','Metric']">
  <g:message code="${it.label}" />: ${it.radio}&nbsp;&nbsp;&nbsp;
</g:radioGroup>
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:radioGroup name="accuracy" required="true" values="['exact','estimate']"
                                  labels="['Exact','Estimate']">
  <g:message code="${it.label}" />: ${it.radio}&nbsp;&nbsp;&nbsp;
</g:radioGroup>
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:img uri="http://i.imgur.com/eEuqbFL.jpg"/>
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:radioGroup name="measuringDevice" required="true" values="['measuring Tape ','other']"
                                  labels="['Measuring Tape','Other']">
  <g:message code="${it.label}" />: ${it.radio}&nbsp;&nbsp;&nbsp;
</g:radioGroup>
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:img uri="http://i.imgur.com/YNZIO5P.jpg"/>
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:textField class="tb1" name="estimatedCovered" size="4" />%
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:img uri="http://i.imgur.com/F4vYbhE.jpg"/>
  <br/>
  <br/>
  &nbsp;&nbsp;&nbsp;<g:radioGroup name="texture" required="true" values="['snow','smooth','rug']"
                                  labels="['Snow Covered','Smooth', 'Rugged']">
  <g:message code="${it.label}" />: ${it.radio}&nbsp;&nbsp;&nbsp;
</g:radioGroup>
  <g:datePicker name="updateTime" precision="day"/>
  <br/>
  <br/>

  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
  &nbsp;&nbsp;&nbsp;<g:actionSubmit class="tb1" value="Save"/>
</g:form>
<br/>
</h3>

&nbsp;&nbsp;&nbsp;<ul id="topnav">

  <li id="topnav-1a"><a href='/Ice-Thickness/submission' title="H">Map Location</a></li>
  <li id="topnav-3"><a href='/Ice-Thickness/map' title="About Us">Submission</a></li>
  <li id="topnav-4"><a href='/Ice-Thickness/settings' title="Contact Us">Setting</a></li>
  <li id="topnav-5"><a href='/Ice-Thickness/help' title="Contact ">Help</a></li>
</ul>
<center></center>
</body>


</html>