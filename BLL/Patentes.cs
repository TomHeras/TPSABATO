﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Seguridad.Composite;

namespace BLL
{
   public class Patentes
    {
        DAL.Patentes pate = new DAL.Patentes();


        Patente_Usuario patusu = new Patente_Usuario();

        DAL.Usuario gestorusu = new DAL.Usuario();


        public Patentes()
        {
            pate = new DAL.Patentes();
        }

        public List<Patente> lista()
        {
            List<Patente> listar = pate.listar();
            return listar;
        } 

        public Componente guardarcomponente(Componente c, bool flia)
        {
            return pate.GuardarComponente(c, flia);
        }

        public IList<Patente> GetAllPatentes()
        {
            return pate.traerpatentes();
        }

        public IList<Familia> GetAllFamilias()
        {
            return pate.traerfamilias();
        }

        public Array GetAllPermission()
        {
            return pate.obtenerpermisos();
        }



        public IList<Componente> GetAll(string familia)
        {
            return pate.GetAll(familia);
        }

        public bool Existe(Componente c, int id)
        {
            bool existe = false;

            if (c.Id.Equals(id))
                existe = true;
            else
                foreach (var item in c.Hijos)
                {
                    existe = Existe(item, id);
                    if (existe) return true;
                }
            return existe;
        }


        public void GuardarFamilia(Familia c)
        {
            pate.GuardarFamilia(c);
        }

        public void FillFamilyComponents(Familia familia)
        {
            pate.FillFamilyComponents(familia);
        }
        public void FillUserComponents(Patente_Usuario u)
        {
            pate.FillUserComponents(u);

        }
        public bool BuscarPermisos(Tipopatente patentes, Patente_Usuario u)
        {
            return pate.BuscarPermisos(patentes, u);
        }


        public string pat_flia(BE.pat_flia_AUX pat_Flia_AUX)
        {
            string fa;
            fa = pate.cargarUPF(pat_Flia_AUX);
            return fa;
        }

        List<BE.pat_flia_AUX> patflia = new List<BE.pat_flia_AUX>();

        public void agregar(BE.pat_flia_AUX patflias)
        {
            this.patflia.Add(patflias);
        }

        public void vaciar()
        {
            this.patflia = new List<BE.pat_flia_AUX>();
        }
        
        public List<BE.pat_flia_AUX> listaraux()
        {
            return this.patflia;
        }
    }
}
