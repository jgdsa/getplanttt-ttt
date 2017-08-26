<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="AS2.about" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background-image: url("../images/tm-img-15.jpg");
            background-size: 100% auto;
        }
    </style>
    <div class="waihostory1">
        <div class="seconhostory">
            <div class="thridhostory">
                <div class="ho1">
                    <asp:Label runat="server" CssClass="companyname">
                        <i class="fa fa-tree" aria-hidden="true"></i> &nbsp About Us
                    </asp:Label>

                </div>
                <div class="ho1">
                    <p class="companyhost">
                        Welcome to the beutiful and small world of plants.
                    
                    </p>
                    <hr />
                </div>
                <div class="thridhostory1">
                    <div id="myCarousel" class="carousel slide">
                        <!-- 轮播（Carousel）指标 -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                            <li data-target="#myCarousel" data-slide-to="4"></li>

                        </ol>
                        <!-- 轮播（Carousel）项目 -->
                        <div class="carousel-inner picpagesize">
                            <div class="item active ">
                                <img src="../images/flower/Crocus1.jpg" alt="First slide">
                            </div>
                            <div class="item">
                                <img src="../images/flower/Crocus2.jpg" alt="Second slide">
                            </div>
                            <div class="item">
                                <img src="../images/flower/Crocus3.jpg" alt="Third slide">
                            </div>
                            <div class="item">
                                <img src="../images/flower/Crocus4.jpg" alt="Fourth slide">
                            </div>
                            <div class="item">
                                <img src="../images/flower/Crocus5.jpg" alt="Fourth slide">
                            </div>
                        </div>
                        <!-- 轮播（Carousel）导航 -->
                        <a class="carousel-control left" href="#myCarousel"
                            data-slide="prev">&lsaquo;</a>
                        <a class="carousel-control right" href="#myCarousel"
                            data-slide="next">&rsaquo;</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=about.aspx&cs=about.aspx.cs" Target="_blank">SC</asp:HyperLink>
</asp:Content>
