using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WAPP
{
    public partial class AdminPage : System.Web.UI.Page
    {
        datalayer dl;
        protected void Page_Load(object sender, EventArgs e)
        {
            dl = new datalayer();
            string qry = "select* from userData";
            dl.fillgridView(qry, gv);

        }
        static string id;
        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {
            id = gv.SelectedRow.Cells[1].Text.ToString();
            full_name.Text = gv.SelectedRow.Cells[2].Text.ToString();
            username.Text = gv.SelectedRow.Cells[3].Text.ToString();
            var date = gv.SelectedRow.Cells[4].Text.ToString();
            var result = DateTime.Parse(date);

            string s = result.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture);
            dateOfBirth.Text = s;
            password.Text = gv.SelectedRow.Cells[5].Text.ToString();
            contact.Text = gv.SelectedRow.Cells[6].Text.ToString();
            email.Text = gv.SelectedRow.Cells[7].Text.ToString();
        }

        protected void Delete_Click(System.Object sender, System.EventArgs e)
        {

            string qry = "delete from userData where id='" + id + "'";
            lblmessage.Text = dl.insertUpdateCreateOrDelete(qry);


            full_name.Text = "";
            username.Text = "";
            dateOfBirth.Text = "";
            password.Text = "";
            contact.Text = "";
            email.Text = "";
        }

        protected void Save_Click(System.Object sender, System.EventArgs e)
        {
            string qry = "update userData set Full_Name='" + full_name.Text + "',Username='" + username.Text + "',Date_of_Birth='" + dateOfBirth.Text
               + "',Password='" + password.Text + "',Contact_No='" + contact.Text + "',Email_Address='" + email.Text
               + "' where Id='" + id + "'";
            lblmessage.Text = dl.insertUpdateCreateOrDelete(qry);


            full_name.Text = "";
            username.Text = "";
            dateOfBirth.Text = "";
            password.Text = "";
            contact.Text = "";
            email.Text = "";
        }
    }
}