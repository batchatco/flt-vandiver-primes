import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 673` (irregular, indices [408, 502]) — fast Q_i + fast irrListCert.
`ℓ = 2693`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 673) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 2693) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_673 : FermatLastTheoremFor 673 :=
  fltPrimeWitnessFast 673 2693 2 [408, 502]
    (by native_decide) (by native_decide)
end FltVandiver
