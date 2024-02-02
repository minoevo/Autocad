;ハッチング
(defun c:hatc ()
  (command "-hatch" "P" "AR-CONC" "0.3" "0" "T" "50" "DR" "B" "S" pause "" "") 
  (princ)
)