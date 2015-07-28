using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ZipCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static object[] GetChartData()
    {
        List<GoogleChartData> data = new List<GoogleChartData>();
        data.Add(new GoogleChartData() { SLID = 1001, ProductCategory = "Charity Fundraising", RevenueAmount = 1203 });
        data.Add(new GoogleChartData() { SLID = 1021, ProductCategory = "Cancer Fundraising", RevenueAmount = 1229 });
        data.Add(new GoogleChartData() { SLID = 1022, ProductCategory = "Church Fundraising", RevenueAmount = 1113 });
        data.Add(new GoogleChartData() { SLID = 1023, ProductCategory = "Political Fundraising", RevenueAmount = 1100 });
        data.Add(new GoogleChartData() { SLID = 1024, ProductCategory = "School Fundraising", RevenueAmount = 1002 });


        var chartData = new object[data.Count + 1];
        chartData[0] = new object[]{
                "Product Category",
                "Revenue Amount"
            };
        int j = 0;
        foreach (var i in data)
        {
            j++;
            chartData[j] = new object[] { i.ProductCategory, i.RevenueAmount };
        }

        return chartData;
    }
    protected void btnREport_Click(object sender, EventArgs e)
    {

    }
}