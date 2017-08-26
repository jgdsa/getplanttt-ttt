<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayproduct.aspx.cs" Inherits="AS2.locked.displayproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ProviderName="System.Data.SqlServerCe.4.0" ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="lifecycle" HeaderText="lifecycle" SortExpression="lifecycle" />
                    <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                    <asp:BoundField DataField="producing_area" HeaderText="producing_area" SortExpression="producing_area" />
                    <asp:BoundField DataField="function" HeaderText="function" SortExpression="function" />
                    <asp:CheckBoxField DataField="blossoming" HeaderText="blossoming" SortExpression="blossoming" />
                    <asp:BoundField DataField="image" HeaderText="image-url" SortExpression="image" />
                    <asp:BoundField DataField="applicable_space" HeaderText="applicable_space" SortExpression="applicable_space" />
                    <asp:ImageField DataImageUrlField="image" HeaderText="image">
                    </asp:ImageField>
                </Fields>
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
