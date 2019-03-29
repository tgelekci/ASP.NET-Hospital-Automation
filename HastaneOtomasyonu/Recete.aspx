<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recete.aspx.cs" Inherits="HastaneOtomasyonu.Recete" %>
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
            <div class="w3-container w3-card-4 w3-purple">
             <h1 class="w3-xxlarge w3-left">E-Reçete Ekle:</h1>
            <br />
            <br />
            <br />
            <br />
            <i class="fa fa-barcode" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblKod" runat="server" Text="Reçete Kodu:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtKod" runat="server" Width="1250px" Height="40px"></asp:TextBox>
             <br />
             <br />
             <i class="fa fa-user-plus" style="font-size:48px;color:black"></i>
             <asp:Label ID="lblHasta" runat="server" Text="Hasta Adı:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtHasta" runat="server" Width="1250px" Height="40px"></asp:TextBox>
            <br />
            <br />
            <i class="fa fa-calendar" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblTarih" runat="server" Text="Tarih:"></asp:Label>
            <br />
            <br />
            <asp:Calendar ID="Calendar3" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="270px" Width="540px">
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
            <i class="fa fa-flask" style="font-size:48px;color:black"></i>
            <asp:Label ID="lblIlac" runat="server" Text="İlaçlar:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtIlac" runat="server" Width="1250px" Height="40px"></asp:TextBox>
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
            <asp:GridView ID="GridView1" runat="server" CssClass="w3-table w3-striped w3-bordered" AutoGenerateColumns="False" DataKeyNames="receteno" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="receteno" HeaderText="receteno" InsertVisible="False" ReadOnly="True" SortExpression="receteno" />
                    <asp:BoundField DataField="recetekodu" HeaderText="recetekodu" SortExpression="recetekodu" />
                    <asp:BoundField DataField="hasta" HeaderText="hasta" SortExpression="hasta" />
                    <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                    <asp:BoundField DataField="ilaclar" HeaderText="ilaclar" SortExpression="ilaclar" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HastaneConnectionString %>" DeleteCommand="DELETE FROM [Receteler] WHERE [receteno] = @original_receteno AND [recetekodu] = @original_recetekodu AND [hasta] = @original_hasta AND [tarih] = @original_tarih AND [ilaclar] = @original_ilaclar AND [doktor] = @original_doktor" InsertCommand="INSERT INTO [Receteler] ([recetekodu], [hasta], [tarih], [ilaclar], [doktor]) VALUES (@recetekodu, @hasta, @tarih, @ilaclar, @doktor)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Receteler] WHERE ([doktor] = @doktor)" UpdateCommand="UPDATE [Receteler] SET [recetekodu] = @recetekodu, [hasta] = @hasta, [tarih] = @tarih, [ilaclar] = @ilaclar, [doktor] = @doktor WHERE [receteno] = @original_receteno AND [recetekodu] = @original_recetekodu AND [hasta] = @original_hasta AND [tarih] = @original_tarih AND [ilaclar] = @original_ilaclar AND [doktor] = @original_doktor">
                <DeleteParameters>
                    <asp:Parameter Name="original_receteno" Type="Int32" />
                    <asp:Parameter Name="original_recetekodu" Type="String" />
                    <asp:Parameter Name="original_hasta" Type="String" />
                    <asp:Parameter Name="original_tarih" Type="String" />
                    <asp:Parameter Name="original_ilaclar" Type="String" />
                    <asp:Parameter Name="original_doktor" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="recetekodu" Type="String" />
                    <asp:Parameter Name="hasta" Type="String" />
                    <asp:Parameter Name="tarih" Type="String" />
                    <asp:Parameter Name="ilaclar" Type="String" />
                    <asp:Parameter Name="doktor" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="doktor" SessionField="kullaniciadi" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="recetekodu" Type="String" />
                    <asp:Parameter Name="hasta" Type="String" />
                    <asp:Parameter Name="tarih" Type="String" />
                    <asp:Parameter Name="ilaclar" Type="String" />
                    <asp:Parameter Name="doktor" Type="String" />
                    <asp:Parameter Name="original_receteno" Type="Int32" />
                    <asp:Parameter Name="original_recetekodu" Type="String" />
                    <asp:Parameter Name="original_hasta" Type="String" />
                    <asp:Parameter Name="original_tarih" Type="String" />
                    <asp:Parameter Name="original_ilaclar" Type="String" />
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
