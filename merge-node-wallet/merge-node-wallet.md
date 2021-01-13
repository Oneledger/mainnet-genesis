# Instructions to merge node wallet
This documentation explains how to merge node wallet from an old node to current node.
> The procedure requires the specific merge tool `olmerge` provided to you in this documentation

## Before merging
1. Stop both old and current node and backup credentials
    - You can follow [this](https://github.com/Oneledger/protocol/wiki/How-to-Kill-the-Olfullnode-Process-and-Backup-Credentials-v0.16.3)
    - If you are using docker, stop containers and follow [this](https://github.com/Oneledger/protocol/wiki/Backup-your-keys-v0.16.3(Docker-version))

2. Locate old node's wallet

   Make sure both nodes are killed, and go to the old node's folder, here we will refer it as `PATH_OF_OLD_NODE`, and the structure of such folder will looks like below:
    ```
    config.toml  consensus  consensus.log  keystore  nodedata
    ```
    The `accounts.db` located in `nodedata` folder is the one we want to merge from.

3. Get merge tool
   Here we will go to the node folder for new/current node, it will be referred as `PATH_OF_NEW_NODE`. Add `sudo` before commands if there is any permission issue.
   ```
   cd PATH_OF_NEW_NODE
   wget https://raw.githubusercontent.com/Oneledger/kratos-genesis/master/merge-node-wallet/olmerge
   chmod +x olmerge
   ```

4. Merge node wallets
   ```
   cd PATH_OF_NEW_NODE
   ./olmerge --old PATH_OF_OLD_NODE/nodedata
   ```
   The result will look similar as below:
   ```
    I[2021-01-13T10:48:28-05:00] storage: Getting cleveldb...
    Accounts in old wallet:
    Address:  0lt179fd5afe29659431c2b30ee6567bca2244297e2
    Totally  1  accounts in old wallet
    I[2021-01-13T10:48:28-05:00] storage: Getting cleveldb...
    Accounts in new wallet before merging:
    Address:  0lt7328bcfc30c0eb4f3035b0cb57c12415e2c37c50
    Totally  1  accounts in new wallet before merging
    Accounts in new wallet after merging:
    Address:  0lt7328bcfc30c0eb4f3035b0cb57c12415e2c37c50
    Address:  0lt179fd5afe29659431c2b30ee6567bca2244297e2
    Totally  2  accounts in new wallet after merging

   ```

5. Check results after merging
   Start the new node, and list all the accounts:
   ```
   olclient list
   ```
   The accounts from both node wallets prior merging should appear under `Accounts from Node Wallet` like below:
   ```
    Accounts from Node Wallet:
    Address: 0lt7328bcfc30c0eb4f3035b0cb57c12415e2c37c50    Balance: 111111111.111111111111111111 OLT 

    Address: 0lt179fd5afe29659431c2b30ee6567bca2244297e2    Balance: 111111111.111111111111111111 OLT
   ```
