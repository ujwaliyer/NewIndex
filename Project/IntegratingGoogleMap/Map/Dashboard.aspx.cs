using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // GetChartData();
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static object[] GetChartData()
    {
        List<GoogleChartData> data = new List<GoogleChartData>();
        data.Add(new GoogleChartData() { SLID = 1001, ProductCategory = "Catholic Charities USA", RevenueAmount = 5600 });
        data.Add(new GoogleChartData() { SLID = 1021, ProductCategory = "Children's Hunger Fund", RevenueAmount = 12400 });
        data.Add(new GoogleChartData() { SLID = 1022, ProductCategory = "National Rural Water Association", RevenueAmount = 1213 });
        data.Add(new GoogleChartData() { SLID = 1023, ProductCategory = "Human Rights Foundation", RevenueAmount = 1200 });
        data.Add(new GoogleChartData() { SLID = 1024, ProductCategory = "Free Software Foundation", RevenueAmount = 7902 });


        var chartData = new object[data.Count + 1];
        chartData[0] = new object[]{
                "Causes",
                "Total Revenue ($)"
            };
        int j = 0;
        foreach (var i in data)
        {
            j++;
            chartData[j] = new object[] { i.ProductCategory, i.RevenueAmount };
        }

        return chartData;
    }
}