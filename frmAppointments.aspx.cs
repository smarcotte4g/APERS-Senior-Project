using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class frmAppointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // check permission level and redirect if needed
        if (Session["User_Status"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }

    }
    protected void btnApptRequest_Click(object sender, EventArgs e)
    {
        
    }
}
