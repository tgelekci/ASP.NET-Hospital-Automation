using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyonu
{
    public partial class Ameliyat : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = PC\\TAYLANSQL; Initial Catalog = Hastane; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if(txtHastaAdi.Text == "" || Calendar2.SelectedDate.Date == DateTime.MinValue.Date || txtAmeliyat.Text == "" || txtAmeliyatno.Text == "")
            {
                Response.Write("<script>alert('Lütfen Bilgileri Eksiksiz Girin.')</script>");

            }
            else
            {
                String date = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
                SqlCommand cmd = new SqlCommand("INSERT INTO Ameliyatlar VALUES ('" + txtHastaAdi.Text + "', '" + date + "', '" + txtAmeliyat.Text + "', '"+txtAmeliyatno.Text+"', '"+Session["kullaniciadi"]+"')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Hasta Başarıyla Kaydedildi.')</script>");

                con.Close();
            }
        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");

        }
    }
}