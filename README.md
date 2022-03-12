# dotfiles
My dotfiles. The sections just make sense to me, sorry if something is weird.


## Before run instalation process
Before start the process you need import your GPG key from your old computer. That is necessary because we will use `https://git-secret.io/` to recover your keys (and sync secrets between those computers).

You can run in your old computer the follow commands:
```
gpg --export-secret-keys 138854FEBA77E68C1564E0A054FC060B18A98A4A > private.key
```

This will export your key, you can use [ngrok](https://ngrok.com/download) and [Simple Python server](https://www.hackerearth.com/practice/notes/simple-http-server-in-python/) to share the key.

On the new computer you should run `gpg --import private.key` and use your password to import (check your lastpass).

Reference: [GPG: Extract private key and import on different machine](https://makandracards.com/makandra-orga/37763-gpg-extract-private-key-and-import-on-different-machine)


## Ready to go!
To install, just run `./install` in the root. If is a work computer, you can run `./install work` to run the work profile too.

We use [dotbot](https://github.com/anishathalye/dotbot) to manager.

All secrets are stored in [dotfiles-secrets](https://github.com/angeliski/dotfiles-secrets) (private and encrypted)