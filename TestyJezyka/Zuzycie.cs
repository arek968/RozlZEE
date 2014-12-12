//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TestyJezyka
{
    using System;
    using System.Collections.Generic;
    
    public partial class Zuzycie
    {
        public Zuzycie()
        {
            this.PozycjaZuzycia = new HashSet<PozycjaZuzycia>();
        }
    
        public int Id { get; set; }
        public int idPrzylacze { get; set; }
        public System.DateTime DataOdczytu { get; set; }
        public decimal DoZaplatyNetto { get; set; }
        public decimal DoZaplatyVAT { get; set; }
        public decimal DoZaplatyBrutto { get; set; }
        public Nullable<float> EnergiaCzynnaRazem { get; set; }
        public Nullable<float> EergiaBiernaPobranaRazem { get; set; }
        public Nullable<float> EnergiaBiernaOddanaRazem { get; set; }
        public Nullable<decimal> ZwrotyBonifikaty { get; set; }
        public Nullable<decimal> Zaliczka { get; set; }
        public Nullable<float> CzasMocyMaksymalnej { get; set; }
        public Nullable<decimal> CenaSrednia { get; set; }
        public Nullable<float> TangensFi { get; set; }
        public string PowodKorekty { get; set; }
        public Nullable<bool> CzyKorekta { get; set; }
        public Nullable<System.DateTime> DataKorekty { get; set; }
        public int idTaryfa { get; set; }
        public string NrFaktury { get; set; }
        public Nullable<decimal> NettoFaktury { get; set; }
        public Nullable<decimal> VATFaktury { get; set; }
        public Nullable<decimal> BruttoFaktury { get; set; }
    
        public virtual Przylacze Przylacze { get; set; }
        public virtual Taryfa Taryfa { get; set; }
        public virtual ICollection<PozycjaZuzycia> PozycjaZuzycia { get; set; }
    }
}
