<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inicio de Sesión</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="txtUsuario">Usuario:</label>
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtContrasena">Contraseña:</label>
            <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" OnClick="btnIniciarSesion_Click" />
        </div>
    </form>
</body>
</html>