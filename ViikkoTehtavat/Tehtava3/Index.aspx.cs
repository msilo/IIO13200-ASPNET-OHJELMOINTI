using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{

    public String time = DateTime.Now.ToString("dd.MM.yyyy");

    private int erotus;

    public int Erotus
    {
        get { return erotus; }
        set { erotus = value; }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        erotus = 0;
    }

    protected void cdrCalendar_SelectionChanged(object sender, EventArgs e)
    {
        DateTime now = DateTime.Now;
        TimeSpan i = cdrCalendar.SelectedDate - now;
        erotus = i.Days;
    }
}