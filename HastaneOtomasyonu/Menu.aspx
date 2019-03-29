<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="HastaneOtomasyonu.Menu" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body class="w3-green">
    <form id="form1" runat="server">
              
          <div class="w3-container w3-center w3-blue">
        <h1 class="w3-jumbo w3-animate-opacity"><i class="fa fa-star w3-spin"></i>  Hoşgeldiniz, Lütfen Yapmak İstediğiniz İşlemi Seçiniz:</h1>
        
        </div>

             <div class="w3-bar w3-card-4 w3-border w3-teal w3-xlarge">
             <a href="Muayene.aspx" class="w3-bar-item w3-button"><i class="fa fa-stethoscope"></i> Muayene Randevu İşlemleri</a>
             <a href="Ameliyat.aspx" class="w3-bar-item w3-button"><i class="fa fa-heartbeat"></i> Ameliyat Randevu İşlemleri</a>
             <a href="Recete.aspx" class="w3-bar-item w3-button"><i class="fa fa-list-alt"></i> Reçete İşlemleri</a>
             <a href="Tahlil.aspx" class="w3-bar-item w3-button"><i class="fa fa-list-alt"></i> Tahlil İşlemleri</a>
            <a href="HastaGirisCikis.aspx" class="w3-bar-item w3-button"><i class="fa fa-wheelchair"></i> Hasta Giriş-Çıkış İşlemleri</a>
            <a href="Yeniparola.aspx" class="w3-bar-item w3-button"><i class="fa fa-exchange"></i> Parola Değiştir</a>
            <a href="Cikis.aspx" class="w3-bar-item w3-button"><i class="fa fa-sign-out"></i> Çıkış</a>
            </div>
            
        <br />
        <br />

        <div class="w3-container w3-center">
        <i class="fa fa-ambulance w3-left" style="font-size:240px;color:white"></i>
        <i class="fa fa-hospital-o w3-center" style="font-size:240px;color:white"></i>
        <i class="fa fa-medkit w3-right" style="font-size:240px;color:white"></i>

        </div>

    </form>
</body>
</html>
