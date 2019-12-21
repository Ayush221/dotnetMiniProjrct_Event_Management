using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using InfowayEventManager.Dal;

namespace InfowayEventManager.Events
{
    public partial class EventDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InfowayEventDal dal = new InfowayEventDal();
            DataTable eventsTable = dal.getEventsList(int.Parse(Request.QueryString["id"]));
            eventhead.Text = eventsTable.Rows[0][1].ToString();
            eventid.Text = eventsTable.Rows[0][0].ToString();
            eventName.Text = eventsTable.Rows[0][1].ToString();
            host.Text = eventsTable.Rows[0][2].ToString();
            venue.Text = eventsTable.Rows[0][3].ToString();
            sdate.Text = eventsTable.Rows[0][4].ToString();
            edate.Text = eventsTable.Rows[0][5].ToString();
            stime.Text = eventsTable.Rows[0][6].ToString();
            etime.Text = eventsTable.Rows[0][7].ToString();
            fees.Text = eventsTable.Rows[0][8].ToString();
            pdate.Text = eventsTable.Rows[0][9].ToString();
            rdate.Text = eventsTable.Rows[0][10].ToString();
            logo.ImageUrl = eventsTable.Rows[0][11].ToString();

        }
    }
}