import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 401` (irregular, indices [382]) — fast Q_i + fast irrListCert.
`ℓ = 10427`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 401) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 10427) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_401 : FermatLastTheoremFor 401 :=
  fltPrimeWitnessFast 401 10427 2 [382]
    (by native_decide) (by native_decide)
end FltVandiver
