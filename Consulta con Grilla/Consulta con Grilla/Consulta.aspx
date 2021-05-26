<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Consulta_con_Grilla.Consulta" %>

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
        <div id="DivConsulta" runat="server">

             <asp:Label ID="Titulo" runat="server" Text="Consulta" CssClass="Titulo"></asp:Label>
            
            <table width="100%" id ="TablaConsulta" runat ="server">
                <tr> 
                    <td width="30%"> 
                        <asp:Label ID="LabelNombre" runat="server" Text="Nombre: " CssClass="TextoConsulta"></asp:Label> 
                   
                        <asp:TextBox ID="txtNombre" runat="server" Height="30px" Font-Size="Larger" CssClass="Consulta"></asp:TextBox>
                    </td>
                    <td width="30%"> 
                        <asp:Label ID="Label1" runat="server" Text="Nombre: " CssClass="TextoConsulta"></asp:Label> 
                   
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Font-Size="Larger" CssClass="Consulta"></asp:TextBox>
                    </td>
                    <td width="30%"> 
                        <asp:Label ID="lblDireccion" runat="server" Text="Dirección: "  CssClass="TextoConsulta"></asp:Label>
                   
                         <asp:TextBox ID="txtDireccion" runat="server" Height="30px" Font-Size="Larger" CssClass="Consulta"></asp:TextBox>
                    </td>
                    <td width="15%"> 
                        <asp:Label ID="lblFechaApertura" runat="server" Text="Fecha Apertura:" CssClass="TextoConsulta"></asp:Label> 
                    </td>
                    <td>
                        <asp:Calendar ID="calFechaApertura" runat="server" Height="30px" Font-Size="Larger" CssClass="Consulta"></asp:Calendar>
                    </td>
                </tr>
                
                <tr> 
                    <td>
                        <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" OnClick="Consultar"
                            Width="350px" Height="40px" BackColor="Green" Font-Size="Larger" Font-Bold="true" ForeColor="WhiteSmoke" />
                    </td>
                </tr>
                
            </table>

           <asp:GridView ID="GridViewConsulta" runat="server" Text="Texto" AutoGenerateColumns="true" RowStyle-HorizontalAlign="Center"
                         HeaderStyle-CssClass ="TextoConsulta" Width="100%" GridLines="Horizontal" OnRowCommand="GridViewConsulta_RowCommand">
                <Columns> 
                   <asp:ButtonField  ButtonType="Image" ImageUrl="Images/zoom.png" CommandName="Accion1"/>
                   
                    <asp:TemplateField HeaderText="Habilitar">
                        <ItemTemplate>
                            <asp:ImageButton ID="ActivarContacto" CommandName="Activar" runat="server" OnClick="ActivarContacto" 
                                             OnClientClick="return window.confirm('¿Seguro que desea Actualizar el Contacto?');">
                            </asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
           </asp:GridView>
        </div>
    </form>
</body>
</html>
