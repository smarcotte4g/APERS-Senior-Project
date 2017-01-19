using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmManagePatients : System.Web.UI.Page
{
    clsBusinessLayer myBusinessLayer;

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

    // when patient button clicked find using patientID
    protected void btnFindPatient_Click(object sender, EventArgs e)
    {
        // search in business layer
        dsUser dsFindPatient = myBusinessLayer.FindPatient(txtPatientID.Text);

        if (dsFindPatient.Patient.Rows.Count > 0)
        {
            txtFName.Text = dsFindPatient.Patient[0].First_Name;
            txtLName.Text = dsFindPatient.Patient[0].Last_Name;
            txtPaymentID.Text = dsFindPatient.Patient[0].Payment_ID.ToString();
            txtRegisterID.Text = dsFindPatient.Patient[0].Register_ID.ToString();
            txtDoctorID.Text = dsFindPatient.Patient[0].Doctor_ID.ToString();
            txtHeight.Text = dsFindPatient.Patient[0].Patient_Height;
            txtWeight.Text = dsFindPatient.Patient[0].Patient_Weight;
            txtPhacisian.Text = dsFindPatient.Patient[0].Patient_FamilyPhacisian;
            txtNotes.Text = dsFindPatient.Patient[0].Patient_Note;
            txtHMO.Text = dsFindPatient.Patient[0].HMO;
            txtDOB.Text = dsFindPatient.Patient[0].DOB.ToString();
            txtBlood_Pressure.Text = dsFindPatient.Patient[0].Blood_Pressure;
            txtTemperature.Text = dsFindPatient.Patient[0].Temperature;
            txtPulse_Ox.Text = dsFindPatient.Patient[0].Pulse_Ox;
            txtHeart_Rate.Text = dsFindPatient.Patient[0].Heart_Rate;
            txtDiagnosis.Text = dsFindPatient.Patient[0].Diagnosis;
            txtFamily_History.Text = dsFindPatient.Patient[0].Family_History;
            txtSocial_History.Text = dsFindPatient.Patient[0].Social_History;

            lblPSearch.Text = "Record Found!";
            lblPastPrescriptions.Visible = true;
            lblPastTreatment.Visible = true;
            lblInsurance.Visible = true;
        }
        else
        {
            lblPSearch.Text = "No Records were found!";
            lblPastPrescriptions.Visible = false;
            lblPastTreatment.Visible = false;
            lblInsurance.Visible = false;
        }
    }

    // clear all txt fields
    protected void btnClearForm_Click(object sender, EventArgs e)
    {
        lblPSearch.Text = "";
        ClearInputs(Page.Controls);
        lblPastPrescriptions.Visible = false;
        lblPastTreatment.Visible = false;
        lblInsurance.Visible = false;
    }

    private void ClearInputs(ControlCollection ctrls)
    {
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

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        // stores results in memory
        string results = myBusinessLayer.UpdatePatient(txtPatientID.Text, txtFName.Text, txtLName.Text, Convert.ToInt32(txtPaymentID.Text),
            Convert.ToInt32(txtRegisterID.Text), Convert.ToInt32(txtDoctorID.Text), txtHeight.Text, txtWeight.Text,
            txtPhacisian.Text, txtNotes.Text, txtHMO.Text, Convert.ToDateTime(txtDOB.Text), txtBlood_Pressure.Text, txtTemperature.Text, txtPulse_Ox.Text,
            txtHeart_Rate.Text, txtDiagnosis.Text, txtFamily_History.Text, txtSocial_History.Text);

        //calls updateForm method with results
        updateForm(results);
    }

    private void updateForm(string results)
    {

        // update label 
        lblPSearch.Text = results;

    }
}