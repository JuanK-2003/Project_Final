<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Symptom.aspx.cs" Inherits="Project_Final.Administrative_module.Symptoms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1> Sintomas </h1>
    <form id="form1" runat="server">
        <div>

        &nbsp;<asp:Label ID="Label2" runat="server" Text="Código de Sintoma:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="202px"></asp:TextBox>
&nbsp;
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Sintomas:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="1099px"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Editar sintoma"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="780px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonAdd" runat="server" BackColor="#0080C0" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonAdd_Click" Text="Agregar Sintoma" Width="200px" />
            <asp:Button ID="ButtonEdit" runat="server" BackColor="#8080C0" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonEdit_Click" Text="Editar Sintoma" Width="200px" />
            <asp:Button ID="ButtonDelete" runat="server" BackColor="#008040" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonDelete_Click" Text="Eliminar Sintoma" Width="200px" />
            <asp:Button ID="ButtonSave" runat="server" BackColor="#408080" Font-Bold="True" ForeColor="White" Height="40px" OnClick="ButtonSave_Click" Text="Guardar" Width="200px" />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
