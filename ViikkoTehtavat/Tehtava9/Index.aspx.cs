using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;
using System.Threading.Tasks;
using System.Net;

// http://json2csharp.com/
public class TimeTableRow
{
    public string stationShortCode { get; set; }
    public int stationUICCode { get; set; }
    public string countryCode { get; set; }
    public string type { get; set; }
    public bool trainStopping { get; set; }
    public bool commercialStop { get; set; }
    public string commercialTrack { get; set; }
    public bool cancelled { get; set; }
    public string scheduledTime { get; set; }
}

public class RootObject
{
    public int trainNumber { get; set; }
    public string departureDate { get; set; }
    public int operatorUICCode { get; set; }
    public string operatorShortCode { get; set; }
    public string trainType { get; set; }
    public string trainCategory { get; set; }
    public string commuterLineID { get; set; }
    public bool runningCurrently { get; set; }
    public bool cancelled { get; set; }
    public long version { get; set; }
    public List<TimeTableRow> timeTableRows { get; set; }
}

public partial class Index : System.Web.UI.Page
{
    private const string url = "http://rata.digitraffic.fi/api/v1/";
    private string urlParameters = "schedules/1?departure_date=2015-03-01";
    private RootObject root;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            string json = getTestData();
            root = Convert(json);
            lblFeedBack.Text = root.version.ToString();
            gvData.DataSource = root.timeTableRows;
            gvData.DataBind();
        }
        catch (Exception ex)
        {
            lblFeedBack.Text = ex.Message;
        }

    }

    private string getTestData()
    {
        string filename = "http://rata.digitraffic.fi/api/v1/schedules/1?departure_date=2015-03-01";

        using (WebClient wc = new WebClient())
        {
            var json = wc.DownloadString(filename);
            return json;
        }


    }

    private RootObject Convert(string json)
    {
        RootObject root = JsonConvert.DeserializeObject<RootObject>(json);

        return root;
    }
}