<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.master" AutoEventWireup="true" CodeBehind="showAllproducts.aspx.cs" Inherits="AS2.locked.showAllproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background-image: url("../images/tm-bg-2.jpeg");
            background-size: 100% auto;
        }
    </style>

    <div class="waihostorycontact">
        <div class="seconhostorycontact">
            <div class="thridhostory">
                <div class="showpart">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
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
                            <asp:ImageField DataImageUrlField="image" SortExpression="image" HeaderText="image"  ControlStyle-Height="280px" ControlStyle-Width="230px">
                            </asp:ImageField>
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ProviderName="System.Data.SqlServerCe.4.0" ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([id] = @id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ProviderName="System.Data.SqlServerCe.4.0" ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                    <div class="tablepart">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" HorizontalAlign="Left">
                            <Columns>
                                <asp:HyperLinkField SortExpression="id" Target="_blank" DataTextField="id" HeaderText="id" DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/locked/displayproduct.aspx?id={0}" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                <asp:BoundField DataField="lifecycle" HeaderText="lifecycle" SortExpression="lifecycle" />
                                <asp:BoundField DataField="producing_area" HeaderText="producing_area" SortExpression="producing_area" />
                                <asp:CheckBoxField DataField="blossoming" HeaderText="blossoming" SortExpression="blossoming" />
                                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Select" />
                            </Columns>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="GridViewRowStyle" />
                            <SelectedRowStyle CssClass="GridViewRowStyle" />
                        </asp:GridView>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=showAllproducts.aspx&cs=showAllproducts.aspx.cs" Target="_blank">SC</asp:HyperLink>




</asp:Content>
