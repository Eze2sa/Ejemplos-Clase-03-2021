<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginRequest.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="IDControlLogin" runat="server" 
                OnAuthenticate="AutenticarLogin" LoginButtonText="Ingresar" 
                PasswordLabelText="Contraseña:" RememberMeText="Recordarme la proxima vez." 
                TitleText="Log In Test" UserNameLabelText="Usuario:" >
            </asp:Login>
        </div>
    </form>
</body>
</html>
