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
    
    public partial class PropuestasDonacionesHorasTrabajo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PropuestasDonacionesHorasTrabajo()
        {
            this.DonacionesHorasTrabajo = new HashSet<DonacionesHorasTrabajo>();
        }
    
        public int IdPropuestaDonacionHorasTrabajo { get; set; }
        public int IdPropuesta { get; set; }
        public int CantidadHoras { get; set; }
        public string Profesion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonacionesHorasTrabajo> DonacionesHorasTrabajo { get; set; }
        public virtual Propuestas Propuestas { get; set; }
    }
}