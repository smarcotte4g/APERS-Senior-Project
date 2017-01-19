using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmBilling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // check permission level and redirect if needed
        if (Session["User_Status"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
    }
}