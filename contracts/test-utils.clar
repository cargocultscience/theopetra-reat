
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FUNCTIONS ONLY USED DURING TESTS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; CPB TODO add eco system wallet tests here

;; test to attempt changing non profit wallet from an unapproved address
(define-public (test-wallet-attack)
  (contract-call? .theopetra-reat-core-v1 set-non-profit-wallet 'STFCVYY1RJDNJHST7RRTPACYHVJQDJ7R1DWTQHQA)
)

;; test to attempt changing non prrofit wallet from an unapproved address
(define-public (test-wallet-attack-as-contract)
  (contract-call? .theopetra-reat-core-v1 set-non-profit-wallet (as-contract tx-sender))
)

;; TODO: simulate setup of multiple miners
(define-public (test-multiple-miners)
  (ok true)
)
