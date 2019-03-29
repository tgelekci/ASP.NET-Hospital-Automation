using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyonu
{
    public partial class Tahlil : System.Web.UI.Page
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
            if (txtHasta.Text == "" || Calendar4.SelectedDate.Date == DateTime.MinValue.Date || txtTahlil.Text == "")
            {
                Response.Write("<script>alert('Lütfen Tahlil Bilgilerini Eksiksiz Girin.')</script>");

            }
            else
            {
                String date = Calendar4.SelectedDate.ToString("dd/MM/yyyy");
                SqlCommand cmd = new SqlCommand("INSERT INTO Tahliller VALUES ('" + txtHasta.Text + "', '" + date + "', '" + txtTahlil.Text + "', '" + Session["kullaniciadi"] +"')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Reçete Bilgileri Başarıyla Kaydedildi.')</script>");

                con.Close();
            }
        }
    }
}