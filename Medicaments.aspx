<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medicaments.aspx.cs" Inherits="Project_Final.Administrative_module.Medicaments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Mantenimiento de Medicamentes </h1>

            <br />
            <asp:Label ID="Label6" runat="server" Text="Nombre del Medicamento"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextMedicament" runat="server" Width="239px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Código "></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextCode" runat="server" Width="237px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Ingrediente Genérico"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextIngre" runat="server" Width="283px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Laboratorio"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextLaboratory" runat="server" Width="219px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Listado de enfermedades para recetarlo"></asp:Label>
&nbsp;
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>GRIPE</asp:ListItem>
                <asp:ListItem>FIEBRE</asp:ListItem>
                <asp:ListItem>NEUMONÍA</asp:ListItem>
                <asp:ListItem>DIARREA</asp:ListItem>
                <asp:ListItem>CÓLICO</asp:ListItem>
                <asp:ListItem>DESNUTRICIÓN</asp:ListItem>
                <asp:ListItem>OJO SECO</asp:ListItem>
                <asp:ListItem>DOLOR DE CABEZA</asp:ListItem>
                <asp:ListItem>DOLOR DE HUESOS</asp:ListItem>
                <asp:ListItem>TUBERCULOSIS</asp:ListItem>
                <asp:ListItem>LARINGITIS</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Cambio de Medicamentos"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextChange" runat="server" Width="279px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonAdd" runat="server" BackColor="#33CC33" Font-Bold="True" ForeColor="Red" Height="40px" OnClick="ButtonAdd_Click" Text="Agregar Medicamento" Width="200px" />
            <asp:Button ID="ButtonEdit" runat="server" BackColor="#0080FF" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonEdit_Click" Text="Editar Medicamento" Width="200px" />
            <asp:Button ID="ButtonDelet" runat="server" BackColor="#FF8000" Font-Bold="True" Height="40px" OnClick="ButtonDelet_Click" Text="Eliminar Medicamento" Width="200px" />
            <asp:Button ID="ButtonSave" runat="server" BackColor="#408080" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonSave_Click" Text="Guardar" Width="200px" />

        </div>
    </form>
</body>
</html>
