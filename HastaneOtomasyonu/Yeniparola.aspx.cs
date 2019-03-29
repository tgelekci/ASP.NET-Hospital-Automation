using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyonu
{
    public partial class Yeniparola : System.Web.UI.Page
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
            if (txtEskiparola.Text == "" || txtYeniparola.Text == "")
            {
                Response.Write("<script>alert('Lütfen Gerekli Bütün Alanları Doldurun.')</script>");

            }

            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE Doktorlar SET dsifre='" + txtYeniparola.Text + "' WHERE dsifre='" + txtEskiparola.Text + "' AND dkullaniciadi='" + Session["kullaniciadi"] + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Parola Başarıyla Değiştirildi.')</script>");

                con.Close();


            }
        }
    }
}