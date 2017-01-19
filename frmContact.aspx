<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmContact.aspx.cs" Inherits="frmContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: "Bell MT";
            color: #339933;
            font-size: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="font-family:Arial" id="contactContainer">            
            <h3 class="style1"><em>Contact Citrus Medical Center</em></h3>
                <table width="100%" cellpadding="0" cellspacing"0">
                    <tbody>
                    <tr>
                    <td>
                    <table border="0" width="100%">
                        <tbody>
                            <tr>
                                <td></td>
                                <td rowspan="2" align="right" valign="top">
                                    <div style="float:right">
                                        <img max-height="20px" src="img/contact us.jpg" alt="Contact" align="middle" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td rowspan="6" valign="top" width="100">
                                                    Address:
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    Citrus Medical Center
                                                    <br/>
                                                    2051 W Warner Rd, Ste 5
                                                    <br/>
                                                    Chandler, AZ 85224
                                                    <br/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <br />
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td width="100">
                                                    Telephone:
                                                </td>
                                                <td>
                                                    (480) 399-7957
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <br />
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td width="100" valign="top">
                                                    Information:
                                                </td>
                                                <td>
                                                    <strong>Please note that email is checked during office hours Monday through 
                                                    Friday intermittently only.</strong>
                                                    <br />
                                                    <br />
                                                    <strong>If you have an emergency, please call 911 or go to the nearest emergency department.</strong>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <strong>
                                                        <a href="frmMap.aspx">Click here for Map and Direction</a>
                                                    </strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <br />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </td>
                    <td>&nbsp</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <br />
                            <form action="frmContact.aspx" method="post" name="emailForm" id="emailForm" class="form-validate">
                                <div class="contact_email">
                                    <asp:Label ID="label1" runat="server" Text="Enter your Name:" CssClass="lblEmail" AssociatedControlID="txtName"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtName" CssClass="txtEmail" runat="server" ToolTip="Your Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    &nbsp;<br />
                                    <asp:Label ID="label2" runat="server" Text="Email Address:" CssClass="lblEmail" AssociatedControlID="txtEmail"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtEmail" CssClass="txtEmail" runat="server" ToolTip="Your Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ErrorMessage="Please enter a valid email" ControlToValidate="txtEmail" 
                                        Display="Dynamic" ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                    <br />
                                    <asp:Label ID="label3" runat="server" Text="Message Subject:" CssClass="lblEmail" AssociatedControlID="txtMessageSubject"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtMessageSubject" CssClass="txtEmail" runat="server" ToolTip="Message Subject"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is required" ControlToValidate="txtMessageSubject" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:Label ID="label4" runat="server" Text="Enter your Message:" CssClass="lblEmail" AssociatedControlID="txtMessage"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtMessage" CssClass="txtEmail" runat="server" ToolTip="your phone nuber" Height="184px" Width="377px" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Comments are required" ControlToValidate="txtMessage" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />                                                                      
                                    <br />
                                </div>                                                               
                            </form>             
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following letter:" ForeColor="Red" />
                            <asp:Label ID="lblAddSuccess" runat="server" Font-Bold="true"></asp:Label>
                            <br />
                        </td>                 
                    </tr>
                    </tbody>
                </table>
                
                
                <div class="center">
                    <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="btnDash" OnClick="Button1_Click" />
                </div>
                <br />
                <br />
        </div>
    </div>
</asp:Content>

