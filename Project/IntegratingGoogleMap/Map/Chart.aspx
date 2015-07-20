<%@ Page Language="C#" MasterPageFile="~/Chart.master" AutoEventWireup="true" CodeFile="Chart.aspx.cs" Inherits="Chart" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        $(function () {
            $("#accordion").accordion();
        });

        google.load('visualization', '1', { packages: ['corechart', 'bar'] });
        google.setOnLoadCallback(drawStacked);

        function drawStacked() {
            var data = google.visualization.arrayToDataTable([
              ['City', '2010 Population', '2000 Population'],
              ['New York City, NY', 8175000, 8008000],
              ['Los Angeles, CA', 3792000, 3694000],
              ['Chicago, IL', 2695000, 2896000],
              ['Houston, TX', 2099000, 1953000],
              ['Philadelphia, PA', 1526000, 1517000]
            ]);

            var options = {
                title: 'Population of Largest U.S. Cities',
                chartArea: { width: '100%' },
                isStacked: true,
                hAxis: {
                    title: 'Total Population',
                    minValue: 0,
                },
                vAxis: {
                    title: 'City'
                }
            };
            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }

    </script>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="panel panel-default">
        <div class="panel-body row">
            <div class="form-group col-md-3">
                <select class="form-control ">
                    <option>-- Select Country--</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <select class="form-control">
                    <option>-- Select State--</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <select class="form-control">
                    <option>-- Select Zip--</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <button type="submit" class="btn btn-primary">Get Report</button>
            </div>
        </div>
    </div>
    <div id="accordion">
        <h3>Total Donation: Causes</h3>
        <div>
            <ul class="list-group">
                <li class="list-group-item"><span class="badge">$&nbsp;1004</span>
                    Non-Profit Fundraising
                </li>
                <li class="list-group-item"><span class="badge">$&nbsp; 927</span>
                    Charity Fundraising
                </li>
                <li class="list-group-item"><span class="badge">$&nbsp; 112</span>
                    Church Fundraising
                </li>
                <li class="list-group-item"><span class="badge">$&nbsp; 34251</span>
                    Political Fundraising
                </li>
                <li class="list-group-item"><span class="badge">$&nbsp; 100</span>
                    School Fundraising
                </li>
            </ul>
        </div>
        <h3>Total Donation: Yearly</h3>
        <div>
            <div id="chart_div"></div>
        </div>
        <h3>Recommandations</h3>
        <div>
            <div class="alert alert-success" role="alert">
                <a href="#" class="alert-link">Good Point: Better check yourself, you're not looking too good.</a>
            </div>
            <div class="alert alert-info" role="alert">
                <a href="#" class="alert-link">Warning: Better check yourself, you're not looking too good.</a>
            </div>
            <div class="alert alert-warning" role="alert">
                <a href="#" class="alert-link">Min: Better check yourself, you're not looking too good.</a>
            </div>
            <div class="alert alert-danger" role="alert">
                <a href="#" class="alert-link">Max: Better check yourself, you're not looking too good.</a>
            </div>
        </div>
    </div>
</asp:Content>
