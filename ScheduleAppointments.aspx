<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScheduleAppointments.aspx.cs" Inherits="Project_Final.Administrative_module.ScheduleAppointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Agendar Citas </h1>

            <br />
            <asp:Label ID="Label1" runat="server" Text="NIT"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="252px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Fecha de cita"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Hora de inicio"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="151px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Hora fin"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="143px"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Cambio de fecha: "></asp:Label>
&nbsp;<br />
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            <br />
            <asp:Button ID="ButtonAdd" runat="server" BackColor="#408080" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonAdd_Click" Text="Agregar Cita" Width="200px" />
            <asp:Button ID="ButtonEdit" runat="server" BackColor="#0080C0" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonEdit_Click" Text="Editar Cita" Width="200px" />
            <asp:Button ID="ButtonDelet" runat="server" BackColor="#009933" BorderColor="#009933" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonDelet_Click" Text="Eliminar Cita" Width="200px" />
            <asp:Button ID="ButtonSave" runat="server" BackColor="#8080C0" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonSave_Click" Text="Guardar" Width="200px" />
            <br />

        </div>
    </form>
</body>
</html>
