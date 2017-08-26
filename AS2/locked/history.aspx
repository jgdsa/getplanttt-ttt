<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="AS2.history1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background-image: url("../images/tm-img-16.jpg");
            background-size: 100% auto;
        }
    </style>
    <div class="waihostory">
        <div class="seconhostory">
            <div class="thridhostory">
                <div class="ho1">
                    <asp:Label runat="server" CssClass="companyname">
                         <i class="fa fa-fire" aria-hidden="true"></i> &nbsp getyouPlants
                    </asp:Label>
                </div>
                <div class="ho1">
                    <p class="companyhost">
                        getyouPlants is founded in Augest,&nbsp 1982.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhost">
                        The founders: Sun and Hu are both ITS students of SEU-Monash Joint Graduate School.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhost">
                        getyouPlants is owned and operated by partners with over 29 years of combined experience in the floral industry. 
                        &nbsp
                        We are a member of the multiple florist networks.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhost">
                        We have a full-service Special Client Services department, with a separate phone number and dedicated staff designed to meet all the needs of our customers.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhost">
                        We also offers a unique Reminder Service designed to provide advance notice and plants selection assistance for important dates such as birthdays, anniversaries and holidays
                   
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhostis">
                        Issue Resolution:
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhost">
                        Our representatives are instructed and empowered to fulfill a customer request and to do whatever it takes to satisfy them and exceed their service expectations.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhost">
                        We know how important it is for our customers to know we are responding to their questions and concerns.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhost">
                        For additional details,&nbsp contact our Corporate Services Department at to be partnered with an Account Manager who will help you design a program that fits your needs and budget.&nbsp With a 100% service and product guarantee you can be assured your efforts will always be a huge success.
                    </p>
                </div>


            </div>
        </div>
    </div>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=history.aspx&cs=history.aspx.cs" Target="_blank">SC</asp:HyperLink>
</asp:Content>
