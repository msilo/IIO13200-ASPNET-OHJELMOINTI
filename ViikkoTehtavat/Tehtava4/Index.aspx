<%@ Page Language="C#" MasterPageFile="~/Tehtava4.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <asp:SqlDataSource ID="dsAsiakkaat" runat="server" DataSourceMode="DataReader"
        ConnectionString="Data source=twelve.labranet.jamk.fi;initial catalog=DemoxOy;user=koodari;password=koodari16" providerName="System.Data.SqlClient"
        SelectCommand="SELECT [*] FROM [asiakas]"
        >
    </asp:SqlDataSource>

    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="true"
        DataKeyNames="Testi" DataSourceID="dsAsiakkaat"
        EnableViewState="false">

    </asp:GridView>

    <%= connStr %>
</asp:Content>