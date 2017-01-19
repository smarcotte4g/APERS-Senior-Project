<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmMyAccount.aspx.cs" Inherits="frmMyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <h2>My Account</h2>
    <asp:Label ID="lblAccount" runat="server" Text="" Font-Bold="True"></asp:Label>
    <table>
    <tr>
        <td>
            <asp:Label ID="lblFName" runat="server" Text="First Name: "></asp:Label></td><td>
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
                <td>
            <asp:Label ID="lblLName" runat="server" Text="Last Name: "></asp:Label></td><td>
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblInitial" runat="server" Text="Middle Initial: "></asp:Label></td><td>
                <asp:TextBox ID="txtInitial" runat="server"></asp:TextBox></td>
                <td>
            <asp:Label ID="lblDOB" runat="server" Text="DOB: "></asp:Label></td><td>
                <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblGender" runat="server" Text="Gender: "></asp:Label></td><td>
                <asp:TextBox ID="txtGender" runat="server"></asp:TextBox></td>
                <td>
            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label></td><td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblHomePhone" runat="server" Text="Home Phone: "></asp:Label></td><td>
                <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox></td>
                <td>
            <asp:Label ID="lblWorkPhone" runat="server" Text="Work Phone: "></asp:Label></td><td>
                <asp:TextBox ID="txtWorkPhone" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblOtherPhone" runat="server" Text="Other Phone: "></asp:Label></td><td>
                <asp:TextBox ID="txtOtherPhone" runat="server"></asp:TextBox></td>
                <td>
            <asp:Label ID="lblFaxNumber" runat="server" Text="Fax Number: "></asp:Label></td><td>
                <asp:TextBox ID="txtFaxNumber" runat="server"></asp:TextBox></td>
    </tr>
    
    </table>
    <table>
    <tr>
        <td>
            <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label></td><td>
                <asp:TextBox ID="txtAddress" runat="server" Width="370px"></asp:TextBox></td>
    </tr>
    </table>
    <table>
    <tr>
        <td>
            <asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label></td><td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                <td>
            <asp:Label ID="lblState" runat="server" Text="State: "></asp:Label></td><td>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblZipCode" runat="server" Text="Zip Code: "></asp:Label></td><td>
                <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblFamilyContact" runat="server" Text="Family Contact: "></asp:Label></td><td>
                <asp:TextBox ID="txtFamilyContact" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblFamilyRelation" runat="server" Text="Family Relation: "></asp:Label></td><td>
            <asp:TextBox ID="txtFamilyRelation" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblFamilyPhone" runat="server" Text="Family Phone: "></asp:Label></td><td>
                <asp:TextBox ID="txtFamilyPhone" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-primary" /></td><td></td>
    </tr>
</table>
</center>
</asp:Content>

