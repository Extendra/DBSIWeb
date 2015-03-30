<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.aspx.cs" Inherits="DBSIWeb.ContactForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow)
                oWindow = window.radWindow;
            else if (window.frameElement.radWindow)
                oWindow = window.frameElement.radWindow;
            return oWindow;
        }
        function CloseOnReload() {
            GetRadWindow().close();
            GetRadWindow().BrowserWindow.location.href = GetRadWindow().BrowserWindow.location.href;
        }
    </script>
    <link href="S1/S1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
    <div>
        <div align="center">
            <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Medium" Text="Contact Form"></asp:Label>
            <hr />
        </div>
        <div style="text-align:justify; padding:5px">
            The DBSI Liquidating Trusts have a very small team of administrative personnel.  The <a class="A3" href="FAQ.aspx">FAQ</a> section of this site contains answers to the most Frequently Asked Questions.  If you have a question that is not answered in the <a class="A3" href="FAQ.aspx">FAQ</a> section, you can call the toll-free number or you can send a written message and receive an email response.  Depending on the volume of inquiries, it may take a couple of days before we can provide you with a response.  We appreciate your patience. 
        </div>
        <table width="100%" border="0">
            <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td align="right">
                                First Name:
                            </td>
                            <td align="left">
                                <telerik:RadTextBox ID="txtFirstName" AutoPostBack="false" Width="150" SelectionOnFocus="SelectAll" runat="server"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="rv1" ControlToValidate="txtFirstName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Last Name:
                            </td>
                            <td align="left">
                                <telerik:RadTextBox ID="txtLastName" AutoPostBack="false" Width="150" SelectionOnFocus="SelectAll" runat="server"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="rfv3" ControlToValidate="txtLastName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td  align="right">
                                Email Address:
                            </td>
                            <td align="left">
                                <telerik:RadTextBox ID="txtEmail" AutoPostBack="false" Width="150" SelectionOnFocus="SelectAll" runat="server"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="rvf2" ControlToValidate="txtEmail" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev1" ControlToValidate="txtEmail" runat="server" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Phone Number:
                            </td>
                            <td align="left">
                                <telerik:RadMaskedTextBox ID="txtPhoneNumber" AutoPostBack="false" runat="server" EmptyMessage="Enter Phone Number" Mask="##########" DisplayMask="(###)-###-####" DisplayFormatPosition="Right" Width="85"></telerik:RadMaskedTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Bankruptcy Claim Number:
                            </td>
                            <td align="left">
                                <telerik:RadNumericTextBox ID="txtClaimNumber" AutoPostBack="false" NumberFormat-DecimalDigits="0" NumberFormat-GroupSeparator="" Width="150" runat="server"></telerik:RadNumericTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Investment    
                            </td>
                            <td align="left">
                                <telerik:RadComboBox Filter="Contains" ID="cbInvestmentType" AllowCustomText="True" 
                                    runat="server" Width="300px" EnableLoadOnDemand="true" EmptyMessage="Select Investment"
                                    HighlightTemplatedItems="true" Height="100px" DataSourceID="sqlInvestment" DataTextField="InvestmentType" 
                                    DataValueField="InvestmentID">
                                </telerik:RadComboBox>
                                <asp:SqlDataSource ID="sqlInvestment" runat="server" ConnectionString="<%$ ConnectionStrings:dbDBSIWeb %>" 
                                    SelectCommand="sp_InvestmentType" SelectCommandType="StoredProcedure">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                I am a(an)?    
                            </td>
                            <td align="left">
                                <telerik:RadComboBox Filter="Contains" ID="cbClaimantType" AllowCustomText="True" 
                                    runat="server" Width="300px" EnableLoadOnDemand="true" EmptyMessage="Select Type"
                                    HighlightTemplatedItems="true" Height="100px" DataSourceID="sqlClaimant" DataTextField="ClaimantType" 
                                    DataValueField="ClaimantID">
                                </telerik:RadComboBox>
                                <asp:SqlDataSource ID="sqlClaimant" runat="server" ConnectionString="<%$ ConnectionStrings:dbDBSIWeb %>" 
                                    SelectCommand="sp_ClaimantType" SelectCommandType="StoredProcedure">
                                </asp:SqlDataSource>  
                            </td>
                        </tr>   
                    </table>
                </td>
            </tr>
            
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr><td colspan="2" align="center">Enter Request Below</td></tr>
            <tr>
                <td colspan="2" align="center">
                    <telerik:RadEditor ID="txtRequest" runat="server" Width="500px" Height="250px" EditModes="All" ImageManager-EnableImageEditor="False" ImageManager-EnableThumbnailLinking="False" EnableResize="False" EnableTheming="False" ToolbarMode="ShowOnFocus">
                    </telerik:RadEditor>
                </td>
            </tr>
        </table>
        <table width="100%">
            <tr>
                <td align="right">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="75" onclick="btnSubmit_Click" /> 
                </td>
                <td>
                    <asp:Button ID="btnCancle" runat="server" Text="Cancel" Width="75" CausesValidation="false" onclick="btnCancle_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblContactID" Visible="false" runat="server"></asp:Label>
        <asp:Label ID="lblFullName" Visible="false" runat="server"></asp:Label>
        <asp:Label ID="lblClaimNo" Visible="false" runat="server"></asp:Label>
        <asp:Label ID="lblEmailAddress" Visible="false" runat="server"></asp:Label>
        <asp:Label ID="lblPhoneNumber" Visible="false" runat="server"></asp:Label>
        <asp:Label ID="lblRequest" Visible="false" runat="server"></asp:Label>
        <asp:Label ID="lblClaimantType" Visible="false" runat="server"></asp:Label>
        <asp:Label ID="lblInvestmentType" Visible="false" runat="server"></asp:Label>
        <asp:Label ID="lblCreatedDate" Visible="false" runat="server"></asp:Label>    
    </div>
    </form>
</body>
</html>
