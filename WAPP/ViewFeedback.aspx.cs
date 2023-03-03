using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAPP
{
    public partial class ViewFeedback : System.Web.UI.Page
    {
        datalayer dl;
        protected void Page_Load(object sender, EventArgs e)
        {
            dl = new datalayer();
            string qry = "select* from feedback";
            dl.fillgridView(qry, gv);

            lblmessage.Text = "";

        }
        static string std_id;
        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {
            std_id = gv.SelectedRow.Cells[1].Text.ToString();
            username.Text = gv.SelectedRow.Cells[2].Text.ToString();
            comment.Text = gv.SelectedRow.Cells[3].Text.ToString();
            rating.Text = gv.SelectedRow.Cells[4].Text.ToString();
            email.Text = gv.SelectedRow.Cells[5].Text.ToString();
        }

        protected void TextBox3_TextChanged(System.Object sender, System.EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {

            string qry = "delete from feedback where id='" + std_id + "'";
            lblmessage.Text = dl.insertUpdateCreateOrDelete(qry);

            username.Text = "";
            comment.Text = "";
            rating.Text = "";
            email.Text = "";

        }
    }
}