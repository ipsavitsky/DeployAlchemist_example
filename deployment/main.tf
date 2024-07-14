locals {
  deployments = {
    fuji = {
      destination_chain = "FUJI"
      golem_address = "0x70C93925238071A28E509E62a93f2C8a41F8d88D"
      blockscout_link = ""
    }
    sepolia = {
      destination_chain = "SEPOLIA"
      golem_address = "0x24FDed18Ca16bDc1FdB04b5C0Ed36f12F98F63C8"
      blockscout_link = "https://eth-sepolia.blockscout.com/address"
    }
  }
}

module "contract" {
  for_each = local.deployments
  source = "git::https://github.com/ipsavitsky/DeployAlchemist.git"

  signer_mnemonic   = var.signer_mnemonic
  contract_abi_path = "../artifacts/contracts/Lock.sol/Hello.json"
  contract_inputs = [
    {
      "type_" = "uint"
      "value" = 1752357219
    }
  ]
  source_chain      = "ALFAJORES"
  destination_chain = each.value["destination_chain"]
  alchemist_address = "0x62710A99E1558332080681849184b21Fd7f16a18"
  golem_address     = each.value["golem_address"]
  blockscout_link   = each.value["blockscout_link"]
}
