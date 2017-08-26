<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showcode.aspx.cs" Inherits="AS2.showcode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/dessert.css" />
    <script src="Script/prettify.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="FileName" runat="server" Text="Label" BorderColor="#99CCFF" BorderStyle="Solid"></asp:Label>
        </asp:Panel>
        <p>
            <pre class="prettyprint">
                <asp:Label ID="Code" runat="server" Text="Label"></asp:Label>
                <script>
                    prettyPrint();
                </script>
            </pre>

        </p>

        <p>
            <asp:Label ID="csfile" runat="server" Text="Label" BorderColor="#99CCFF" BorderStyle="Solid"></asp:Label>
        </p>
        <p>
            <pre class="prettyprint">
                <asp:Label ID="cscode" runat="server" Text="Label"></asp:Label>
            </pre>
            <script>
                prettyPrint();
            </script>
        </p>
    </form>
</body>
</html>
