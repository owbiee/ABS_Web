﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ABS_Web.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Ipolicy_DBEntities1 : DbContext
    {
        public Ipolicy_DBEntities1()
            : base("name=Ipolicy_DBEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ABSPASSTAB> ABSPASSTABs { get; set; }
        public virtual DbSet<ABSROLECHK> ABSROLECHKs { get; set; }
        public virtual DbSet<ABSROLEDETAIL> ABSROLEDETAILS { get; set; }
        public virtual DbSet<ABSROLEDTL> ABSROLEDTLS { get; set; }
        public virtual DbSet<ABSROLEMST> ABSROLEMSTs { get; set; }
        public virtual DbSet<ABSROLETASK> ABSROLETASKs { get; set; }
        public virtual DbSet<ABSROLEUSER> ABSROLEUSERS { get; set; }
        public virtual DbSet<ABSUSER> ABSUSERS { get; set; }
    }
}
