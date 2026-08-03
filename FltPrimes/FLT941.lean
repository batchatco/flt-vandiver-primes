import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 941` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5647`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 941) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5647) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_941 : FermatLastTheoremFor 941 :=
  fltPrimeWitnessFast 941 5647 3 []
    (by native_decide) (by native_decide)
end FltVandiver
