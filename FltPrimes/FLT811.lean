import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 811` (irregular, indices [544]) — fast Q_i + fast irrListCert.
`ℓ = 8111`, base `t = 11` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 811) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 8111) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_811 : FermatLastTheoremFor 811 :=
  fltPrimeWitnessFast 811 8111 11 [544]
    (by native_decide) (by native_decide)
end FltVandiver
