<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmForms.aspx.cs" Inherits="frmForms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
.b {
 margin-right: 50px;
 
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="boxShadow" class="box-shadow">
<div class="container">
    <br />    
    <div class="form-container">
    <div class="b">
       <h1>New Patient Paperwork</h1>
       <div id="borderLine" style="border-top-style: outset; border-top-color: #C0C0C0; border-top-width: thick;"></div>
        <div class="tab-content"></div>
      </div>  
      <br />
        <div class="container">
        <div class="b">
            Please fill out and print the paperwork in the link below. Bring it with you to 
            your first appointment along with your insurance card and a photo ID. We cannot schedule your first appointment until this information is received and reviewed by our physician. 
            New patients are expected to arrive at least 10 minutes early. New patients who 
            arrive late will need to reschedule.
            <br />
            <br />
            <strong><a href="forms/Patient Registration Information.pdf">New Patient Application Form</a></strong>&nbsp;
            <br />
            <br />
            Your medical records are considered with the utmost confidentiality.
            Our HIPAA privacy policy may be reached by <strong><a href="forms/Notice of Privacy Practices.pdf">Clicking Here</a></strong>.
            <br />
            <br />
            Also, your written signature is required for any release of medical records or information, 
            please fill out this <strong><a href="forms/Release Records.pdf">Records Release Form</a></strong> and submit it to us.<br />
            <br />
            Previous doctor&#39;s records should be requested from their respective offices. 
            X-ray films may be picked up at the facility where they were taken if needed for 
            an appointment with a specialist.
            <br />
            <br />
            <span><a href="http://get.adobe.com/reader/?promoid=BUIGO">Adobe Reader is required to download form. Get Adobe Reader Free: <em>Click Here. </em></a></span>
            <br />
            <br />
            <br />
             <br />
            <br />
        </div>
        <div class="tab-content"></div>
        </div>
    </div>
</div>
</div>
</asp:Content>

