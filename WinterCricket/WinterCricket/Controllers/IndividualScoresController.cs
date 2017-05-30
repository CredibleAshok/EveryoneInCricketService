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
using WinterCricket.Models.Dtos;

namespace WinterCricket.Controllers
{
    public class IndividualScoresController : ApiController
    {
        private TestDatabaseEntities db = new TestDatabaseEntities();

        // GET: api/IndividualScores
        [Route("api/scoreCardByMatchId/{matchId}")]
        public IList<IndividualScoreDto> GetIndividualScores(int? matchId)
        {
            //Todo , change the colulmn name in bowling type.
            // todo, change column names of howout table
            IList<IndividualScoreDto> scoreCard = db.IndividualScores
                .Select(isd => new IndividualScoreDto()
                {
                    MatchId = isd.MatchId,
                    PlayerId = isd.PlayerId,
                    BallsFaced = isd.BallsFaced,
                    RunsScored = isd.RunsScored,
                    OversBowled = isd.OversBowled,
                    BowlingTypeDetail = new BowlingTypeDto()
                    {
                        BowlingTypeId = isd.BowlingType1.BowlingTypeId,
                        Name = isd.BowlingType1.BowlingType1
                    },
                    WicketTaken = isd.WicketTaken,
                    Six = isd.Six,
                    Fours = isd.Fours,
                    RunsGiven = isd.RunsGiven,
                    HowOutDetails = new HowOutDto()
                    {
                        HowOutId = isd.HowOut1.HowOutId,
                        Name = isd.HowOut1.HowOut1
                    },
                    BowledByDetail = new MemberDto()
                    {
                        MemberId = isd.Member.MemberId,
                        Name = isd.Member.Name
                    },
                    TeamId = isd.TeamId
                }).Where(param => param.MatchId == matchId).ToList();

            return scoreCard;
        }

        // GET: api/IndividualScores/5
        [ResponseType(typeof(IndividualScore))]
        public async Task<IHttpActionResult> GetIndividualScore(int id)
        {
            IndividualScore individualScore = await db.IndividualScores.FindAsync(id);
            if (individualScore == null)
            {
                return NotFound();
            }

            return Ok(individualScore);
        }

        // PUT: api/IndividualScores/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutIndividualScore(int id, IndividualScore individualScore)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != individualScore.ScoreId)
            {
                return BadRequest();
            }

            db.Entry(individualScore).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!IndividualScoreExists(id))
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

        // POST: api/IndividualScores
        [ResponseType(typeof(IndividualScore))]
        public async Task<IHttpActionResult> PostIndividualScore(IndividualScore individualScore)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.IndividualScores.Add(individualScore);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = individualScore.ScoreId }, individualScore);
        }

        // DELETE: api/IndividualScores/5
        [ResponseType(typeof(IndividualScore))]
        public async Task<IHttpActionResult> DeleteIndividualScore(int id)
        {
            IndividualScore individualScore = await db.IndividualScores.FindAsync(id);
            if (individualScore == null)
            {
                return NotFound();
            }

            db.IndividualScores.Remove(individualScore);
            await db.SaveChangesAsync();

            return Ok(individualScore);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool IndividualScoreExists(int id)
        {
            return db.IndividualScores.Count(e => e.ScoreId == id) > 0;
        }
    }
}