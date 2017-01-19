<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmLoginRegistration.aspx.cs" Inherits="frmLoginRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br /><br />
    <asp:Label ID="Label1" runat="server" Text="Create a User Name and Password."></asp:Label><br />
<table>
    <tr>
        <td>
            <asp:Label ID="lblUserName" runat="server" Text="User Name:"></asp:Label></td><td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label></td><td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" PostBackUrl="~/frmRegistration.aspx" /></td>
    </tr>
</table>
</center>
</asp:Content>

