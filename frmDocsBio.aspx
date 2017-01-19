<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmDocsBio.aspx.cs" Inherits="frmDocsBio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: "Bell MT";
            color: #339933;
            font-size: 36px;
        }
        .style2
        {
            width: 31%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <div style="font-family:Arial" id="contactContainer">            
            <h3 class="style1">Our Providers</h3>
        </div>
        <table width="958" border="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="20px" align="left" valign="top"> &nbsp;</td>
                    <td width="634px" height="1089px" align="left" valign="top">
                        <p>
                            <font face="Arial" size="6" color="#339933">E</font>
                            <span class="contentText" style="font-size:13px;">
                                xperience, clear communication and life-long learning are three values we hold onto tightly when we consider our providers. We consider these to be core attributes which allows a health care professional to establish trust with their patients. Trust is the foundation of any healthy relationship and your relationship with your health care provider is your most valuable asset when making decisions about a preventative or corrective treatment.
                            </span>
                        </p>
                        <p class="contentText" style="font-size:13px;">
                            Our providers (listed below) each bring something special and unique to our staff. As you look to find the right health professional for you and your loved ones, please click on any of our providers to learn more about them.
                        </p>
                        <p class="contentText" style="font-size:13px;">
                            &nbsp;</p>
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <th height="120" width="206" align="left" valign="top" scope="row" class="style2">
                                        <p>
                                            <a href="frmTran.aspx">
                                                <img src="img/Dr.Tran.jpg" height="120" width="206" vspace="5" border="0" align="left">                                            
                                            </a>
                                        </p>
                                        <p>
                                            <a href="frmTran.aspx" style="border-style: none; border-color: inherit; border-width: 0; width:181px; height:39;">An Tran, M.D.</a>
                                        </p>
                                    </th>
                                    <td align="left" valign="top">
                                        <p>
                                            <a href="frmO’Connor.aspx">
                                                <img src="img/Dr.O’Connor.jpg" height="120" width="206" vspace="5" border="0" 
                                                align="left">                                            
                                            </a>
                                        </p>
                                        <p>
                                            <a href="frmO’Connor.aspx" style="width:190;height:39;border:0;">Dalys O’Connor, M.D.</a>
                                        </p>
                                    </td>
                                    <td align="left" valign="top">
                                        <p>
                                            <a href="frmWaynes.aspx">
                                                <img src="img/Dr.Waynes.jpg" width="206" vspace="5" border="0" align="left">                                            
                                            </a>
                                        </p>
                                        <p>
                                            <a href="frmWaynes.aspx" style="width:190;height:39;border:0;">David Waynes, M.D.</a>
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>    
        </table>
    </div>
</asp:Content>

