;ハッチング
(defun c:hatj ()
  (command "-hatch" "P" "GRAVEL" "2" "0" "T" "50" "DR" "B" "S" pause "" "") 
  (princ)
)