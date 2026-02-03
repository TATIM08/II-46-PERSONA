<%@ Page Title="Persona" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Persona.aspx.vb" Inherits="PERSONA.Persona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <%-----Nombre-----%>
    <div class="form-group">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:" CssClass="control-label"> </asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" Text="Tatiana" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
    </div>

    <%--Apellido--%>
    <div class="form-group">
        <asp:Label ID="lblApellido" runat="server" Text="Apellido:" CssClass="control-label"> </asp:Label>
        <asp:TextBox ID="txtApellido" runat="server" Text="Murillo" placeholder="Apellidos" CssClass="form-control"></asp:TextBox>
    </div>
    <%--FechaNacimeinto--%>
    <div class="form-group">
        <asp:Label ID="lblFechaNac" runat="server" Text="Fecha Nacimiento:" CssClass="control-label"> </asp:Label>
        <asp:TextBox ID="txtFechaNac" runat="server" placeholder="" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div>
    
    <%--Validar fecha nacimeinto--%>
    <asp:RequiredFieldValidator ID="rfvFecha" runat="server" 
    CssClass="text-danger"
    Display ="Dynamic"
    ControlToValidate="txtFechaNac"
    ErrorMessage="Es necesario indicar la fecha"></asp:RequiredFieldValidator>

    <%--Correo--%>
    <div class="form-group">
        <asp:Label ID="lblCorreo" runat="server" Text="Correo:" CssClass="control-label"> </asp:Label>
        <asp:TextBox ID="txtCorreo" runat="server" placeholder="Correo Electronico" CssClass="form-control" TextMode="Email"></asp:TextBox>
    </div>

    <%--Tipo Documento--%>
    <div class="form-group">
        <asp:Label ID="lblTipoDocumento" runat="server" Text="Tipo Documento;" CssClass="control-label"> </asp:Label>
        <asp:DropDownList ID="ddlTipoDocumento" runat="server" CssClass="form-control">
            <asp:ListItem Text="Cédula Jurídica" Value="0"></asp:ListItem>
            <asp:ListItem Text="Cédula Física" Value="1"></asp:ListItem>
            <asp:ListItem Text="Pasaporte" Value="2"></asp:ListItem>
        </asp:DropDownList>
    </div>


    <%--Numero Documento--%>
    <div class="form-group">
        <asp:Label ID="lblNumeroDoc" runat="server" Text="Numero Documento" CssClass="control-label"> </asp:Label>
        <asp:TextBox ID="txtNumeroDoc" runat="server" placeholder="Numero Documento" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="py-3">
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
    </div>
    <asp:Label ID="lblMensaje" runat="server" Text="Mensaje" CssClass="dnone"> </asp:Label>
</asp:Content>
