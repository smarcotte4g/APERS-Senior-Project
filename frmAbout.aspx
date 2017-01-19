<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmAbout.aspx.cs" Inherits="frmAbout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="boxShadow" class="box-shadow">
<br />
              <div class="text-center">
                    <p>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/CitrusLogo.png" AlternateText="Citrus Medical Centre" height="100" Width="400" CssClass="img" />
                        <br />
                        <i class="icon-envelope"></i>info.citrusmedclinic@gmail.com&nbsp;&nbsp;&nbsp;&nbsp;
                        <i class="icon-phone"></i>      Call Us:  "<strong>(480) 399-7957</strong>
                    </p>
                </div>
                <div id="borderLine" style="border-top-style: outset; border-top-color: #C0C0C0; border-top-width: thick;"></div>
    <div class="ContentText" 
        style="text-align:left; position:relative;padding: 60px 0px 60px 10px; margin: 1em 0px;">
        &nbsp;
        <p>Citrus Medical Center is a small family-centered practice that believes 
        personalized care and relationship building are the basis for improving health 
        outcomes.</p>
        <p>We have been serving the South East Valley of Arizona for the past 10 years. Our 
        practice base upon the values of preventative care and treatment. We provide 
        highly personalized primary care from pediatrics to geriatrics and everyone in 
        between.</p>
    </div>
    </div>
</asp:Content>

