//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class PropuestasDonacionesInsumos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PropuestasDonacionesInsumos()
        {
            this.DonacionesInsumos = new HashSet<DonacionesInsumos>();
        }
    
        public int IdPropuestaDonacionInsumo { get; set; }
        public int IdPropuesta { get; set; }
        public string Nombre { get; set; }
        public int Cantidad { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonacionesInsumos> DonacionesInsumos { get; set; }
        public virtual Propuestas Propuestas { get; set; }
    }
}