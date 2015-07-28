<%@ Page Title="" Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="DonationDensity.aspx.cs" Inherits="DonationDensity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">

    <script src="Scripts/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1.1','packages':['geochart']}]}"></script>
    <script type="text/javascript">

        google.setOnLoadCallback(drawRegionsMap);
        function drawRegionsMap() {
            var data = google.visualization.arrayToDataTable([
              ['Country', 'Total Donations ($)'],
              ['Algeria', 136], ['Angola', 102], ['Benin', 121], ['Botswana', 121],
              ['Burkina Faso', 1221], ['Burundi', 233], ['Cameroon', 456],
              ['Canary Islands', 976], ['Cape Verde', 121],
              ['Central African Republic', 111], ['Ceuta', 987], ['Chad', 100],
              ['Comoros', 200], ['Cote d\'Ivoire',150],
              ['Democratic Republic of the Congo', 400], ['Djibouti', 350],
              ['Egypt', 500], ['Equatorial Guinea', 450], ['Eritrea', 740],
              ['Ethiopia', 0], ['Gabon', 0], ['Gambia', 13], ['Ghana', 5],
              ['Guinea', 10], ['Guinea-Bissau', 0], ['Kenya', 100],
              ['Lesotho', 200], ['Liberia', 6], ['Libya', 32], ['Madagascar', null],
              ['Madeira', 0], ['Malawi', 0], ['Mali', 12], ['Mauritania', 18],
              ['Mauritius', 0], ['Mayotte', 0], ['Melilla', 35],
              ['Morocco', 32], ['Mozambique',0], ['Namibia', 0],
              ['Niger', 114], ['Nigeria', 80], ['Republic of the Congo',0],
              ['Réunion', 400], ['Rwanda', 300], ['Saint Helena', 0],
              ['São Tomé and Principe', 0], ['Senegal', 150],
              ['Seychelles', 0], ['Sierra Leone', 700], ['Somalia',200],
              ['Sudan', 0], ['South Africa', 7000], ['South Sudan', 110],
              ['Swaziland', 400], ['Tanzania', 0], ['Togo', 0], ['Tunisia', 100],
              ['Uganda', 100], ['Western Sahara', 300], ['Zambia', 121],
              ['Zimbabwe', 100]
            ]);

            var options = {
                region: '002', // Africa
                colorAxis: { colors: ['#00853f', 'green', '#e31b23'] },
                backgroundColor: '#81d4fa',
                datalessRegionColor: '#f8bbd0',
                defaultColor: 'white',
            };

            var chart = new google.visualization.GeoChart(document.getElementById('geochart-colors'));
            chart.draw(data, options);
        };

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="geochart-colors" style="width: 750px; height: 500px; margin-top: 20px;">
        <%-- Here Chart Will Load --%>
    </div>
</asp:Content>

