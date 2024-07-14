# Sample Hardhat Project for DeployAlchemist

First, build the project

``` shell
npx hardhat compile
```

After getting all the needed deploy artifacts, head to deploy area and create a `tfvars` file with your original deployer's mnemonic key

``` shell
cd deployment/
cat <<EOF > test.tfvars
signer_mnemonic = "<your mnemonic>"
rpc_endpoint = "<your endpoint rpc>"
EOF
```

After you've done that, you are free to run terraform

``` shell
terraform init
terraform validate
terraform plan -var-file test.tfvars
terraform apply -var-file test.tfvars
```

This weill deploy the compiled contract with the architecture, defined in the [DeployAlchemist](https://github.com/ipsavitsky/DeployAlchemist) repo

## Related projects

DeployAlchemist Terraform module: https://github.com/ipsavitsky/DeployAlchemist


DeployAlchemist crosschain contracts: https://github.com/vovunku/DeployAlchemistContracts

