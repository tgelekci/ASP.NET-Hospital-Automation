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
    public partial class Giris : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = PC\\TAYLANSQL; Initial Catalog = Hastane; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            con.Open();
            String query = "SELECT * FROM Doktorlar WHERE dkullaniciadi='" + txtKullaniciAdi.Text + "' AND dsifre='" + txtSifre.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            foreach(DataRow dr in dt.Rows)
            {
                Session["kullaniciadi"] = dr["dkullaniciadi"].ToString();
                Session["alan"] = dr["dalan"].ToString();
                Response.Redirect("Menu.aspx");
            }

            con.Close();

            Response.Write("<script>alert('Kullanıcı Adınız veya Şifreniz Yanlış. Lütfen Tekrar Deneyiniz.')</script>");

        }
    }
}