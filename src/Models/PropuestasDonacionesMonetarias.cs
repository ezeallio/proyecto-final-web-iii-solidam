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
    
    public partial class PropuestasDonacionesMonetarias
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PropuestasDonacionesMonetarias()
        {
            this.DonacionesMonetarias = new HashSet<DonacionesMonetarias>();
        }
    
        public int IdPropuestaDonacionMonetaria { get; set; }
        public int IdPropuesta { get; set; }
        public decimal Dinero { get; set; }
        public string CBU { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonacionesMonetarias> DonacionesMonetarias { get; set; }
        public virtual Propuestas Propuestas { get; set; }
    }
}
