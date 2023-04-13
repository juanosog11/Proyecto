using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto.Clases
{
    internal class c_Conexion
    {

        //se define la ruta de la base de datos
        static private String CadenaConexion = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\Universidad\Semestre5\POO\Proyecto\Proyecto\db_transporte.mdf';Integrated Security=True;Connect Timeout=30";

        //definir una variable para cargar la base da datos
        private SqlConnection Conexion = new SqlConnection(CadenaConexion);

        //metodo para abrir la base da datos
        public SqlConnection AbrirConexion()
        {
            if (Conexion.State == ConnectionState.Closed)
            {
                Conexion.Open();
            }
            return Conexion;
        }

        //metodo para cerrar la base da datos
        public SqlConnection CerrarConexion()
        {
            if (Conexion.State == ConnectionState.Open)
            {
                Conexion.Close();
            }
            return Conexion;
        }

    }
}
