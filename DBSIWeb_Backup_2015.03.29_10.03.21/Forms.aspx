<%@ Page Title="" Language="C#" MasterPageFile="~/M1/M1.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="DBSIWeb.Forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<table style="border-style: solid; border-width: thin; border-color: #0096DE; background-color:white; padding: 0px; margin: auto; width:1024px; border-spacing: 0px;">
    <tr>
        <td style="width:67px; background-color: #0096DE;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Form.gif" />
        </td>
        <td style="width:10px; background-color: #f0f1f2;"></td>
        <td style="background-color: #f0f1f2;">
            <asp:Label ID="Label1" Font-Size="25px" Font-Bold="true" ForeColor="Black" runat="server" Text="Forms"></asp:Label>
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding:10px">
            <table style="width:100%; padding:0px; border-spacing:0px">
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label2" CssClass="lbl2"  runat="server" Text="Name"></asp:Label>
                    </td>
                    <td style="text-align:right">
                        <asp:Label ID="Label4" CssClass="lbl2" runat="server" Text="Added Date"></asp:Label>
                    </td>
                </tr>
                <tr><td colspan="4"><hr /></td></tr>
                <asp:Repeater ID="rptDocs" DataSourceID="sqlDocs" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="width:20px">
                            <img src='<%# DataBinder.Eval(Container.DataItem, "DocIcon")%>' alt="" />
                        </td>
                        <td style="width:300px">
                            <a class="A3" target="_blank" href='<%# DataBinder.Eval(Container.DataItem, "DocLocation")%>'><%# DataBinder.Eval(Container.DataItem, "DocName")%></a>
                        </td>
                        <td style="text-align:right">
                            <asp:Label ID="Label1" CssClass="lbl1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CreatedDate", "{0:d}")%>'></asp:Label>
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="background-color:silver">
                        <td style="width:20px">
                            <img src='<%# DataBinder.Eval(Container.DataItem, "DocIcon")%>' alt="" />
                        </td>
                        <td style="width:300px">
                            <a class="A3" target="_blank" href='<%# DataBinder.Eval(Container.DataItem, "DocLocation")%>'><%# DataBinder.Eval(Container.DataItem, "DocName")%></a>
                        </td>
                        <td style="text-align:right">
                            <asp:Label ID="Label6" CssClass="lbl1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CreatedDate", "{0:d}")%>' ></asp:Label>
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="sqlDocs" runat="server" ConnectionString="<%$ ConnectionStrings:dbDBSIWeb %>" SelectCommand="sp_FormsDisplay" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    
            </table>
        </td>
    </tr>
    <tr><td colspan="3" style="height:5px"></td></tr>
    <tr>
        <td colspan="3" style="padding:10px">
            <asp:Label ID="lblSection1" CssClass="lbl1" runat="server">
            <div style="text-align: justify">
                <p><i>* Beneficial interest in the DBSI Liquidating Trusts are <b>not</b> freely transferrable.  This package includes information describing what kinds of transfers are permitted and the forms necessary to complete a permitted transfer.</i></p>
            </div>
            </asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
