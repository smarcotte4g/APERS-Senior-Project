using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmMyAccount4 : System.Web.UI.Page
{
    clsBusinessLayer myBusinessLayer;
    string strUser_ID = "";
        
    protected void Page_Load(object sender, EventArgs e)
    {
        // check permission level and redirect if needed
        if (Session["User_Status"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
        // returns path to directory
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));
        strUser_ID = Session["User_ID"].ToString();
        dsUser dsFindUser = myBusinessLayer.FindUser(strUser_ID);

    }

    // when update is clicked update account
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        // stores results in memory
        string results = myBusinessLayer.AddAccount(strUser_ID, txtFName.Text, txtLName.Text, txtInitial.Text,
            txtGender.Text, txtEmail.Text, txtHomePhone.Text, txtWorkPhone.Text,
            txtOtherPhone.Text, txtFaxNumber.Text, txtAddress.Text, txtCity.Text, txtState.Text, txtZipCode.Text,
            txtFamilyContact.Text, txtFamilyRelation.Text, txtFamilyPhone.Text);
        
        //calls updateForm method with results
        updateForm(results);
        Response.Redirect("frmMyAccount2.aspx");
    }

    private void updateForm(string results)
    {

        // update label 
        lblAccount.Text = results;

    }
}