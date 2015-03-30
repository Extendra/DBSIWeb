<%@ Page Title="" Language="C#" MasterPageFile="~/M1/M1.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="DBSIWeb.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<table style="border-style: solid; border-width: thin; border-color: #0096DE; background-color:white; padding: 0px; margin: auto; width:1024px; border-spacing: 0px;">
    <tr>
        <td style="width:67px; background-color: #0096DE;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/faq.gif" />
        </td>
        <td style="width:10px; background-color: #f0f1f2;"></td>
        <td style="background-color: #f0f1f2;">
            <table style="width:100%">
                <tr>
                    <td>
                        <asp:Label ID="Label2" Font-Size="25px" Font-Bold="true" ForeColor="Black" runat="server" Text="Frequently Asked Questions [FAQ]"></asp:Label>
                    </td>
                    <td style="text-align:right">Filter:
                        <asp:DropDownList ID="ddFilter" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="ddFilter_SelectedIndexChanged" runat="server">
                            <asp:ListItem Value="5" Selected="True">All</asp:ListItem>
                            <asp:ListItem Value="1">HOT ISSUES</asp:ListItem>
                            <asp:ListItem Value="2">Timing/Calculation of Distribution</asp:ListItem>
                            <asp:ListItem Value="3">Federal Income Tax Consequences</asp:ListItem>
                            <asp:ListItem Value="4">Transferability of Beneficial Interest</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="txtFilter" Visible="false" Text="5" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="height:30px; vertical-align:middle; padding:5px">
            <p><i><b>Note:</b> We will attempt to update this section periodically based upon inquiries we receive from trust beneficiaries.</i></p>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="padding:0px">
            <telerik:RadAjaxPanel ID="RadAjaxPanel1" LoadingPanelID="ralp1" runat="server">
            <table style="width:100%">
                <asp:Repeater ID="rptSection" DataSourceID="sqlSec" runat="server">
                <ItemTemplate>
                <tr>
                    <td style="background-color:White">
                        <asp:Label ID="lblSection" CssClass="FAQSec" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "fSection")%>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <asp:Repeater ID="rptQuest" OnItemCommand="rptSec_ItemCommand" DataSourceID="sqlFAQ" runat="server">
                            <ItemTemplate>
                            <tr>
                                <td style="text-align:right; width:20px">
                                    <asp:Label ID="Label1" Visible="true" CssClass="A3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "FAQOrd") + "." %>'></asp:Label>
                                    <%--<asp:LinkButton CssClass="A3" ID="lbtnExpand" CommandName="Exp" runat="server">[+]</asp:LinkButton>
                                    <asp:LinkButton CssClass="A3" ID="lbtnCol" CommandName="Col" Visible="false" runat="server">[-]</asp:LinkButton>--%>
                                </td>
                                <td colspan="2">
                                    <asp:Label ID="lblID" Visible="false" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "FAQID")%>'></asp:Label>

                                    <a class="AFAQ" href='FAQDetails.aspx?FAQID=<%# DataBinder.Eval(Container.DataItem, "FAQID")%>' target="radWFAQ" onclick="window.radopen(null, 'radWFAQ');"><%# DataBinder.Eval(Container.DataItem, "Question")%></a>

                                </td>
                            </tr>
                           <asp:Panel ID="pnl1" Visible="false" runat="server">
                            <tr>
                                <td></td>
                                <td style="width:20px"></td>
                                <td>
                                    <asp:Label ID="lblAnswer" CssClass="FAQAns" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Answer")%>'></asp:Label>   
                                </td>
                            </tr>
                            </asp:Panel>
                            </ItemTemplate>         
                            </asp:Repeater>
                            <asp:SqlDataSource ID="sqlFAQ" runat="server" ConnectionString="<%$ ConnectionStrings:dbDBSIWeb %>" SelectCommand="sp_FAQ_Display" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:Parameter Name="Sec" DefaultValue="2" Type="String" />
                                    <asp:ControlParameter Name="fSec" ControlID="lblSection" Type="String" />
                                    <asp:ControlParameter Name="Filter" ControlID="txtFilter" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </table>
                    </td>
                </tr>
                <tr><td><hr /></td></tr>
                </ItemTemplate>         
                </asp:Repeater>
                <asp:SqlDataSource ID="sqlSec" runat="server" ConnectionString="<%$ ConnectionStrings:dbDBSIWeb %>" SelectCommand="sp_FAQ_Display" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter Name="Sec" DefaultValue="1" Type="String" />
                        <asp:ControlParameter Name="Filter" ControlID="txtFilter" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </table>
        </telerik:RadAjaxPanel>
        </td>
    </tr>
</table>

<telerik:RadAjaxLoadingPanel ID="ralp1" runat="server" Skin="Default">
</telerik:RadAjaxLoadingPanel>
</asp:Content>
