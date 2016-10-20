<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%foreach (string item in Lines)
            {%>
                <%= item %>
            <%}
        %>
    </div>
        <%= Lines[0] %>
    </form>
</body>
</html>
