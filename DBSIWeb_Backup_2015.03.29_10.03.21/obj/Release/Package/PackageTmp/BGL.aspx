<%@ Page Title="" Language="C#" MasterPageFile="~/M1/M1.Master" AutoEventWireup="true" CodeBehind="BGL.aspx.cs" Inherits="DBSIWeb.BGL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<table style="border-style: solid; border-width: thin; border-color: #0096DE; background-color:white; padding: 0px; margin: auto; width:1024px; border-spacing: 0px;">
    <tr>
        <td style="width:67px; background-color: #0096DE;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/tax.gif" />
        </td>
        <td style="width:10px; background-color: #f0f1f2;"></td>
        <td style="background-color: #f0f1f2;">
            <asp:Label ID="Label1" Font-Size="25px" Font-Bold="true" ForeColor="Black" runat="server" Text="Tax Information"></asp:Label>
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding: 10px">
            <asp:Label ID="lblHeading1" runat="server" Text="General Explanation:" CssClass="lbl2"></asp:Label> 
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding: 10px">
            <asp:Label ID="lblSection1" CssClass="lbl1" runat="server">
            <div style="text-align: justify">
                <p>The Trustee and his staff work diligently each year to prepare Grantor Letters for the DBSI Liquidating Trust and the DBSI Real Estate Liquidating Trust.  However, we cannot assure you that you will receive those letters in time to prepare and file your individual income tax returns by the April 15 filing deadline. You should consult your individual tax advisor as to whether you should extend the filing of your individual income tax returns.</p>
                <p>If you have questions, please review the <a class="A3" href="faq.aspx">Tax Information</a> section of the FAQ.  If you have questions that are not answered in the FAQ, then you (or your tax advisor) can send a message by clicking on the “Contact Us” tab or telephone  866-441-3377.</p>
            </div>
            </asp:Label>
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding: 10px">
            <asp:Label ID="Label2" runat="server" Text="Letters:" CssClass="lbl2"></asp:Label> 
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding: 10px">
            <asp:Label ID="Label3" CssClass="lbl1" runat="server">
            <div style="text-align: justify">
                <p>The following are copies of the most recent communications regarding grantor tax letters issued by the DBSI Liquidating Trusts.</p>
            </div>
            </asp:Label>
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding: 10px">
            <table style="width:100%">
                <tr>
                    <td style="width:20px">
                        <img src="images/pdficon.gif" alt="" />
                    </td>
                    <td>
                        <a href="Documents/BLG.pdf" class="A3" target="_blank">Communication regarding 2012 DBSI Liquidating Trust Beneficiary Grantor Tax Letter</a>
                    </td>
                </tr>
                <tr>
                    <td style="width:20px">
                        <img src="images/pdficon.gif" alt="" />
                    </td>
                    <td>
                        <a href="Documents/RETL.pdf" class="A3" target="_blank">Communication regarding 2012 DBSI Real Estate Liquidating Trust Beneficiary Grantor Tax Letter</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>