import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 503` (regular) — fast Q_i + fast irrListCert.
`ℓ = 3019`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 503) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 3019) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_503 : FermatLastTheoremFor 503 :=
  fltPrimeWitnessFast 503 3019 2 []
    (by native_decide) (by native_decide)
end FltVandiver
