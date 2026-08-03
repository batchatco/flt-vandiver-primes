import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 593` (irregular, indices [22]) — fast Q_i + fast irrListCert.
`ℓ = 1187`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 593) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1187) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_593 : FermatLastTheoremFor 593 :=
  fltPrimeWitnessFast 593 1187 2 [22]
    (by native_decide) (by native_decide)
end FltVandiver
