import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 239` (regular) — fast Q_i + fast irrListCert.
`ℓ = 479`, base `t = 13` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 239) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 479) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_239 : FermatLastTheoremFor 239 :=
  fltPrimeWitnessFast 239 479 13 []
    (by native_decide) (by native_decide)
end FltVandiver
