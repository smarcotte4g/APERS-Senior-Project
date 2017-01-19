<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmMyAccount2.aspx.cs" Inherits="frmMyAccount2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<div class="container">
            <div class="row">
                <div class="col-xs-11">
    <asp:Label ID="Label18" runat="server" Text="My Account" Font-Bold="True" 
        Font-Size="X-Large"></asp:Label><br />
    <asp:Label ID="lblAccount" runat="server" Text="" Font-Bold="True"></asp:Label>
    </div>
    </div>
    </div>
    <div class="container">
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label1" runat="server" Text="First Name: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblFName" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label2" runat="server" Text="Last Name: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblLName" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label3" runat="server" Text="Middle Initial: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblInitial" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label4" runat="server" Text="DOB: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label5" runat="server" Text="Gender: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label6" runat="server" Text="Email: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label7" runat="server" Text="Home Phone: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblHomePhone" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label8" runat="server" Text="Work Phone: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblWorkPhone" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label9" runat="server" Text="Other Phone: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblOtherPhone" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label10" runat="server" Text="Fax Number: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblFaxNumber" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label11" runat="server" Text="Address: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label12" runat="server" Text="City: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblCity" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label13" runat="server" Text="State: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblState" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label14" runat="server" Text="Zip Code: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblZipCode" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label15" runat="server" Text="Family Contact: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblFamilyContact" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label16" runat="server" Text="Family Relation: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblFamilyRelation" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Label ID="Label17" runat="server" Text="Family Phone: " Font-Bold="True"></asp:Label>
                <asp:Label ID="lblFamilyPhone" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-11">
                <asp:Button ID="btnPassword" runat="server" Text="Change Password" CssClass="btn btn-success" PostBackUrl="~/frmPasswordChange.aspx" />
                <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary" PostBackUrl="~/frmMyAccount3.aspx" />
                </div>
            </div>
        </div>

</center>
</asp:Content>

