<%@ Page Title="About" Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Dashboard</title>
    <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />
    <script src='https://api.tiles.mapbox.com/mapbox.js/v2.2.1/mapbox.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/v2.2.1/mapbox.css' rel='stylesheet' />
    <link href="Content/Site.css" rel="stylesheet" />
   
</head>
<body>
    <form id="Form1" runat="server" class="navbar-form">
        <header>
            <div class="content-wrapper">
                <div class="float-left">
                    <p class="site-title">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.jpg" Width="100%" Height="100" />
                    </p>
                </div>
            </div>
        </header>
        <div id="body">
            <div id='map'></div>
        </div>
    </form>
    <script>
        L.mapbox.accessToken = 'pk.eyJ1Ijoic2FjaGludHJpcGF0aGkiLCJhIjoiYmU1YzEzMDE0ZWQzMGI3M2JhNmI0NDRkNmYzNTIxMTcifQ.Jokrk6ZEIe5wTSkLfhmvkA';
        var map = L.mapbox.map('map', 'mapbox.streets')
            .setView([38, -102.0], 2);

        // As with any other AJAX request, this technique is subject to the Same Origin Policy:
        // http://en.wikipedia.org/wiki/Same_origin_policy
        var featureLayer = L.mapbox.featureLayer()
            .loadURL('https://wanderdrone.appspot.com/')
            // Once this layer loads, we set a timer to load it again in a few seconds.
            .on('ready', run)
            .addTo(map);

        function run() {
            featureLayer.eachLayer(function (l) {
                map.panTo(l.getLatLng());
            });
            window.setTimeout(function () {
                featureLayer.loadURL('https://wanderdrone.appspot.com/');
            }, 2000);
        }
    </script>

</body>
</html>

