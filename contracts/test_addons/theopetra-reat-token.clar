
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FUNCTIONS ONLY USED DURING TESTS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-public (test-mint (amount uint) (recipient principal))
  (ft-mint? theopetra-reat amount recipient)
)

(define-public (test-set-token-activation)
  (ok (var-set tokenActivated true))
)
