<%@ Page Title="" Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="5Year.aspx.cs" Inherits="_5Year" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">

   
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">

        google.load("visualization", "1", { packages: ["corechart"] });

        google.setOnLoadCallback(drawChart);
        google.setOnLoadCallback(drawChart2);

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

        function drawChart2() {
            var data = google.visualization.arrayToDataTable([
              ['Year', 'Catholic Charities USA', "Children's Hunger Fund", 'National Rural Water Association', 'Human Rights Foundation', 'Free Software Foundation'],
              ['2006', 1200, 240, 400, 323, 400],
              ['2007', 1000, 640, 300, 1032, 550],
              ['2008', 1200, 300, 353, 876, 323],
              ['2009', 1170, 460, 432, 987, 200],
              ['2010', 660, 820, 500, 1200, 400],
              ['2011', 1270, 240, 300, 523, 430],
              ['2012', 1030, 540, 600, 1232, 230],
              ['2013', 1000, 400, 253, 876, 123],
              ['2014', 1170, 460, 332, 987, 200],
              ['2015', 660, 1120, 500, 1000, 400]

            ]);

            var options = {
                title: 'Last 10 Years of Donation',
                hAxis: { title: 'Year', titleTextStyle: { color: '#333' } },
                vAxis: { minValue: 0 }
            };

            var chart = new google.visualization.AreaChart(document.getElementById('chart_div2'));
            chart.draw(data, options);
        }

        $(document).ready(function () {
            $('a#Years').addClass('selected');
        });


    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <div id="chart_div" style="width: 700px; height: 400px">
            <%-- Here Chart Will Load --%>
        </div>
    </div>
    <div class="row">
        <div id="chart_div2" style="width: 700px; height: 400px">
            <%-- Here Chart Will Load --%>
        </div>
    </div>
</asp:Content>

