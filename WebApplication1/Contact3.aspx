<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="WebApplication1.Contact3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main aria-labelledby="title">

        <h2 id="title">Töötajate ametid</h2>

        <asp:DetailsView ID="DetailsView1" runat="server"
             OnItemInserting="DetailsView1_ItemInserting"
             AutoGenerateRows="False"
             DataKeyNames="ametiTootajaID"
             DataSourceID="SqlDataSource1"
             DefaultMode="Insert"
             Height="50px" Width="350px">

            <Fields>

                <asp:BoundField
                    DataField="ametiTootajaID"
                    HeaderText="ID"
                    InsertVisible="False"
                    ReadOnly="True" />

                <asp:TemplateField HeaderText="Töötaja">

                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1"
                            runat="server"
                            DataSourceID="Tootaja"
                            DataTextField="nimiPerenimi"
                            DataValueField="tootajaID"
                            SelectedValue='<%# Bind("tootaja_tootajaID") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Amet">

                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2"
                            runat="server"
                            DataSourceID="Ameti"
                            DataTextField="ametNimetus"
                            DataValueField="ametID"
                            SelectedValue='<%# Bind("Amet_ametID") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>

                </asp:TemplateField>

                <asp:CommandField ShowInsertButton="True" />

            </Fields>

        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>"
            InsertCommand="
                INSERT INTO ametTootajaSet
                (tootaja_tootajaID, Amet_ametID)
                VALUES
                (@tootaja_tootajaID, @Amet_ametID)"
            SelectCommand="
                SELECT ametiTootajaID, tootaja_tootajaID, Amet_ametID
                FROM ametTootajaSet">

            <InsertParameters>
                <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
                <asp:Parameter Name="Amet_ametID" Type="Int32" />
            </InsertParameters>

        </asp:SqlDataSource>

        <asp:SqlDataSource ID="Tootaja" runat="server"
            ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>"
            SelectCommand="
                SELECT tootajaID, nimiPerenimi
                FROM tootajaSet">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="Ameti" runat="server"
            ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>"
            SelectCommand="
                SELECT ametID, ametNimetus
                FROM AmetSet">
        </asp:SqlDataSource>

    <br />

    </main>

</asp:Content>