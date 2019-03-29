<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ameliyat.aspx.cs" Inherits="HastaneOtomasyonu.Ameliyat" %>
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
        <div class="w3-container w3-card-4 w3-light-green">
             <h1 class="w3-xxlarge w3-left">Ameliyat Randevusu Ekle:</h1>
            <br />
            <br />
            <br />
            <br />
            <i class="fa fa-user-plus" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblhasta" runat="server" Text="Hasta Adı:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtHastaAdi" runat="server" Width="1250px" Height="40px"></asp:TextBox>
             <br />
             <br />
             <i class="fa fa-calendar" style="font-size:48px;color:black"></i>
             <asp:Label ID="lblTarih" runat="server" Text="Randevu Tarihi:"></asp:Label>
            <br />
            <br />
            <asp:Calendar ID="Calendar2" runat="server" Height="270px" Width="540px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
             </asp:Calendar>
            <br />
            <br />
            <i class="fa fa-file-text-o" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblAmeliyat" runat="server" Text="Ameliyat:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtAmeliyat" runat="server" Width="1250px" Height="40px"></asp:TextBox>
            <br />
            <br />
            <i class="fa fa-sort-numeric-asc" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblAmeliyathane" runat="server" Text="Ameliyathane Numarası:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtAmeliyatno" runat="server" Width="1250px" Height="40px"></asp:TextBox>
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

        <div class="w3-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="randevuno" DataSourceID="SqlDataSource2" CssClass="w3-table w3-striped w3-bordered">
                <Columns>
                    <asp:BoundField DataField="randevuno" HeaderText="randevuno" InsertVisible="False" ReadOnly="True" SortExpression="randevuno" />
                    <asp:BoundField DataField="hastaadi" HeaderText="hastaadi" SortExpression="hastaadi" />
                    <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                    <asp:BoundField DataField="ameliyat" HeaderText="ameliyat" SortExpression="ameliyat" />
                    <asp:BoundField DataField="ameliyathane" HeaderText="ameliyathane" SortExpression="ameliyathane" />
                    <asp:BoundField DataField="doktor" HeaderText="doktor" SortExpression="doktor" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="LinkButton2" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir"></asp:Button>
                            &nbsp;<asp:Button ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:Button>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HastaneConnectionString %>" DeleteCommand="DELETE FROM [Ameliyatlar] WHERE [randevuno] = @original_randevuno AND [hastaadi] = @original_hastaadi AND [tarih] = @original_tarih AND [ameliyat] = @original_ameliyat AND [ameliyathane] = @original_ameliyathane AND [doktor] = @original_doktor" InsertCommand="INSERT INTO [Ameliyatlar] ([hastaadi], [tarih], [ameliyat], [ameliyathane], [doktor]) VALUES (@hastaadi, @tarih, @ameliyat, @ameliyathane, @doktor)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Ameliyatlar] WHERE ([doktor] = @doktor)" UpdateCommand="UPDATE [Ameliyatlar] SET [hastaadi] = @hastaadi, [tarih] = @tarih, [ameliyat] = @ameliyat, [ameliyathane] = @ameliyathane, [doktor] = @doktor WHERE [randevuno] = @original_randevuno AND [hastaadi] = @original_hastaadi AND [tarih] = @original_tarih AND [ameliyat] = @original_ameliyat AND [ameliyathane] = @original_ameliyathane AND [doktor] = @original_doktor">
                <DeleteParameters>
                    <asp:Parameter Name="original_randevuno" Type="Int32" />
                    <asp:Parameter Name="original_hastaadi" Type="String" />
                    <asp:Parameter Name="original_tarih" Type="String" />
                    <asp:Parameter Name="original_ameliyat" Type="String" />
                    <asp:Parameter Name="original_ameliyathane" Type="Int32" />
                    <asp:Parameter Name="original_doktor" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="hastaadi" Type="String" />
                    <asp:Parameter Name="tarih" Type="String" />
                    <asp:Parameter Name="ameliyat" Type="String" />
                    <asp:Parameter Name="ameliyathane" Type="Int32" />
                    <asp:Parameter Name="doktor" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="doktor" SessionField="kullaniciadi" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="hastaadi" Type="String" />
                    <asp:Parameter Name="tarih" Type="String" />
                    <asp:Parameter Name="ameliyat" Type="String" />
                    <asp:Parameter Name="ameliyathane" Type="Int32" />
                    <asp:Parameter Name="doktor" Type="String" />
                    <asp:Parameter Name="original_randevuno" Type="Int32" />
                    <asp:Parameter Name="original_hastaadi" Type="String" />
                    <asp:Parameter Name="original_tarih" Type="String" />
                    <asp:Parameter Name="original_ameliyat" Type="String" />
                    <asp:Parameter Name="original_ameliyathane" Type="Int32" />
                    <asp:Parameter Name="original_doktor" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
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
