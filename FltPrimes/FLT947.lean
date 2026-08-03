import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 947` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5683`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 947) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5683) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_947 : FermatLastTheoremFor 947 :=
  fltPrimeWitnessFast 947 5683 2 []
    (by native_decide) (by native_decide)
end FltVandiver
