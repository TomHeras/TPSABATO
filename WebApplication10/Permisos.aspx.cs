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
        Familia flia=new Familia();
        Patente pat = new Patente();
        BE.pat_flia_AUX permiaux = new BE.pat_flia_AUX();

        

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }


        void MostrarTreeView(TreeNode padre, Componente c)
        {
            TreeNode hijo = new TreeNode(c.Nombre);
            hijo.ToolTip = c.Nombre;
            padre.ChildNodes.Add(hijo);

            foreach (var item in c.Hijos)
            {
                MostrarTreeView(hijo, item);
            }
        }//////////////////////////////

        void MostrarPermisos(Patente_Usuario u)
        {
            this.TreeView1.Nodes.Clear();
            TreeNode root = new TreeNode(u.Nombre);

            foreach (var item in u.Permisos)
            {
                MostrarTreeView(root, item);
            }

            this.TreeView1.Nodes.Add(root);
            this.TreeView1.ExpandAll();
        }
        protected void Btnguardarpermiso_Click(object sender, EventArgs e)
        {



            Patente p = new Patente()
            {
                Nombre = this.Txtpatentes.Text,
                
            };

            GestorPatentes.guardarcomponente(p, false);
            
            limpiar();
        
           
         
        }

        protected void btnguardarflia_Click(object sender, EventArgs e)
        {
            Familia p = new Familia()
            {
                Nombre = this.TextBox1.Text,
                //Permiso = (Tipopatente)this.ddlpatentescompo.SelectedValue
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

            TreeNode root = new TreeNode();//esto tiene q ir en los botones segun q sea
            flia.Nombre = ComboBox1.SelectedItem.Text;
            root.Value = flia.Nombre;
            this.TreeView1.Nodes.Add(root);

            foreach (var item in familias)
            {
                MostrarTreeView(root, item);
                
            }


            TreeView1.ExpandAll();
        }//listado de familias

        int id=1;
        
        protected void BTNCONFIGFLIA_Click(object sender, EventArgs e)
        {
            


        }

       

       
       
        
        

        protected void Button1_Click(object sender, EventArgs e)// Esto es agregar
        {
            //flia = new Familia();
            flia.Id = int.Parse(ComboBox1.SelectedItem.Value);
            if (flia!=null)
            {
                var familia = new Familia { Nombre=ComboBox1.SelectedItem.Text};
                if (familia!=null)
                {
                    var variable = GestorPatentes.Existe(flia, familia.Id);

                    if (variable)
                    {
                        GestorPatentes.FillFamilyComponents(familia);
                        flia.AgregarHijo(familia);
                        MostrarFamilia(false);
                    }
                }

            }
        }

        protected void btnagregarflia_Click(object sender, EventArgs e)///// esto configura la flia
        {
            var tmp = new Familia { Nombre = ComboBox1.SelectedItem.Text,
                                    Id=int.Parse(ComboBox1.SelectedItem.Value)
                                  };
            flia = new Familia();
            flia.Id = tmp.Id;
            flia.Nombre = tmp.Nombre;

            MostrarFamilia(true);
        }

        protected void BTNAGREGARPATENTE_Click(object sender, EventArgs e)
        {
            //flia = new Familia();
            flia.Id = int.Parse(ComboBox1.SelectedItem.Value);
            if (flia != null)
            {
                
                var pat= new Patente { Nombre = ComboBox2.SelectedItem.Text,
                                       Id = int.Parse(ComboBox2.SelectedItem.Value)
                                     };
                if (pat != null)
                {
                    var variable = GestorPatentes.Existe(flia, pat.Id);

                    if (variable)
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('ya existe la patente indicada');</script>");


                    
                    else
                    {
                        flia.AgregarHijo(pat);
                        //agregar a una clase auxiliar o lista los hijos del treeview y pasarselos en guardar
                        permiaux.Padre = flia.Id;
                        Session["padre"] = permiaux.Padre;                        
                        permiaux.Hijo = pat.Id;
                        GestorPatentes.agregar(permiaux);
                        Session["permisos"] = GestorPatentes.listaraux().ToString();
                        /////////
                        MostrarFamilia(false);
                    }
                }

            }
        }
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            int padre = 0, hijo = 0;
            try
            {                
                flia.Id = int.Parse(ComboBox1.SelectedItem.Value);
                var var = flia.Hijos;// no me trae los hijos de las familias

                GestorPatentes.GuardarFamilia(flia);
                
                
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}