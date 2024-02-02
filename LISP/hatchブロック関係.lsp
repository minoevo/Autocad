;ハッチング
(defun c:hatb ()
  (command "-hatch" "P" "NET" "10" "0" "T" "50" "DR" "B" "S" pause "" "") 
  (princ)
)