import FltPrimes.FLT2124679Inst
import FltPrimes.FLT2124679F01
import FltPrimes.FLT2124679F02
import FltPrimes.FLT2124679F03
import FltPrimes.FLT2124679F04
import FltPrimes.FLT2124679F05
import FltPrimes.FLT2124679F06
import FltPrimes.FLT2124679F07
import FltPrimes.FLT2124679F08
import FltPrimes.FLT2124679F09
import FltPrimes.FLT2124679F10
import FltPrimes.FLT2124679F11
import FltPrimes.FLT2124679F12
import FltPrimes.FLT2124679F13
import FltPrimes.FLT2124679F14
import FltPrimes.FLT2124679F15
import FltPrimes.FLT2124679F16
import FltVandiver.QiCertAppend

/-!
# The `p = 2124679` `Q_i` certificate: slice assembly

`16` slices of width `66397` cover the `1062338` even indices, each one
`native_decide` call of the machine-speed evaluator (`QiEvalFast`) bridged to
`vandiverCert`; `vandiverCert_of_slices` reassembles the full-list certificate.
-/

namespace FltVandiver

/-- The `Q_i` certificate fires at every even index of `2124679`. -/
theorem vandiverCert_all_2124679 :
    QiCert.vandiverCert 2124679 446182591 2 (QiCert.evenIndices 2124679) = true := by
  refine vandiverCert_of_slices (w := 66397) (n := 16) (by norm_num) ?_ ?_
  · simp [QiCert.evenIndices]
  · intro j hj
    interval_cases j
    · exact vandiverCert_2124679_s01
    · exact vandiverCert_2124679_s02
    · exact vandiverCert_2124679_s03
    · exact vandiverCert_2124679_s04
    · exact vandiverCert_2124679_s05
    · exact vandiverCert_2124679_s06
    · exact vandiverCert_2124679_s07
    · exact vandiverCert_2124679_s08
    · exact vandiverCert_2124679_s09
    · exact vandiverCert_2124679_s10
    · exact vandiverCert_2124679_s11
    · exact vandiverCert_2124679_s12
    · exact vandiverCert_2124679_s13
    · exact vandiverCert_2124679_s14
    · exact vandiverCert_2124679_s15
    · exact vandiverCert_2124679_s16

end FltVandiver
