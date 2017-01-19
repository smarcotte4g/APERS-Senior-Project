<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmAppointments.aspx.cs" Inherits="frmAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a class="hidden-lg hidden-md text-center  center-block" style="margin-top:1px; margin-bottom:0px;" href="Default.aspx">	
		            
		        </a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="text-center">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/CitrusLogo.png" AlternateText="Citrus Medical Centre" Height="100" Width="400"/>
                    <p>
                        <i class="icon-envelope"></i>info.citrusmedclinic@gmail.com&nbsp;&nbsp;&nbsp;&nbsp;
                        <i class="icon-phone"></i>      Call Us:  "<strong>(480) 399-7957</strong>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="form-container">
        <div class="col-md-8" style="background-color:Orange">
            <h1>Request An Appointment</h1>
        </div>
    </div>
    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="column-container" style="float:left; position:relative; width:100%; min-height:1px; padding-left:15px; padding-right:15px;">
                    <div class="appointment-request">
                        <p>Please fill out the information below</p>
                        <asp:Label ID="Label1" runat="server" Text="First Name:" CssClass="lblApptRequest">First Name (required)</asp:Label>
                        <br />
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="txtApptRequest"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your First Name" ControlToValidate="txtFirstName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<br />
                        <asp:Label ID="Label2" runat="server" Text="Last Name:" CssClass="lblApptRequest">Last Name (required)</asp:Label>
                        <br />
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="txtApptRequest"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your Last Name" ControlToValidate="txtLastName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<br />
                        <asp:Label ID="Label3" runat="server" Text="Your Email:" CssClass="lblApptRequest">Your Email (required)</asp:Label>
                        <br />
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtApptRequest"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your email address" ControlToValidate="txtEmail" Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Please enter a valid email" ControlToValidate="txtEmail" 
                            Display="Dynamic" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Type of appointment:" CssClass="lblApptRequest">Type of appointment (required)</asp:Label>
                        <br />
                        <asp:DropDownList ID="ddApptType" runat="server" CssClass="txtApptRequest">
                            <asp:ListItem Value="Family Physician - Dr. An Tran - Accepting New Patients!">Family Physician - Dr. An Tran - Accepting New Patients!</asp:ListItem>
                            <asp:ListItem Value="General Practice - Dr. Dalys O'Conner">General Practice - Dr. Dalys O'Conner</asp:ListItem>
                            <asp:ListItem Value="Internal Medicine - Dr. David Waynes">Internal Medicine - Dr. David Waynes</asp:ListItem>
                            <asp:ListItem Value="Walk-in Physician - Open 10am - 5pm">Walk-in Physician - Open 10am - 5pm</asp:ListItem>                                        
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Have you seen this provider before?" CssClass="lblApptRequest">Have you seen this provider before?</asp:Label>
                        <br />
                        <asp:DropDownList ID="ddProvider" runat="server" CssClass="txtApptRequest">
                            <asp:ListItem Value="Yes I have">Yes I have</asp:ListItem>
                            <asp:ListItem Value="No I haven't">No I haven't</asp:ListItem>
                        </asp:DropDownList>    
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Preferred Day(s) Available" CssClass="lblApptRequest">Preferred Day(s) Available (required)</asp:Label>
                        <asp:CheckBoxList ID="cbDay" runat="server" CssClass="txtApptRequest">
                            <asp:ListItem Value="Monday">Monday</asp:ListItem>
                            <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                            <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                            <asp:ListItem Value="Thurday">Thurday</asp:ListItem>
                            <asp:ListItem Value="Friday">Friday</asp:ListItem>
                        </asp:CheckBoxList>
                        <asp:Label ID="Label7" runat="server" Text="Preferred Time of Day" CssClass="lblApptRequest">Preferred Time of Day (required)</asp:Label>
                        <br />
                        <asp:DropDownList ID="ddTime" runat="server" CssClass="txtApptRequest">
                            <asp:ListItem Value="10am-12pm">Morning 10am-12pm</asp:ListItem>
                            <asp:ListItem Value="Afternoon 12pm-3pm">Afternoon 12pm-3pm</asp:ListItem>
                            <asp:ListItem Value="Late Afternoon 3pm-5pm">Late Afternoon 3pm-5pm</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label8" runat="server" Text="Additional Information" CssClass="lblApptRequest">Additional Information</asp:Label>
                        <br />
                        <asp:TextBox ID="txtMessage" runat="server" Height="100px" Width="500px"></asp:TextBox>
                        <br />
                        <asp:CheckBox ID="cbAgreement" runat="server" CssClass="txtApptRequest" />
                        <span>I have read and accept the </span>
                        <a href="frmClinicPolicies.aspx"><u>Clinic Policies</u></a>
                        <br />
                        <p>Please only click the "Send" button once you fill out all the information. If you do not receive a phone call or email from Reception 
                        within 1-2 business days, please call (480) 399-7957</p>
                        <asp:Button ID="btnApptRequest" runat="server" Text="Send" CssClass="btnDash" OnClick="btnApptRequest_Click" />
                        <br />
                        <asp:Label ID="lblApptRequestError" runat="server" Text="" Visible="false"></asp:Label>
                        <br />
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>    
</asp:Content>

