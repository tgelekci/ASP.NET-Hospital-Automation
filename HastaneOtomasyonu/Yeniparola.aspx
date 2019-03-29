<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yeniparola.aspx.cs" Inherits="HastaneOtomasyonu.Yeniparola" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="w3-container w3-card-4 w3-red">
            <h1 class="w3-xxlarge w3-left">Giriş Parolasını Değiştir:</h1>
            <br />
            <br />
            <br />
            <br />
            <i class="fa fa-lock" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblEskiparola" runat="server" Text="Eski Parola:"></asp:Label>
             <br />
            <br />
            <asp:TextBox ID="txtEskiparola" runat="server" Width="1250px" Height="40px" TextMode="Password"></asp:TextBox>
             <br />
             <br />
            <i class="fa fa-key" style="font-size:48px;color:black"></i>
             <asp:Label ID="lblYeniparola" runat="server" Text="Yeni Parola:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtYeniparola" runat="server" Width="1250px" Height="40px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnGeri" runat="server" Text="GERİ"  CssClass="w3-btn w3-white w3-left w3-large w3-round-xlarge w3-border" OnClick="btnGeri_Click"/>
            <asp:Button ID="btnKaydet" runat="server" Text="KAYDET"  CssClass="w3-btn w3-white w3-right w3-large w3-round-xlarge w3-border" OnClick="btnKaydet_Click"/>
            <br />
            <br />
            <br />

        </div>

       <br />
        <br />
        <br />
        <br />
        <div class="w3-container w3-dark-gray">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>


    </form>
</body>
</html>
