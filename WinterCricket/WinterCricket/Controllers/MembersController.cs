﻿using System;
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
    public class MembersController : ApiController
    {
        private TestDatabaseEntities db = new TestDatabaseEntities();

        // GET: api/Members
        public IQueryable<Member> GetMembers()
        {
            return db.Members;
        }

        // GET: api/Members/5
        [Route("api/getMemberByTeamId/{teamId}")]
        public IList<MemberDto> GetMemberById(int teamId)
        {
//            Member member = await db.Members.FindAsync(id);
            IList<MemberDto> memberList = db.Members
                 .Select(m => new MemberDto()
                 {
                     MemberId = m.MemberId,
                     Name = m.Name,
                     MemberType = m.MemberType,
                     Team = m.Team,
                     PlayerType = m.PlayerType,
                     PlayingHand = m.PlayingHand,
                     IsWicketKeeper = m.IsWicketKeeper,
                     HasChangedTeamEver = m.HasChangedTeamEver,
                     IsCaptain = m.IsCaptain
                 }).Where(param => param.Team == teamId).ToList();
            return memberList;
        }

        // PUT: api/Members/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutMember(int id, Member member)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != member.MemberId)
            {
                return BadRequest();
            }

            db.Entry(member).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MemberExists(id))
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

        // POST: api/Members
        [ResponseType(typeof(Member))]
        public async Task<IHttpActionResult> PostMember(Member member)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Members.Add(member);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = member.MemberId }, member);
        }

        // DELETE: api/Members/5
        [ResponseType(typeof(Member))]
        public async Task<IHttpActionResult> DeleteMember(int id)
        {
            Member member = await db.Members.FindAsync(id);
            if (member == null)
            {
                return NotFound();
            }

            db.Members.Remove(member);
            await db.SaveChangesAsync();

            return Ok(member);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool MemberExists(int id)
        {
            return db.Members.Count(e => e.MemberId == id) > 0;
        }
    }
}