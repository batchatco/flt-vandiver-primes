import FltPrimes.FLT16843Cert
import FltPrimes.Witness

/-!
# Fermat's Last Theorem for `p = 16843` — UNCONDITIONAL, via Washington 9.5

The **first Wolstenholme prime** (`16843 ∣ B₁₆₈₄₀`).  Because `16840 = p − 3`
is *itself* the irregular index, the Kummer Case-I shortcut fails and this
file is hand-assembled:

* **Case II** — the Washington-9.5 small-witness descent
  (`Descent95.fermatLastTheoremFor_of_certs_95'`), powered by the same four
  fast `Q_i` slices that prove Vandiver (`vandiverCert_all_16843`,
  `ℓ = 370547 < p² − p`).
* **Case I** — the Legendre/Sophie-Germain auxiliary prime `q = 370547`
  (`caseI_of_sgCert`).

Three standard axioms + five `native_decide` certificates (four `Q_i` slices
+ `sgCert`); zero named mathematical axioms.
-/

namespace FltVandiver

/-- The 22 nonzero `p`-th power residues mod `q = 370547` (the subgroup of
order `(q−1)/p` in `(ZMod q)ˣ`), computed externally; `sgCertSub` re-verifies
everything claimed about them. -/
def res16843 : List (ZMod 370547) :=
  [1, 26418, 46385, 50923, 64023, 137870, 143197, 170723, 172343,
   173770, 183106, 187441, 196777, 198204, 199824, 227350, 232677, 306524,
   319624, 324162, 344129, 370546]

/-- The Sophie-Germain/Legendre auxiliary certificate at `q = 370547`,
subgroup form. -/
theorem sgCertSub_16843 : sgCertSub 16843 370547 22 res16843 = true := by
  native_decide

/-- **FLT for `p = 16843`.** -/
theorem fermatLastTheoremFor_16843 : FermatLastTheoremFor 16843 :=
  fltPrimeWitnessSGSub 16843 370547 2 370547 22
    vandiverCert_all_16843 sgCertSub_16843

end FltVandiver
