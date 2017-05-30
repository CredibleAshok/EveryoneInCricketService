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
using WinterCricket.Models.Dtos;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Controllers
{
    public class MatchesController : ApiController
    {
        private TestDatabaseEntities db = new TestDatabaseEntities();

        // GET: api/Matches
        public IQueryable<Match> GetMatches()
        {
            return db.Matches;
        }
        [Route("api/getMatchesBySeriesId/{seriesId}")]
        public IList<MatchDto> GetMatchesBySeriesId(int? seriesId)
        {
            IList<MatchDto> matches =  db.Matches
                .Select(m=> new MatchDto()
                {
                    MatchId = m.MatchId,
                    VenueDetails = new VenueDto(){
                        VenueId = m.Venue.VenueId,
                        Name = m.Venue.Name
                    },
                    MatchDate = m.MatchDate,
                    HomeTeamDetails = new TeamDto(){
                        TeamId = m.Team2.TeamId,
                        Name = m.Team2.Name
                    },
                    AwayTeamDetails = new TeamDto()
                    {
                        TeamId = m.Team1.TeamId,
                        Name = m.Team1.Name
                    },
                    MatchTypeId = m.MatchTypeId,
                    MatchTime = m.MatchTime,
                    SeriesId = m.SeriesId,
                    MatchStateId = m.MatchStateId
                }).Where(param=> param.SeriesId== seriesId).ToList();
            return matches;
        }
        // GET: api/Matches/5
        [ResponseType(typeof(Match))]
        public async Task<IHttpActionResult> GetMatch(int id)
        {
            Match match = await db.Matches.FindAsync(id);
            if (match == null)
            {
                return NotFound();
            }

            return Ok(match);
        }

        // PUT: api/Matches/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutMatch(int id, Match match)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != match.MatchId)
            {
                return BadRequest();
            }

            db.Entry(match).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MatchExists(id))
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

        // POST: api/Matches
        [HttpPost]
        [Route("api/SaveMatch")]
        [ResponseType(typeof(Match))]
        public IHttpActionResult SaveMatch(Match match)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Matches.Add(match);
            db.SaveChangesAsync();
            return Ok(match);
        }

        // DELETE: api/Matches/5
        [ResponseType(typeof(Match))]
        public async Task<IHttpActionResult> DeleteMatch(int id)
        {
            Match match = await db.Matches.FindAsync(id);
            if (match == null)
            {
                return NotFound();
            }

            db.Matches.Remove(match);
            await db.SaveChangesAsync();

            return Ok(match);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool MatchExists(int id)
        {
            return db.Matches.Count(e => e.MatchId == id) > 0;
        }
    }
}