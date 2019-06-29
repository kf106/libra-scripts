# Libra Bash Scripts
These are some sample bash scripts that use xdotool to drive the Libra testnet CLI.

See the following [Medium article](https://medium.com/@keir_85660/fun-and-games-with-the-libra-testnet-2046875aedda) for a tutorial on using them.

## Installation

The actual currency isn’t live yet, but there are a code base and a testnet, which gives you plenty of opportunities to play about. If like me, you use a Ubuntu Linux box, you can get started fairly quickly by opening up a terminal (Ctrl+Alt+T) and entering the following:

```
$ git clone https://github.com/libra/libra.git
$ cd libra
$ ./scripts/dev_setup.sh
$ ./scripts/cli/start_cli_testnet.sh
```

You will need `xdotool` and a second terminal:

```
$ sudo apt-get update
$ sudo apt-get install xdotool
```

You can then run the scripts in the second terminal. The scripts find the Libra CLI terminal and execute sequences of commands. They provide sample bash code that you can alter to issue whatever sequences of commands you like.

* `batchmint.sh` creates 100 addresses and mints 10 trillion libras to each
* `balances.sh` lists the balance of each of the 100 addresses
* `consolidate.sh` attempts to move all holdings from addresses 1 to 99 into address 0

Note that the maximum number of libra one address can hold is 2⁶⁴ -1 / 1000000, and if you try to transfer in more than an address can hold, the transaction will silently fail.
