<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tehtävä 3</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%= time %>
        <p>
            Valitun päivän ja tämän päivän erotus: <%= Erotus %>
        </p>
    </div>
    <div>
        <asp:Button ID="btnPrevious" runat="server" Text="<--"/>
        <asp:Button ID="btnNext" runat="server" Text="-->"/>
    </div>
    <div>
        <asp:Calendar ID="cdrCalendar" runat="server" OnSelectionChanged="cdrCalendar_SelectionChanged" />
    </div>
    </form>
</body>
</html>
