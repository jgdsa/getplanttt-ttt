<%@ Page Title="" Language="C#" MasterPageFile="~/web.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="AS2.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url("../images/tm-bg-6.jpeg");
            background-size: 100% auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="registerintroduction">
                <asp:Label runat="server" CssClass="sampleRegisterlo">Registration</asp:Label>
                <p class="pageintroduction">Plants for Delivery Send a plant today and you will certainly brighten someone’s day! From green plants to dish gardens and orchids, plants are a beautiful gift that are easy to care for.</p>
                <p class="pageintroduction">Join Us</p>
            </div>
            <div class="regiterblock">
                <div class="regitertext">
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">E-mail</asp:Label>
                        <asp:RequiredFieldValidator ID="emailRequire" runat="server"
                            ControlToValidate="emailTextBox" ForeColor="Red" ErrorMessage="please input your email" />
                        <br />
                        <asp:TextBox ID="emailTextBox" runat="server" CssClass="boxpart"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="validateEmail" runat="server"
                            ControlToValidate="emailTextBox" ForeColor="Red"
                            ValidationExpression="\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}"
                            ErrorMessage="Invalid email" Display="Dynamic" />
                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Create a Password</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="passwordTextBox" ForeColor="Red" ErrorMessage="please input your password" />
                        <br />
                        <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" CssClass="boxpart"></asp:TextBox>
                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Confirm Password</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="confirmTextBox" ForeColor="Red" ErrorMessage="please input your password" />
                        <br />
                        <asp:TextBox ID="confirmTextBox" runat="server" TextMode="Password" CssClass="boxpart"></asp:TextBox>
                        <asp:CompareValidator ID="cmpPassword" runat="server" ControlToValidate="passwordTextBox"
                            ControlToCompare="confirmTextBox" ForeColor="Red" Display="Dynamic"
                            ErrorMessage="Please enter same password" />

                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">First Name</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="firstname" ForeColor="Red" ErrorMessage="please input your firstname" />
                        <br />
                        <asp:TextBox ID="firstname" runat="server" CssClass="boxpart"></asp:TextBox>
                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Last Name</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="lastname" ForeColor="Red" ErrorMessage="please input your lastname" />
                        <br />
                        <asp:TextBox ID="lastname" runat="server" CssClass="boxpart"></asp:TextBox>
                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Gender</asp:Label>
                        <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="genderradio">
                            <asp:ListItem>male</asp:ListItem>
                            <asp:ListItem>female</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Age</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="ageTextBox" ForeColor="Red" ErrorMessage="please input your age" />
                        <br />
                        <asp:TextBox ID="ageTextBox" runat="server" TextMode="Number" CssClass="boxpart"></asp:TextBox>
