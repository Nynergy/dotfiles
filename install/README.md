# install

It's how you install all this custom stuff, silly.

-------------------------------------------------------------------------------

## Instructions

From within the base directory of the repo:

```
$ ./install/proliferate
```

It may ask you questions; read them, and respond.

After you're done, be sure to check the environment file that was
created/updated to see if there are placeholder values you need to fill in.

Once you've confirmed that the environment file contains all the info you need,
you will probably have to manually create a symlink to this file in a location
that root can use it easily. This goes for any scripts that need to be run as a
superuser, such as `manila`. You can create this symlink by using the following
command:

```
$ cd /; sudo ln -s $HOME/.env.sh /.env.sh
```

You should confirm that the symlink is properly set up by using `ls -al` in that
directory.
