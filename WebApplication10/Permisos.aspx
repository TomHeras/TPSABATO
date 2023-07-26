<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Seguridad.master" CodeBehind="Permisos.aspx.cs" Inherits="WebApplication10.Permisos" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<script runat="server">
    

</script>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Permisos
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <h1></h1>
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <br />
            &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Familias"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />              
            <br /> 
              &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Todas las familias"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;<ajaxToolkit:ComboBox ID="ComboBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PatNom" DataValueField="IdPat" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TPHBHConnectionString %>" SelectCommand="SELECT [PatNom], [IdPat] FROM [Patente] WHERE ([PatDesc] IS NULL)"></asp:SqlDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="traerfamilias" TypeName="DAL.Patentes"></asp:ObjectDataSource>
&nbsp;
    <asp:Button ID="btnagregarflia" runat="server" OnClick="btnagregarflia_Click" Text="Configurar" />
&nbsp;
    <asp:Button ID="BTNCONFIGURARFLIA" runat="server" OnClick="Button1_Click" Text="Agregar" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Patentes"></asp:Label>
            <br />
    <br />
            <asp:Label ID="lblpatentes" runat="server" Text="Todas las patentes"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <ajaxToolkit:ComboBox ID="ComboBox2" runat="server" DataSourceID="SqlDataSource2" DataTextField="PatNom" DataValueField="IdPat" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TPHBHConnectionString %>" SelectCommand="SELECT [PatNom], [IdPat] FROM [Patente] WHERE ([PatDesc] IS NOT NULL)"></asp:SqlDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="traerpatentes" TypeName="DAL.Patentes"></asp:ObjectDataSource>
&nbsp;<asp:Button ID="BTNAGREGARPATENTE" runat="server" OnClick="BTNAGREGARPATENTE_Click" Text="Agregar" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <br />     
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label2" runat="server" Text="Nuevo Permiso"></asp:Label> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Nueva Familia"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Permisos"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Nombre"></asp:Label>
    <br />
    <asp:DropDownList ID="ddlpatentescompo" runat="server" Width="184px">
        <asp:ListItem>puedeconfigurarpatentesyfamilias</asp:ListItem>
        <asp:ListItem>puedeaccederseg</asp:ListItem>
        <asp:ListItem>puedeconfigurarseguridadusuarios</asp:ListItem>
        <asp:ListItem>puedeabmusuarios</asp:ListItem>
        <asp:ListItem>puedeaccederwm</asp:ListItem>
        <asp:ListItem>puedegestionarrestore</asp:ListItem>
        <asp:ListItem> puedegestionarbackup</asp:ListItem>
        <asp:ListItem>puedegestionarbitacora</asp:ListItem>
        <asp:ListItem>puedeaccederacarrito</asp:ListItem>
        <asp:ListItem>puedeaccederaproductos</asp:ListItem>
        <asp:ListItem>puedecomprarproductos</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnguardarflia" runat="server" Text="Guardar" OnClick="btnguardarflia_Click" />
    <br />
    <asp:TextBox ID="Txtpatentes" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Btnguardarpermiso" runat="server" Text="Guardar" OnClick="Btnguardarpermiso_Click" />
    <br />
    <br />
    
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="traerpatentes" TypeName="DAL.Patentes"></asp:ObjectDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Guardar Cambios" />
    <asp:TreeView ID="TreeView1" runat="server" BorderColor="#000066" BorderStyle="Solid">
    </asp:TreeView>
    <br />
    <br />
    
    
</asp:Content>