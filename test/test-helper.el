;;; test-helper.el --- Helper for tests              -*- lexical-binding: t; -*-

;; Copyright (C) 2016 Wilfred Hughes

;; Author:  <me@wilfred.me.uk>

;;; Code:

(require 'ert)
(require 'f)

(let ((refine-dir (f-parent (f-dirname (f-this-file)))))
  (add-to-list 'load-path refine-dir))

(require 'undercover)
(undercover "refs.el"
	    (:exclude "*-test.el")
	    (:report-file "/tmp/undercover-report.json"))

(provide 'test-helper)
;;; test-helper.el ends here
