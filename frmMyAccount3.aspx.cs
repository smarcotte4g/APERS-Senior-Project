using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmMyAccount3 : System.Web.UI.Page
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
    // This will render everything only on page load not button click
    protected void Page_PreRender(object sender, EventArgs e)
    {
        string FName = (string)(Session["MoveFName"]);
        string LName = (string)(Session["MoveLName"]);
        string Initial = (string)(Session["MoveInitial"]);
        string DOB = (string)(Session["MoveDOB"]);
        string Gender = (string)(Session["MoveGender"]);
        string Email = (string)(Session["MoveEmail"]);
        string HomePhone = (string)(Session["MoveHomePhone"]);
        string WorkPhone = (string)(Session["MoveWorkPhone"]);
        string OtherPhone = (string)(Session["MoveOtherPhone"]);
        string FaxNumber = (string)(Session["MoveFaxNumber"]);
        string Address = (string)(Session["MoveAddress"]);
        string City = (string)(Session["MoveCity"]);
        string State = (string)(Session["MoveState"]);
        string ZipCode = (string)(Session["MoveZipCode"]);
        string FamilyContact = (string)(Session["MoveFamilyContact"]);
        string FamilyRelation = (string)(Session["MoveFamilyRelation"]);
        string FamilyPhone = (string)(Session["MoveFamilyPhone"]);


        txtFName.Text = FName;
        txtLName.Text = LName;
        txtInitial.Text = Initial;
        txtDOB.Text = DOB;
        txtGender.Text = Gender;
        txtEmail.Text = Email;
        txtHomePhone.Text = HomePhone;
        txtWorkPhone.Text = WorkPhone;
        txtOtherPhone.Text = OtherPhone;
        txtFaxNumber.Text = FaxNumber;
        txtAddress.Text = Address;

        txtCity.Text = City;
        txtState.Text = State;
        txtZipCode.Text = ZipCode;
        txtFamilyContact.Text = FamilyContact;
        txtFamilyRelation.Text = FamilyRelation;
        txtFamilyPhone.Text = FamilyPhone;
    }

    // sends data to be updated
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        // stores results in memory
        string results = myBusinessLayer.UpdateAccount(strUser_ID, txtFName.Text, txtLName.Text, txtInitial.Text,
            Convert.ToDateTime(txtDOB.Text), txtGender.Text, txtEmail.Text, txtHomePhone.Text, txtWorkPhone.Text,
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