using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    private string[] lines;

    public string[] Lines
    {
        get { return lines; }
        set { lines = value; }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lines = new string[10];
            lines = ReadFile(Server.MapPath("~/App_Data/Oppilaat.txt"));
        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }
    }

    private string[] ReadFile(string path)
    {
        string[] lines = File.ReadAllLines(path);
        return lines;
    }
}