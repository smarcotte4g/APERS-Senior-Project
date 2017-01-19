using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmManageTreament : System.Web.UI.Page
{
    clsBusinessLayer myBusinessLayer;

    // runs when the page is loaded
    protected void Page_Load(object sender, EventArgs e)
    {
        // returns path to directory
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));
    }
    // adds treatment to database
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        // stores results in memory
        string results = myBusinessLayer.InsertTreatment(txtAppointment_ID.Text, txtPatient_ID.Text, txtDoctor_ID.Text, txtNurse_ID.Text,
            txtProcedure_Room.Text, txtDiagnosis.Text, txtTreatment.Text, txtNotes.Text);

        // calls updateForm method with results
        updateForm(results);
    }
    // updates form with results from search
    private void updateForm(string results)
    {

        // update label 
        lblTreatment.Text = results;

    }
    // button to run clear control
    protected void btnClearForm_Click(object sender, EventArgs e)
    {
        // update label
        lblTreatment.Text = "Add a Patient Treatment";
        // runs control
        ClearInputs(Page.Controls);
    }

    // this clears all input fields
    private void ClearInputs(ControlCollection ctrls)
    {
        // clears all fields
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