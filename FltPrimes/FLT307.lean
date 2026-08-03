import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 307` (irregular, indices [88]) — fast Q_i + fast irrListCert.
`ℓ = 1229`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 307) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1229) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_307 : FermatLastTheoremFor 307 :=
  fltPrimeWitnessFast 307 1229 2 [88]
    (by native_decide) (by native_decide)
end FltVandiver
