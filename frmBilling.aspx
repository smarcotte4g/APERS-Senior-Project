<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmBilling.aspx.cs" Inherits="frmBilling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #339933;
            font-family: "Bell MT";
            font-size: 36px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="font-family:Arial" id="contactContainer">
            <h3 class="style1">
                <em>Billing</em>
            </h3>
        <p></p>
        <center>
        <asp:Label ID="lblBilling" runat="server" Text="Your Total Balance Due is: $40.00"></asp:Label>
            <p></p>
            <asp:Label ID="Label1" runat="server" Text="Your Due Date is: 06/28/2015"></asp:Label>
        <p></p>
        <asp:HyperLink ID="hyplPayBill" runat="server" NavigateUrl="https://ap187.infusionsoft.com/app/orderForms/APERS-50" Target="_blank">Pay Bill</asp:HyperLink>
        </center>
    </div>
</asp:Content>

