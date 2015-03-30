<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrivacyStatement.aspx.cs" Inherits="DBSIWeb.PrivacyStatement" %>

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
        <!-- START PRIVACY POLICY CODE -->
    <table width="100%" cellpadding="5" cellspacing="5>
        <tr>
            <td width="20">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </td>
            <td>
                <div style="font-family:arial">
                <strong>What information do we collect?</strong> 
                <br /><br />We collect information from you when you fill out a form.  
                <br /><br />When ordering or registering on our site, as appropriate, you may be asked to enter your: name, e-mail address, phone number or social security number. You may, however, visit our site anonymously.
                <br /><br />
                <strong>What do we use your information for?</strong> 
                <br /><br />Any of the information we collect from you may be used in one of the following ways: 
                <br /><br />; To process transactions
                <br />
                <blockquote>
                    Your information, whether public or private, will not be sold, exchanged, transferred, or given to any other company for any reason whatsoever, without your consent, other than for the express purpose of delivering the purchased product or service requested.
                </blockquote>
                <br /><br />
                <strong>Do we use cookies?</strong> 
                <br /><br />We do not use cookies.
                <br /><br />
                <strong>Do we disclose any information to outside parties?</strong> 
                <br /><br />We do not sell, trade, or otherwise transfer to outside parties your personally identifiable information. This does not include trusted third parties who assist us in operating our website, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect ours or others rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.<br /><br /><strong>California Online Privacy Protection Act Compliance</strong>
                <br /><br />Because we value your privacy we have taken the necessary precautions to be in compliance with the California Online Privacy Protection Act. We therefore will not distribute your personal information to outside parties without your consent.
                <br /><br />
                <strong>Childrens Online Privacy Protection Act Compliance</strong> 
                <br /><br />We are in compliance with the requirements of COPPA (Childrens Online Privacy Protection Act), we do not collect any information from anyone under 13 years of age. Our website, products and services are all directed to people who are at least 13 years old or older.
                <br /><br /><strong>Your Consent</strong> <br /><br />By using our site, you consent to our <a style='text-decoration:none; color:#3C3C3C;' href='http://www.freeprivacypolicy.com/' target='_blank'>web site privacy policy</a>.
                <br /><br /><strong>Changes to our Privacy Policy</strong> <br /><br />If we decide to change our privacy policy, we will post those changes on this page. 
                <br /><br /><strong>Contacting Us</strong> 
                <br /><br />If there are any questions regarding this privacy policy you may contact us using the information below. 
                <br /><br />www.dbsiliquidatingtrusts.com
                <br />12426 W Explorer Dr Suite 100
                <br />Boise, ID 83713
                <br />United States
                <br />hostmaster@dbsi.com
                <br /><span></span><span></span><center><div style='font-size:7pt; font-family:Arial; color:gray; text-decoration:none;'>Privacy Policy Created by <a style='color:#3C3C3C; text-decoration:none;' href='http://www.freeprivacypolicy.com'target='_blank'>Free Privacy Policy</a></center></div><span></span><span></span><span></span></div><center><!-- END PRIVACY POLICY CODE -->
                <br />
                <asp:Button ID="btnDone" runat="server" Text="Done" onclick="btnDone_Click" />
            </td>
            <td width="10">
                <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
