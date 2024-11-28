using ApiWebPostman.Data;
using ApiWebPostman.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ApiWebPostman.Controllers
{
    public class UsuarioController : ApiController
    {
        // GET api/<controller> Esto ira al metodo de listar que se encuentra en UsuarioData
        public List<Usuario> Get()
        {
            return UsuarioData.Listar();
        }

        // GET api/<controller>/5 Retonar un usuario en especifico este ira al metodo Obtener
        public Usuario Get(int id)
        {
            return UsuarioData.Obtener(id);
        }

        // POST api/<controller> para registrar el usuario
        public bool Post([FromBody] Usuario oUsuario)
        {
            return UsuarioData.Registrar(oUsuario);
        }

        // PUT api/<controller>/5 Editar el usuario
        public bool Put([FromBody] Usuario oUsuario)
        {
            return UsuarioData.Modificar(oUsuario);
        }

        // DELETE api/<controller>/5 Eliminar el usuario
        public bool Delete(int id)
        {
            return UsuarioData.Eliminar(id);
        }
    }
}