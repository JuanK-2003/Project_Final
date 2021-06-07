<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientMaintenance.aspx.cs" Inherits="Project_Final.Administrative" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1> Agregar Pacientes </h1> 
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="NIT"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextNIT" runat="server" BorderColor="#FF6600" Width="257px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Teléfono"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextCel" runat="server" BorderColor="#FF6600" Width="308px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextName" runat="server" BorderColor="#FF6600" Width="300px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextLastName" runat="server" BorderColor="#FF6600" Width="299px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Dirección"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextAddress" runat="server" BorderColor="#FF6600" Width="297px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Fecha de Nacimiento"></asp:Label>
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" BorderColor="#3399FF" ></asp:Calendar>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Cambio de dirección"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="242px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="ButtonAddPatien" runat="server" BackColor="#0080FF" Font-Bold="True" ForeColor="White" Height="46px" OnClick="ButtonAddPatien_Click" Text="Agregar Paciente" Width="197px" />
            <asp:Button ID="ButtonEdit" runat="server" BackColor="#80FF80" Font-Bold="True" ForeColor="Red" Height="46px" OnClick="ButtonEdit_Click" Text="Editar Paciente" Width="166px" />
            <asp:Button ID="ButtonDelet" runat="server" BackColor="#FF8080" Font-Bold="True" ForeColor="#CCFFCC" Height="46px" OnClick="ButtonDelet_Click" Text="Eliminar Paciente" />
            <asp:Button ID="ButtonSave" runat="server" BackColor="#8080FF" BorderColor="White" Font-Bold="True" ForeColor="White" Height="46px" OnClick="ButtonSave_Click" Text="Guardar" Width="191px" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
