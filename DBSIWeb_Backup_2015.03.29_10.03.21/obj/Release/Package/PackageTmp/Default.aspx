<%@ Page Title="" Language="C#" MasterPageFile="~/M1/M1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DBSIWeb.Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<table style="border-style: solid; border-width: thin; border-color: #0096DE; background-color:white; padding: 0px; margin: auto; width:1024px; border-spacing: 0px;">
    <tr>
        <td style="width:67px; background-color: #0096DE;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/background.gif" />
        </td>
        <td style="width:10px; background-color: #f0f1f2;"></td>
        <td style="background-color: #f0f1f2;">
            <asp:Label ID="Label1" Font-Size="25px" Font-Bold="true" ForeColor="Black" runat="server" Text="Background"></asp:Label>
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding:10px">
           <table style="width:100%; padding:0px; border-spacing:0px" border="0">
                
                <tr>
                    <td></td>
                    <td style="background-color:white; vertical-align:top">
                        <table>
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="lblHeading1" runat="server" Text="General Background:" CssClass="lbl2"></asp:Label>        
                                </td>
                            </tr>
                            <tr><td colspan="2"><hr /></td></tr>
                            <tr>
                                <td style="width:10px"><asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder></td>
                                <td>
                                    <asp:Label ID="lblSection1" CssClass="lbl1" runat="server">
                                        <p>The bankruptcy proceedings of the DBSI companies were commenced on November 10, 2008.</p>
                                        <p>The DBSI management team, led by Douglas Swenson, was removed by the Bankruptcy Court upon the appointment of the Chapter 11 Trustee (<a class="A3" href="documents/D10.pdf" target="_blank">Order for appointment of Chapter 11 Trustee</a>).</p>
                                        <p>The Chapter 11 Trustee was appointed as a fiduciary for the bankruptcy estates of all of the DBSI companies that filed for bankruptcy.  This followed the interim findings of an Examiner, whose <a class="A3" href="documents/D24.pdf" target="_blank">Final Report of Examiner</a> was issued in October 2009 and the motion of the <a class="A3" href="documents/D10.pdf" target="_blank">US Trustee for appointment of a Trustee</a>.</p>
                                        <p>The Chapter 11 Trustee retained Conrad Myers, an expert in turnaround management of distressed businesses and their reorganization or orderly liquidation, to oversee management of the debtor companies following the Chapter 11 <a class="A3" href="documents/D08.pdf" target="_blank">Trustee’s appointment</a> in August 2009.</p>
                                        <p>The Chapter 11 Trustee and the Official Committee of Unsecured Creditors jointly proposed a chapter 11 plan.  (“<a class="A3" href="documents/D09.pdf" target="_blank">the Plan</a>”).</p>
                                        <p>The Chapter 11 Trustee and the Committee prepared certain Disclosure Statements to provide parties with information about the Plan:</p>
                                            <li><a class="A3" href="documents/D29.pdf" target="_blank">Master Disclosure Statement</a>: contains comprehensive information about the Plan.</li>
                                            <li><a class="A3" href="documents/D04.pdf" target="_blank">Note/Bond/Fund Investor Disclosure Statement</a>: provides more streamlined information about the Plan for persons or entities who purchased notes, bonds or units from certain funding entities affiliated with DBSI, Inc.</li>
                                            <li><a class="A3" href="documents/D03.pdf" target="_blank">TIC Investor Disclosure Statement</a>: provides more streamlined information about the Plan for persons or entities who made tenant-in-common investments in certain real properties that were managed by DBSI, Inc. and/or its affiliates under masterleases, operating agreements, or management agreements.</li>
                                        <p>The Plan and applicable Disclosure Statements were distributed submitted to creditors for a vote.</p>
                                        <p>On October 26, 2010 the United States Bankruptcy Court for the District of Delaware entered an <a class="A3" href="documents/D01.pdf" target="_blank">order</a> confirming the Plan.</p>
                                        <p>The Plan became effective on October 29, 2010.</p>
                                        <p>Under the Plan two separate liquidating trusts; the DBSI Liquidating Trust (“<a class="A3" href="documents/D02.pdf" target="_blank">The DBSI Liquidating Trust</a>”) and the DBSI Real Estate Liquidating Trust (“<a class="A3" href="documents/D04.pdf" target="_blank">The DBSI Real Estate Liquidating Trust</a>”) were created for the purpose of liquidating the remaining assets of the debtor companies. The Trustee of both asset liquidating trusts is Conrad Myers.</p>
                                        <p>The Plan also created two litigation trusts; The <a class="A3" href="documents/D03.pdf" target="_blank">DBSI Estate Litigation Trust</a> and the <a class="A3" href="documents/D05.pdf" target="_blank">DBSI Private Actions Trust</a>. The Trustee for both of these trusts is James R. Zazzali, who formerly served as the Chapter 11 Trustee.</p>
                                    </asp:Label>
                                </td>
                                <td style="width:10px"><asp:PlaceHolder ID="PlaceHolder5" runat="server"></asp:PlaceHolder></td>
                            </tr>
                            <tr><td colspan="3"><hr /></td></tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="lblHeading2" runat="server" Text="The Formation and Structure of the Trusts:" CssClass="lbl2"></asp:Label>        
                                </td>
                            </tr>
                            <tr><td colspan="3"><hr /></td></tr>
                            <tr>
                                <td style="width:10px"><asp:PlaceHolder ID="PlaceHolder4" runat="server"></asp:PlaceHolder></td>
                                <td>
                                    <asp:Label ID="lblSection2" CssClass="lbl1" runat="server">
                                        <p>The following excerpt from the preliminary statement to the <a class="A3" href="documents/D09.pdf" target="_blank">Plan</a>, summarizes how the Trusts came to be formed and their purposes:</p>
                                        <div style="text-align: justify">
                                            <i>“By the Plan, the Assets of the Plan Debtors will be marshalled for the benefit of Creditors. Specifically, non-litigation Assets will be allocated to two different trusts: (i) a DBSI Liquidating Trust, for the benefit of the Creditors of the DBSI Consolidated Debtors (generally, the Plan Debtors who were involved in the tenant-in-common operations and investments in the technology corporations); and (ii) a DBSI Real Estate Liquidating Trust, for the benefit of the Creditors of the Note/Fund Consolidated Debtors (generally, the Plan Debtors that issued various debt and equity interests through private placements for the purpose of investing in various real estate and other ventures). A DBSI Estate Litigation Trust will be formed to hold Estate Causes of Action and a Private Actions Trust will be formed to hold Non-Estate Causes of Action. The DBSI Liquidating Trust and the DBSI Real Estate Liquidating Trust will be the beneficiaries of the DBSI Estate Litigation Trust.”</i>
                                            <p>You can find a chart illustrating the formation and structure of the Trusts attached as Exhibit “1” (the very last page) to the <a class="A3" href="documents/D04.pdf" target="_blank">Note/Bond/Fund Investor Disclosure Statement</a> and the <a class="A3" href="documents/D03.pdf" target="_blank">TIC Investor Disclosure Statement</a>.</p>
                                            <p>In essence, Estate Causes of Action are claims which the debtor companies could bring against third parties and thus were assets of the bankruptcy estate. Non-Estate Causes of Action are claims which may be asserted by DBSI investors against third parties relating to the debtor companies, with certain exclusions. Under the Plan, DBSI investors holding Non-Estate Causes of Action were offered the opportunity to assign such claims to the Private Action Trust so that the claims could be prosecuted on an economically efficient pooled basis.</p>
                                            <p>The Plan provided (among other things) for “the distribution to Holders of Allowed General Unsecured Claims of Beneficial Interests in a Trust which entitles them to a Pro Rata share of the assets of such Trust”, and “the substantive consolidation of the DBSI Consolidated Debtors (including DBSI and certain Non-Debtor Affiliates of DBSI)” and “the substantive consolidation of the Note/Fund Consolidated Debtors.”</p>
                                            <p>Holders of beneficial interests in the DBSI Liquidating Trust, the DBSI Real Estate Liquidating Trust, and the Private Action Trust have or will receive letters from the applicable Trustee advising the holders of their preliminary projected interest in the trusts.</p>
                                            <p>The foregoing is merely a summary discussion and is qualified by reference to the referenced documents which may be viewed or downloaded by clicking on document names.</p>
                                        </div>
                                    </asp:Label>
                                </td>
                                <td style="width:10px"><asp:PlaceHolder ID="PlaceHolder6" runat="server"></asp:PlaceHolder></td>
                            </tr>
                        </table>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
        
                    </td>
                </tr>
            </table> 
        </td>
    </tr>
</table>
</asp:Content>
