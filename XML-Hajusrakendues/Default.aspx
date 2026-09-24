<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XML_Hajusrakendues._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 
    <head>
        <title>Koosoleku kava</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    </head>
 <body>
    <%--<h1>Koosoleku kava</h1>
    <ul>
    <li>Kommunismi ehitamine</li>
    <li>Kuuri ehitamine</li>
    </ul>--%>
     <div>        <asp:Xml ID="xml1" runat="server" DocumentSource="~/inimesed.xml"        TransformSource="~/inimesed1.xslt" />     </div>
     <br />
     <div>       <asp:Xml ID="xml2" runat="server" DocumentSource="~/auto-info.xml"       TransformSource="~/auto-info1.xslt" />    </div>
 </body>
</html>
</asp:Content>
