using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Seguridad.Composite;

namespace WebApplication10
{
    public partial class Permisos_usuarios : System.Web.UI.Page
    {

        BLL.Usuario usu = new BLL.Usuario();
        BLL.Patentes Gestorpatentes = new BLL.Patentes();
        Patente pat = new Patente();
        Familia flia = new Familia();
        //Patente_Usuario metodos;
        Patente_Usuario tmp;
        BLL.Patentes permisos;
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.ComboBox1.DataSource = permisos.GetAllFamilias();

        }

        
        public void usuarios()
        {
            int id1;
            id1 = int.Parse(gvusers.SelectedValue.ToString());
            tmp = new Patente_Usuario();
            tmp.Idusuarios = id1;

            foreach (var item in usu.Listar())
            {
                if (item.Idusuario==id1)
                {
                    tmp.Nombre = item.Nombre;
                    //permisos.FillUserComponents(tmp);
                }
            }
        }
        public void patcorecc()
        {
            int id2;
            id2 = int.Parse(gvpatentes.SelectedValue.ToString());
            pat.Id = id2;

            foreach (var item in Gestorpatentes.GetAllPatentes())
            {
                if (item.Id == id2)
                {
                    pat.Nombre = item.Nombre;
                }
            }
        }
        public void fliacorrec()
        {
            int id;
            id = int.Parse(gvflias.SelectedValue.ToString());
            flia.Id = id;

            foreach (var item in Gestorpatentes.GetAllFamilias())
            {
                if (item.Id == id)
                {
                    flia.Nombre = item.Nombre;
                    flia.Permiso = item.Permiso;
                    

                }
            }


        }
        protected void gvusers_SelectedIndexChanged(object sender, EventArgs e)
        {
            usuarios();
        }

        protected void gvflias_SelectedIndexChanged(object sender, EventArgs e)
        {
            usuarios();
            if (tmp!=null)
            {
                fliacorrec();
                if (flia!=null)
                {
                    var esta = false;
                    foreach (var item in tmp.Permisos)
                    {
                        if (permisos.Existe(item, flia.Id))
                        {
                            esta = true;
                        }
                    }
                    if (esta)
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(hfhfhfhf);</script>");
                    else
                    {
                        //permisos.FillFamilyComponents(flia);

                        tmp.Permisos.Add(flia);
                    }
                }
            }
        }

        protected void gvpatentes_SelectedIndexChanged(object sender, EventArgs e)
        {
            usuarios();
            if (tmp != null)
            {
                patcorecc();
                if (pat != null)
                {
                    var esta = false;
                    foreach (var item in tmp.Permisos)
                    {
                        if (permisos.Existe(item, flia.Id))
                        {
                            esta = true;
                            break;
                        }
                    }
                    if (esta)
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(hfhfhfhf);</script>");
                    else
                    {

                        tmp.Permisos.Add(pat);

                    }
                }
            }
        }

        protected void btnguardarcambios_Click(object sender, EventArgs e)
        {
            usuarios();
            fliacorrec();
            patcorecc();
         tmp.Permisos.Add(pat);
            try
            {
                usu.GuardarPermisos(tmp);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(hfhfhfhf);</script>");
            }
            catch (Exception)
            {

                throw;
            }
            
        }
    }
}