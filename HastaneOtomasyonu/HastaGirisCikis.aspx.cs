using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyonu
{
    public partial class HastaGirisCikis : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = PC\\TAYLANSQL; Initial Catalog = Hastane; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (txtHasta.Text == "" || Calendar5.SelectedDate.Date == DateTime.MinValue.Date || txtOdano.Text == "" || Calendar6.SelectedDate.Date==DateTime.MinValue.Date)
            {
                Response.Write("<script>alert('Lütfen Hasta Yatış Bilgilerini Eksiksiz Girin.')</script>");

            }
            else
            {
                String date = Calendar5.SelectedDate.ToString("dd/MM/yyyy");
                String date2 = Calendar6.SelectedDate.ToString("dd/MM/yyyy");
                SqlCommand cmd = new SqlCommand("INSERT INTO Yatanhasta VALUES ('" + txtHasta.Text + "', '" + date + "', '" + date2 + "', '" + txtOdano.Text + "', '" + Session["kullaniciadi"] + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Yatan Hasta Bilgileri Başarıyla Kaydedildi.')</script>");

                con.Close();
            }
        }
    }
}