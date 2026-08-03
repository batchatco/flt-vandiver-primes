import FltPrimes.FLT16843

/-!
Axiom audit: FLT for the first Wolstenholme prime p = 16843.
Run with:  lake env lean AxiomAudit16843.lean
Via the Washington-9.5 route: the four fast Q_i slice modules
(FLT16843F1..F4) and the sgCert.
Expected axiom base: propext, Classical.choice, Quot.sound, plus the
generated per-certificate compiler-trust axioms
(fermatLastTheoremFor_16843._native.native_decide.ax_*).
-/

#print axioms FltVandiver.fermatLastTheoremFor_16843
