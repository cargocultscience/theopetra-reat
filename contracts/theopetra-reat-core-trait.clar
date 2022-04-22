;; THEOPETRA CORE TRAIT

(define-trait theopetra-reat-core
  (

    (register-user ((optional (string-utf8 50)))
      (response bool uint)
    )

    (mine-tokens (uint (optional (buff 34)))
      (response bool uint)
    )

    (claim-mining-reward (uint)
      (response bool uint)
    )

    (stack-tokens (uint uint)
      (response bool uint)
    )

    (claim-stacking-reward (uint)
      (response bool uint)
    )

    (set-non-profit-wallet (principal)
      (response bool uint)
    )
    
    (shutdown-contract (uint)
      (response bool uint)
    )

  )
)
