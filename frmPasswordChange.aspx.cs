using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmPasswordChange : System.Web.UI.Page
{

    clsBusinessLayer myBusinessLayer;
    string strUser_ID = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // returns path to directory
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));
        strUser_ID = Session["User_ID"].ToString();
    }
    protected void btnUpdatePass_Click(object sender, EventArgs e)
    {
        if (txtPasswordAgain.Text == txtPassword.Text)
        {
            // stores results in memory
            string results = myBusinessLayer.UpdatePassword(strUser_ID, txtPassword.Text);

            // calls updateForm method with results
            updateForm(results);
        }
        else
        {
            lblPass.ForeColor = System.Drawing.Color.Red;
            lblPass.Text = "Passwords do not match!";
        }
    }

    private void updateForm(string results)
    {
        // clear fields 
        ClearInputs(Page.Controls);

        // update label 
        lblPass.Text = results;

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
}