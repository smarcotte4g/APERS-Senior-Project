<%@ Page Title="Map" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmMap.aspx.cs" Inherits="frmMap" %>

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
    <div>
        <div style="font-family:Arial" id="contactContainer">
            <h3 class="style1"><em>Map & Directions</em></h3>
            <!--<div class="article-tools" style="position:absolute; display:block; margin:0 0 40px 0; padding:0;">
                <span>
                    <a href="" title="Email" onclick="window.open(this.href,'win2', 'width=400, height=350,menubar=yes,resizable=yes'); return false;">&nbsp;E-mail</a>
                </span>
                <span>
                    <a href="" title="Print" onclick="window.open(this.href,'win2', 'status=no,toolbar=no,scrollbars=yes,titlebar=no,menubar=no,width=640, height=480,directories=no,resizable=yes, location=no'); return false;" rel="nofollow">&nbsp;Print&nbsp;</a>
                </span>
            </div>-->
            <div>
                <table border="0" cellpadding="20" width="100%">
                    <tbody style="text-align:left;">
                        <tr style="text-align:left;">
                            <td style="text-align:center;" valign="top">                            
                                <br />
                                Citrus Medical Center
                                <br/>
                                2051 W Warner Rd, Ste 5
                                <br/>
                                Chandler, AZ 85224
                                <br/>
                                Office Phone: (480) 399-7957
                                <br />
                                <p style="margin: 1em 20px; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: center; font-size: 16px; background-color: rgb(255, 255, 255);">
                                    <strong>Clinic Hours</strong></p>
                                <table align="center" cellpadding="0" cellspacing="0" 
                                    style="color: rgb(51, 51, 51); font-family: Georgia, Cambria, 'Times New Roman', Times, serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: 16.8999996185303px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: url(http://www.charisclinic.com/templates/charis1/images/wht.jpg) repeat rgb(255, 255, 255);" 
                                    width="394">
                                    <tbody style="padding-left: 15px; padding-right: 15px; background: url(http://www.charisclinic.com/templates/charis1/images/wht.jpg) repeat;">
                                        <tr>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: right; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">Monday</span></th>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: left; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">10:00 AM - 05:00 PM</span></th>
                                        </tr>
                                        <tr>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: right; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">Tuesday</span></th>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: left; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">10:00 AM - 05:00 PM</span></th>
                                        </tr>
                                        <tr>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: right; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">Wednesday</span></th>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: left; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">10:00 AM - 05:00 PM</span></th>
                                        </tr>
                                        <tr>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: right; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">Thursday</span></th>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: left; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">10:00 AM - 05:00 PM</span></th>
                                        </tr>
                                        <tr>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: right; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">Friday</span></th>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: left; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">10:00 AM - 04:00 PM</span></th>
                                        </tr>
                                        <tr>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: right; font-size: 13px;" 
                                                valign="top">
                                                <span style="font-size: 10pt;">Saturdays </span>
                                            </th>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: left; font-size: 13px;" 
                                                valign="top">
                                                Closed</th>
                                        </tr>
                                        <tr>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: right; font-size: 13px;">
                                                <span style="font-size: 10pt;">Sunday</span></th>
                                            <th align="center" 
                                                style="font-weight: bold; padding: 8px; text-align: left; font-size: 13px;">
                                                <span style="font-size: 10pt;">Closed</span></th>
                                        </tr>
                                    </tbody>
                                </table>
                                <br />
                                We are on Southeast corner of Warner Rd and Loop 101 in Chandler, Arizona (near Chandler 
                                Regional Medical Center). We are located on the back side of the building 
                                opposite of Lee Lee Supermarket.
                                <br />
                                <br />                            
                            </td>
                        </tr>
                        <tr style="text-align:left;">
                            <td colspan="2" style="text-align:left;" align="center" valign="top">
                                <div style="text-align:center;">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3333.431196231876!2d-111.877574!3d33.333683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b076b9edf860d%3A0xe5764cc2c6fdc17c!2sCitrus+Medical+Clinic!5e0!3m2!1sen!2sus!4v1429371421537" width="400" height="300" frameborder="0" style="border:0"></iframe>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>    
    </div>
</asp:Content>

