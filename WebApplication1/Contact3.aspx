<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ametiTootajaID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ametiTootajaID" HeaderText="ametiTootajaID" InsertVisible="False" ReadOnly="True" SortExpression="ametiTootajaID" />
                    <asp:TemplateField HeaderText="tootaja_tootajaID" SortExpression="tootaja_tootajaID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("tootaja_tootajaID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Tootaja" DataTextField="nimiPerenimi" DataValueField="tootajaID" SelectedValue='<%# Bind("tootaja_tootajaID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="Tootaja" runat="server" ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>" DeleteCommand="DELETE FROM [tootajaSet] WHERE [tootajaID] = @tootajaID" InsertCommand="INSERT INTO [tootajaSet] ([nimiPerenimi], [isikukood], [telefon], [Amet_ametID]) VALUES (@nimiPerenimi, @isikukood, @telefon, @Amet_ametID)" SelectCommand="SELECT * FROM [tootajaSet]" UpdateCommand="UPDATE [tootajaSet] SET [nimiPerenimi] = @nimiPerenimi, [isikukood] = @isikukood, [telefon] = @telefon, [Amet_ametID] = @Amet_ametID WHERE [tootajaID] = @tootajaID">
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
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("tootaja_tootajaID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amet_ametID" SortExpression="Amet_ametID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Amet_ametID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Ameti" DataTextField="ametNimetus" DataValueField="ametID" SelectedValue='<%# Bind("Amet_ametID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="Ameti" runat="server" ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>" DeleteCommand="DELETE FROM [AmetSet] WHERE [ametID] = @ametID" InsertCommand="INSERT INTO [AmetSet] ([ametNimetus]) VALUES (@ametNimetus)" SelectCommand="SELECT * FROM [AmetSet]" UpdateCommand="UPDATE [AmetSet] SET [ametNimetus] = @ametNimetus WHERE [ametID] = @ametID">
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
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Amet_ametID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KohvikConnectionString1 %>" DeleteCommand="DELETE FROM [ametTootajaSet] WHERE [ametiTootajaID] = @ametiTootajaID" InsertCommand="INSERT INTO [ametTootajaSet] ([tootaja_tootajaID], [Amet_ametID]) VALUES (@tootaja_tootajaID, @Amet_ametID)" SelectCommand="SELECT * FROM [ametTootajaSet]" UpdateCommand="UPDATE [ametTootajaSet] SET [tootaja_tootajaID] = @tootaja_tootajaID, [Amet_ametID] = @Amet_ametID WHERE [ametiTootajaID] = @ametiTootajaID">
                <DeleteParameters>
                    <asp:Parameter Name="ametiTootajaID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
                    <asp:Parameter Name="Amet_ametID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
                    <asp:Parameter Name="Amet_ametID" Type="Int32" />
                    <asp:Parameter Name="ametiTootajaID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </h2>
    <br />
    </main>
</asp:Content>
