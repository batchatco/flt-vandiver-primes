import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 647` (irregular, indices [236, 242, 554]) — fast Q_i + fast irrListCert.
`ℓ = 9059`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 647) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 9059) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_647 : FermatLastTheoremFor 647 :=
  fltPrimeWitnessFast 647 9059 2 [236, 242, 554]
    (by native_decide) (by native_decide)
end FltVandiver
