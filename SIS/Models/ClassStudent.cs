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
    using System.ComponentModel.DataAnnotations;

    public partial class ClassStudent
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ClassStudent()
        {
            this.Attendances = new HashSet<Attendance>();
            this.CourseWorks = new HashSet<CourseWork>();
            this.ReportCards = new HashSet<ReportCard>();
        }
    
        public int Id { get; set; }
        public Nullable<int> Course_ModuleId { get; set; }
        public Nullable<int> StudentId { get; set; }
        public Nullable<int> Day { get; set; }
        public Nullable<int> Exam_Day { get; set; }
        public Nullable<int> Trial_Day { get; set; }
        public Nullable<int> Project_Day { get; set; }
        public Nullable<bool> Status { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        public Nullable<System.DateTime> CreateDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Attendance> Attendances { get; set; }
        public virtual Course_Module Course_Module { get; set; }
        public virtual Student Student { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CourseWork> CourseWorks { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReportCard> ReportCards { get; set; }
    }
}
