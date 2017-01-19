<%@ Page Title="FAQ" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmFAQ.aspx.cs" Inherits="frmFAQ" %>

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
    <div id="boxShadow" class="box-shadow">
        <div style="font-family:Arial" id="contactContainer">
            <h3 class="style1">Frequently Asked Questions</h3>
            <div class="article-tools" style="position:absolute; display:block; margin:0 0 40px 0; padding:0;">
                
            </div>
        </div>
        <br />
        <br />
        <div id="article-content">
            <p style="text-align:left;">
                <a target="_self" href="frmContact.aspx" title="Submit additional questions through Contact Us!">Submit additional questions through Contact Us!</a>
            </p>
            <br />
            <div id="borderLine" style="border-top-style: outset; border-top-color: #C0C0C0; border-top-width: thick;"></div>
            <br />
            <br />
            <div style="text-align:left;">
                <ul>
                    <li>
                        <strong>Which insurances do you take?</strong>
                    </li>
                </ul>
            </div>
            <p style="text-align:left;">
                "Citrus Medical Center accepts 
                Aetna, Ahcccs, Banner Health, Care 1st, Cigna, Health Net, Phoenix Health Plan, 
                United, United Healthcare Community Plan, and Uniform insurances."
            </p>
            <p style="text-align:left;">
                <span>
                If your insurance is not listed, 
                please contact your insurance company to see if we are 
                on the provider list.&nbsp;</span></p>
            <div style="text-align:left;">
                <ul>
                    <li>
                        <strong>Why do Citrus Medical Center providers do their own blood draws and paperwork?</strong>
                    </li>
                </ul>
            </div>
            <p style="text-align:left;">
                "Citrus Medical Center is committed to offering you personalized high quality care. Many medical offices have medical assistants and receptionists, which add considerable expense to the practice. By doing this work ourselves, and following a low overhead model, we can see 8-10 patients a day per doctor instead of 20-30 patients a day like many other family practices."
            </p>
            <div style="text-align:left;">
                <ul>
                    <li>
                        <strong>Can I really reach my own provider 24 hours a day?</strong>
                    </li>
                </ul>
            </div>
            <p style="text-align:left;">
                "Yes, your assign family physician is available on call for urgent questions after clinic hours. If you have a life threatening emergency, always call 911. But, if your question does not need answered immediately, you may receive a call back the next business day."
            </p>
            <div style="text-align:left;">
                <ul>
                    <li>
                        <strong>What happens if my doctor is sick or on vacation?</strong>
                    </li>
                </ul>
            </div>
            <p style="text-align:left;">
                "We will contact and re-schedule the appointment that work for you when this happen. But, Citrus Medical Center commit that there will be at least 2 other doctors on site to take care of you when needed."
            </p>
        </div>
        <br />
        <br />
        </div>
    </div>
</asp:Content>

