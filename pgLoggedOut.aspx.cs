using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

/// <summary>
/// This page is in place so if the user hits the back button after logging out
/// they will automatically be taken back to the login page.
/// </summary>

public partial class pgLoggedOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            // signs out user and automatically takes them to login page
            FormsAuthentication.SignOut();
            Response.Redirect("pgLogin.aspx");

        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        // auto redirect to login
        Response.Redirect("pgLogin.aspx");
    }
}