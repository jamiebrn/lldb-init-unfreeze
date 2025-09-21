# lldb-init-unfreeze
Fix for [annoying bug](https://askubuntu.com/questions/1368107/mouse-click-not-working-while-debugging-with-gdb) in Linux where a mouse click at the time of a breakpoint causes the mouse to become unresponsive/locked.

### Installation
Run `./install.sh` to install

Alternatively, manually copy both `lldb_breakpoint_hook.py` and `.lldbinit` to the home directory.
