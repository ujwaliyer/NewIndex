<%@ Page Title="" Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">

    <script src="Scripts/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script type="text/javascript">

        var chartData; // globar variable for hold chart data
        google.load("visualization", "1", { packages: ["corechart"] });

        // Here We will fill chartData

        $(document).ready(function () {

            $('a#Dashboard').addClass('selected');

            $.ajax({
                url: "Dashboard.aspx/GetChartData",
                data: "",
                dataType: "json",
                type: "POST",
                contentType: "application/json; chartset=utf-8",
                success: function (data) {
                    chartData = data.d;
                },
                error: function () {
                    alert("Error loading data! Please try again.");
                }
            }).done(function () {
                // after complete loading data
                google.setOnLoadCallback(drawChart);
                google.setOnLoadCallback(drawChart2);
                drawChart();
                drawChart2();
            });
        });

        function drawChart() {
            var data = google.visualization.arrayToDataTable(chartData);

            var options = {
                title: "Current Month Revenue",
                pointSize: 5
            };

            var pieChart = new google.visualization.PieChart(document.getElementById('chart_div'));
            pieChart.draw(data, options);

        }

        function drawChart2() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Catholic Charities USA', 5200],
              ["Children's Hunger Fund", 10400],
              ['National Rural Water Association', 900],
              ['Human Rights Foundation', 900],
              ['Free Software Foundation', 9902]
            ]);


            var options = {
                title: "Previous Month Revenue",
                pointSize: 5
            };

            var pieChart = new google.visualization.PieChart(document.getElementById('chart_div2'));
            pieChart.draw(data, options);
        }
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="chart_div" style="width: 800px; height: 400px">
        <%-- Here Chart Will Load --%>
    </div>

      <div id="chart_div2" style="width: 800px; height: 400px">
        <%-- Here Chart Will Load --%>
    </div>
</asp:Content>

