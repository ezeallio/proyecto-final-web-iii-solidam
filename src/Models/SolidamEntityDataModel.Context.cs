﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SolidamEntities : DbContext
    {
        public SolidamEntities()
            : base("name=SolidamEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Denuncias> Denuncias { get; set; }
        public virtual DbSet<DonacionesHorasTrabajo> DonacionesHorasTrabajo { get; set; }
        public virtual DbSet<DonacionesInsumos> DonacionesInsumos { get; set; }
        public virtual DbSet<DonacionesMonetarias> DonacionesMonetarias { get; set; }
        public virtual DbSet<MotivoDenuncia> MotivoDenuncia { get; set; }
        public virtual DbSet<Propuestas> Propuestas { get; set; }
        public virtual DbSet<PropuestasDonacionesHorasTrabajo> PropuestasDonacionesHorasTrabajo { get; set; }
        public virtual DbSet<PropuestasDonacionesInsumos> PropuestasDonacionesInsumos { get; set; }
        public virtual DbSet<PropuestasDonacionesMonetarias> PropuestasDonacionesMonetarias { get; set; }
        public virtual DbSet<PropuestasReferencias> PropuestasReferencias { get; set; }
        public virtual DbSet<PropuestasValoraciones> PropuestasValoraciones { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }
    }
}
