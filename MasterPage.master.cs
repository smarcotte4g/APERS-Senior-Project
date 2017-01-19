using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Status"] == "Customer")
        {
            hyplAppointment.Visible = true;
        }
        if (Session["User_Status"] == "Customer")
        {
            hyplMyAccount.Visible = true;
        }
        if (Session["User_Status"] == "Customer")
        {
            hyplLogout.Visible = true;
        }
        if (Session["User_Status"] == "Customer")
        {
            hyplBilling.Visible = true;
        }
        if (Session["User_Status"] == "Customer")
        {
            hyplRegister.Visible = false;
        }
        if (Session["User_Status"] == "Customer")
        {
            hyplLogin.Visible = false;
        }
    }
}
