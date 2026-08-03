import Mathlib.Tactic.NormNum.Prime
import FltVandiver.Prop818Bridge

/-! `p = 16843` (first Wolstenholme prime): primality / NeZero instances shared by the
certificate modules. -/

namespace FltVandiver

instance fact_prime_16843 : Fact (Nat.Prime 16843) := ⟨by norm_num⟩
instance fact_prime_370547 : Fact (Nat.Prime 370547) := ⟨by norm_num⟩
instance neZero_370547 : NeZero (370547 : ℕ) := ⟨by norm_num⟩

end FltVandiver
