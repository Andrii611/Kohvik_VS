<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tootajaID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="tootajaID" HeaderText="tootajaID" ReadOnly="True" SortExpression="tootajaID" />
                <asp:BoundField DataField="nimiPerenimi" HeaderText="nimiPerenimi" SortExpression="nimiPerenimi" />
                <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
                <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                <asp:BoundField DataField="Amet_ametID" HeaderText="Amet_ametID" SortExpression="Amet_ametID" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>" DeleteCommand="DELETE FROM [tootajaSet] WHERE [tootajaID] = @tootajaID" InsertCommand="INSERT INTO [tootajaSet] ([nimiPerenimi], [isikukood], [telefon], [Amet_ametID]) VALUES (@nimiPerenimi, @isikukood, @telefon, @Amet_ametID)" ProviderName="<%$ ConnectionStrings:KohvikConnectionString1.ProviderName %>" SelectCommand="SELECT [tootajaID], [nimiPerenimi], [isikukood], [telefon], [Amet_ametID] FROM [tootajaSet]" UpdateCommand="UPDATE [tootajaSet] SET [nimiPerenimi] = @nimiPerenimi, [isikukood] = @isikukood, [telefon] = @telefon, [Amet_ametID] = @Amet_ametID WHERE [tootajaID] = @tootajaID">
                <DeleteParameters>
                    <asp:Parameter Name="tootajaID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimiPerenimi" Type="String" />
                    <asp:Parameter Name="isikukood" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                    <asp:Parameter Name="Amet_ametID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimiPerenimi" Type="String" />
                    <asp:Parameter Name="isikukood" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                    <asp:Parameter Name="Amet_ametID" Type="Int32" />
                    <asp:Parameter Name="tootajaID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</h2>
        <p>Use this area to provide additional information.</p>
    </main>
</asp:Content>
