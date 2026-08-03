import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 821` (irregular, indices [744]) — fast Q_i + fast irrListCert.
`ℓ = 6569`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 821) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6569) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_821 : FermatLastTheoremFor 821 :=
  fltPrimeWitnessFast 821 6569 3 [744]
    (by native_decide) (by native_decide)
end FltVandiver
