:Namespace peano
⍝ Define addition and subtraction operators
succ ← {⍵ + 1}
pre ← {⍵ - 1}
⍝ Excercises 2.3 and 2.4
padd ← {⍺=0:⍵ ⋄ (pre ⍺) ∇ succ ⍵}    
ptimes ← {⍺=0:0 ⋄ ⍵ padd (pre ⍺) ∇ ⍵} 
:EndNamespace

