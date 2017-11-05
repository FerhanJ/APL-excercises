:Namespace recursion
⍝ 2.2 and 2.3 - PEANO ADDITION/MULTIPLICATION
⍝ Define addition and subtraction operators
succ ← {⍵ + 1}
pre ← {⍵ - 1}
⍝ Excercises 2.3 and 2.4
padd ← {⍺=0:⍵ ⋄ (pre ⍺) ∇ succ ⍵}    
ptimes ← {⍺=0:0 ⋄ ⍵ padd (pre ⍺) ∇ ⍵}

⍝ 2.5 - CANTOR SET
c←{⍵=0:0 0 0 ⋄ ⍵=1:1 0 1} ⍝ Turns 0 into 0 0 0 and 1 into 1 0 1
Cantor←{⍵=0:1 ⋄ ∊c¨∇ ⍵-1} ⍝ Gives the ⍵'th iteration of the Cantor set
:EndNamespace

