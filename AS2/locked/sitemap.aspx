<%@ Page Title="" Language="C#" MasterPageFile="~/subweb.Master" AutoEventWireup="true" CodeBehind="sitemap.aspx.cs" Inherits="AS2.sitemap" %>

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
                        <i class="fa fa-bell-o" aria-hidden="true"></i> &nbsp Sitemap
                    </asp:Label>

                </div>
                <div class="sitemappart">
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" DataSourceID="SiteMapDataSource2">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                    <asp:SiteMapDataSource ID="SiteMapDataSource2" runat="server" />
                </div>

            </div>
        </div>
    </div>
    <asp:HyperLink ID="codeHyperLink" runat="server" NavigateUrl="~/showcode.aspx?as=sitemap.aspx&cs=sitemap.aspx.cs" Target="_blank">SC</asp:HyperLink>
</asp:Content>
