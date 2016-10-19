using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetNumbers_Click(object sender, EventArgs e)
    {
        try
        {
            BLLotto lotto = new BLLotto();
            List<int> list;
            list = lotto.Lottery(Int32.Parse(rblMode.SelectedValue));
            foreach (var item in list)
                tbResults.Text += " " + item.ToString();
            tbResults.Text += "\n";
        }
        catch (Exception ex)
        {
            tbResults.Text = ex.Message;
        }
    }

    protected void btnClearNumbers_Click(object sender, EventArgs e)
    {
        tbResults.Text = "";
    }
}