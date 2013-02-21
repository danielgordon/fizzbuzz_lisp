(defun fizz (n)
  (if (= 0 (mod n 3)) 
      "fizz"
      ""))

(defun buzz (n)
  (if (= 0 (mod n 5)) 
      "buzz"
      ""))

(defun fizzbuzz (n)
  (let 
      ((fb-string (concatenate 'string (fizz n) (buzz n))))
    (if (string-equal fb-string "")
	n
	fb-string)))

(defun fizzbuzz-problem ()
  (format t "~{~a~^~% ~}"
	  (mapcar #'fizzbuzz (loop for i from 1 to 100 collect i))))