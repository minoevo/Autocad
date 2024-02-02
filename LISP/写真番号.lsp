;写真番号
(defun c:no ()
　(progn (setq no (getstring "No:") sc (getreal "Scale:")))
  (setq location (getpoint "\ncoordinate:"))
  (setq x (car location))
  (setq y (cadr location))
  (command "zoom" (list (- x (* sc 2.25)) (- y (* sc 2.25))) (list (+ x (* sc 2.25)) (+ y (* sc 2.25))))
;ポリゴン作成
  (command "polygon" "50" location "i" sc)
;ポリゴンをワイプアウトに変更
  (command "wipeout" "p" "l" "y")
;ワイプアウトを最前面にする
  (command "draworder" "l" "" "f")
;ワイプアウトの線を0.0にする
  (command "change" "l" "" "p" "lw" "0" "")
;円
  (command "circle" location  sc)
;写真番号
  (command "text" "J" "M" location  sc "0.0" no)
;XY座標分離
  (setq x (car location))
  (setq y (cadr location))
;矢印
  (command "pline" (list (+ sc x) y) (list (+ sc x (* 1.25 sc)) y) (list (- (+ sc x (* 1.25 sc)) (* 0.5 sc)) (- y (* (/ 1.5 4) sc))) (list (+ sc x (* 1.25 sc)) y) (list (- (+ sc x (* 1.25 sc)) (* 0.5 sc)) (+ y (* (/ 1.5 4) sc))) "")
;矢印回転
  (command "rotate" "l" "" location pause)
  (command "zoom" "p")
  (princ)
)