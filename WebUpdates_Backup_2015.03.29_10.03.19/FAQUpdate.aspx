<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQUpdate.aspx.cs" Inherits="WebUpdates.FAQUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
        <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
            <ItemTemplate>
            <tr>
                <td>
                    <a href='FAQUpdateData.aspx?ID=<%# DataBinder.Eval(Container.DataItem, "FAQID") %>'><%# DataBinder.Eval(Container.DataItem, "Question") %></a>
                </td>
            </tr>
            </ItemTemplate>
        </asp:Repeater>
        </table>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBSI_DB %>" SelectCommand="SELECT	 FAQID
				,RTRIM(fSection) AS fSection
				,RTRIM(Question) AS Question
				,RTRIM(Answer) AS Answer
				,FAQOrd
		FROM FAQ WHERE iUpdated = 0"></asp:SqlDataSource>
    </form>
</body>
</html>
