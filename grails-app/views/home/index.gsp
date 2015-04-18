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
    <title>Book Store Home</title>
    <asset:javascript src="geoloc.js"/>
    <asset:javascript src="check.js"/>
</head>

<body>
<div class="jumbotron jumb-margin">
    <div class="container" height="150">
        <h2 class="text-center">Mapping ICE</h2>
    </div>

</div>
<center>
    <div id="latlong-out"></div>
    <div id="map-canvas" style="width:300px; height:250px"></div>
    <script>geoFindMe()</script>
    <br/>
    <g:textField class="tb1" id="lat" name="locationA" size="4" value ="0.0"/><g:textField class="tb1" id="long" name="locationL" size="4" value ="0.0"/>
    <br/>
    <g:img uri="http://i.imgur.com/H73RWPB.jpg"/>
    <br/>
    <br/><h3>
        <g:form controller="measurement" action="save">
            <g:textField class="tb1" name="measurementData" size="4" value ="0.0"/>
            <br/>
            <br/>
            <g:radioGroup name="accuracy" values="['exact','estimate']"
            labels="['Exact','Estimate']">
                <g:message code="${it.label}" />: ${it.radio}&nbsp;&nbsp;&nbsp;
        </g:radioGroup>
            <br/>
            <br/>
            <g:img uri="http://i.imgur.com/eEuqbFL.jpg"/>
            <br/>
            <br/>
            <g:radioGroup name="measuringDevice" values="['measuring','other']"
                          labels="['Measuring Tape','Other']">
                <g:message code="${it.label}" />: ${it.radio}&nbsp;&nbsp;&nbsp;
            </g:radioGroup>
            <br/>
            <br/>
            <g:img uri="http://i.imgur.com/YNZIO5P.jpg"/>
            <br/>
            <br/>
            <g:textField class="tb1" name="estimatedCovered" size="4" />%
            <br/>
            <br/>
            <g:img uri="http://i.imgur.com/F4vYbhE.jpg"/>
            <br/>
            <br/>
            <g:radioGroup name="texture" values="['snow','smooth','rug']"
                          labels="['Snow Covered','Smooth', 'Rugged']">
                <g:message code="${it.label}" />: ${it.radio}&nbsp;&nbsp;&nbsp;
            </g:radioGroup>
            <br/>
            <br/>
            <!-- Simple get location -->

            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
                <g:actionSubmit class="tb1" value="Save"/>
        </g:form>
</h3>

        <ul id="topnav">
            <li id="topnav-1"><a href="http://cshci-dev.mtu.edu:8081/Ice-Thickness/map" title="H">Home</a></li>
            <li id="topnav-3"><a href="http://cshci-dev.mtu.edu:8081/Ice-Thickness/submission" title="About Us">About Us</a></li>
            <li id="topnav-4"><a href="http://cshci-dev.mtu.edu:8081/Ice-Thickness/settings" title="Contact Us">Contact Us</a></li>
            <li id="topnav-5"><a href="http://cshci-dev.mtu.edu:8081/Ice-Thickness/help" title="Contact ">Contact</a></li>
        </ul>
</center>
</body>


</html>