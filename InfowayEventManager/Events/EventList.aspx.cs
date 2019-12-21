using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InfowayEventManager.Events
{
    public partial class EventList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write(GridView1.SelectedRow.Cells[0].Text);
          Response.Redirect("EventDetails.aspx?id="+ GridView1.SelectedRow.Cells[0].Text);
        }
    }
}