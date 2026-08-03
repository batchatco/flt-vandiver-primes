import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 257` (irregular, indices [164]) — fast Q_i + fast irrListCert.
`ℓ = 1543`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 257) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1543) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_257 : FermatLastTheoremFor 257 :=
  fltPrimeWitnessFast 257 1543 5 [164]
    (by native_decide) (by native_decide)
end FltVandiver
