;ハッチング
(defun c:hat ()
  (progn (setq s (getstring "ハッチング種を選択して下さい。ブロック関係(b)・コンクリート関係(c)・石積み(r)・モルタル(m)・じゃかご(j)。kinds:")))
  (cond
      ((= s "b") (command "-hatch" "P" "NET" "10" "0" "T" "50" "DR" "B" "CO" "BYLAYER" "" "S" pause "" ""))
      ((= s "c") (command "-hatch" "P" "AR-CONC" "0.3" "0" "T" "50" "DR" "B" "CO" "BYLAYER" "" "S" pause "" ""))
      ((= s "r") (command "-hatch" "P" "HEX" "4" "0" "T" "50" "DR" "B" "CO" "BYLAYER" "" "S" pause "" ""))
      ((= s "m") (command "-hatch" "P" "DOTS" "20" "0" "T" "50" "DR" "B" "CO" "BYLAYER" "" "S" pause "" ""))
      ((= s "j") (command "-hatch" "P" "GRAVEL" "2" "0" "T" "50" "DR" "B" "CO" "BYLAYER" "" "S" pause "" ""))
  )
  (princ)
)