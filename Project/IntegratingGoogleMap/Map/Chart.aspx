<%@ Page Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="Chart.aspx.cs" Inherits="Chart" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        $(function () {
            $("#accordion").accordion();
        });

        google.load('visualization', '1', { packages: ['corechart', 'bar'] });
        google.setOnLoadCallback(drawStacked);

        function drawStacked() {
            var data1 = google.visualization.arrayToDataTable([
                ['Causes', 'Total Donations', { role: 'style' }],
                ['Charity Fundraising', 8.94, '#b87333'],
                ['Cancer Fundraising', 10.49, 'silver'],
                ['Church Fundraising', 19.30, 'gold'],
                ['Political Fundraising', 21.45, 'color: #e5e4e2'],
                ['School Fundraising', 11.45, 'color: #e5e4e2'],
            ]);

            var data = google.visualization.arrayToDataTable([
              ['City', '2010 Donations', '2000 Donations'],
              ['New York City, NY', 11, 12],
              ['Los Angeles, CA', 15, 17],
              ['Chicago, IL', 10, 9],
              ['Houston, TX', 20, 34],
              ['Philadelphia, PA', 12, 7]
            ]);

            var options = {
                title: 'U.S. Cities Donation Reports',
                chartArea: { width: '100%' },
                isStacked: true,
                hAxis: {
                    title: 'Total Donations ($)',
                    minValue: 0,
                },
                vAxis: {
                    title: 'City'
                }
            };
            var options1 = {
                title: 'U.S. Cities: Donated to a cause',
                chartArea: { width: '100%' },
                isStacked: true,
                hAxis: {
                    title: 'Total Donations ($)',
                    minValue: 0,
                },
                vAxis: {
                    title: 'City'
                }
            };
            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
            var chart1 = new google.visualization.BarChart(document.getElementById('chart_div1'));
            chart.draw(data, options);
            chart1.draw(data1, options1);
        }

    </script>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="panel panel-default">
        <div class="panel-body row">
            <div class="form-group col-md-2">
                <strong>Selected Country: </strong>
                <span>USA</span>
            </div>
            <div class="form-group col-md-3">
                <asp:DropDownList ID="ddlZip" CssClass="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>
            </div>
            <div class="form-group col-md-7">
                <input type="button" id="btnGetReport" class="btn btn-primary" value="Get Report" />
            </div>
        </div>
    </div>

    <div id="accordion">
        <h3>Total Donation: Causes</h3>
        <div>
            <ul class="list-group">
                <li class="list-group-item"><span class="badge">$&nbsp;1004</span>
                    Cancer Fundraising
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
        <h3>Total Donation: Report Chart</h3>
        <div>

            <div id="chart_div"></div>

            <div id="chart_div1"></div>
        </div>
        <h3>Recommendations</h3>
        <div>
            <div class="alert alert-success" role="alert">
                <a href="#" class="alert-link">Bone cancer giving is showing an increasing trend in the past years.</a>
            </div>
            <div class="alert alert-info" role="alert">
                <a href="#" class="alert-link">Rehabilition for war veterns has shown a 20% decrease in the past 5 years.</a>
            </div>
            <div class="alert alert-warning" role="alert">
                <a href="#" class="alert-link">Food programmes for destitutes has received the maximum donation in the last year.</a>
            </div>
            <div class="alert alert-danger" role="alert">
                <a href="#" class="alert-link">Pathways To Peace has received the minimum donation in the last year.</a>
            </div>
        </div>
    </div>

</asp:Content>
