import FltPrimes.FLT16843Inst
import FltVandiver.QiCertFast2

/-!
# The `p = 16843` light certificates + the `Q_i` assembly

`p = 16843` is the **first Wolstenholme prime** (`16843 ∣ B₁₆₈₄₀`, so
`irr(16843) = [16840]` with `16840 = p − 3`).  The `Q_i` certificate is
one `native_decide` call of the machine-speed evaluator (`QiEvalFast`,
bridged to `vandiverCert` by `QiCert.Fast2.vandiverCert_of_fast2`); via the
Washington-9.5 route it powers BOTH Vandiver and the Case II descent.

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

/-- The `Q_i` certificate fires at every even index of `16843`. -/
theorem vandiverCert_all_16843 :
    QiCert.vandiverCert 16843 370547 2 (evenIndices 16843) = true :=
  QiCert.Fast2.vandiverCert_of_fast2 (by native_decide)

end FltVandiver
