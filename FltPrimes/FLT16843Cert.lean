import FltPrimes.FLT16843Inst
import FltPrimes.FLT16843F1
import FltPrimes.FLT16843F2
import FltPrimes.FLT16843F3
import FltPrimes.FLT16843F4
import FltVandiver.QiCertAppend

/-!
# The `p = 16843` light certificates + the `Q_i` assembly

`p = 16843` is the **first Wolstenholme prime** (`16843 ∣ B₁₆₈₄₀`, so
`irr(16843) = [16840]` with `16840 = p − 3`).  The `Q_i` certificate is
assembled here from the four fast (Fermat-reduced) slices `FLT16843F1`–`F4`
(`QiCertFast`); via the Washington-9.5 route it powers BOTH Vandiver and the
Case II descent.

Parameters: `ℓ = 370547 = 2·16843·11 + 1` (base `t = 2`), irregular index
`16840 = p − 3` (the Wolstenholme condition).

Because `p − 3` is itself irregular, the Kummer Case-I shortcut `(p−3) ∉ L`
is **false** here, so FLT16843 cannot use the per-prime template; Case I is
supplied by the Legendre/Sophie-Germain auxiliary prime (`caseI_of_sgCert`
at `q = 370547`) in `FLT16843.lean`.
-/

namespace FltVandiver

open NumberField FltVandiver.QiCert

-- NOTE: `irrListCert_16843` is intentionally omitted. The hand-assembled
-- `FLT16843` (Case I via `caseI_of_sgCert`, Case II via `caseII_92_top`) never
-- consumes the irregular-index list — that is only needed by the Kummer Case-I
-- *template* (`_of_certs_logMW`), which 16843 cannot use (`16840 = p−3 ∈ irr`).
-- Computing it (`native_decide` over exact-rational Bernoulli numbers) costs days
-- and is pure dead weight here.

/-- The four slices, bridged from the fast (Fermat-reduced) certificates. -/
theorem vandiverCert_16843_s1 :
    QiCert.vandiverCert 16843 370547 2
      (((evenIndices 16843).drop 0).take 2105) = true :=
  QiCert.vandiverCert_of_fast vandiverCertFast_16843_s1

theorem vandiverCert_16843_s2 :
    QiCert.vandiverCert 16843 370547 2
      (((evenIndices 16843).drop 2105).take 2105) = true :=
  QiCert.vandiverCert_of_fast vandiverCertFast_16843_s2

theorem vandiverCert_16843_s3 :
    QiCert.vandiverCert 16843 370547 2
      (((evenIndices 16843).drop 4210).take 2105) = true :=
  QiCert.vandiverCert_of_fast vandiverCertFast_16843_s3

theorem vandiverCert_16843_s4 :
    QiCert.vandiverCert 16843 370547 2
      (((evenIndices 16843).drop 6315).take 2105) = true :=
  QiCert.vandiverCert_of_fast vandiverCertFast_16843_s4

/-- The `Q_i` certificate fires at every even index of `16843` (slice assembly). -/
theorem vandiverCert_all_16843 :
    QiCert.vandiverCert 16843 370547 2 (evenIndices 16843) = true := by
  refine vandiverCert_of_slices (w := 2105) (n := 4) (by norm_num) ?_ ?_
  · simp [QiCert.evenIndices]
  · intro j hj
    interval_cases j
    · exact vandiverCert_16843_s1
    · exact vandiverCert_16843_s2
    · exact vandiverCert_16843_s3
    · exact vandiverCert_16843_s4

/-- **`IsVandiverPrime 16843` is a theorem.** -/
theorem isVandiverPrime_16843 : IsVandiverPrime 16843 :=
  qiVandiverBridge_all vandiverCert_all_16843

end FltVandiver
