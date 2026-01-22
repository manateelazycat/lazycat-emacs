# Lazycat Emacs

[AndyStewart](http://www.emacswiki.org/emacs/AndyStewart)'s Emacs, include [configs](https://github.com/manateelazycat/lazycat-emacs/tree/master/site-lisp/config) and [extensions](https://github.com/manateelazycat/lazycat-emacs/tree/master/site-lisp/extensions).

Best way to study this project is try every keybinding in [init-key.el](https://github.com/manateelazycat/lazycat-emacs/tree/master/site-lisp/config/init-key.el) ;)

## Download Source Code
1. Download lazycat-emacs source code:
```
git clone https://github.com/manateelazycat/lazycat-emacs.git
```

2. Fetch all submodules in lazycat-emacs:
```
python update_submodule.py
```

## Install On Arch Linux
1. compile from source code:

```
sudo pacman -S tree-sitter wqy-microhei deno

git pull ; ./configure --prefix=/usr --with-x-toolkit=gtk3 --with-tree-sitter --without-xim ; make -j32; sudo make install ; sudo rm /usr/local/share/applications/emacsclient.desktop
```

* Use `--with-pgtk` instead `--with-x-toolkit=gtk3` if you use Wayland.
* Use `--without-xim` option to avoid input method active in Emacs, emacs-rime is better solution.

2. Add lazycat extensions to Emacs
```
sudo ln -s /home/username/lazycat-emacs/site-lisp /usr/share/emacs/lazycat

sudo cp /home/username/lazycat-emacs/site-start.el /usr/share/emacs/site-lisp/
```

Emacs29 native-comp branch will freeze if I put config in `/usr/share/emacs/site-lisp/`, we need put config in ~/.emacs instead to avoid Emacs29 freeze.

3. Install dependency for [EAF](https://github.com/manateelazycat/emacs-application-framework), holo-layer, deno, key-echo, blink-search etc.

```
sudo pip3 install epc sexpdata six inflect pynput orjson requests setuptools paramiko rapidfuzz watchdog packaging --break
```

```
cd /home/username/lazycat-emacs/site-lisp/extensions/emacs-application-framework/
./install-eaf.py -f
```

## Update extensions.
When I want upgrade extensions to newest version, I will use below command:

```
git submodule foreach git pull --rebase
```

## FAQ
1. When you occur `No avaliable parser for this buffer`, please use `treesit-install-language-grammar` install grammar for current buffer.

## Old extensions and configuration files.
In 2005, Emacs didn't have much advanced features, and it took me more than a decade to continuously improve Emacs.

Many extensions code that i wrote has been tossed, but I hope to still back up these unused code,
I hope some of the those old code snippets can help other Elisp hackers

You can find those old extensions and configuration files at [lazycat-emacs-time-machine](https://github.com/manateelazycat/lazycat-emacs-time-machine)

## License

Lazycat Emacs is licensed under [GPLv3](LICENSE).
