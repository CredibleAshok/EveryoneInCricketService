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
using WinterCricket;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Controllers
{
    public class WinningModesController : ApiController
    {
        private TestDatabaseEntities db = new TestDatabaseEntities();

        // GET: api/WinningModes
        public IQueryable<WinningMode> GetWinningModes()
        {
            return db.WinningModes;
        }

        // GET: api/WinningModes/5
        [ResponseType(typeof(WinningMode))]
        public async Task<IHttpActionResult> GetWinningMode(int id)
        {
            WinningMode winningMode = await db.WinningModes.FindAsync(id);
            if (winningMode == null)
            {
                return NotFound();
            }

            return Ok(winningMode);
        }

        // PUT: api/WinningModes/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutWinningMode(int id, WinningMode winningMode)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != winningMode.WinningModeId)
            {
                return BadRequest();
            }

            db.Entry(winningMode).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!WinningModeExists(id))
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

        // POST: api/WinningModes
        [ResponseType(typeof(WinningMode))]
        public async Task<IHttpActionResult> PostWinningMode(WinningMode winningMode)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.WinningModes.Add(winningMode);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = winningMode.WinningModeId }, winningMode);
        }

        // DELETE: api/WinningModes/5
        [ResponseType(typeof(WinningMode))]
        public async Task<IHttpActionResult> DeleteWinningMode(int id)
        {
            WinningMode winningMode = await db.WinningModes.FindAsync(id);
            if (winningMode == null)
            {
                return NotFound();
            }

            db.WinningModes.Remove(winningMode);
            await db.SaveChangesAsync();

            return Ok(winningMode);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool WinningModeExists(int id)
        {
            return db.WinningModes.Count(e => e.WinningModeId == id) > 0;
        }
    }
}