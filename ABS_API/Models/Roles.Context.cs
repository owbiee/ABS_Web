﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ABS_API.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Ipolicy_DBEntities : DbContext
    {
        public Ipolicy_DBEntities()
            : base("name=Ipolicy_DBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ABSROLEMGR> ABSROLEMGRs { get; set; }
        public virtual DbSet<ABSUSERFUNC> ABSUSERFUNCs { get; set; }
        public virtual DbSet<ABSUSERROLE> ABSUSERROLES { get; set; }
        public virtual DbSet<ABSUSER> ABSUSERS { get; set; }
    }
}
