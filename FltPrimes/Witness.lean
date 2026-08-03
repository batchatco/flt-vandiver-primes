import FltVandiver.CaseII95Descent
import FltVandiver.QiCertFast
import FltVandiver.SophieGermain
import CyclotomicNT.IrrListCertFast

/-!
# One-line per-prime FLT witness (Washington 9.5 route)

`fltPrimeWitnessFast p ℓ t L` proves `FermatLastTheoremFor p` from TWO
`native_decide` certificates: the Fermat-reduced `Q_i` certificate at the
auxiliary pair `(ℓ, t)` (with `ℓ < p² − p`, checked by `norm_num`) and the
irregular-index list with `p − 3` regular:

```
theorem fermatLastTheoremFor_101 : FermatLastTheoremFor 101 :=
  fltPrimeWitnessFast 101 809 3 [68] (by native_decide) (by native_decide)
```

(Wolstenholme primes — where `p − 3` is itself irregular — cannot use this
template; see `FLT16843.lean` for the Sophie-Germain Case I assembly.)
-/

namespace FltVandiver

open NumberField CyclotomicNT QiCert

theorem fltPrimeWitness (p ℓ : ℕ) (L : List ℕ)
    [Fact p.Prime] [Fact ℓ.Prime]
    (hQi : QiCert.vandiverCert p ℓ 2 (evenIndices p) = true)
    (hirr : QiCert.irrListCert p L = true)
    (hp5 : 5 ≤ p := by norm_num)
    (hsize : ℓ < p * p - p := by norm_num)
    (hfree : (p - 3) ∉ L := by decide) :
    FermatLastTheoremFor p :=
  Descent95.fermatLastTheoremFor_of_certs_95 hp5 hQi hsize hirr hfree

/-- Fast variant: the Fermat-reduced `vandiverCertFast` and `irrListCertFast`
certificates — what every per-prime file uses. `t` must be a primitive root
mod `ℓ` so every factor `t^(k·b) − 1` is nonzero. -/
theorem fltPrimeWitnessFast (p ℓ t : ℕ) (L : List ℕ)
    [Fact p.Prime] [Fact ℓ.Prime]
    (hQiF : QiCert.vandiverCertFast p ℓ t (evenIndices p) = true)
    (hirrF : QiCert.irrListCertFast p L = true)
    (hp5 : 5 ≤ p := by norm_num)
    (hsize : ℓ < p * p - p := by norm_num)
    (hfree : (p - 3) ∉ L := by decide) :
    FermatLastTheoremFor p :=
  Descent95.fermatLastTheoremFor_of_certs_95 hp5
    (QiCert.vandiverCert_of_fast hQiF) hsize
    (QiCert.irrListCert_of_fast hp5 hirrF) hfree

/-- **The Wolstenholme template** (subgroup-form Case I): for the primes where
`p − 3` is itself irregular (`p ∣ B_{p−3}`) and Kummer's Case I criterion is
unavailable, Case I comes from a Legendre auxiliary prime `q`, its
`n = (q−1)/p` nonzero `p`-th-power residues supplied as a list and verified in
`O(n²)` by `sgCertSub` (never enumerating `ZMod q`). -/
theorem fltPrimeWitnessSGSub (p ℓ t q n : ℕ) {l : List (ZMod q)}
    [Fact p.Prime] [Fact ℓ.Prime] [Fact q.Prime] [NeZero q]
    (hQi : QiCert.vandiverCert p ℓ t (evenIndices p) = true)
    (hsub : sgCertSub p q n l = true)
    (hp5 : 5 ≤ p := by norm_num)
    (hsize : ℓ < p * p - p := by norm_num) :
    FermatLastTheoremFor p :=
  Descent95.fermatLastTheoremFor_of_certs_95' hp5 hQi hsize
    (fun a b c hcase => by
      obtain ⟨hA, hB⟩ := sgCertSub_imp hsub
      exact caseI_of_auxiliaryPrime
        ((Fact.out : p.Prime).odd_of_ne_two (by omega)) (Fact.out : q.Prime)
        hA hB hcase)

end FltVandiver
