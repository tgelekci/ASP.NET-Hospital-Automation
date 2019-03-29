using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyonu
{
    public partial class Muayene : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = PC\\TAYLANSQL; Initial Catalog = Hastane; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {  
            con.Open();
            
        }

        
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (txtHastaAdi.Text =="" || Calendar1.SelectedDate.Date == DateTime.MinValue.Date)
            {
                Response.Write("<script>alert('Lütfen Hasta Adını ve Tarihi Girin.')</script>");

            }

            else
            {
                String date = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
                SqlCommand cmd = new SqlCommand("INSERT INTO Muayeneler VALUES ('" + txtHastaAdi.Text + "', '" + date + "', '" + Session["kullaniciadi"] + "')", con);
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