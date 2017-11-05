:Namespace recursion
⍝ 2.2 - PEANO ADDITION

⍝ Define successor and predecessor functions
succ ← {⍵ + 1}
pre ← {⍵ - 1}

padd ← {⍺=0:⍵ ⋄ (pre ⍺) ∇ succ ⍵}
 
⍝ 2.3 - PEANO MULTIPLICATION   

ptimes ← {⍺=0:0 ⋄ ⍵ padd (pre ⍺) ∇ ⍵} 

⍝ CANTOR SET
c←{⍵=0:0 0 0 ⋄ ⍵=1:1 0 1} ⍝ Turns 0 into 0 0 0 and 1 into 1 0 1
Cantor←{⍵=0:1 ⋄ ∊c¨∇ ⍵-1} ⍝ Gives the ⍵'th iteration of the cantor set
:EndNamespace

