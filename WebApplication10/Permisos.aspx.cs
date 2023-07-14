using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Seguridad.Composite;


namespace WebApplication10
{
    public partial class Permisos : System.Web.UI.Page
    {
        BLL.Patentes GestorPatentes = new BLL.Patentes();
        Familia flia =new Familia();
        Patente pat = new Patente();




        protected void Page_Load(object sender, EventArgs e)
        {
            //listarfliaspat();
            
        }

        protected void Btnguardarpermiso_Click(object sender, EventArgs e)
        {

        


            Patente p = new Patente()
            {
                Nombre = this.Txtpatentes.Text,
                Permiso = (Tipopatente)this.ddlpatentescompo.SelectedIndex
            };

            GestorPatentes.guardarcomponente(p, false);
            
            limpiar();
            //crea la patente pero nose como actualizar las dropdownlist
           
         
        }

        protected void btnguardarflia_Click(object sender, EventArgs e)
        {
            Familia p = new Familia()
            {
                Nombre = this.TextBox1.Text

            };
            GestorPatentes.guardarcomponente(p, true);
            
            limpiar();
        }
       

        

        
        public void limpiar()
        {
            TextBox1.Text = "";
            Txtpatentes.Text = "";
        }
        void MostrarFamilia(bool init)
        {

            if (flia == null)
                return;
            IList<Componente> familias = null;
            if (init)
            {
                familias = GestorPatentes.GetAll("=" + flia.Id);
                foreach (var item in familias)
                    flia.AgregarHijo(item);
            }
            else
            {
                familias = flia.Hijos;
            }

       
         
        }//listado de familias

        int id=1;
        
        protected void BTNCONFIGFLIA_Click(object sender, EventArgs e)
        {
            


        }

       

       
        public void fliacorrec()
        {

            id = int.Parse(patentes.SelectedValue.ToString());
            flia.Id = id;

            foreach (var item in GestorPatentes.GetAllFamilias())
            {
                if (item.Id == id)
                {
                    flia.Nombre = item.Nombre;
                    flia.Permiso = item.Permiso;

                }
            }


        }
        protected void patentes_SelectedIndexChanged(object sender, EventArgs e)
        {
            fliacorrec();
            MostrarFamilia(true);
        }

        public void patcorecc()
        {
            int id2;
            id2 = int.Parse(GridView1.SelectedValue.ToString());
            pat.Id = id2;

            foreach (var item in GestorPatentes.GetAllPatentes())
            {
                if (item.Id == id2)
                {
                    pat.Nombre = item.Nombre;
                }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            fliacorrec();
            if (flia != null)
            {
                patcorecc();
                if (pat != null)
                {
                    var esta = GestorPatentes.Existe(flia, pat.Id);
                    if (esta)
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(hfhfhfhf);</script>");
                    else
                    {

                        {
                            flia.AgregarHijo(pat);
                            MostrarFamilia(false);
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(hfhfhfhf);</script>");
                        }
                    }
                }
            }
            
            GestorPatentes.GuardarFamilia(flia);

        }

        protected void Btnguardarflia1_Click(object sender, EventArgs e)
        {

        }
    }
}