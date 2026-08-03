import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 71` (regular) — fast Q_i + fast irrListCert.
`ℓ = 569`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 71) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 569) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_71 : FermatLastTheoremFor 71 :=
  fltPrimeWitnessFast 71 569 3 []
    (by native_decide) (by native_decide)
end FltVandiver
