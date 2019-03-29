<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="HastaneOtomasyonu.Giris" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body class="w3-blue">
   
    <form id="form1" runat="server">
        <div class="w3-container">

            <div class="w3-container">
                        <h1 class="w3-jumbo w3-center w3-animate-zoom"><i class="fa fa-h-square"></i>   DOKTOR GİRİŞ SAYFASI</h1>

            </div>
            <div class="w3-container w3-red">

                <div class="w3-blue-grey w3-card-4">
                 <h2>Lütfen Kullanıcı Adınızı ve Şifrenizi Giriniz:</h2>
                </div>   

                <br />
                <div class="w3-container w3-card-4 w3-green">
                    <br />
                    <br />
                 <i class="fa fa-user-md" style="font-size:48px;color:black"></i>
                <asp:Label ID="lblKullaniciAdi" runat="server" Text="Doktor Kullanıcı Adı:"></asp:Label>
                <br />
                <asp:TextBox ID="txtKullaniciAdi" runat="server" Width="1250px" Height="40px"></asp:TextBox>
                <br />
                <br />
                <i class="fa fa-lock" style="font-size:48px;color:black"></i>
             <asp:Label ID="lblSifre" runat="server" Text="Doktor Şifre:"></asp:Label>
                <br />
            <asp:TextBox ID="txtSifre" runat="server" Width="1250px" TextMode="Password" Height="40px"></asp:TextBox>
                <br />
                <br />
                    <asp:Button ID="btnGiris" runat="server" Text="GİRİŞ"  CssClass="w3-btn w3-white w3-right w3-large w3-round-xlarge w3-border" OnClick="btnGiris_Click"/>
                   <br />
                   <br />
                    <br />
                    <br />
                    <br />
                    <br />

                </div>
                <br />
                <br />

            </div>
            <br />
            <br />
            <div class="w3-container">
                <i class="fa fa-hospital-o w3-right" style="font-size:240px;color:white"></i>

                <i class="fa fa-hospital-o w3-left" style="font-size:240px;color:white"></i>

            </div>
            </div>
    </form>
</body>
</html>
