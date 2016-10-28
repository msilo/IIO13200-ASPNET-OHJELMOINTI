using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //DataTable dt = JAMK.IT.DBDemoxOy.GetDataSimple();
            DataTable dt = JAMK.IT.DBDemoxOy.GetDataReal();
            GridView.DataSource = dt;
            GridView.DataBind();
        }
        catch (Exception ex)
        {
            lblFeedBack.Text = ex.Message;
        }
    }
}