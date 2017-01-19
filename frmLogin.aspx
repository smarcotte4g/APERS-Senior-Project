<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <p />
        <table>
            <tr>
                <td></td><td></td>
            </tr>
            <tr>
                <td><asp:Login ID="Login1" runat="server" TitleText="Log In" 
                        DisplayRememberMe="False" onauthenticate="Login1_Authenticate" DestinationPageUrl="~/Default2.aspx"></asp:Login></td> <td></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCusError" runat="server" Text="Incorrect User Name or Password." Visible="false"></asp:Label></td> <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
         </center>
</asp:Content>

