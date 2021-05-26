<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiPantalla.aspx.cs" Inherits="PostBack.MiPantalla" %>

<%--Incluimos el estilo para la pantalla--%>
<link href="Estilo.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <!-- Panel de consulta -->
    <form id="form1" runat="server" style="background-color: #f1f1f1" >
        <div id="DivMiPagina" runat="server">
            
            <table width="100%" id ="TablaDeMiPagina" runat ="server" >
                <tr> 
                    <td> 
                        <asp:Label ID="LabelNombre" runat="server" Text="Apellido y Nombre" CssClass="TextoConsulta"></asp:Label> 
                    </td>
                    <td > 
                        <asp:TextBox ID="TextBoxNombre" runat="server" Width="250px" Height="30px" Font-Size="Larger" CssClass="Consulta"></asp:TextBox>
                    </td>
                </tr>
                <tr> 
                    <td> 
                        <asp:Label ID="LabelPais" runat="server" Text="País"  CssClass="TextoConsulta" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ListaDePaises" runat="server" Width="250px" Height="30px" Font-Size="Larger" CssClass="Consulta"></asp:DropDownList>
                    </td>
                </tr> 
                <tr> 
                    <td> 
                        <asp:Label ID="LabelLocalidad" runat="server" Text="Localidad" CssClass="TextoConsulta" ></asp:Label> 
                    </td>
                    <td >
                        <asp:TextBox ID="TextBoxLocalidad" runat="server" Width="250px" Height="30px" Font-Size="Larger" CssClass="Consulta"></asp:TextBox>
                    </td>
                </tr>
                <tr> 
                    <td>
                        <asp:Button ID="ButtonLimpiar" runat="server" Text="Limpiar Campos" OnClick="LimpiarCampos"
                            Width="350px" Height="40px" BackColor="Green" Font-Size="Larger" Font-Bold="true" ForeColor="WhiteSmoke" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
