<%@ Page Title="" Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="ZipCode.aspx.cs" Inherits="ZipCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">

    <script src="Scripts/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script type="text/javascript">

        // Load the Visualization API and the piechart package.
        google.load('visualization', '1.0', { 'packages': ['corechart'] });

        // Set a callback to run when the Google Visualization API is loaded.
        google.setOnLoadCallback(drawChart1);

        google.setOnLoadCallback(drawChart2);

        google.setOnLoadCallback(drawChart3);

        google.setOnLoadCallback(drawChart4);

        google.setOnLoadCallback(drawChart5);

        google.setOnLoadCallback(drawChart6);

        google.setOnLoadCallback(drawChart7);

        google.setOnLoadCallback(drawChart8);

        // Callback that creates and populates a data table, 
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart1() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Charity Fundraising', 20],
              ['Cancer Fundraising', 12],
              ['Church Fundraising', 4],
              ['Political Fundraising', 4],
              ['School Fundraising', 10]
            ]);

            // Set chart options
            var options = {
                'title': 'Current Year Donations: Based on zip code selected',
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div1'));
            chart.draw(data, options);
        }

        function drawChart2() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Charity Fundraising', 7],
              ['Cancer Fundraising', 11],
              ['Church Fundraising', 6],
              ['Political Fundraising', 2],
              ['School Fundraising', 14]
            ]);

            // Set chart options
            var options = {
                'title': 'Current Year Donations: Based on zip code selected',
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div2'));
            chart.draw(data, options);
        }

        function drawChart3() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Charity Fundraising', 1],
              ['Cancer Fundraising', 15],
              ['Church Fundraising', 3],
              ['Political Fundraising', 12],
              ['School Fundraising', 6]
            ]);

            // Set chart options
            var options = {
                'title': 'Current Year Donations: Based on zip code selected',
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div3'));
            chart.draw(data, options);
        }

        function drawChart4() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Charity Fundraising', 7],
              ['Cancer Fundraising', 5],
              ['Church Fundraising', 5],
              ['Political Fundraising', 2],
              ['School Fundraising', 10]
            ]);

            // Set chart options
            var options = {
                'title': 'Current Year Donations: Based on zip code selected',
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div4'));
            chart.draw(data, options);
        }

        function drawChart5() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Charity Fundraising', 2],
              ['Cancer Fundraising', 5],
              ['Church Fundraising', 15],
              ['Political Fundraising', 12],
              ['School Fundraising', 10]
            ]);

            // Set chart options
            var options = {
                'title': 'Current Year Donations: Based on zip code selected',
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div5'));
            chart.draw(data, options);
        }

        function drawChart6() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Charity Fundraising', 12],
              ['Cancer Fundraising', 5],
              ['Church Fundraising', 5],
              ['Political Fundraising', 2],
              ['School Fundraising', 10]
            ]);

            // Set chart options
            var options = {
                'title': 'Current Year Donations: Based on zip code selected',
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div6'));
            chart.draw(data, options);
        }

        function drawChart7() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Charity Fundraising', 2],
              ['Cancer Fundraising', 2],
              ['Church Fundraising', 5],
              ['Political Fundraising', 12],
              ['School Fundraising', 10]
            ]);

            // Set chart options
            var options = {
                'title': 'Current Year Donations: Based on zip code selected',
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div7'));
            chart.draw(data, options);
        }

        function drawChart8() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Causes');
            data.addColumn('number', 'Total Revenue ($)');
            data.addRows([
              ['Charity Fundraising', 12],
              ['Cancer Fundraising', 2],
              ['Church Fundraising', 15],
              ['Political Fundraising', 12],
              ['School Fundraising', 10]
            ]);

            // Set chart options
            var options = {
                'title': 'Current Year Donations: Based on zip code selected',
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div8'));
            chart.draw(data, options);
        }

        $(document).ready(function () {

            showChart(1);

            $("#btnReport").click(function () {
                var zip = $("#ddlZipCode option:selected").text();
                switch (zip) {
                    case "04563": showChart(1); break;
                    case "04564": showChart(2); break;
                    case "12342": showChart(3); break;
                    case "04613": showChart(4); break;
                    case "41096": showChart(5); break;
                    case "41012": showChart(6); break;
                    case "29680": showChart(7); break;
                    case "24481": showChart(8); break;
                }
            });
        });


        function showChart(num) {
            for (var i = 1; i < 9 ; i++) {
                var obj = '#chart_div' + i;
                if (i == num) {
                    $(obj).show();
                }
                else {
                    $(obj).hide();
                }
            }
        }

    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <style>
        .row
        {
            margin-top: 40px;
            width: 100% !important;
        }

            .row > span
            {
                padding-right: 30px;
            }
    </style>
    <div class="row">
        <span class="country"><b>Country:</b> USA</span>
        <span>
            <span>Select Zip Code: </span>
            <select id="ddlZipCode">
                <option value="">04563</option>
                <option value="">04564</option>
                <option value="">12342</option>
                <option value="">04613</option>
                <option value="">41096</option>
                <option value="">41012</option>
                <option value="">29680</option>
                <option value="">24481</option>
            </select>
        </span>
        <span>
            <input type="button" value="Get Report" id="btnReport" />
        </span>
    </div>
    <div class="row">
        <div id="chart_div1" style="width:700px; height:400px;">
        </div>
    </div>
    <div class="row">
        <div id="chart_div2" style="width:700px; height:400px;">
        </div>
    </div>
    <div class="row">
        <div id="chart_div3" style="width:700px; height:400px;">
        </div>
    </div>
    <div class="row">
        <div id="chart_div4" style="width:700px; height:400px;">
        </div>
    </div>
    <div class="row">
        <div id="chart_div5">
        </div>
    </div>
    <div class="row">
        <div id="chart_div6">
        </div>
    </div>
    <div class="row">
        <div id="chart_div7">
        </div>
    </div>
    <div class="row">
        <div id="chart_div8">
        </div>  
    </div>
</asp:Content>

