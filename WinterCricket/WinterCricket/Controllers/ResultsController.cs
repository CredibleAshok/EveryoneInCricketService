using Newtonsoft.Json;
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
    public class ResultsController : ApiController
    {
        private TestDatabaseEntities db = new TestDatabaseEntities();

        // GET: api/Results
        [Route("api/getResults")]
        public IList<ResultsDto> GetResults()
        {
            var results = db.Results
                .Select(r => new ResultsDto()
                {
                    MatchId = r.MatchId,
                    WinningMode = r.WinningMode,
                    TeamWonDetails = new TeamDto()
                    {
                        TeamId = r.Team2.TeamId, // Team2 in results = team won
                        Name = r.Team2.Name
                    },
                    TeamLostDetails = new TeamDto()
                    {
                        TeamId = r.Team1.TeamId, // Team1 in results = team Lost
                        Name = r.Team1.Name
                    },
                    TeamDecideToBatDetails = new TeamDto()
                    {
                        TeamId = r.Team.TeamId, // // Team in results = decided to bat
                        Name = r.Team.Name
                    },
                    WinningModeDetails = new WinningModeDto()
                    {
                        WinningModeId = r.WinningMode1.WinningModeId,
                        Name = r.WinningMode1.Name
                    },
                    ByRuns = r.ByRuns,
                    ByWickets = r.ByWickets,
                    MatchDetails = new MatchDto()
                    {
                        MatchId = r.Match.MatchId,
                        VenueDetails = new VenueDto(){
                            VenueId = r.Match.Venue.VenueId,
                            Name = r.Match.Venue.Name
                        },
                        MatchDate = r.Match.MatchDate,
                        AwayTeamDetails = new TeamDto(){
                            TeamId = r.Match.Team1.TeamId,
                            Name = r.Match.Team1.Name
                        },
                        HomeTeamDetails = new TeamDto()
                        {
                            TeamId = r.Match.Team2.TeamId,
                            Name = r.Match.Team2.Name
                        },
                        MatchTypeId = r.Match.MatchTypeId,
                        MatchTime = r.Match.MatchTime,
                        SeriesId = r.Match.SeriesId,
                        //    MatchStateId = m.Match.MatchStateId,
                        //    IndividualScoresDetails = m.Match.IndividualScores.Select(x => new IndividualScoreDto() // if it is one-many relation
                        //    {
                        //        MatchId_F = x.MatchId_F,
                        //        PlayerId_F = x.PlayerId_F,
                        //        BowlingTypeDetails = new BowlingTypeDto() // if it is one-one relation
                        //        {
                        //            BowlingTypeId = x.BowlingType1.BowlingTypeId,
                        //            Name = x.BowlingType1.BowlingType1
                        //        }
                        //    }).ToList()
                    },
                    MatchStatDetails = r.Match.MatchStats
                    .Select(ms => new MatchStatDto() 
                    { 
                        MatchId = ms.MatchId,
                        TeamId = ms.TeamId,
                        RunsScored = ms.RunsScored,
                        ExtraScored = ms.ExtraScored,
                        OversReceived = ms.OversReceived,
                        WicketsLost = ms.WicketsLost
                    }).ToList()
                }).ToList();
            return results;
        }
        
        // GET: api/Results/5
        [ResponseType(typeof(Result))]
        
        public async Task<IHttpActionResult> GetResult(int id)
        {
            Result result = await db.Results.FindAsync(id);
            if (result == null)
            {
                return NotFound();
            }

            return Ok(result);
        }

        // PUT: api/Results/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutResult(int id, Result result)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != result.ResultsId)
            {
                return BadRequest();
            }

            db.Entry(result).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ResultExists(id))
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

        // POST: api/Results
        [ResponseType(typeof(Result))]
        public async Task<IHttpActionResult> PostResult(Result result)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Results.Add(result);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = result.ResultsId }, result);
        }

        // DELETE: api/Results/5
        [ResponseType(typeof(Result))]
        public async Task<IHttpActionResult> DeleteResult(int id)
        {
            Result result = await db.Results.FindAsync(id);
            if (result == null)
            {
                return NotFound();
            }

            db.Results.Remove(result);
            await db.SaveChangesAsync();

            return Ok(result);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ResultExists(int id)
        {
            return db.Results.Count(e => e.ResultsId == id) > 0;
        }
    }
}