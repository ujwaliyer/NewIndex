using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IntegratingGoogleMap.Repository;
using IntegratingGoogleMap.Model;

public partial class Chart : System.Web.UI.Page
{

    #region Private Vars

    private GivingRepository repository = new GivingRepository();

    private IEnumerable<TotalDonationCause> totalDonationCauseList;

    #endregion

    #region Properties

    public IEnumerable<TotalDonationCause> TotalDonationCauseList
    {
        get
        {
            if (totalDonationCauseList == null)
            {
                totalDonationCauseList = repository.GetTotalDonationsCauseWise();
            }
            return totalDonationCauseList;
        }
    }

    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            LoadZipCode();
    }


    private void LoadZipCode()
    {
        ddlZip.DataSource = repository.GetAllZipCode().ToList();
        ddlZip.DataBind();
        //ddlZip.Items.Insert(0, new ListItem("--- Select Zip ---", ""));

    }
}