module peano where

data ℕ : Set where
    zero : ℕ
    suc  : ℕ → ℕ

_+_ : ℕ → ℕ → ℕ
zero + zero = zero
zero + n    = n
(suc n) + n′ = suc (n + n′)  -- use \' to input ′.


data _even : ℕ → Set where
ZERO : zero even
STEP : ∀ x → x even → suc (suc x) even

-- \_1 to type ₁
proof₁ : suc (suc (suc (suc zero))) even
proof₁ = STEP (suc (suc zero)) (STEP zero ZERO)
