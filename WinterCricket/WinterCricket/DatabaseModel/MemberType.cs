//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class MemberType
    {
        public MemberType()
        {
            this.Members = new HashSet<Member>();
        }
    
        public int MemberTypeId { get; set; }
        public string Name { get; set; }
    
        public virtual ICollection<Member> Members { get; set; }
    }
}
