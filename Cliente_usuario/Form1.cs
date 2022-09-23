using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace Cliente_usuario
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-DGNAOIQ\JM09;Initial Catalog=model;Integrated Security=True");

        public void logear(string usuario, string contraseña){
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT Nombre,Tipo_usuario FROM Users WHERE Usuario = @Usuario AND Password = @Pas", con);
                cmd.Parameters.addWithValue("usuario", usuario);
                cmd.Parameters.addWithValue("pas", contraseña);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count == 1) {

                    this.Hide();
                    if (dt.Rows[0][1].toString() == "Admin") { 
                      new Admin(dt.Rows[0][0].toString()).Show();
                    }
                    else if (dt.Rows[0][1].ToString() == "Usuario")

                    {
                        new Usuario(dt.Rows[0][0].toString()).Show();
                    }

                } else {
                    MessageBox.Show("Usuario y/o contrseña Incorrecta");
                }

            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                con.Close();
            }
        }
       
        private void button2_Click(object sender, EventArgs e)
        {
            logear(this.texBox5.Text, this.textBox6.Text);
        }
    }
}