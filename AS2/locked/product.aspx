<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="AS2.product" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background-image: url("../images/tm-bg-2.jpeg");
            background-size: 100% auto;
        }
    </style>

    <div class="waihostory1">
        <div class="seconhostory">
            <div class="thridhostory">
                <div class="ho1">
                    <asp:Label runat="server" CssClass="companyname">
                        <i class="fa fa-star-half-o" aria-hidden="true"></i> &nbsp Product
                    </asp:Label>

                </div>
                <div class="ho1">
                    <p class="companyhost">
                        According to a recent Harvard study, flowers in the workplace will also improve well being, commitment, and productivity.
                    
                    </p>
                    <hr />
                </div>
                <div class="linkcenter">

                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/locked/showAllproducts.aspx" Target="_blank"> &nbsp &nbsp &nbsp showAllproducts</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/locked/searchProduct.aspx" Target="_blank">customSearchproducts</asp:HyperLink>
                    <br />

                </div>
                <div class="thridhostoryt">
                    <div id="myCarousel" class="carousel slide">
                        <!-- 轮播（Carousel）指标 -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                            <li data-target="#myCarousel" data-slide-to="4"></li>
                            <li data-target="#myCarousel" data-slide-to="5"></li>

                        </ol>
                        <!-- 轮播（Carousel）项目 -->
                        <div class="carousel-inner picpagesize">
                            <div class="item active ">
                                <img src="../images/flower/oa.jpg" alt="First slide">
                            </div>
                            <div class="item">
                                <img src="../images/flower/ob.jpg" alt="Second slide">
                            </div>
                            <div class="item">
                                <img src="../images/flower/Crocus1.jpg" alt="Second slide">
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
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=product.aspx&cs=product.aspx.cs" Target="_blank">SC</asp:HyperLink>
</asp:Content>
