<%@ Page Title="" Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="5Year.aspx.cs" Inherits="_5Year" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Year', 'Catholic Charities USA', "Children's Hunger Fund", 'National Rural Water Association', 'Human Rights Foundation', 'Free Software Foundation'],
              ['2011', 1270, 240, 300, 323, 400],
              ['2012', 1030, 540, 600, 1232, 200],
              ['2013', 1000, 400, 253, 876, 123],
              ['2014', 1170, 460, 332, 987, 200],
              ['2015', 660, 1120, 500, 1000, 400]

            ]);

            var options = {
                title: 'Last 5 Years of Donation',
                hAxis: { title: 'Year', titleTextStyle: { color: '#333' } },
                vAxis: { minValue: 0 }
            };

            var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="chart_div" style="width: 700px; height: 400px">
        <%-- Here Chart Will Load --%>
    </div>
</asp:Content>

