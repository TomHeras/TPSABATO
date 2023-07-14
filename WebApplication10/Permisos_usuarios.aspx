<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Seguridad.master" CodeBehind="Permisos_usuarios.aspx.cs" Inherits="WebApplication10.Permisos_usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Usuarios
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h1>
        Gestion De Permisos
    </h1>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Usuarios"></asp:Label>
    <br/>
    <br/>
    <asp:Label ID="Label2" runat="server" Text="Usuarios"></asp:Label>
    <br />
    <asp:GridView ID="gvusers" runat="server" AutoGenerateColumns="False"  DataKeyNames="Idusuarios" DataSourceID="odsUSUARIOS" OnSelectedIndexChanged="gvusers_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Idusuarios" HeaderText="Idusuarios" SortExpression="Idusuarios" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="odsUSUARIOS" runat="server" SelectMethod="GetAll" TypeName="DAL.Usuario"></asp:ObjectDataSource>
    <br />
    <br />
    <asp:Label ID="lblflia" runat="server" Text="Familias"></asp:Label>
    <br />
    <asp:GridView ID="gvflias" runat="server" AutoGenerateColumns="False"  DataKeyNames="Id" DataSourceID="odsFLIAS" OnSelectedIndexChanged="gvflias_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="Permiso" HeaderText="Permiso" SortExpression="Permiso" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="odsFLIAS" runat="server" SelectMethod="GetAllFamilias" TypeName="BLL.Patentes"></asp:ObjectDataSource>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="lblpat" runat="server" Text="Agregar Patentes"  ></asp:Label>
    <br />
    <asp:GridView ID="gvpatentes" runat="server" AutoGenerateColumns="False"  DataKeyNames="Id" DataSourceID="odsPATENTES" OnSelectedIndexChanged="gvpatentes_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="Permiso" HeaderText="Permiso" SortExpression="Permiso" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="odsPATENTES" runat="server" SelectMethod="traerpatentes" TypeName="DAL.Patentes"></asp:ObjectDataSource>
    <asp:Button ID="btnguardarcambios" runat="server" OnClick="btnguardarcambios_Click" Text="Guardar" />
    <br />
        
</asp:Content>

