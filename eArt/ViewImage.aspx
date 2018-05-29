<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewImage.aspx.cs" Inherits="eArt.ViewImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .imagenGrande {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="imgToShow" runat="server" CssClass="imagenGrande" />
    </div>
    </form>
</body>
</html>
