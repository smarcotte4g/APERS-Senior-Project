<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmPasswordChange.aspx.cs" Inherits="frmPasswordChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<p />
<div align="right" class="container">
<div class="row">
                <div class="col-xs-7">
                    <asp:Label ID="lblPass" runat="server" Text="Change Password" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <asp:Label ID="lblPassword" runat="server" Text="New Password: "></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <asp:Label ID="lblPasswordAgain" runat="server" Text="Retype Password: "></asp:Label>
                    <asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <asp:Button ID="btnUpdatePass" runat="server" Text="Update" 
                        CssClass="btn btn-info" onclick="btnUpdatePass_Click" />
                </div>
            </div>
        </div>
</center>
</asp:Content>

