using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmMyAccount2 : System.Web.UI.Page
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
            lblFName.Text = dsFindUser.Register_Information[0].First_Name;
            lblLName.Text = dsFindUser.Register_Information[0].Last_Name;
            lblInitial.Text = dsFindUser.Register_Information[0].Initial;
            lblDOB.Text = dsFindUser.Register_Information[0].DOB.ToString();
            lblGender.Text = dsFindUser.Register_Information[0].Gender;
            lblEmail.Text = dsFindUser.Register_Information[0].Email;
            lblHomePhone.Text = dsFindUser.Register_Information[0].Home_Phone;
            lblWorkPhone.Text = dsFindUser.Register_Information[0].Work_Phone;
            lblOtherPhone.Text = dsFindUser.Register_Information[0].Other_Phone;
            lblFaxNumber.Text = dsFindUser.Register_Information[0].Fax_Number;
            lblAddress.Text = dsFindUser.Register_Information[0].Address;

            lblCity.Text = dsFindUser.Register_Information[0].City;
            lblState.Text = dsFindUser.Register_Information[0].State;
            lblZipCode.Text = dsFindUser.Register_Information[0].Zip_Code;
            lblFamilyContact.Text = dsFindUser.Register_Information[0].Family_Contact_Name;
            lblFamilyRelation.Text = dsFindUser.Register_Information[0].Family_Contact_Relationship;
            lblFamilyPhone.Text = dsFindUser.Register_Information[0].Family_Contact_Phone;

        }
        
        else
        {
            lblAccount.Text = "Please enter your information.";
        }
        Session["MoveFName"] = lblFName.Text;
        Session["MoveLName"] = lblLName.Text;
        Session["MoveInitial"] = lblInitial.Text;
        Session["MoveDOB"] = lblDOB.Text;
        Session["MoveGender"] = lblGender.Text;
        Session["MoveEmail"] = lblEmail.Text;
        Session["MoveHomePhone"] = lblHomePhone.Text;
        Session["MoveWorkPhone"] = lblWorkPhone.Text;
        Session["MoveOtherPhone"] = lblOtherPhone.Text;
        Session["MoveFaxNumber"] = lblFaxNumber.Text;
        Session["MoveAddress"] = lblAddress.Text;
        Session["MoveCity"] = lblCity.Text;
        Session["MoveState"] = lblState.Text;
        Session["MoveZipCode"] = lblZipCode.Text;
        Session["MoveFamilyContact"] = lblFamilyContact.Text;
        Session["MoveFamilyRelation"] = lblFamilyRelation.Text;
        Session["MoveFamilyPhone"] = lblFamilyPhone.Text;
    }

    private void updateForm(string results)
    {
        // update label 
        lblAccount.Text = results;

    }
}