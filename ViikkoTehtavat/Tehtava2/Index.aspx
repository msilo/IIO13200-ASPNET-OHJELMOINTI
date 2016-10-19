<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>jees</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButtonList ID="rblMode" runat="server">
            <asp:ListItem Text="Suomi Lotto" Value="0" />
            <asp:ListItem Text="Viking Lotto" Value="1" />
        </asp:RadioButtonList>
        <asp:Button ID="btnGetNumbers" runat="server" Text="Arvo numerot" OnClick="btnGetNumbers_Click"/>
        <asp:Button ID="btnClearNumbers" runat="server" Text="Tyhjennä" OnClick="btnClearNumbers_Click"/>
    </div>
    <div>
        <asp:TextBox ID="tbResults" runat="server" Rows="10" height="200" Width ="200" TextMode="MultiLine"/>
     </div>
    </form>
</body>
</html>
