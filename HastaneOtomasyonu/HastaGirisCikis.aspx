<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HastaGirisCikis.aspx.cs" Inherits="HastaneOtomasyonu.HastaGirisCikis" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="w3-container w3-card-4 w3-teal">
             <h1 class="w3-xxlarge w3-left">Hasta-Giriş Çıkış İşlemleri:</h1>
            <br />
            <br />
            <br />
            <br />
            <i class="fa fa-bed" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblHasta" runat="server" Text="Hasta Adı:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtHasta" runat="server" Width="1250px" Height="40px"></asp:TextBox>
             <br />
             <br />
             <i class="fa fa-calendar" style="font-size:48px;color:black"></i>
             <asp:Label ID="lblyatis" runat="server" Text="Yatış Tarihi:"></asp:Label>
            <br />
            <br />
             <asp:Calendar ID="Calendar5" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="270px" Width="540px">
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
            <i class="fa fa-calendar" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblCikis" runat="server" Text="Çıkış Tarihi:"></asp:Label>
            <br />
            <br />
            <asp:Calendar ID="Calendar6" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="270px" Width="540px">
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
            <i class="fa fa-sort-numeric-asc" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblOdano" runat="server" Text="Oda Numarası:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtOdano" runat="server" Width="1250px" Height="40px"></asp:TextBox>
            <br />
            <br />
            <br />
             <asp:Button ID="btnGeri" runat="server" Text="GERİ"  CssClass="w3-btn w3-white w3-left w3-large w3-round-xlarge w3-border" OnClick="btnGeri_Click" />
            <asp:Button ID="btnKaydet" runat="server" Text="KAYDET"  CssClass="w3-btn w3-white w3-right w3-large w3-round-xlarge w3-border" OnClick="btnKaydet_Click"/>
            <br />
            <br />
            <br />
        </div>
        <br />
        <br />
        <div class="w3-container" style="margin-left: 40px">

            <asp:GridView ID="GridView1" runat="server" CssClass="w3-table w3-striped w3-bordered" AutoGenerateColumns="False" DataKeyNames="hastaid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="hastaid" HeaderText="hastaid" InsertVisible="False" ReadOnly="True" SortExpression="hastaid" />
                    <asp:BoundField DataField="hastaadi" HeaderText="hastaadi" SortExpression="hastaadi" />
                    <asp:BoundField DataField="yatistarihi" HeaderText="yatistarihi" SortExpression="yatistarihi" />
                    <asp:BoundField DataField="cikistarihi" HeaderText="cikistarihi" SortExpression="cikistarihi" />
                    <asp:BoundField DataField="odano" HeaderText="odano" SortExpression="odano" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HastaneConnectionString %>" DeleteCommand="DELETE FROM [Yatanhasta] WHERE [hastaid] = @original_hastaid AND [hastaadi] = @original_hastaadi AND [yatistarihi] = @original_yatistarihi AND [cikistarihi] = @original_cikistarihi AND [odano] = @original_odano AND [doktor] = @original_doktor" InsertCommand="INSERT INTO [Yatanhasta] ([hastaadi], [yatistarihi], [cikistarihi], [odano], [doktor]) VALUES (@hastaadi, @yatistarihi, @cikistarihi, @odano, @doktor)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Yatanhasta] WHERE ([doktor] = @doktor)" UpdateCommand="UPDATE [Yatanhasta] SET [hastaadi] = @hastaadi, [yatistarihi] = @yatistarihi, [cikistarihi] = @cikistarihi, [odano] = @odano, [doktor] = @doktor WHERE [hastaid] = @original_hastaid AND [hastaadi] = @original_hastaadi AND [yatistarihi] = @original_yatistarihi AND [cikistarihi] = @original_cikistarihi AND [odano] = @original_odano AND [doktor] = @original_doktor">
                <DeleteParameters>
                    <asp:Parameter Name="original_hastaid" Type="Int32" />
                    <asp:Parameter Name="original_hastaadi" Type="String" />
                    <asp:Parameter Name="original_yatistarihi" Type="String" />
                    <asp:Parameter Name="original_cikistarihi" Type="String" />
                    <asp:Parameter Name="original_odano" Type="Int32" />
                    <asp:Parameter Name="original_doktor" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="hastaadi" Type="String" />
                    <asp:Parameter Name="yatistarihi" Type="String" />
                    <asp:Parameter Name="cikistarihi" Type="String" />
                    <asp:Parameter Name="odano" Type="Int32" />
                    <asp:Parameter Name="doktor" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="doktor" SessionField="kullaniciadi" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="hastaadi" Type="String" />
                    <asp:Parameter Name="yatistarihi" Type="String" />
                    <asp:Parameter Name="cikistarihi" Type="String" />
                    <asp:Parameter Name="odano" Type="Int32" />
                    <asp:Parameter Name="doktor" Type="String" />
                    <asp:Parameter Name="original_hastaid" Type="Int32" />
                    <asp:Parameter Name="original_hastaadi" Type="String" />
                    <asp:Parameter Name="original_yatistarihi" Type="String" />
                    <asp:Parameter Name="original_cikistarihi" Type="String" />
                    <asp:Parameter Name="original_odano" Type="Int32" />
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
