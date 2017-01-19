<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmMission.aspx.cs" Inherits="frmMission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #339933;
            font-family: Vijaya;
            font-size: 36px;
            text-align: center;
        }
        .style2
        {
            font-size: 24px;
            font-family: Vijaya;
            color: rgb(204, 102, 0);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="boxShadow" class="box-shadow">
    <div>
        <div style="font-family:Arial" id="contactContainer">
            <h3 class="style1">Our Philosophy</h3>
        </div>
        <div id="article-content">            
            <p style="text-align:left; position:relative;padding: 0px 0px 10px 10px; margin: 1em 0px;">
                &quot;When you come in, we listen.&quot;</p>
                <br />
                <div id="borderLine" style="border-top-style: outset; border-top-color: #C0C0C0; border-top-width: thick;"></div>
            <h2 class="style2" 
                
                style="line-height: 1em; font-weight: normal; padding: 0px 0px 0px 30px; margin: 1em 0px; letter-spacing:0;">Our Core Values</h2>
            <h4 style="line-height: normal; font-weight: normal; color: rgb(51, 102, 51); font-size: 16.25px; padding: 0px 0px 0px 60px; text-align: left; margin: 1em 0px; font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Access</h4>
            <p style="margin: 1em 20px; padding: 0px 0px 0px 60px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8999996185303px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                We believe everyone deserves health care &amp; work with you to remove barriers to 
                your best health.</p>
            <h4 style="line-height: normal; font-weight: normal; color: rgb(51, 102, 51); font-size: 16.25px; padding: 0px 0px 0px 60px; text-align: left; margin: 1em 0px; font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Respect</h4>
            <p style="margin: 1em 20px; padding: 0px 0px 0px 60px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8999996185303px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                We respect the&nbsp;dignity&nbsp;and value of all.</p>
            <h4 style="line-height: normal; font-weight: normal; color: rgb(51, 102, 51); font-size: 16.25px; padding: 0px 0px 0px 60px; text-align: left; margin: 1em 0px; font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Compassion</h4>
            <p style="margin: 1em 20px; padding: 0px 0px 0px 60px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8999996185303px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Everyone has a story.&nbsp; We are here to support you in your journey.</p>
            <h4 style="line-height: normal; font-weight: normal; color: rgb(51, 102, 51); font-size: 16.25px; padding: 0px 0px 0px 60px; text-align: left; margin: 1em 0px; font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Quality</h4>
            <p style="margin: 1em 20px; padding: 0px 0px 0px 60px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8999996185303px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                We practice care based on the latest treatment guidelines, with attentiveness to 
                costs.</p>
            <h4 style="line-height: normal; font-weight: normal; color: rgb(51, 102, 51); font-size: 16.25px; padding: 0px 0px 0px 60px; text-align: left; margin: 1em 0px; font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                Prevention</h4>
            <p style="margin: 1em 20px; padding: 0px 0px 0px 60px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8999996185303px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                We take the time to address nutrition, exercise programs, supplements, and other 
                components of your personalized plan.</p>
            <p style="text-align:left;">
                &nbsp;</p>
        </div>
    </div>
</div>
</asp:Content>

