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

    protected void btnLaske_Click(object sender, EventArgs e)
    {
        try
        {
            double leveys = Double.Parse(tbLeveys.Text);
            double korkeus = Double.Parse(tbKorkeus.Text);
            double pintaAla = ((leveys)*(korkeus))/1000000;

            double karmi = Double.Parse(tbKarminLeveys.Text);
            double karminPiiri = (2*korkeus + 2* leveys + 8*karmi)/1000;

            double hinta = (1 + 0.30) * ((pintaAla * 45) + (karminPiiri * 100) + (150));

            // If no exceptions were thrown, update textfields
            lblPiiri.Text = karminPiiri.ToString();
            lblPintaAla.Text = pintaAla.ToString();
            lblTarjousHinta.Text = hinta.ToString();
        }
        catch (Exception ex)
        {

            lblFeedback.Text = ex.Message;
        }
    }
}