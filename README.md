# Workspace Dotfiles Breakdown

**Evan Marshall**

- [Profile](https://github.com/evanMarshallTheBay 'Evan Marshall')
- [Email](mailto:evan.marshall@thebay.com?subject=Hi% 'Hi!')
- [Website](https://www.thebay.com/ 'Welcome')

## Steps

### 1. Install Homebrew

First, check that you have Xcode installed `xcode-select --install` in terminal, then run:
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### 2. Install NVM & Configure Node

`brew install nvm`
Create an .nvm directory:
`mkdir ~/.nvm`
Add these lines to .zshrc:

<pre>
  export NVM_DIR=~/.nvm <br>
  source $(brew --prefix nvm)/nvm.sh`
</pre>

Now quit and reopen terminal.
`nvm install node`
`nvm use node`
Check that node and nvm are installed correctly:
`nvm -v && node -v`

### 3. Install Yarn

`npm install -g yarn`
Check that yarn is installed correctly:
`yarn -v`

### 4. Install Git & Create SSH Keys

`brew install git`
`ssh-keygen -t ed25519 -C "your_email@example.com"`
Accept default file path and passphrase.
Start SSH agent in background:
`eval "$(ssh-agent -s)"`
Check if a config file is created and if not, create one:
`open ~/.ssh/config`
AND/OR:
`touch ~/.ssh/config`
Add the following to config:

<pre>
  Host * <br>
  &nbsp;&nbsp;AddKeysToAgent yes <br>
  &nbsp;&nbsp;UseKeychain yes <br>
  &nbsp;&nbsp;IdentityFile ~/.ssh/id_ed25519
</pre>

Add SSH private key to SSH agent and store passphrase in keychain:
`ssh-add -K ~/.ssh/id_ed25519`
Add public key to GitHub account:
`pbcopy < ~/.ssh/id_ed25519.pub`
Then go to GitHub profile>settings>SSH and GPG keys.
Add new SSH Key>Title i.e. "Work MacBook Pro" and paste key into "key" field.
