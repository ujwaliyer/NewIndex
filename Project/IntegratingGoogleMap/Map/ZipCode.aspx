<%@ Page Title="" Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="ZipCode.aspx.cs" Inherits="ZipCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">

    <script src="Scripts/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script type="text/javascript">

        // Load the Visualization API and the piechart package.
        google.load('visualization', '1.0', { 'packages': ['corechart'] });

        // Set a callback to run when the Google Visualization API is loaded.
        google.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table, 
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

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
            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }



    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <style>
        .row
        {
            margin-top: 27px;
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
            <asp:Button ID="btnREport" runat="server" Text="Get Report" OnClick="btnREport_Click" />          
        </span>
    </div>
    <div id="chart_div" style="width: 700px; height: 400px">
        <%-- Here Chart Will Load --%>
    </div>
</asp:Content>

