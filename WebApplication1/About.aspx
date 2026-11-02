<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">

        <h2 id="title">Töötajad</h2>

        <h3>Lisa uus töötaja</h3>

        <asp:DetailsView ID="DetailsView1" runat="server"
            AutoGenerateRows="False"
            DataSourceID="SqlDataSource2"
            DefaultMode="Insert"
            CellPadding="5">

            <Fields>
                <asp:BoundField DataField="nimiPerenimi"
                    HeaderText="Nimi ja perenimi" />

                <asp:BoundField DataField="isikukood"
                    HeaderText="Isikukood" />

                <asp:BoundField DataField="telefon"
                    HeaderText="Telefon" />

                <asp:CommandField ShowInsertButton="True"
                    InsertText="Lisa töötaja" />
            </Fields>

        </asp:DetailsView>

        <hr />

        <h3>Töötajate nimekiri</h3>

        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="False"
            DataSourceID="SqlDataSource2"
            EmptyDataText="Töötajaid ei leitud."
            CellPadding="5">

            <Columns>
                <asp:BoundField DataField="tootajaID" HeaderText="ID" />
                <asp:BoundField DataField="nimiPerenimi" HeaderText="Nimi ja perenimi" />
                <asp:BoundField DataField="isikukood" HeaderText="Isikukood" />
                <asp:BoundField DataField="telefon" HeaderText="Telefon" />
                <asp:BoundField DataField="ametNimetus" HeaderText="Amet" />
            </Columns>

        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>"

            SelectCommand="
                SELECT
                    t.tootajaID,
                    t.nimiPerenimi,
                    t.isikukood,
                    t.telefon,
                    a.ametNimetus
                FROM tootajaSet AS t
                LEFT JOIN ametTootajaSet AS at
                    ON t.tootajaID = at.tootaja_tootajaID
                LEFT JOIN AmetSet AS a
                    ON at.Amet_ametID = a.ametID"

            InsertCommand="
                INSERT INTO tootajaSet
                (nimiPerenimi, isikukood, telefon)
                VALUES
                (@nimiPerenimi, @isikukood, @telefon)">

            <InsertParameters>
                <asp:Parameter Name="nimiPerenimi" Type="String" />
                <asp:Parameter Name="isikukood" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
            </InsertParameters>

        </asp:SqlDataSource>

    </main>
</asp:Content>