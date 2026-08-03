import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 853` (regular) — fast Q_i + fast irrListCert.
`ℓ = 39239`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 853) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 39239) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_853 : FermatLastTheoremFor 853 :=
  fltPrimeWitnessFast 853 39239 7 []
    (by native_decide) (by native_decide)
end FltVandiver
