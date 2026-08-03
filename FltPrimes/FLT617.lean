import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 617` (irregular, indices [20, 174, 338]) — fast Q_i + fast irrListCert.
`ℓ = 30851`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 617) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 30851) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_617 : FermatLastTheoremFor 617 :=
  fltPrimeWitnessFast 617 30851 2 [20, 174, 338]
    (by native_decide) (by native_decide)
end FltVandiver
