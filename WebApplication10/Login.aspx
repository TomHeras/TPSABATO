﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication10.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="HBH_diseño%20mas%20grandde2.png" rel="icon" type="image/gif"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />   <%-- esto trae las hojas de estilo --%>
        <link href="Estilos.css" rel="stylesheet" />
</head>
<body class="login body_body">
    <div class="loginbox">
        <img src="HBH_diseño%20mas%20grandde2.png" alt="Alternate Text" class="user" />
         <h2>Log In</h2>
        <form id="form1" runat="server">
            <asp:Label Text="Usuario" CssClass="lblnick" runat="server" />
            <asp:TextBox ID="TxtNick" runat="server" placeholder="Ingrese Usuario" CssClass="txtnick" AutoCompleteType="Disabled" ></asp:TextBox>
            <asp:Label Text="Contraseña" CssClass="lblpass" runat="server" />  
            <asp:TextBox ID="TxtContraseña" runat="server" placeholder="Ingrese Contraseña" AutoCompleteType="Disabled" EnableViewState="False" TextMode="Password" CssClass="txtpass"></asp:TextBox>
            <asp:Button ID="BtnIngresar" runat="server" Text="Ingresar" CssClass="btningresar" OnClick="BtnIngresar_Click" />
            <asp:LinkButton ID="LinkButtonRecuperar" runat="server" OnClick="LinkButtonRecuperar_Click">Recuperar/Cambiar contraseña</asp:LinkButton>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Volver al Inicio</asp:LinkButton>
            
        </form>       
     </div>
</body>
</html>
