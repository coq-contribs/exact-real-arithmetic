Require Import ZArith.
Require Import Reals.


Lemma Zodd_div2_bis :
 forall x : Z, (x <= 0)%Z -> Zeven.Zodd x -> x = (2 * Zeven.Zdiv2 x - 1)%Z.

Proof.
destruct x.
intros.
absurd (Zeven.Zodd 0); red in |- *; auto with arith.
intros; absurd (Zpos p <= 0)%Z; red in |- *; auto with real.
destruct p; auto with arith.
intros.
absurd (Zeven.Zodd (Zneg (xO p))); red in |- *; auto with real.
Qed.

Hint Resolve Zodd_div2_bis: arith.