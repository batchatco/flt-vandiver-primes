import FltPrimes.FLT2124679Cert
import FltPrimes.Witness

/-!
# Fermat's Last Theorem for `p = 2124679` — the second Wolstenholme prime

* **Case II** — the Washington-9.5 small-witness descent, powered by the `Q_i`
  slices that prove Vandiver (`vandiverCert_all_2124679`, at
  `ℓ = 446182591 = 210p + 1 < p² − p`, `t = 2`).
* **Case I** — the Legendre auxiliary prime `q = 135979457` via the
  subgroup-form certificate (the 64 nonzero `p`-th-power residues supplied as
  data and re-verified by `native_decide`).

Three standard axioms + `17` `native_decide` certificates
(`16` `Q_i` slices + `sgCertSub`); zero named mathematical axioms.
-/

namespace FltVandiver

/-- The 64 nonzero `p`-th power residues mod `q = 135979457` (the subgroup of order
`(q−1)/p` in `(ZMod q)ˣ`), computed externally; `sgCertSub` re-verifies everything
claimed about them. -/
def res2124679 : List (ZMod 135979457) :=
  [1, 1723310, 3210651, 6015220, 8597665, 9933710, 11518735, 15543027, 16846365,
   17768881, 19270240, 21717696, 23375752, 25001784, 31178107, 32126372, 33167281,
   33735226, 38044187, 38285009, 42288525, 48249002, 50832455, 51539404, 53537305,
   57130520, 59585177, 63249822, 63844662, 65827316, 65899467, 67742024, 68237433,
   70079990, 70152141, 72134795, 72729635, 76394280, 78848937, 82442152, 84440053,
   85147002, 87730455, 93690932, 97694448, 97935270, 102244231, 102812176, 103853085,
   104801350, 110977673, 112603705, 114261761, 116709217, 118210576, 119133092,
   120436430, 124460722, 126045747, 127381792, 129964237, 132768806, 134256147,
   135979456]

theorem sgCertSub_2124679 : sgCertSub 2124679 135979457 64 res2124679 = true := by
  native_decide

/-- **FLT for `p = 2124679`.** -/
theorem fermatLastTheoremFor_2124679 : FermatLastTheoremFor 2124679 :=
  fltPrimeWitnessSGSub 2124679 446182591 2 135979457 64
    vandiverCert_all_2124679 sgCertSub_2124679

end FltVandiver
