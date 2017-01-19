using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Text;

public partial class frmManageMedicine : System.Web.UI.Page
{
    clsBusinessLayer myBusinessLayer;

    // runs all page load
    protected void Page_Load(object sender, EventArgs e)
    {
        // check user status
        if (Session["User_Status"] == null)
        {
            Response.Redirect("frmLogin.aspx");
        }
        else if (Session["User_Status"] == "Customer")
        {
            Response.Redirect("frmManagePatients.aspx");
        }
        // returns path to directory
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));
    }

    // button click to add prescriptions to database
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        // stores results in memory
        string results = myBusinessLayer.InsertPrescription(txtPatient_ID.Text, txtDoctor_ID.Text, txtMedication_ID.Text, txtDosage.Text,
            txtFrequency.Text, txtQuantity.Text, txtInstructions.Text);

        // calls updateForm method with results
        updateForm(results);
    }
    // updates page with results
    private void updateForm(string results)
    {

        // update label 
        lblPrescription.Text = results;

    }

    // clear all txt fields
    protected void btnClearForm_Click1(object sender, EventArgs e)
    {
        // changes label
        lblPrescription.Text = "Add a Prescription";
        // runs control 
        ClearInputs(Page.Controls);
    }

    private void ClearInputs(ControlCollection ctrls)
    {
        // clears all input
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            else if (ctrl is DropDownList)
                ((DropDownList)ctrl).ClearSelection();
            else if (ctrl is RadioButton)
                ((RadioButton)ctrl).Checked = false;
            else
                ClearInputs(ctrl.Controls);
        }
    }
    
}