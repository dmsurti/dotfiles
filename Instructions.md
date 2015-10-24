To install the dotfiles on a new machine:
-----------------------------------------

* Clone this repository
* Run `dfm install`

To add a new dotfile to an existing repository:
-----------------------------------------------

* Run dfm import <dotfile>
* Update the repository with `git push`

If an existing dotfile in the repository has changed:
-----------------------------------------------------

* Use `git add`, `git commit` and `git push` to update the repository

To update an existing repository (on a machine where it was not changed):
-------------------------------------------------------------------------

* Run `dfm umi`
