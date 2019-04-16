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
    public class ABSROLEMGRsController : ApiController
    {
        private Ipolicy_DBEntities db = new Ipolicy_DBEntities();

        // GET: api/ABSROLEMGRs
        public IQueryable<ABSROLEMGR> GetABSROLEMGRs()
        {
            return db.ABSROLEMGRs;
        }

        // GET: api/ABSROLEMGRs/5
        [ResponseType(typeof(ABSROLEMGR))]
        public async Task<IHttpActionResult> GetABSROLEMGR(int id)
        {
            ABSROLEMGR aBSROLEMGR = await db.ABSROLEMGRs.FindAsync(id);
            if (aBSROLEMGR == null)
            {
                return NotFound();
            }

            return Ok(aBSROLEMGR);
        }

        // PUT: api/ABSROLEMGRs/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutABSROLEMGR(int id, ABSROLEMGR aBSROLEMGR)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != aBSROLEMGR.Mgr_ID)
            {
                return BadRequest();
            }

            db.Entry(aBSROLEMGR).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ABSROLEMGRExists(id))
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

        // POST: api/ABSROLEMGRs
        [ResponseType(typeof(ABSROLEMGR))]
        public async Task<IHttpActionResult> PostABSROLEMGR(ABSROLEMGR aBSROLEMGR)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ABSROLEMGRs.Add(aBSROLEMGR);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = aBSROLEMGR.Mgr_ID }, aBSROLEMGR);
        }

        // DELETE: api/ABSROLEMGRs/5
        [ResponseType(typeof(ABSROLEMGR))]
        public async Task<IHttpActionResult> DeleteABSROLEMGR(int id)
        {
            ABSROLEMGR aBSROLEMGR = await db.ABSROLEMGRs.FindAsync(id);
            if (aBSROLEMGR == null)
            {
                return NotFound();
            }

            db.ABSROLEMGRs.Remove(aBSROLEMGR);
            await db.SaveChangesAsync();

            return Ok(aBSROLEMGR);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ABSROLEMGRExists(int id)
        {
            return db.ABSROLEMGRs.Count(e => e.Mgr_ID == id) > 0;
        }
    }
}