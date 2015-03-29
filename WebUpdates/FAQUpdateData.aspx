<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQUpdateData.aspx.cs" Inherits="WebUpdates.FAQUpdateData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
                </asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
    <div>
        <table>
            <tr>
                <td>
                    <telerik:RadEditor ID="txtQ" runat="server"></telerik:RadEditor>
                </td>
            </tr>
            <tr>
                <td>
                    <telerik:RadEditor ID="txtA" runat="server"></telerik:RadEditor>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="ch1" runat="server" />
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />

                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
