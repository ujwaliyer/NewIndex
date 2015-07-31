<%@ Page Title="" Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="LiveDonation.aspx.cs" Inherits="LiveDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
        google.load('visualization', '1', { 'packages': ['geochart'] });
        google.setOnLoadCallback(drawMarkersMap);

        function drawMarkersMap() {
            var data = google.visualization.arrayToDataTable([
              ['City', 'Total Donations($)', 'Area'],
              ['Rome', 2761477, 1285.31],
              ['Milan', 1324110, 181.76],
              ['Naples', 959574, 117.27],
              ['Turin', 907563, 130.17],
              ['Palermo', 655875, 158.9],
              ['Genoa', 607906, 243.60],
              ['Bologna', 380181, 140.7],
              ['Florence', 371282, 102.41],
              ['Fiumicino', 67370, 213.44],
              ['Anzio', 52192, 43.43],
              ['Ciampino', 38262, 11]
            ]);

            var options = {
                region: 'IT',
                displayMode: 'markers',
                colorAxis: { colors: ['green', 'blue'] }
            };

            var chart = new google.visualization.GeoChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        };


        $(document).ready(function () {
            $('a#Current').addClass('selected');
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <div id="chart_div" style="width: 700px; height: 400px"></div>
</asp:Content>

