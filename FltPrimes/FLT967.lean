import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 967` (regular) — fast Q_i + fast irrListCert.
`ℓ = 15473`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 967) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 15473) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_967 : FermatLastTheoremFor 967 :=
  fltPrimeWitnessFast 967 15473 3 []
    (by native_decide) (by native_decide)
end FltVandiver
