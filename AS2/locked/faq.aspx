<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.master" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="AS2.faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background-image: url("../images/tm-img-13.jpg");
            background-size: 100% auto;
        }
    </style>
    <div class="waihostory">
        <div class="seconhostory">
            <div class="thridhostory">
                <div class="ho1">
                    <asp:Label runat="server" CssClass="companyname1">
                        <i class="fa fa-cogs" aria-hidden="true"></i> &nbsp FAQ
                    </asp:Label>

                </div>
                <div class="ho1">
                    <p class="companyhostqus1">
                        Q: &nbsp What dose FAQ stand for?
                    </p>
                    <p class="companyhost1">
                        Answer: &nbsp FAQ stands for Frequently Asked Question. In this FAQ page, we will explain the questions you may entwr while browsing Our website.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhostqus">
                        Q: &nbsp What are the definition of plants?
                    </p>
                    <p class="companyhost1">
                        Answer: &nbsp Plants are organisms that belong to the plant kingdom comprising of trees, bushes, shrubs,grasses, vines, mosses, ferns and green algae.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhostqus">
                        Q: &nbsp Do all plants grow on land?
                    </p>
                    <p class="companyhost1">
                        Answer: &nbsp While most plants grow on the land, many thrive in the water as well.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhostqus">
                        Q: &nbsp Where is the plant located in the food chain?
                    </p>
                    <p class="companyhost1">
                        Answer: &nbsp plants lie at the base of almost all food chains and are the most important constituent of the Earth's biosphere.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhostqus">
                        Q: &nbsp When is the origin time of plants? 
                    </p>
                    <p class="companyhost1">
                        Answer: &nbsp Plants evolved on land around 500 million years back.
                    </p>
                </div>
                <div class="ho1">
                    <p class="companyhostqus">
                        Q: &nbsp How many types of plants are there now?
                    </p>
                    <p class="companyhost1">
                        Answer: &nbsp Currently there are around 350,000 species of plants.
                    </p>
                </div>


            </div>
        </div>
    </div>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=faq.aspx&cs=faq.aspx.cs" Target="_blank">SC</asp:HyperLink>

</asp:Content>
