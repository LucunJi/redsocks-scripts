# redsocks-scripts

By configuring with `redsocks` and `iptables`, almost all traffic can be proxied on Linux,
including but not limited to Firefox, OBS, etc.

I would like to call this a global selective proxy. It is global because you cannot do
process-wise proxy; it is selective because you can still make some configurations based on things
such as port.


## Prerequisites
Install [redsocks](http://darkk.net.ru/redsocks/).

I use Arch Linux, and there is an AUR package for redsocks.
Although I did not look into other distributions of Linux, it should not be hard to find a viable
way to install redsocks, as it is a relatively popular package.


## Usage

1. Clone this repository
2. `cd` into the directory of the repository you just clone
3. Configure redsocks by editing `redsocks.conf`
4. Run any of the shell scripts starting with "launch", you may need root privilege
5. After exiting the script, do not forget to run `stop.sh` to do cleanup, root privilege may again
be required
6. You can also add and edit some scripts to accomplish your goal. Pull requests of fixes and new
features are welcomed.


## Credits
Scripts in [proxifier-linux](https://github.com/zihaaad/proxifier-linux) provided by zihaaad.
