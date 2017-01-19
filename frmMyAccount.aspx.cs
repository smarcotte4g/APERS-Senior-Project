using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmMyAccount : System.Web.UI.Page
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


        if (dsFindUser.Register_Information.Rows.Count > 0)
        {
            txtFName.Text = dsFindUser.Register_Information[0].First_Name;
            txtLName.Text = dsFindUser.Register_Information[0].Last_Name;
            txtInitial.Text = dsFindUser.Register_Information[0].Initial;
            txtDOB.Text = dsFindUser.Register_Information[0].DOB.ToString();
            txtGender.Text = dsFindUser.Register_Information[0].Gender;
            txtEmail.Text = dsFindUser.Register_Information[0].Email;
            txtHomePhone.Text = dsFindUser.Register_Information[0].Home_Phone;
            txtWorkPhone.Text = dsFindUser.Register_Information[0].Work_Phone;
            txtOtherPhone.Text = dsFindUser.Register_Information[0].Other_Phone;
            txtFaxNumber.Text = dsFindUser.Register_Information[0].Fax_Number;
            txtAddress.Text = dsFindUser.Register_Information[0].Address;
            
            txtCity.Text = dsFindUser.Register_Information[0].City;
            txtState.Text = dsFindUser.Register_Information[0].State;
            txtZipCode.Text = dsFindUser.Register_Information[0].Zip_Code;
            txtFamilyContact.Text = dsFindUser.Register_Information[0].Family_Contact_Name;
            txtFamilyRelation.Text = dsFindUser.Register_Information[0].Family_Contact_Relationship;
            txtFamilyPhone.Text = dsFindUser.Register_Information[0].Family_Contact_Phone;

        }
        
        else
        {
            lblAccount.Text = "Please enter your information.";
        }
    }

    // when update is clicked update account
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        // stores results in memory
        string results = myBusinessLayer.UpdateAccount(strUser_ID, txtFName.Text, txtLName.Text, txtInitial.Text, 
            Convert.ToDateTime(txtDOB.Text),  txtGender.Text, txtEmail.Text, txtHomePhone.Text, txtWorkPhone.Text, 
            txtOtherPhone.Text, txtFaxNumber.Text, txtAddress.Text, txtCity.Text, txtState.Text, txtZipCode.Text, 
            txtFamilyContact.Text, txtFamilyRelation.Text, txtFamilyPhone.Text);

        //calls updateForm method with results
        updateForm(results);
    }

    private void updateForm(string results)
    {

        // update label 
        lblAccount.Text = results;

    }
}