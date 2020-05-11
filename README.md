# vim-raku
Improved support for Raku in Vim.

## Installation

### vim packages

From the vim command line, see `help packages` to learn how to install a vim package.
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

## Configuring optional features
Not all features are enabled by default. This is in part due to them still
being considered in testing, or because they may influence your regular
workflow too much. These can be enabled by setting a certain variable to a
truthy value.

### Unicode ops
`vim-raku` can use Vim's abbreviation feature to convert ASCII based operators
to their Unicode equivalents on the fly. To enable this feature, add the
following line to your `vimrc` file:

```
let g:raku_unicode_abbrevs = 1
```

[pathogen]: https://github.com/tpope/vim-pathogen
[vim-plug]: https://github.com/junegunn/vim-plug
[vundle]: https://github.com/gmarik/Vundle.vim
