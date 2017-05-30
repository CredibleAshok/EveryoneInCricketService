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
    public class MatchStatsController : ApiController
    {
        private TestDatabaseEntities db = new TestDatabaseEntities();

        // GET: api/MatchStats
        public IQueryable<MatchStat> GetMatchStats()
        {
            return db.MatchStats;
        }

        // GET: api/MatchStats/5
        [ResponseType(typeof(MatchStat))]
        public async Task<IHttpActionResult> GetMatchStat(int id)
        {
            MatchStat matchStat = await db.MatchStats.FindAsync(id);
            if (matchStat == null)
            {
                return NotFound();
            }

            return Ok(matchStat);
        }

        // PUT: api/MatchStats/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutMatchStat(int id, MatchStat matchStat)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != matchStat.MatchStatsId)
            {
                return BadRequest();
            }

            db.Entry(matchStat).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MatchStatExists(id))
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

        // POST: api/MatchStats
        [ResponseType(typeof(MatchStat))]
        public async Task<IHttpActionResult> PostMatchStat(MatchStat matchStat)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.MatchStats.Add(matchStat);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = matchStat.MatchStatsId }, matchStat);
        }

        // DELETE: api/MatchStats/5
        [ResponseType(typeof(MatchStat))]
        public async Task<IHttpActionResult> DeleteMatchStat(int id)
        {
            MatchStat matchStat = await db.MatchStats.FindAsync(id);
            if (matchStat == null)
            {
                return NotFound();
            }

            db.MatchStats.Remove(matchStat);
            await db.SaveChangesAsync();

            return Ok(matchStat);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool MatchStatExists(int id)
        {
            return db.MatchStats.Count(e => e.MatchStatsId == id) > 0;
        }
    }
}