<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmRegistration.aspx.cs" Inherits="frmRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="boxShadow" class="box-shadow">
        <p>Create Your Account</p>
        <br />
        <p><strong><span class="style1">Please note: </span> </strong> <span class="style1">you will need to create an account to access additional features to this site.</span></p>
        <br />
<div id="borderLine" style="border-top-style: outset; border-top-color: #C0C0C0; border-top-width: thick;"></div>
        <br />
        <p>Enter the following information to sign up</p>
    <center>   
        <br />
        <br />  
        <asp:Label ID="lblPasswordError" runat="server" Text="Sign Up" 
            Font-Size="Medium"></asp:Label>
        <table>
            <tr>
                <td>
                 <br />
                 <br /> 
                    <asp:Label ID="lblUsername" runat="server" Text="Username: " Font-Bold="True"></asp:Label></td><td>
                 <br />
                 <br /> 
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                 <br />
                 <br /> 
                    <asp:Label ID="Label1" runat="server" Text="Password: " Font-Bold="True"></asp:Label></td><td>
                     <br />
                     <br /> 
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                 <br />
                 <br /> 
                    <asp:Label ID="Label2" runat="server" Text="Retype Password: " Font-Bold="True"></asp:Label></td><td>
                     <br />
                     <br /> 
                        <asp:TextBox ID="txtRPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td><td>
                <br />
                <br />
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" 
                    onclick="btnSignUp_Click" /></td>
            </tr>
        </table>
    </center>
    <br />
    <br />
    <br />
    <br />
    </div>
</asp:Content>
