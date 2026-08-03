import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 547` (irregular, indices [270, 486]) — fast Q_i + fast irrListCert.
`ℓ = 5471`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 547) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5471) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_547 : FermatLastTheoremFor 547 :=
  fltPrimeWitnessFast 547 5471 7 [270, 486]
    (by native_decide) (by native_decide)
end FltVandiver
