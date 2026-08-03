import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 197` (regular) — fast Q_i + fast irrListCert.
`ℓ = 4729`, base `t = 17` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 197) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4729) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_197 : FermatLastTheoremFor 197 :=
  fltPrimeWitnessFast 197 4729 17 []
    (by native_decide) (by native_decide)
end FltVandiver
