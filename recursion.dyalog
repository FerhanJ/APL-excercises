:Namespace recursion
⍝ 2.2 and 2.3 - PEANO ADDITION/MULTIPLICATION
succ ← {⍵ + 1} ⍝ define succession function
pre ← {⍵ - 1} ⍝ define precession function

padd ← {⍺=0:⍵ ⋄ (pre ⍺) ∇ succ ⍵}  ⍝ exc 2.2  
ptimes ← {⍺=0:0 ⋄ ⍵ padd (pre ⍺) ∇ ⍵} ⍝ exc 2.3

⍝ 2.5 - CANTOR SET
c←{⍵=0:0 0 0 ⋄ ⍵=1:1 0 1} ⍝ turns 0 into 0 0 0 and 1 into 1 0 1
Cantor←{⍵=0:1 ⋄ ∊c¨∇ ⍵-1} ⍝ gives the ⍵'th iteration of the Cantor set
:EndNamespace

