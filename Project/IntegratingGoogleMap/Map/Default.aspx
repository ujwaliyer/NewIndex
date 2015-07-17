<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>  
    <script type="text/javascript">

        var markers = [ 
            { 
                "title": 'Sachin',
                "lat": '18.232423',
                "lng": '72.231120',
                "description": 'This is testing'
            },
            { 
                "title": 'Sachin12',
                "lat": '18.180000',
                "lng": '73.201120',
                "description": 'This is testing12121'
            }
        ]
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.description);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>



</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="dvMap" style="width: 500px; height: 500px">
    </div>
</asp:Content>
