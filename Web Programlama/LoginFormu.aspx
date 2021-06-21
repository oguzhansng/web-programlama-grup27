<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginFormu.aspx.cs" Inherits="Web_Programlama.LoginFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        #form1 {
            height: 725px;
        }
        .auto-style1 {
            color: #FFFFFF;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('star-background-1.jpg')">
        <div style="width: 700px; margin:auto">
            <br />
            <h2 class="auto-style1">Öğrenci Sınav Not Sistemi Giriş Ekranı</h2>
            <br />
            <br />
            <br />
            <div style="margin:auto; text-align:center" >
            <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" ImageUrl="~/avatar2.png" /></div>
            <br /> <br />
            <div>
                <asp:Label for="TxtNumara" runat="server" style="font-weight: 700; color: #FFFFFF">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
            </div>
            <br />

             <div>
                <asp:Label for="TxtSifre" runat="server" style="font-weight: 700; color: #FFFFFF">Şifre</asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="195px" OnClick="Button2_Click" />

            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="300px" OnClick="Button3_Click" />

            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="195px" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
