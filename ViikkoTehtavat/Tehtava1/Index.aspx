<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="CSS/tehtava1.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="jumbotron text-capitalize text-center">
        <h1>Ikkunan Dimensiot</h1>
    </div>
    <div class="container center-block">
        <div class="row">
            <div class="col-sm-6">
                <form runat="server" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Leveys(L):</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbLeveys" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <label class="col-sm-2 text-left">mm</label>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Korkeus(H):</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbKorkeus" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <label class="col-sm-2 text-left">mm</label>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Karmipuun Leveys(W):</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbKarminLeveys" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <label class="col-sm-2 text-left">mm</label>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="btnLaske" runat="server" class="col-sm-6 col-sm-offset-2" Text="Laske tarjoushinta" OnClick="btnLaske_Click"/>
                    </div>
                </form>
            </div>
            <div class="col-sm-6">
                <div class="col-xs-12">
                    <label class="col-xs-5 control-label">Ikkunan Pinta-ala:</label>
                    <div class="col-xs-7">
                        <asp:Label ID="lblPintaAla" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="col-xs-12">
                    <label class="col-xs-5 control-label">Karmin Piiri:</label>
                    <div class="col-xs-7">
                        <asp:Label ID="lblPiiri" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="col-xs-12">
                    <label class="col-xs-5 control-label">Tarjoushinta(Ilman ALV):</label>
                    <div class="col-xs-7">
                        <asp:Label ID="lblTarjousHinta" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center">
         <span>
            <asp:Label ID="lblFeedback" class="error" runat="server"></asp:Label>
        </span>
    </div>
</body>
</html>
