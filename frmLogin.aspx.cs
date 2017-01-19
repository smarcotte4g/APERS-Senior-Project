using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class frmLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Code to remove the session cookie            
        Session.Remove("User_Status");
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        // map the path to database
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));

        // check if valid
        bool isValidUser = myBusinessLayer.CheckUserCredentials(Session, Login1.UserName, Login1.Password);
        Session["userName"] = Login1.UserName;
        //Session["User_ID"] = User_ID;
        //Initializes the security level
        string User_Status;
        string User_ID;
        User_ID = myBusinessLayer.user_ID(Login1.UserName);
        Session["User_ID"] = User_ID;
        // call the business layer to get secLevel
        User_Status = myBusinessLayer.secLevel(Login1.UserName);

        if (isValidUser)
        {

            //Switch to find the Security Level
            switch (User_Status)
            {
                //If they are an Admin
                case "Admin":
                    lblCusError.Visible = false;
                    //Authenticates the user
                    e.Authenticated = true;
                    //Creates the cookie
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                    //Sets a session as Admin
                    Session["User_Status"] = "Admin";
                    //Stops the switch
                    break;
                //If they are a User
                case "Employee":
                    lblCusError.Visible = false;
                    // Authenticates the user
                    e.Authenticated = true;
                    //Creates the cookie
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                    //Sets the session as User
                    Session["User_Status"] = "Employee";
                    //Stops the switch
                    break;
                //If they are a User
                case "Customer":
                    lblCusError.Visible = false;
                    // Authenticates the user
                    e.Authenticated = true;
                    //Creates the cookie
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                    //Sets the session as User
                    Session["User_Status"] = "Customer";
                    //Stops the switch
                    break;
                //Handles everything else
                default:
                    lblCusError.Visible = true;
                    //Doesn't authenticate
                    e.Authenticated = false;
                    //Stops the switch
                    break;
            }
            // validate access and where they need to be directed 
            if (Session["User_Status"] == "Admin")
            {
                Response.Redirect("frmManagePatients.aspx");
            }
            else if (Session["User_Status"] == "Employee")
            {
                Response.Redirect("frmManagePatients.aspx");
            }
            else if (Session["User_Status"] == "Customer")
            {
                if (Convert.ToInt32(User_ID) < 40)
                {
                    Response.Redirect("frmMyAccount2.aspx");
                }
                else
                {
                    Response.Redirect("frmMyAccount4.aspx");
                }
            }
            else
                Response.Redirect("frmLogin.aspx");
        }
    }
    
}