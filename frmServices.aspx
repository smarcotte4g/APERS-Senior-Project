<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmServices.aspx.cs" Inherits="frmServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <div class="container">        
        <div class="row">
            <div class="col-md-12">
                <div class="text-center">
                    <p>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/CitrusLogo.png" AlternateText="Citrus Medical Centre" height="100" Width="400" />
                        <br />
                        <i class="icon-envelope"></i>info.citrusmedclinic@gmail.com&nbsp;&nbsp;&nbsp;&nbsp;
                        <i class="icon-phone"></i>      Call Us:  "<strong>(480) 399-7957</strong>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="form-container">
        <br />
        Citrus Medical Center is completely dedicated to our patients of all ages and 
        their well being. We provides you a single source for your health care needs. 
        We treat injuries in an expedient and efficient manner and help smooth the treatment road for chronic conditions. 
        We keep track of your health history through Electronic Medical Records (EMR) so your medical home doctor can provide important details about your needs to other health care providers on your treatment team. 
        Citrus Medical Center provides a comprehensive approach to your health care‚ ensuring continuity of care while keeping health care costs low.
        <br />
        <br />
        Patients can choose to schedule their Family Practice appointments in advance at times that are convenient for them. 
        You can call our office during working hours at <strong>(480) 399-7957</strong> or send us an <strong><a href="frmContact.aspx">Email</a></strong> 
        to make an appointment. We also offer our patients the ability to walk-in to 
        Citrus Medical Center whenever health care needs arise.
        <br />
        <br />
        The extensive list of services provided by Citrus Medical Center allows patients 
        a one stop shop to take care of routine medical care‚ evaluation and treatment 
        of acute and chronic conditions‚ along with coordination of all other care that 
        is not offered onsite. You will find a more complete list of our services below.
        <br />
        <br />
        <ul style="list-style-type: circle">
            <li>Regular Check-Ups</li>
            <li>Acute and Chronic Illness Care</li>
            <li>Same day sick appointments for new and established patients</li>
            <li>Vaccinations</li>
            <li>Blood Pressure Management</li>
            <li>Complete physical exams</li>
            <li>Well women examinations</li>
            <li>Blood drawn and tested</li>
            <li>Workman’s comp visits</li>
            <li>Disease prevention</li>
            <li>Dietary/Nutrition Counseling</li>
        </ul>
        <br />
        <br />
    </div>   
    
</asp:Content>

