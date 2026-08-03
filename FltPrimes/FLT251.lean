import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 251` (regular) — fast Q_i + fast irrListCert.
`ℓ = 4519`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 251) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4519) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_251 : FermatLastTheoremFor 251 :=
  fltPrimeWitnessFast 251 4519 3 []
    (by native_decide) (by native_decide)
end FltVandiver
