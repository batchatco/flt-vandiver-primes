import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 953` (irregular, indices [156]) — fast Q_i + fast irrListCert.
`ℓ = 1907`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 953) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1907) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_953 : FermatLastTheoremFor 953 :=
  fltPrimeWitnessFast 953 1907 2 [156]
    (by native_decide) (by native_decide)
end FltVandiver
