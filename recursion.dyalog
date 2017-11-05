:Namespace recursion
⍝ 2.0 - FACTORIAL
fac ← {⍵=0:1 ⋄ ⍵×∇⍵-1} 

⍝ 2.1 - FIBONACCI NUMBERS
fib ← {⍵=0:0 ⋄ ⍵=1:1 ⋄ (∇⍵-1) + ∇⍵-2}

⍝ 2.2 and 2.3 - PEANO ADDITION/MULTIPLICATION
succ ← {⍵ + 1} ⍝ define successor function
pre ← {⍵ - 1} ⍝ define predecessor function

padd ← {⍺=0:⍵ ⋄ (pre ⍺) ∇ succ ⍵}  ⍝ exc 2.2  
ptimes ← {⍺=0:0 ⋄ ⍵ padd (pre ⍺) ∇ ⍵} ⍝ exc 2.3

⍝ 2.5 - CANTOR SET
c←{⍵=0:0 0 0 ⋄ ⍵=1:1 0 1} ⍝ turns 0 into 0 0 0 and 1 into 1 0 1
Cantor←{⍵=0:1 ⋄ ∊c¨∇ ⍵-1} ⍝ gives the ⍵'th iteration of the Cantor set       

⍝ 2.6 - SIERPINSKI CARPET
carpet ← {⍵ = 0: 3 3 ⍴ 0 ⋄ ⍵ = 1: 3 3 ⍴ 1 1 1 1 0 1 1 1 1} ⍝ find the n + 1 matrix (or carpet) in the sequence given the n'th matrix
⍝ find the ⍵'th carpet in the sequence.  
SC ← {⍵=0: 1
      ⍵=1: carpet 1
      ⊃⍪/,/carpet¨ ∇ ⍵ - 1} ⍝ code on the right of carpet removes nesting around elements in the matrix
:EndNamespace

