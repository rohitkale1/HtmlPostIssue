# HtmlPostIssue
WKWebView post form request issue

when I upgraded app to WKWebView form post method seems to be not working as expected.

When you run this application using XCode, Application will show 3 buttons as follows:
“View HTML Code” – to see the plain text html code. Important code is
“<form name="ZFRmain" style="background:transparent;border:0px;padding:0px;margin:0;" method="post" action=
"https://voltage-ps-0000.voltage.com/formpostdir/safeformpost.aspx">
<input type="hidden" name="ZFRversion" value="3">
<input type="hidden" name="ZFRtype" value="VoltageZFRMsg">
 
    <input type="hidden" name="ZFRsplitMsgInfo" value="voltage.com:201907040540:1ed23ac9b003988935c15c955883c7b008498d33">
 
 
<input type="hidden" name="ZFRDesignatedRecipient" value="rohit_kale1@persistent.com">
<input type="hidden" name="ZFRdata" value="
-----BEGIN VOLTAGE SECURE BLOCK V3-----”
“UIWebView Rendering” button – To load HTML in UIWebView. Once user click on this button, application will load page with “Click to Read Message” button. Click on this button will show authentication page – in this case it successfully post data for respective URL
“WKWebview Rendering” button – To load HTML in WKWebView. Once user click on this button, application will load with “Click to Read Message” button. Click on this button will show option to read email in another way because of failure of sending ‘Form Post data’. Instead it should show authentication page like mentioned in UIWebView case. This causing the issue in app where users do not able to see authentication page.
 
 Could you please provide us solution to show authentication page using WKWebView i.e. post data in form on “Click to Read Message” button click
