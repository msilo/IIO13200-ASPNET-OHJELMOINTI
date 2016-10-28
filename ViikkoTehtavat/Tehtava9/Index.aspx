<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>jees</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblFeedBack" runat="server"></asp:Label>
        <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="true">

        </asp:GridView>
    </div>
    </form>
</body>
</html>
