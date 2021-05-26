<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="LoginRequest.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mi Página</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="100%" id ="MiTabla" runat ="server" >
                    <tr> 
                        <td>
                            <asp:Label ID="lblInfo" runat="server" Text="Información: "></asp:Label> 

                            <asp:TextBox ID="txtInfo" runat="server" Width="250px" Height="30px" Font-Size="Larger"></asp:TextBox>
                        </td>
                    </tr>
            </table>
        </div>
    </form>
</body>
</html>
