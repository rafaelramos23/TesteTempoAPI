<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaTempo.aspx.cs" Inherits="TesteTempoAPI.TelaTempo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1840px;
            height: 790px;
            margin: 4px 7px 2px 2px auto;
             
        }
    </style>
</head>
<body background="imagem.jpg"/>
   <form id="form1" runat="server" style="font-weight: bold; height: 717px; width: 526px;">
           <p style="font-family: 'Century Schoolbook'; font-size: large; font-weight: bold; font-style: oblique; font-variant: inherit; text-decoration: underline; color: #FFFFFF" >
            PESQUISA DE TEMPERATURA - API</p>
        <asp:Label ID="Label1" runat="server" Text="Digite o nome da Cidade" style="font-weight: bold" ForeColor="White"></asp:Label> 
        <asp:TextBox ID="txtPesquisa" runat="server" Width="215px"  class="form-control" type="text" value="" aria-label=".form-control-lg example" OnTextChanged="txtPesquisa_TextChanged"> </asp:TextBox>
        <asp:Button ID="btnPesquisa" runat="server" Text="Pesquisar" class="btn btn-outline-light" OnClick="btnPesquisa_Click" Width="114px" />
        <asp:Button ID="btnlimpar" runat="server" Text="Limpar" class="btn btn-outline-warning"  Width="114px" OnClick="btnlimpar_Click" />
           <br />   
           <asp:Label ID="Label2" runat="server" Text="Cidade" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtCidade" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px"></asp:TextBox>
           <asp:Label ID="Label3" runat="server" Text="Região" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtRegiao" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px"></asp:TextBox>
           <asp:Label ID="Label4" runat="server" Text="Pais" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtPais" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px"></asp:TextBox>
           <asp:Label ID="Label5" runat="server" Text="Latitude" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtLatitude" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px"></asp:TextBox>
           <asp:Label ID="Label6" runat="server" Text="Longitude" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtLongitude" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px"></asp:TextBox>
           <asp:Label ID="Label8" runat="server" Text="Continente" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtContinente" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px"></asp:TextBox>
           <asp:Label ID="Label9" runat="server" Text="Hora Local" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtHoraLocal" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px" TextMode="DateTime"></asp:TextBox>
             
           <asp:Label ID="Label7" runat="server" Text="Temperatura em C°" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtTemperaturaC" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px"></asp:TextBox>
           <asp:Label ID="Label10" runat="server" Text="Temperatura em F°" style="font-weight: bold" ForeColor="White"></asp:Label>
           <asp:TextBox ID="txtTemperaturaF" runat="server" Width="215px" class="form-control" type="text" value="" aria-label="Disabled input example" disabled readonly BorderWidth="2px"></asp:TextBox>
            &nbsp;</form>
</body>
</html>
