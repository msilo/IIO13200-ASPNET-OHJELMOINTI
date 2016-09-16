<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tehtävä 1</title>
    <link href="CSS/tehtava1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Ikkunan dimensiot</h1>
    <form id="form1" runat="server">
    <div class="parent">
        <div class="child">
            <label>Leveys(L):</label>
            <asp:TextBox ID="tbLeveys" runat="server"></asp:TextBox>
        </div>        
        <div class="child">
            <label>Korkeus(H):</label>
            <asp:TextBox ID="tbKorkeus" runat="server"></asp:TextBox>
        </div>
        <div class="child">
            <label>Karmipuun Leveys(W):</label>
            <asp:TextBox ID="tbKarminLeveys" runat="server"></asp:TextBox>
        </div>
        <div class="child">
            <asp:Button ID="btnLaske" runat="server" Text="Laske tarjoushinta" OnClick="btnLaske_Click"/>
        </div>
    </div>
    <div class="parent">
        <div class="child">
            <label>Ikkunan Pinta-ala:</label>
            <asp:Label ID="lblPintaAla" runat="server">:)</asp:Label>
        </div>
         <div class="child">
            <label>Karmin Piiri:</label>
            <asp:Label ID="lblPiiri" runat="server">:)</asp:Label>
        </div>
        <div class="child">
            <label>Tarjoushinta(Ilman ALV):</label>
            <asp:Label ID="lblTarjousHinta" runat="server">:)</asp:Label>
        </div>
    </div>
    </form>
    <span>
        <asp:Label ID="lblFeedback" class="error" runat="server"></asp:Label>
    </span>
</body>
</html>
