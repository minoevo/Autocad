;走向傾斜片理面
(defun c:hen ()
  ;(progn (setq s (getstring "走向傾斜の種類を選択して下さい。片理面(h)・節理面(se)・層理面(so)・断層面(d)。kinds:")))
  (progn (setq so (getreal "走向:")))
  (progn (setq sd (getstring "EW:")))
  (progn (setq ke (getreal "傾斜:")))
  (progn (setq kd (getstring "EWNS:")))
  (progn (setq sc (getreal "Scale:")))
  (setq location (getpoint "\ncoordinate:"))
  (setq x (car location))
  (setq y (cadr location))
  (command "zoom" (list (- x (* sc 3.5)) (- y (* sc 3.5))) (list (+ x (* sc 3.5)) (+ y (* sc 3.5))))
  (command "_pline" (list x (- y (* sc 0.725))) (list x (+ y (* sc 0.725))) (list (+ (* sc 1.05) x) y) "c")
  (cond
      ((= (strcase sd) "E") (command "_rotate" "l" "" location (- 360 so)))
      ((= (strcase sd) "W") (command "_rotate" "l" "" location so))
  )
  (command "_line" (list x (+ y (* sc 3.5))) (list x (- y (* sc 3.5))) "")
  (cond
      ((= (strcase sd) "E") (command "_rotate" "l" "" location (- 360 so)))
      ((= (strcase sd) "W") (command "_rotate" "l" "" location so))
  )
  (command "zoom" "p")
  (command "text" "J" "M" location  (* sc 1.7) "0.0" (strcat "N" (rtos so 2 0) (strcase sd)))
  (command "_move" "l" "" location pause)
  (command "text" "J" "M" location  (* sc 1.7) "0.0" (strcat (rtos ke 2 0) (strcase kd)))
  (command "_move" "l" "" location pause)
  (princ)
)