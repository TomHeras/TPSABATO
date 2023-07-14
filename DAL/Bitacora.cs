using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    class Bitacora
    {
        Accesos Acceso = new Accesos();
        public string CargarBitacora(BE.Bitacora Bitacora)
        {
            string fa = "";
            SqlParameter[] Param = new SqlParameter[4];
            Param[0] = new SqlParameter("@NickUsuario", Bitacora.NickUsuario);
            Param[1] = new SqlParameter("@Fecha", Bitacora.Fecha);
            Param[2] = new SqlParameter("@Descripcion", Bitacora.Descripcion);
            Param[3] = new SqlParameter("@Criticidad", Bitacora.Criticidad);
            fa = Acceso.Escribir("InsertarBitacora", Param);
            return fa;
        }

        public List<BE.Bitacora> Listar()
        {
            List<BE.Bitacora> Lista = new List<BE.Bitacora>();
            DataTable Tabla = Acceso.Leer("ListarBitacora", null);
            foreach (DataRow Registro in Tabla.Rows)
            {
                BE.Bitacora Bit = new BE.Bitacora();
                Bit.NickUsuario = Registro["NickUsuario"].ToString();
                Bit.Descripcion = Registro["Descripcion"].ToString();
                Bit.Fecha = DateTime.Parse(Registro["Fecha"].ToString());
                Bit.Criticidad = Registro["Criticidad"].ToString();
                Lista.Add(Bit);
            }
            return Lista;
        }

       
    }
}
