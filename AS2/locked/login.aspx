<%@ Page Title="" Language="C#" MasterPageFile="~/web.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AS2.login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bodypartt">
        <div class="container">
            <div class="logindiv">
                <div class="logintitlepart">
                    <asp:Label runat="server" CssClass="logintitel">Login</asp:Label>
                </div>
                <div class="loginmin">
                    <asp:SqlDataSource ProviderName="System.Data.SqlServerCe.4.0" ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" FailureText="login failed!" LoginButtonText="Log in" PasswordLabelText="Password:" PasswordRequiredErrorMessage="required“password”。" RememberMeText="Remember Me" TitleText="" UserNameLabelText="UserEmail:" UserNameRequiredErrorMessage="required“email”。" Width="200px">
                        <CheckBoxStyle CssClass="chckboxpa" />
                        <LoginButtonStyle CssClass="buttonpart1" />
                        <TextBoxStyle CssClass="logininpurp" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                    </asp:Login>
                </div>
            </div>
        </div>
    </div>




    <style>
        body {
            background-image: url("../images/tm-img-09.jpg");
            background-size: 100% auto;
        }
    </style>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=login.aspx&cs=login.aspx.cs" Target="_blank">SC</asp:HyperLink>
</asp:Content>
