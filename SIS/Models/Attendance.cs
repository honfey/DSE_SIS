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
    
    public partial class Attendance
    {
        public int Id { get; set; }
        public Nullable<int> ClassStudentId { get; set; }
        public Nullable<System.TimeSpan> MorningIn { get; set; }
        public Nullable<System.TimeSpan> MorningOut { get; set; }
        public Nullable<System.TimeSpan> AfternoonIn { get; set; }
        public Nullable<System.TimeSpan> AfternoonOut { get; set; }
        public Nullable<System.DateTime> TodayDate { get; set; }
        public string Status { get; set; }
    
        public virtual ClassStudent ClassStudent { get; set; }
    }
}
