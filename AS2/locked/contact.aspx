<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="AS2.contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background-image: url("../images/tm-bg-5.jpeg");
            background-size: 100% auto;
        }
    </style>

    <div class="waihostorycontact">
        <div class="seconhostorycontact">
            <div class="thridhostoryy">
                <div class="ho1">
                    <asp:Label runat="server" CssClass="companyname">
                        Contact Us &nbsp <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    </asp:Label>
                    <hr />

                </div>

                <hr />
            </div>

            <div class="contpart">
                <asp:Label ID="lblMail" runat="server" Text="< getyouplants >"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="164px" Width="500px">
                    <AlternatingRowStyle />
                    <Columns>
                        <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="chkEmail" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle Font-Bold="True" ForeColor="White" />
                    <HeaderStyle Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BorderStyle="Solid" BorderWidth="1px" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <table class="emailTable">
                    <tr>
                        <td class="emailHeader">From
                        </td>
                        <td class="emailRow">FIT5192_Lecturer
                        </td>
                    </tr>
                    <tr>
                        <td class="emailHeader">Subject
                        </td>
                        <td class="emailRow">
                            <asp:TextBox ID="txtSubject" Width="350" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="emailHeader">Attachment
                        </td>
                        <td class="emailRow">
                            <asp:FileUpload ID="fileUpload" runat="server" Width="430" />
                        </td>
                    </tr>
                    <tr>
                        <td class="emailHeader">Message
                        </td>
                        <td class="emailRow">
                            <br />
                            <asp:TextBox runat="server" ID="txtMsg" TextMode="MultiLine" Columns="55" Rows="15" />
                        </td>
                    </tr>
                </table>
                <asp:SqlDataSource ProviderName="System.Data.SqlServerCe.4.0" ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [email], [firstname], [lastname], [gender] FROM [Customer]"></asp:SqlDataSource>
                <asp:Button ID="SendMail" runat="server" OnClick="SendingEmail" Text="Send Email" CssClass="buttonpart" />
            </div>
        </div>
    </div>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=contact.aspx&cs=contact.aspx.cs" Target="_blank">SC</asp:HyperLink>





</asp:Content>
