(defhydra hydra-vhdl (:color blue :hint nil)
       "
     _b_: Beautify        _s_: set Tcl file        _t_: build tags table
     _c_: Compile(ghdl)   _S_: Simulate modelsim   _C_: Clear directory
     "
       ("b" (vhdl-beautify-buffer))
       ("c" (compile-vhdl-ghdl))
       ("s" (find-set-tcl-file))
       ("S" (sim-vhdl))
       ("t" (build-ctags-vhdl))
       ("C" (clear-all-vhdl)))

     ;; bind hydra to vhdl mode
     (add-hook 'vhdl-mode-hook
	       (lambda () (local-set-key (kbd "<f8>") 'hydra-vhdl/body)))
