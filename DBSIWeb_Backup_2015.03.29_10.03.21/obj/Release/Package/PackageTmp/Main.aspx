<%@ Page Title="" Language="C#" MasterPageFile="~/M1/M1.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="DBSIWeb.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table style="margin:auto; width:1024px; padding: 0px; border-spacing: 0px;">
    <tr><td colspan="2" style="height:10px"></td></tr>
    <tr>
        <td style="border-width: thin; border-color: #0096DE; background-color:#0096DE; vertical-align:top; border-top-style: solid;">
            <asp:ImageButton ID="ibtnWelcome" ImageUrl="~/Images/welcome.gif" BorderColor="#0096DE" runat="server" />
        </td>
        <td style="border-width: thin; border-color: #0096DE; background-color:white; vertical-align:top; border-top-style: solid; width:7px"></td>
        <td style="border-top-style: solid; border-color: #0096DE; background-color:white; border-width: thin;">
            <pt><b>Welcome to the official website for the DBSI Liquidating Trusts.</b></pt>
            <p>The purpose of this site is to provide the beneficiaries of the DBSI Liquidating Trusts with access to information.</p>
            <p>This site does not provide legal, accounting or other professional advice—parties should contact their own attorneys, accountants and advisors to obtain professional advice regarding their beneficial interests or investments.</p>
            <p>By following the links at the top of this Home page, you will find additional information and documentation, including:</p>
        </td>
    </tr>
    <tr><td colspan="2" style="height:10px"></td></tr>
    <tr>
        <td style="border-width: thin; border-color: #0096DE; background-color:#0096DE; vertical-align:top; border-top-style: solid;">
            <asp:ImageButton ID="ibtnBackGround" ImageUrl="~/Images/background.gif" runat="server" OnClick="ibtnBackGround_Click"  />
        </td>
        <td style="border-width: thin; border-color: #0096DE; background-color:white; vertical-align:top; border-top-style: solid; width:5px"></td>
        <td style="border-top-style: solid; border-color: #0096DE; background-color:white; border-width: thin;">
            <p><b>Background</b></p>
            <p>General Background about the DBSI chapter 11 cases and a brief summary of the Formation and Structure of the various Trusts.</p>
        </td>
    </tr>
    <tr><td colspan="2" style="height:10px"></td></tr>
    <tr>
        <td style="border-width: thin; border-color: #0096DE; background-color:#0096DE; vertical-align:top; border-top-style: solid;">
            <asp:ImageButton ID="ibtnFAQ" ImageUrl="~/Images/faq.gif" runat="server" OnClick="ibtnFAQ_Click" />
        </td>
        <td style="border-width: thin; border-color: #0096DE; background-color:white; vertical-align:top; border-top-style: solid; width:5px"></td>
        <td style="border-top-style: solid; border-color: #0096DE; background-color:white; border-width: thin;">
            <p><b>FAQ's</b></p>
            <p>A list of Frequently Asked Questions (and answers).  We will attempt to update this section based upon inquiries we receive from trust beneficiaries.</p>
        </td>
    </tr>
    <tr><td colspan="2" style="height:10px"></td></tr>
    <tr>
        <td style="border-width: thin; border-color: #0096DE; background-color:#0096DE; vertical-align:top; border-top-style: solid;">
            <asp:ImageButton ID="ibtnTax" ImageUrl="~/Images/tax.gif" runat="server" OnClick="ibtnTax_Click" />
        </td>
        <td style="border-width: thin; border-color: #0096DE; background-color:white; vertical-align:top; border-top-style: solid; width:5px"></td>
        <td style="border-top-style: solid; border-color: #0096DE; background-color:white; border-width: thin;">
            <p><b>Tax Information</b></p>
            <p>Copies of the most recent communications regarding grantor tax letters issued by the DBSI Liquidating Trusts are available.  Other tax information is available upon request.  You will also find a link to the Tax section of the FAQ.</p>
        </td>
    </tr>
    <tr><td colspan="2" style="height:10px"></td></tr>
    <tr>
        <td style="border-width: thin; border-color: #0096DE; background-color:#0096DE; vertical-align:top; border-top-style: solid;">
            <asp:ImageButton ID="ibtnForms" ImageUrl="~/Images/form.gif" runat="server" OnClick="ibtnForms_Click" />
        </td>
        <td style="border-width: thin; border-color: #0096DE; background-color:white; vertical-align:top; border-top-style: solid; width:5px"></td>
        <td style="border-top-style: solid; border-color: #0096DE; background-color:white; border-width: thin;">
            <p><b>Forms</b></p>
            <p>Copies of various forms, including address changes and beneficial interest transfers.  Beneficial interest in the DBSI Liquidating Trusts are <b>not</b> freely transferrable.  This link includes information describing what kinds of transfers are permitted and the forms necessary to complete a permitted transfer.</p>
        </td>
    </tr>
    <tr><td colspan="2" style="height:10px"></td></tr>
    <tr>
        <td style="border-width: thin; border-color: #0096DE; background-color:#0096DE; vertical-align:top; border-top-style: solid;">
            <asp:ImageButton ID="ibtnDocs" ImageUrl="~/Images/doc.gif" runat="server" OnClick="ibtnDocs_Click" />
        </td>
        <td style="border-width: thin; border-color: #0096DE; background-color:white; vertical-align:top; border-top-style: solid; width:5px"></td>
        <td style="border-top-style: solid; border-color: #0096DE; background-color:white; border-width: thin;">
            <p><b>Bankruptcy Case Documents</b></p>
            <p>Some of the more informative and important documents filed in the DBSI chapter 11 bankruptcy cases can be viewed here.</p>
        </td>
    </tr>
    <tr><td colspan="2" style="height:10px"></td></tr>
    <tr>
        <td style="border-width: thin; border-color: #0096DE; background-color:#0096DE; vertical-align:top; border-top-style: solid;">
            <a href='ContactForm.aspx' target="radWContact" onclick="window.radopen(null, 'radWContact');"><img src="images/contactlogo.gif" alt="click here to submit a request" border="0" /></a>
        </td>
        <td style="border-width: thin; border-color: #0096DE; background-color:white; vertical-align:top; border-top-style: solid; width:5px"></td>
        <td style="border-top-style: solid; border-color: #0096DE; background-color:white; border-width: thin;">
            <p><b>Contact Us</b></p>
            <p>The DBSI Liquidating Trusts have a very small team of administrative personnel.  The <a  class="A3" href="FAQ.aspx">FAQ</a> section of this site contains answers to the most Frequently Asked Questions.  If you have a question that is not answered in the <a class="A3" href="FAQ.aspx">FAQ</a> section, you can call the toll-free number or you can send a written message and receive an email response.  Depending on the volume of inquiries, it may take a couple of days before we can provide you with a response.  We appreciate your patience.</p>
        </td>
    </tr>
</table>


</asp:Content>
