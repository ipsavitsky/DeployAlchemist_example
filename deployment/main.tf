module "contract" {
  source = "git::https://github.com/ipsavitsky/DeployAlchemist"

  signer_mnemonic   = var.signer_mnemonic
  contract_abi_path = "../artifacts/contracts/Lock.sol:Lock"
  contract_inputs   = ["1752357219"]
  rpc_endpoint      = "https://ethereum-sepolia.publicnode.com"
  blockscout_link   = "https://eth-sepolia.blockscout.com/address"
}
