//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SIS.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Intake
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Intake()
        {
            this.Students = new HashSet<Student>();
        }
    
        public int Id { get; set; }
        public int YearId { get; set; }
        public int MonthId { get; set; }
        public string CourseCode { get; set; }
    
        public virtual Month Month { get; set; }
        public virtual Year Year { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Student> Students { get; set; }
    }
}