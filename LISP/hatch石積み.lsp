;ハッチング
(defun c:hatr ()
  (command "-hatch" "P" "HEX" "4" "0" "T" "50" "DR" "B" "S" pause "" "") 
  (princ)
)