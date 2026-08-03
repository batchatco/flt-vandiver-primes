import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 131` (irregular, indices [22]) — fast Q_i + fast irrListCert.
`ℓ = 1049`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 131) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1049) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_131 : FermatLastTheoremFor 131 :=
  fltPrimeWitnessFast 131 1049 3 [22]
    (by native_decide) (by native_decide)
end FltVandiver
