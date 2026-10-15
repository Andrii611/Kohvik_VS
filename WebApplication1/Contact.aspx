<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ametID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="ametID" HeaderText="ametID" ReadOnly="True" SortExpression="ametID" />
                <asp:BoundField DataField="ametNimetus" HeaderText="ametNimetus" SortExpression="ametNimetus" />
            </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>" DeleteCommand="DELETE FROM [AmetSet] WHERE [ametID] = @ametID" InsertCommand="INSERT INTO [AmetSet] ([ametNimetus]) VALUES (@ametNimetus)" ProviderName="<%$ ConnectionStrings:KohvikConnectionString1.ProviderName %>" SelectCommand="SELECT [ametID], [ametNimetus] FROM [AmetSet]" UpdateCommand="UPDATE [AmetSet] SET [ametNimetus] = @ametNimetus WHERE [ametID] = @ametID">
    <DeleteParameters>
        <asp:Parameter Name="ametID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ametNimetus" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ametNimetus" Type="String" />
        <asp:Parameter Name="ametID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ametID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="ametID" HeaderText="ametID" InsertVisible="False" ReadOnly="True" SortExpression="ametID" />
        <asp:BoundField DataField="ametNimetus" HeaderText="ametNimetus" SortExpression="ametNimetus" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<br />
    </main>
</asp:Content>
