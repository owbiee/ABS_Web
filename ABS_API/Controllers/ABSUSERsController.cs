using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using ABS_API.Models;

namespace ABS_API.Controllers
{
    public class ABSUSERsController : ApiController
    {
        private Ipolicy_DBEntities db = new Ipolicy_DBEntities();

        // GET: api/ABSUSERs
        public IQueryable<ABSUSER> GetABSUSERS()
        {
            return db.ABSUSERS;
        }

        // GET: api/ABSUSERs/5
        [ResponseType(typeof(ABSUSER))]
        public async Task<IHttpActionResult> GetABSUSER(int id)
        {
            ABSUSER aBSUSER = await db.ABSUSERS.FindAsync(id);
            if (aBSUSER == null)
            {
                return NotFound();
            }

            return Ok(aBSUSER);
        }

        // PUT: api/ABSUSERs/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutABSUSER(int id, ABSUSER aBSUSER)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != aBSUSER.UserID)
            {
                return BadRequest();
            }

            db.Entry(aBSUSER).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ABSUSERExists(id))
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

        // POST: api/ABSUSERs
        [ResponseType(typeof(ABSUSER))]
        public async Task<IHttpActionResult> PostABSUSER(ABSUSER aBSUSER)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ABSUSERS.Add(aBSUSER);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = aBSUSER.UserID }, aBSUSER);
        }

        // DELETE: api/ABSUSERs/5
        [ResponseType(typeof(ABSUSER))]
        public async Task<IHttpActionResult> DeleteABSUSER(int id)
        {
            ABSUSER aBSUSER = await db.ABSUSERS.FindAsync(id);
            if (aBSUSER == null)
            {
                return NotFound();
            }

            db.ABSUSERS.Remove(aBSUSER);
            await db.SaveChangesAsync();

            return Ok(aBSUSER);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ABSUSERExists(int id)
        {
            return db.ABSUSERS.Count(e => e.UserID == id) > 0;
        }
    }
}