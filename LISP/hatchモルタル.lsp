;ハッチング
(defun c:hatm ()
  (command "-hatch" "P" "DOTS" "20" "0" "T" "50" "DR" "B" "S" pause "" "") 
  (princ)
)