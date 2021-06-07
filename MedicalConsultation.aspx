<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicalConsultation.aspx.cs" Inherits="Project_Final.MedicalConsultation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1> Consultas Médicas </h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="NIT"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxNit" runat="server" Width="244px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Hora de consulta"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxHour" runat="server" Width="238px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Fecha de consulta"></asp:Label>
            <br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Temperatura"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxTempe" runat="server" Width="210px"></asp:TextBox>
&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Presión"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxPretion" runat="server" Width="314px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Sintomas:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxSinto" runat="server" Width="983px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Diagnóstico"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxDiag" runat="server" Width="962px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Tratamiento"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxTrata" runat="server" Width="626px"></asp:TextBox>
&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Receta"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxReceta" runat="server" Width="377px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Próxima Visita"></asp:Label>
&nbsp;
            <br />
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Costo de la consulta"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBoxPrice" runat="server" Width="325px"></asp:TextBox>
&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonAdd" runat="server" BackColor="#408080" Font-Bold="True" ForeColor="White" Height="50px" OnClick="ButtonAdd_Click" Text="Agregar" Width="200px" />
        </div>
    </form>
</body>
</html>
