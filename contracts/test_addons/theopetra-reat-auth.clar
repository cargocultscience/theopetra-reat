
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FUNCTIONS ONLY USED DURING TESTS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-public (test-initialize-contracts (coreContract <coreTrait>))
  (let
    (
      (coreContractAddress (contract-of coreContract))
    )
    ;; (asserts! (is-eq contract-caller CONTRACT_OWNER) (err ERR_UNAUTHORIZED))
    (asserts! (not (var-get initialized)) (err ERR_UNAUTHORIZED))
    (map-set CoreContracts
      coreContractAddress
      {
        state: STATE_DEPLOYED,
        startHeight: u0,
        endHeight: u0
      })
    (try! (contract-call? coreContract set-non-profit-wallet (var-get nonProfitWallet)))
    (try! (contract-call? coreContract set-eco-system-wallet (var-get ecoSystemWallet)))
    (var-set initialized true)
    (ok true)
  )
)

(define-public (test-set-active-core-contract)
  (ok (var-set activeCoreContract .theopetra-reat-core-v1))
)
