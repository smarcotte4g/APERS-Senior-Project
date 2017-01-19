<%@ Page Title="Patient Portal" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="welcomeBox">
        <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>        
        <br />
        <span>
            <a class="nav-anchor" href="./?section=logout">Sign Out</a>
        </span> 
        <div class="navbar navbar-inverse">               
            <ul class="nav navbar-nav">                
			    <li id="nav-home" class="menu current">
                    <div>&nbsp;</div>
                    <span>                        
                        <a href="Default2.aspx" onclick="return false;">Home</a>
                    </span>
                </li>
			    <li id="nav-appointments" class="menu">
                    <div></div>
                    <span>
                        <a href="frmAppointments.aspx" onclick="return false;">Appointments</a>
                    </span>
                </li>
			    <li id="nav-billing"  class="Billing">
                    <div></div>
                    <span>
                        <a href="frmBilling.aspx" onclick="return false;">Billing</a>
                    </span>
                </li>        
            </ul>
        </div>
    </div>     
</asp:Content>
 
