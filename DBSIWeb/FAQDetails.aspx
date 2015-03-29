<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQDetails.aspx.cs" Inherits="DBSIWeb.FAQDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="S1/S1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="padding: 0px; margin: 0px; width:100%; border-spacing: 0px;">
            <tr>
                <td style="width:10px; background:#3ac1ff"></td>
                <td style="text-align:center; height:50px; background:#3ac1ff">
                    <asp:Label Font-Size="20px" ForeColor="White" Font-Bold="true" ID="lblSection" runat="server"></asp:Label>
                </td>
                <td style="width:10px; background:#3ac1ff"></td>
            </tr>
            <tr>
                <td style="width:10px; background:#0096db"></td>
                <td style="text-align:left; height:25px; background:#0096db">
                    <asp:Label ID="lblQuestion" runat="server" Font-Size="18px" ForeColor="White"></asp:Label>
                </td>
                <td style="width:10px; background:#0096db"></td>
            </tr>
            <tr>
                <td style="width:10px"></td>
                <td>
                    <asp:Label ID="lblAnswer" runat="server"></asp:Label>
                </td>
                <td style="width:10px"></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
