<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.master" AutoEventWireup="true" CodeBehind="searchProduct.aspx.cs" Inherits="AS2.locked.searchProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background-image: url("../images/tm-bg-2.jpeg");
            background-size: 100% auto;
        }
    </style>


    <div class="waihostory1">
        <div class="seconhostory">
            <div class="thridhostory">
                <div class="searchpart">
                    <asp:SqlDataSource ProviderName="System.Data.SqlServerCe.4.0" ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [name], [price], [type], [blossoming], [image] FROM [Product] WHERE (([id] = @id) AND ([blossoming] = @blossoming) AND ([price] &gt;= @price) AND ([price] &lt;= @price2))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="IdTextBox" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="blomCheckBox" Name="blossoming" PropertyName="Checked" Type="Boolean" />
                            <asp:ControlParameter ControlID="minPriceTextBox" Name="price" PropertyName="Text" Type="Decimal" />
                            <asp:ControlParameter ControlID="maxPriceTextBox" Name="price2" PropertyName="Text" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFF8DC;">
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="blossomingCheckBox" runat="server" Checked='<%# Eval("blossoming") %>' Enabled="false" />
                                </td>
                                <td>
                                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #008A8C; color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="blossomingCheckBox" runat="server" Checked='<%# Bind("blossoming") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                                <tr>
                                    <td></td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="blossomingCheckBox" runat="server" Checked='<%# Bind("blossoming") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #DCDCDC; color: #000000;">
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="blossomingCheckBox" runat="server" Checked='<%# Eval("blossoming") %>' Enabled="false" />
                                </td>
                                <td>
                                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                                <th runat="server">id</th>
                                                <th runat="server">name</th>
                                                <th runat="server">price</th>
                                                <th runat="server">type</th>
                                                <th runat="server">blossoming</th>
                                                <th runat="server">image</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="blossomingCheckBox" runat="server" Checked='<%# Eval("blossoming") %>' Enabled="false" />
                                </td>
                                <td>
                                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <div class="serchdiv">
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:Label ID="IdLabel" runat="server" Text="ID"></asp:Label>
                            <br />
                            <asp:TextBox ID="IdTextBox" runat="server" CssClass="searchinpurp2"></asp:TextBox>
                            <br />
                            <asp:CheckBox ID="blomCheckBox" runat="server" Text="Blossoming" />
                            <br />
                            <asp:Label ID="priceLabel1" runat="server" Text="minPrice"></asp:Label>
                            <br />
                            <asp:TextBox ID="minPriceTextBox" runat="server" CssClass="searchinpurp"></asp:TextBox>
                            <br />
                            <asp:Label ID="maxPrice" runat="server" Text="maxPrice"></asp:Label>
                            <br />
                            <asp:TextBox ID="maxPriceTextBox" runat="server" CssClass="searchinpurp1"></asp:TextBox>
                            <br />
                            <asp:Button ID="Searchbtn" runat="server" OnClick="Searchbtn_Click" Text="Search" CssClass="buttonpart2" />
                        </asp:Panel>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=searchProduct.aspx&cs=searchProduct.aspx.cs" Target="_blank">SC</asp:HyperLink>
</asp:Content>
