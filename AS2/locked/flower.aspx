<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.Master" AutoEventWireup="true" CodeBehind="flower.aspx.cs" Inherits="AS2.flower" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background-image: url("../images/tm-bg-4.jpeg");
            background-size: 100% auto;
        }
    </style>
    <div class="waihostory1">
        <div class="seconhostory">
            <div class="thridhostory">
                <div class="ho1">
                    <asp:Label runat="server" CssClass="companyname">                       
                        Flower                     
                    </asp:Label>

                    <i class="fa fa-camera-retro fa-lg"></i>
                </div>
                <div class="flowerpart">
                    <div class="flowerintroduc">
                        <table class="table tableno">
                            <caption class="flowertitle"><i class="fa fa-leaf" aria-hidden="true"></i>&nbsp Forget me nots</caption>

                            <tbody class="tablebody">
                                <tr>
                                    <td>Type species</td>
                                    <td>Myosotis scorpioides</td>
                                </tr>
                                <tr>
                                    <td>Kingdom</td>
                                    <td>Plantae</td>
                                </tr>
                                <tr>
                                    <td>Family</td>
                                    <td>Boraginaceae</td>
                                </tr>
                                <tr>
                                    <td>Subfamily</td>
                                    <td>Boraginoideae</td>
                                </tr>
                                <tr>
                                    <td>introductiom</td>
                                    <td>In the northern hemisphere they are commonly called forget-me-nots or scorpion grasses. The common name "forget-me-not" was calqued from the German Vergissmeinnicht, and first used in English in 1398 AD via King Henry IV</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="picshowfs">
                        <img src="../images/flower/myoso1.jpg" class="img-rounded">
                    </div>
                </div>


            </div>
        </div>
    </div>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=flower.aspx&cs=flower.aspx.cs" Target="_blank">SC</asp:HyperLink>
</asp:Content>
