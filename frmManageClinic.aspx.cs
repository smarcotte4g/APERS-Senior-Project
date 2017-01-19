using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmManageClinic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // check permission level and redirect if needed
        if (Session["User_Status"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
        else if (Session["User_Status"] == "Customer")
        {
            Response.Redirect("frmManagePatients.aspx");
        }
        else if (Session["User_Status"] == "Employee")
        {
            Response.Redirect("frmManagePatients.aspx");
        }
    }
}