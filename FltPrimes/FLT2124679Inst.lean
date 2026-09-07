import Mathlib.Tactic.NormNum.Prime
import FltVandiver.Prop818Bridge

/-! `p = 2124679` (second Wolstenholme prime): primality / NeZero instances shared
by the certificate modules. The `Q_i` auxiliary prime is `ℓ = 446182591 = 210p + 1`
(with `t = 2`); the Legendre/Sophie-Germain auxiliary prime is `q = 135979457 = 64p + 1`. -/

namespace FltVandiver

instance fact_prime_2124679 : Fact (Nat.Prime 2124679) := ⟨by norm_num⟩
instance fact_prime_135979457 : Fact (Nat.Prime 135979457) := ⟨by norm_num⟩
instance fact_prime_446182591 : Fact (Nat.Prime 446182591) := ⟨by norm_num⟩
instance neZero_135979457 : NeZero (135979457 : ℕ) := ⟨by norm_num⟩

end FltVandiver
