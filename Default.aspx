<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
.b {
display:inline-block;
position: relative;
margin: 1%;
float:center;
max-width:100%;
max-height:300px;
/*background-color: lightgrey;*/
}
</style>
<style>
.c {
 margin-left: 30px;
 
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="boxShadow" class="box-shadow">
 <div class="c">
    <asp:Label ID="WelcomeID" runat="server" BorderStyle="None" Font-Bold="False" 
        Font-Overline="False" Font-Size="X-Large" Text="Welcome to APERS!"></asp:Label>
 </div>
    <br />
    <br />
    <br />
 <div class="c">
    <asp:Label ID="SubheadlineID" runat="server" Font-Size="Medium" 
        Text="Here at APERS, you have an opportunity to get help for your needs of health. Stop worrying and start getting a checkup today! Stop by the APERS site to make an appointment with one of our fine doctors in the clinic, ask an employee if you have any questions or concerns, or pay any expenses online. "></asp:Label>
 </div>
 <br />
  <div id="borderLine" style="border-top-style: outset; border-top-color: #C0C0C0; border-top-width: thick;"></div>
   <br />
    <br />
<div class="b">
        <asp:Label ID="Singuplbl" runat="server" Font-Names="Calibri" Font-Size="Medium" 
        Text="Sign Up Today"></asp:Label>
        <br />
    <asp:Label ID="NotifyLbl" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Get Notify! "></asp:Label>


    
    <form accept-charset="UTF-8" action="https://ap187.infusionsoft.com/app/form/process/8c140b7772c37aec004e2c97067ae0c9" class="infusion-form" method="POST">
    <input name="inf_form_xid" type="hidden" value="8c140b7772c37aec004e2c97067ae0c9" />
    <input name="inf_form_name" type="hidden" value="Sign up for newsletter" />
    <input name="infusionsoft_version" type="hidden" value="1.42.0.34" />
        <label for="inf_field_Email">Email *</label>
        <input class="infusion-field-input-container" id="inf_field_Email" name="inf_field_Email" type="text" />
        <input type="submit" value="Submit" />
</form>
<script type="text/javascript" src="https://ap187.infusionsoft.com/app/webTracking/getTrackingCode?trackingId=10a8e44000da793e95a9a2173be8e4c0"></script>

    
    <br /><br />
    <br /><br />
    <br />
    <asp:Label ID="Questionlbl" runat="server" Font-Bold="True" Font-Size="Medium" 
        Text="Got a question?"></asp:Label>
        <br />
    <asp:Label ID="Label2" runat="server" 
        Text="Here at APERS, we can assist if you have any questions, concerns,<br /> or just want any additional information."></asp:Label>
    <asp:HyperLink ID="Questionlnk" runat="server" NavigateUrl="~/frmContact.aspx">Got a question? Click here!</asp:HyperLink>
</div>

<div class="b">
    <br /><br />
    <br />
    <asp:Label ID="Patientlbl" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="Black" Text="For patients:"></asp:Label>
        <br />
    <asp:HyperLink ID="Apptlnk" runat="server" Font-Size="14px" 
        ForeColor="#333333" 
        ToolTip="Click here to know how to make an appointment (**You must be logged in in order to proceed**)." NavigateUrl="~/frmAppointments.aspx">How Do I Make An Appointment?</asp:HyperLink>
   <br />
    <asp:HyperLink ID="Locationlnk" runat="server" Font-Size="14px" 
        ForeColor="#333333" 
        ToolTip="Click here to find the location, opening hours, and directions to the clinic" NavigateUrl="~/frmMap.aspx">Location, Hours, Directions</asp:HyperLink>
   <br />
    <asp:HyperLink ID="Paymentlbl" runat="server" Font-Size="14px" 
        ForeColor="#333333" 
        ToolTip="Clikc here to make payments(**Must be singed in in order to proceed**)" NavigateUrl="~/frmBilling.aspx">Make a payment</asp:HyperLink>
   <br />
    <asp:HyperLink ID="PatientInfolbl" runat="server" Font-Size="14px" 
        ForeColor="#333333" 
        ToolTip="Click here to find out more about patient care and medical information" NavigateUrl="~/frmFAQ.aspx">Patient Care and Medical Information</asp:HyperLink>
        <br />
        <br />
        <br /> 
        <br />
    <br />
 </div>
 </div>
</asp:Content>

