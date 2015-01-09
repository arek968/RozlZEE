using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class MiastoController : ApiController
    {
        private RozlZEEEntities db = new RozlZEEEntities();

        // GET: api/Miastoes
        public IQueryable<Miasto> GetMiasto()
        {
            return db.Miasto;
        }

        // GET: api/Miastoes/5
        [ResponseType(typeof(Miasto))]
        public IHttpActionResult GetMiasto(int id)
        {
            Miasto miasto = db.Miasto.Find(id);
            if (miasto == null)
            {
                return NotFound();
            }

            return Ok(miasto);
        }

        // PUT: api/Miastoes/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutMiasto(int id, Miasto miasto)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != miasto.Id)
            {
                return BadRequest();
            }

            db.Entry(miasto).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MiastoExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Miastoes
        [ResponseType(typeof(Miasto))]
        public IHttpActionResult PostMiasto(Miasto miasto)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Miasto.Add(miasto);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = miasto.Id }, miasto);
        }

        // DELETE: api/Miastoes/5
        [ResponseType(typeof(Miasto))]
        public IHttpActionResult DeleteMiasto(int id)
        {
            Miasto miasto = db.Miasto.Find(id);
            if (miasto == null)
            {
                return NotFound();
            }

            db.Miasto.Remove(miasto);
            db.SaveChanges();

            return Ok(miasto);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool MiastoExists(int id)
        {
            return db.Miasto.Count(e => e.Id == id) > 0;
        }
    }
}