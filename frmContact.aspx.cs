using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class frmContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                MailMessage sm = new MailMessage();
                sm.From = new MailAddress("info.citrusmedclinic@gmail.com");
                sm.To.Add("info.citrusmedclinic@gmail.com");
                sm.Subject = txtMessageSubject.Text;

                sm.Body = "<b>Sender Name: </b>" + txtName.Text + "<br/>" + "<b>Sender Email: </b>"
                    + txtEmail.Text + "<br/>" + "<b>Message: </b>" + txtMessage.Text;

                sm.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("info.citrusmedclinic@gmail.com", "apers2015");
                smtp.Send(sm);

                lblAddSuccess.ForeColor = System.Drawing.Color.Blue;
                lblAddSuccess.Text = "Thank you for contacting us";

                txtName.Enabled = false;
                txtEmail.Enabled = false;
                txtMessageSubject.Enabled = false;
                txtMessage.Enabled = false;
                Button1.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            // log - Event Viewer or table
            lblAddSuccess.ForeColor = System.Drawing.Color.Blue;
            lblAddSuccess.ForeColor = System.Drawing.Color.Red;
            lblAddSuccess.Text = "There is an unknown problem. Please try later";
        }

        ClearInputs(Page.Controls);
    }

    // this method clears all the textboxes
    private void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;

            ClearInputs(ctrl.Controls);
        }
    }
}
