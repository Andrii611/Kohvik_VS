<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">&nbsp;</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ametiTootajaID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ametiTootajaID" HeaderText="ametiTootajaID" ReadOnly="True" SortExpression="ametiTootajaID" />
                <asp:BoundField DataField="tootaja_tootajaID" HeaderText="tootaja_tootajaID" SortExpression="tootaja_tootajaID" />
            </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>" DeleteCommand="DELETE FROM [ametTootajaSet] WHERE [ametiTootajaID] = @ametiTootajaID" InsertCommand="INSERT INTO [ametTootajaSet] ([tootaja_tootajaID]) VALUES (@tootaja_tootajaID)" SelectCommand="SELECT [ametiTootajaID], [tootaja_tootajaID] FROM [ametTootajaSet]" UpdateCommand="UPDATE [ametTootajaSet] SET [tootaja_tootajaID] = @tootaja_tootajaID WHERE [ametiTootajaID] = @ametiTootajaID">
        <DeleteParameters>
            <asp:Parameter Name="ametiTootajaID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
            <asp:Parameter Name="ametiTootajaID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </main>
</asp:Content>
