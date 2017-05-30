using System;
using System.Collections.Generic;
using System.Configuration;
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
    public class SeriesController : ApiController
    {
        private TestDatabaseEntities db = new TestDatabaseEntities();

        // GET: api/Series
        public IQueryable<Series> GetSeries()
        {
            return db.Series;
        }

        // GET: api/Series
        [Route("api/getAllSeriesList")]
        public IList<SeriesDto> GetAllSeries()
        {
            return db.Series
                        .Select(s => new SeriesDto()
                        {
                            SeriesId = s.SeriesId,
                            SeriesName = s.SeriesName,
                            Year = s.SeriesValidFrom.Value.Year.ToString()
                        }).ToList();
        }

        [Route("api/getAllSeriesList/fake")]
        public string GetAllSeriesFake()
        {
            string fakeSeriesList = "";
            fakeSeriesList = @"[{'SeriesName': 1, 'SeriesId': 'Series 1', 'SeriesValidFrom': 'India', 'SeriesValidTo': '17 March 2017'}, { 'SeriesName': 2, 'SeriesId': 'Series 2', 'SeriesValidFrom': 'India', 'SeriesValidTo': '17 March 2017'}]";
            return fakeSeriesList;
        }

        // GET: api/Series/5
        [ResponseType(typeof(Series))]
        public async Task<IHttpActionResult> GetSeries(int id)
        {
            Series series = await db.Series.FindAsync(id);
            if (series == null)
            {
                return NotFound();
            }

            return Ok(series);
        }

        // PUT: api/Series/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutSeries(int id, Series series)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != series.SeriesId)
            {
                return BadRequest();
            }

            db.Entry(series).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SeriesExists(id))
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

        // POST: api/Series
        [ResponseType(typeof(Series))]
        public async Task<IHttpActionResult> PostSeries(Series series)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Series.Add(series);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = series.SeriesId }, series);
        }

        // DELETE: api/Series/5
        [ResponseType(typeof(Series))]
        public async Task<IHttpActionResult> DeleteSeries(int id)
        {
            Series series = await db.Series.FindAsync(id);
            if (series == null)
            {
                return NotFound();
            }

            db.Series.Remove(series);
            await db.SaveChangesAsync();

            return Ok(series);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SeriesExists(int id)
        {
            return db.Series.Count(e => e.SeriesId == id) > 0;
        }
    }
}