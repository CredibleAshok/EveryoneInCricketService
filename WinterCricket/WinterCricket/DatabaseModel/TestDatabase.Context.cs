﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WinterCricket.DatabaseModel
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TestDatabaseEntities : DbContext
    {
        public TestDatabaseEntities()
            : base("name=TestDatabaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<BowlingType> BowlingTypes { get; set; }
        public virtual DbSet<Club> Clubs { get; set; }
        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<HowOut> HowOuts { get; set; }
        public virtual DbSet<IndividualScore> IndividualScores { get; set; }
        public virtual DbSet<Match> Matches { get; set; }
        public virtual DbSet<MatchState> MatchStates { get; set; }
        public virtual DbSet<MatchType> MatchTypes { get; set; }
        public virtual DbSet<Member> Members { get; set; }
        public virtual DbSet<MemberType> MemberTypes { get; set; }
        public virtual DbSet<PlayerType> PlayerTypes { get; set; }
        public virtual DbSet<PlayingHand> PlayingHands { get; set; }
        public virtual DbSet<Series> Series { get; set; }
        public virtual DbSet<Team> Teams { get; set; }
        public virtual DbSet<Venue> Venues { get; set; }
        public virtual DbSet<WinningMode> WinningModes { get; set; }
        public virtual DbSet<ExtrasGiven> ExtrasGivens { get; set; }
        public virtual DbSet<MatchStat> MatchStats { get; set; }
        public virtual DbSet<Result> Results { get; set; }
    }
}
