using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Course
{
    public partial class BM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            overlay1.Attributes["style"] = "display:block;";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            overlay1.Attributes["style"] = "display:none;";
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            overlay2.Attributes["style"] = "display:block;";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            overlay2.Attributes["style"] = "display:none;";
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            overlay3.Attributes["style"] = "display:block;";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            overlay3.Attributes["style"] = "display:none;";
        }

        protected void Practice_Click(object sender, EventArgs e)
        {
            Response.Redirect("BMPractice.aspx");
        }

        protected void Test_Click(object sender, EventArgs e)
        {
            Response.Redirect("BMTest.aspx");
        }
    }
}