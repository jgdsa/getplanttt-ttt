<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.Master" AutoEventWireup="true" CodeBehind="succulent.aspx.cs" Inherits="AS2.succulent" %>

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
                        Succulent                    
                    </asp:Label>

                    <i class="fa fa-camera-retro fa-lg"></i>
                </div>
                <div class="flowerpart">
                    <div class="flowerintroduc">
                        <table class="table tableno">
                            <caption class="flowertitle"><i class="fa fa-leaf" aria-hidden="true"></i>&nbsp Tillandsia</caption>

                            <tbody class="tablebody">
                                <tr>
                                    <td>Type species</td>
                                    <td>Succulent Plants</td>
                                </tr>
                                <tr>
                                    <td>Kingdom</td>
                                    <td>Plantae</td>
                                </tr>
                                <tr>
                                    <td>Family</td>
                                    <td>Crassulaceae</td>
                                </tr>
                                <tr>
                                    <td>Order</td>
                                    <td>Saxifragales</td>
                                </tr>
                                <tr>
                                    <td>introductiom</td>
                                    <td>They are generally herbaceous, and relatively few treelike or aquatic plants.The family includes approximately 1400 species,although the number of genera is disputed and depends strongly on the circumscription of Sedum.</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="picshowfs">
                        <img src="../images/flower/duoroujit.jpg" class="img-rounded">
                    </div>
                </div>


            </div>
        </div>
    </div>

    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=succulent.aspx&cs=succulent.aspx.cs" Target="_blank">SC</asp:HyperLink>
</asp:Content>
