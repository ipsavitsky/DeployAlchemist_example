data "ethereum_eoa" "signer_account" {
  mnemonic = var.signer_mnemonic
}

resource "ethereum_contract_deployment" "deploy" {
  signer = data.ethereum_eoa.signer_account.signer

  artifact = "../artifacts/contracts/Lock.sol:Lock"

  input = [
    "1752357219"
  ]
}

