---
vim: tw=72
title: Contributing to vim-raku
---

# Reporting Issues

When submitting an issue relating to highlighting/folding, please attach
the following:

* A screenshot of the issue.
* The file used in the screenshot.  If it's proprietary or too big,
  please try to reproduce the issue in a small sample file.
* A link to your vimrc, if it exists.
* The output of `vim --version`.

These things make issues **much** easier to debug!

**IMPORTANT**

To make things easier on everyone, try to reproduce the issue with a
minimal vim setup and an up-to-date checkout of vim-raku.  Taking the
time to help out with issues you have found makes things easier on all
of us, and that's the whole reason this is an open project.

Also, before you report something as a bug, please make sure you're
using the latest version of vim-raku from Git.  If you're using an older
version, chances are that you're stumbling on a bug that someone else
has in the past.

If you have read and understand these guidelines, add the text "I have
read the guidelines" in your issue when you create it.

# Helping Out

# Improve the code

TODO: can't make `prove` work. any clue there?

If you would like to contribute to vim-raku, please be aware that we
have a test suite which can be run using the `prove` command.  After
you've made your changes, run the test suite via `prove`.  The tests
test a host of known situations for consistency, as well as verifies
that vim-raku still highlights and folds code the way it does with the
latest code on GitHub.  Most fixes don't change highlighting, so the
regression test should pass.  If it fails, open the file(s) printed and
make sure that their highlighting still makes sense.  If it does, note
that in your pull request and a maintainer will update the regression
corpus data when he/she merges it.

# Improve the documentation

new sections and translation are very welcome. don't forget to run
`helptags doc` and commit the new `doc/tags` if you do so.
