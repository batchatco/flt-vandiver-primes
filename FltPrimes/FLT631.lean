import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 631` (irregular, indices [80, 226]) — fast Q_i + fast irrListCert.
`ℓ = 6311`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 631) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6311) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_631 : FermatLastTheoremFor 631 :=
  fltPrimeWitnessFast 631 6311 7 [80, 226]
    (by native_decide) (by native_decide)
end FltVandiver
