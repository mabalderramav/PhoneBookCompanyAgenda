<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Nanus.Phonebook.Company.Presentacion.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />
    <title>Agenda Telofónica</title>
</head>
<body>
    <section class="Container">
        <figure class="Container-imgContainer">
            <img src="img/logovictoria2016.png" class="Container-img" alt="Panadería Victoria" />
        </figure>
        <h1 class="Container-title">Agenda Telefónica
        </h1>
        <form id="form1" runat="server" class="Container-froms">
            <div class="Container-formsMain">
                <p class="Container-p">
                    <span class="Container-span icon-user-tie"></span>
                    <asp:TextBox ID="txbUser" runat="server" CssClass="Container-txb" placeholder="Usuario" TabIndex="1" />
                </p>
                <p class="Container-p">
                    <span class="Container-span icon-key"></span>
                    <asp:TextBox ID="txbPassword" runat="server" CssClass="Container-txb" placeholder="Contraseña" TabIndex="2" TextMode="Password" />
                </p>
                <p class="Container-p">
                    <span class="Container-span icon-enter">
                        <asp:Button ID="btnLogin" runat="server" CssClass="Container-button" Text="Iniciar sesión" TabIndex="3" OnClick="btnLogin_Click" /></span>
                </p>
            </div>
        </form>
    </section>
</body>
</html>
