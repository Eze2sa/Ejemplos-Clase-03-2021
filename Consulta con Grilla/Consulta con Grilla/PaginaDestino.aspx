<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaDestino.aspx.cs" Inherits="Consulta_con_Grilla.PaginaDestino" %>

<%--Incluimos el estilo para la pantalla--%>
<link href="Estilo.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #f1f1f1" >
        
        <asp:Label ID="Titulo" runat="server" Text="Destino" CssClass="Titulo"></asp:Label>
        
        <div id="DivDestino" runat="server">
            <table width="100%" id ="TablaDestino" runat ="server" >
                <tr> 
                    <td> 
                        <asp:Label ID="LabelNombre" runat="server" Text="Nombre Establecimiento: " CssClass="TextoConsulta"></asp:Label>

                        <asp:TextBox ID="txtNombreEstablecimiento" runat="server"  Width="250px" Height="30px" Font-Size="Larger" CssClass="Consulta"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
