using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

            System.Diagnostics.Debug.WriteLine("inside Logout Fun");
            Session.Abandon();
            Session.Clear();

            System.Diagnostics.Debug.WriteLine("Session Deleted");
            Response.Redirect("HomePage.aspx");
        }
    }
}