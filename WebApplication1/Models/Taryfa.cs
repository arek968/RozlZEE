//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Taryfa
    {
        public Taryfa()
        {
            this.Przylacze = new HashSet<Przylacze>();
            this.SkladnikTaryfy = new HashSet<SkladnikTaryfy>();
            this.Zuzycie = new HashSet<Zuzycie>();
        }
    
        public int Id { get; set; }
        public string Symbol { get; set; }
        public string Opis { get; set; }
        public Nullable<byte> IleCzlonow { get; set; }
        public Nullable<byte> IleStref { get; set; }
    
        public virtual ICollection<Przylacze> Przylacze { get; set; }
        public virtual ICollection<SkladnikTaryfy> SkladnikTaryfy { get; set; }
        public virtual ICollection<Zuzycie> Zuzycie { get; set; }
    }
}
