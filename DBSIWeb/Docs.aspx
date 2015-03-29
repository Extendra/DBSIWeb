<%@ Page Title="" Language="C#" MasterPageFile="~/M1/M1.Master" AutoEventWireup="true" CodeBehind="Docs.aspx.cs" Inherits="DBSIWeb.Docs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<table style="border-style: solid; border-width: thin; border-color: #0096DE; background-color:white; padding: 0px; margin: auto; width:1024px; border-spacing: 0px;">
    <tr>
        <td style="width:67px; background-color: #0096DE;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Doc.gif" />
        </td>
        <td style="width:10px; background-color: #f0f1f2;"></td>
        <td style="background-color: #f0f1f2;">
            <asp:Label ID="Label1" Font-Size="25px" Font-Bold="true" ForeColor="Black" runat="server" Text="Bankruptcy Case Documents"></asp:Label>
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding:10px">
            <asp:Label ID="lblSection1" CssClass="lbl1" runat="server">
            <div style="text-align: justify">
                <p>Some of the more informative and important documents filed in the DBSI chapter 11 bankruptcy cases can be viewed here.</p>
            </div>
            </asp:Label>
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding: 10px; border-color: #0096DE; border-width: thin; border-bottom-style: solid;">
            <table style="width:100%; border-spacing: 0px; padding: 0px;">
                <tr>
                    <td style="width:20px"></td>
                    <td style="width:300px">
                        <asp:Label ID="Label2" CssClass="lbl2"  runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" CssClass="lbl2" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td style="text-align:right; width:70px">
                        <asp:Label ID="Label7" CssClass="lbl2" runat="server" Text="File Size"></asp:Label>
                    </td>
                    <td style="text-align:right; width:50px">
                        <asp:Label ID="Label8" CssClass="lbl2" runat="server" Text="Docket"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="padding: 10px">
            <table style="width:100%; border-spacing: 0px; padding: 0px;">
            <asp:Repeater ID="rptDocs" DataSourceID="sqlDocs" runat="server">
            <ItemTemplate>
                <tr>
                    <td style="width:20px">
                        <img src='<%# DataBinder.Eval(Container.DataItem, "DocIcon")%>' alt="" />
                    </td>
                    <td style="width:300px">
                        <asp:Label ID="Label1" CssClass="A3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DocOrder")%>'></asp:Label>
                        <asp:Label ID="Label6" CssClass="A4" runat="server" Text="."></asp:Label>
                        <a class="A3" target="_blank" href='<%# DataBinder.Eval(Container.DataItem, "DocLocation")%>'><%# DataBinder.Eval(Container.DataItem, "DocName")%></a>
                    </td>
                    <td>
                        <asp:Label ID="Label11" CssClass="A4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DocDesc")%>'></asp:Label>
                    </td>
                    <td style="text-align:right; width:70px">
                        <asp:Label ID="Label12" CssClass="A4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DocSize")%>'></asp:Label>
                    </td>
                    <td style="text-align:right; width:50px">
                        <asp:Label ID="Label13" CssClass="A4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Docket")%>'></asp:Label>
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color:silver">
                    <td style="width:20px">
                        <img src='<%# DataBinder.Eval(Container.DataItem, "DocIcon")%>' alt="" />
                    </td>
                    <td style="width:300px">
                        <asp:Label ID="Label14" CssClass="A3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DocOrder")%>'></asp:Label>
                        <asp:Label ID="Label4" CssClass="A4" runat="server" Text="."></asp:Label>
                        <a class="A3" target="_blank" href='<%# DataBinder.Eval(Container.DataItem, "DocLocation")%>'><%# DataBinder.Eval(Container.DataItem, "DocName")%></a>
                    </td>
                    <td>
                        <asp:Label ID="Label15" CssClass="A4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DocDesc")%>'></asp:Label>
                    </td>
                    <td style="text-align:right; width:70px">
                        <asp:Label ID="Label16" CssClass="A4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DocSize")%>'></asp:Label>
                    </td>
                    <td style="text-align:right; width:50px">
                        <asp:Label ID="Label17" CssClass="A4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Docket")%>'></asp:Label>
                    </td>
                </tr>
            </AlternatingItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="sqlDocs" runat="server" ConnectionString="<%$ ConnectionStrings:dbDBSIWeb %>" SelectCommand="sp_DocumentsDisplay" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
