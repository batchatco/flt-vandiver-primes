import FltPrimes.FLT2124679

/-!
Axiom audit: FLT for the second Wolstenholme prime p = 2124679.
Run with:  lake env lean AxiomAudit2124679.lean
Via the Washington-9.5 route: the 64 fast Q_i slice modules
(FLT2124679F01..F64) and the subgroup-form sgCert.
Expected axiom base: propext, Classical.choice, Quot.sound, plus 65
generated per-certificate compiler-trust axioms -- one per certificate piece:
the 64 Q_i slices (vandiverCertFast_2124679_s01..s64) and the
subgroup-form Sophie-Germain certificate (sgCertSub_2124679). No sorryAx.
-/

#print axioms FltVandiver.fermatLastTheoremFor_2124679
