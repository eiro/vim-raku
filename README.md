# vim-raku
Improved support for Raku in Vim.

## Installation

### vim packages

From the vim command line, see `:help packages` to learn how to install a vim package.
As exemple: you can install this plugin like this:

    t=$HOME/.vim/pack/vendor/start/
    mkdir -p $t
    git clone -C $t git@github.com:Raku/vim-raku.git raku

### 3rd party plugin managers

If it makes sense for you, you can still use a legacy, 3rd party plugin manager
such as [Pathogen][pathogen], [vim-plug][vim-plug], [vundle][vundle].

Once installed, all files ending in `.raku`, `.rakudoc`, and `.rakutest` (and
also `.pm6`, `.p6`, and `.t6` for legacy purposes) will make use of the
plugin's features.

### register documentation entries

if you want the documentation of vim-raku to entries to appear in the help menu,
run

    :helptags $HOME/.vim/pack/vendor/start/raku/doc

(assuming $HOME/.vim/pack/vendor/start/raku is the place where you installed the plugin)

[pathogen]: https://github.com/tpope/vim-pathogen
[vim-plug]: https://github.com/junegunn/vim-plug
[vundle]: https://github.com/gmarik/Vundle.vim
