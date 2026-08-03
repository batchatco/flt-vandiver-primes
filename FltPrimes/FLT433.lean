import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 433` (irregular, indices [366]) — fast Q_i + fast irrListCert.
`ℓ = 5197`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 433) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5197) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_433 : FermatLastTheoremFor 433 :=
  fltPrimeWitnessFast 433 5197 7 [366]
    (by native_decide) (by native_decide)
end FltVandiver