<%--                        <asp:RangeValidator ID="validage" runat="server" ControlToValidate="ageTextBox"
                            ErrorMessage="please input 1 to 100" ForeColor="Red"
                            MaximumValue="100" MinimumValue="1" />--%>
                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Favorite website</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                            ControlToValidate="urlTextBox" ForeColor="Red" ErrorMessage="please input website" />
                        <br />
                        <asp:TextBox ID="urlTextBox" runat="server" CssClass="boxpart"></asp:TextBox>
                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Country</asp:Label>
                        <br />
                        <asp:DropDownList runat="server" ID="countrylist" OnSelectedIndexChanged="Unnamed12_SelectedIndexChanged">
                            <asp:ListItem>America</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                            <asp:ListItem>England</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Favorite Plants</asp:Label>
                        <br />
                        <asp:ListBox runat="server" SelectionMode="Multiple" ID="plantlist">
                            <asp:ListItem>Succulent</asp:ListItem>
                            <asp:ListItem>Rose</asp:ListItem>
                            <asp:ListItem>Lily</asp:ListItem>
                            <asp:ListItem>Sunflower</asp:ListItem>
                            <asp:ListItem>Peony</asp:ListItem>
                            <asp:ListItem>Cypress</asp:ListItem>
                            <asp:ListItem>Tulip</asp:ListItem>
                        </asp:ListBox>
                        <br />
                    </div>
                    <div class="tiaojianju">
                        <asp:Label runat="server" CssClass="wenzipart">Intersted Item</asp:Label>
                        <br />
                        <asp:CheckBoxList AutoPostBack="true" runat="server" RepeatColumns="4" ID="itemchecklist">
                            <asp:ListItem>Picture</asp:ListItem>
                            <asp:ListItem>Price</asp:ListItem>
                            <asp:ListItem>Color</asp:ListItem>
                            <asp:ListItem>Size</asp:ListItem>
                            <asp:ListItem>Habits</asp:ListItem>
                            <asp:ListItem>Origin</asp:ListItem>
                            <asp:ListItem>Growth environment</asp:ListItem>
                            <asp:ListItem>radiation resistant</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                    <div class="tiaojianju">
                        <asp:Button ID="button1" Text="register" runat="server" OnClick="button1_Click" CssClass="buttonpart" />
                        <asp:SqlDataSource  ProviderName="System.Data.SqlServerCe.4.0" ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [email] = @original_email AND [password] = @original_password AND (([firstname] = @original_firstname) OR ([firstname] IS NULL AND @original_firstname IS NULL)) AND (([lastname] = @original_lastname) OR ([lastname] IS NULL AND @original_lastname IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([favouritewebsite] = @original_favouritewebsite) OR ([favouritewebsite] IS NULL AND @original_favouritewebsite IS NULL)) AND (([country] = @original_country) OR ([country] IS NULL AND @original_country IS NULL)) AND (([favouriteplant] = @original_favouriteplant) OR ([favouriteplant] IS NULL AND @original_favouriteplant IS NULL)) AND (([attributes] = @original_attributes) OR ([attributes] IS NULL AND @original_attributes IS NULL))" InsertCommand="INSERT INTO [Customer] ([email], [password], [firstname], [lastname], [gender], [age], [favouritewebsite], [country], [favouriteplant], [attributes]) VALUES (@email, @password, @firstname, @lastname, @gender, @age, @favouritewebsite, @country, @favouriteplant, @attributes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [password] = @password, [firstname] = @firstname, [lastname] = @lastname, [gender] = @gender, [age] = @age, [favouritewebsite] = @favouritewebsite, [country] = @country, [favouriteplant] = @favouriteplant, [attributes] = @attributes WHERE [email] = @original_email AND [password] = @original_password AND (([firstname] = @original_firstname) OR ([firstname] IS NULL AND @original_firstname IS NULL)) AND (([lastname] = @original_lastname) OR ([lastname] IS NULL AND @original_lastname IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([favouritewebsite] = @original_favouritewebsite) OR ([favouritewebsite] IS NULL AND @original_favouritewebsite IS NULL)) AND (([country] = @original_country) OR ([country] IS NULL AND @original_country IS NULL)) AND (([favouriteplant] = @original_favouriteplant) OR ([favouriteplant] IS NULL AND @original_favouriteplant IS NULL)) AND (([attributes] = @original_attributes) OR ([attributes] IS NULL AND @original_attributes IS NULL))" OnSelecting="SqlDataSource1_Selecting">
                            <DeleteParameters>
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_firstname" Type="String" />
                                <asp:Parameter Name="original_lastname" Type="String" />
                                <asp:Parameter Name="original_gender" Type="String" />
                                <asp:Parameter Name="original_age" Type="String" />
                                <asp:Parameter Name="original_favouritewebsite" Type="String" />
                                <asp:Parameter Name="original_country" Type="String" />
                                <asp:Parameter Name="original_favouriteplant" Type="String" />
                                <asp:Parameter Name="original_attributes" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="firstname" Type="String" />
                                <asp:Parameter Name="lastname" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="age" Type="String" />
                                <asp:Parameter Name="favouritewebsite" Type="String" />
                                <asp:Parameter Name="country" Type="String" />
                                <asp:Parameter Name="favouriteplant" Type="String" />
                                <asp:Parameter Name="attributes" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="firstname" Type="String" />
                                <asp:Parameter Name="lastname" Type="String" />
                                <asp:Parameter Name="gender" Type="String" />
                                <asp:Parameter Name="age" Type="String" />
                                <asp:Parameter Name="favouritewebsite" Type="String" />
                                <asp:Parameter Name="country" Type="String" />
                                <asp:Parameter Name="favouriteplant" Type="String" />
                                <asp:Parameter Name="attributes" Type="String" />
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_firstname" Type="String" />
                                <asp:Parameter Name="original_lastname" Type="String" />
                                <asp:Parameter Name="original_gender" Type="String" />
                                <asp:Parameter Name="original_age" Type="String" />
                                <asp:Parameter Name="original_favouritewebsite" Type="String" />
                                <asp:Parameter Name="original_country" Type="String" />
                                <asp:Parameter Name="original_favouriteplant" Type="String" />
                                <asp:Parameter Name="original_attributes" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                    <asp:HyperLink ID="CodeLink" runat="server" NavigateUrl="~/showcode.aspx?as=register.aspx&cs=register.aspx.cs" Target="_blank">Code</asp:HyperLink>
                    <asp:Label ID="Label1" runat="server" BorderColor="Red" Font-Bold="True"></asp:Label>
                </div>
            </div>





        </div>
    </div>
</asp:Content>
