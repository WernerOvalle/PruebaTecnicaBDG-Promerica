using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InicioSesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnIniciarSesion_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtUsuario.Text) || string.IsNullOrEmpty(txtContrasena.Text))
        {
               Response.Write("Los campos de usuario y contraseña no pueden estar vacíos.");
        }
        else
        {
            // Procesar la solicitud de inicio de sesión
            // ...
        }
    }
}