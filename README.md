# start-mediawiki-webdev

Get MediaWiki up and running quickly for development purposes using the
Docker container `garrett/simple-webdev`.

Apache, PHP, and SQLite are used in the Docker container to make getting
started quite easy.


## Getting Docker set up

First, you'll want to make sure Docker is intalled on your system. If
you have Docker set up, skip to the next section.

[Check out the wonderful Docker docs on the
subject](http://docs.docker.io/installation/).

### Quick links to installing on commonly used systems

* [Fedora](http://docs.docker.io/installation/fedora/)
  (TL;DR: `sudo yum -y install docker-io && sudo systemctl enable docker
  && sudo systemctl start docker`)
* [RHEL/CentOS](http://docs.docker.io/installation/rhel/)
  (TL;DR: It's similar to Fedora, except use `sudo service docker start && sudo chkconfig docker on` instead of systemctl.)
* [openSUSE](http://docs.docker.io/installation/openSUSE/)
  (TL;DR: Add a repo, zypper it in, and systemctl it up!)
* [Ubuntu](http://docs.docker.io/installation/ubuntulinux/)
  (TL;DR: It depends. Read the docs and figure it out for your version.)
* [OS X](http://docs.docker.io/installation/mac/)
  or [read an even a simpler
  guide](http://arnaudchenyensu.com/how-to-install-docker-on-mac-os-x/)
  (TL;DR: It's complicated. But works.)
* [Windows](http://docs.docker.io/installation/windows/)
  (TL;DR: It's complicated too, but works in a way similar to OS X, but
  It's probably not as nice to use as anything else listed above.)


## Installing MediaWiki

Usually, Installing MediaWiki can be a bit more tricky than this.

Steps:

1. Run `./setup.sh` and directories will be created and, in a short
   while, MediaWiki will appear in `wiki/html/`.
2. There is no step 2.


## Running MediaWiki

1. Run `./start-mediawiki.sh` — if this is your first time, Docker will
   automagically download the necessary image. (Additional times will be
   much quicker.)
2. Visit <http://0.0.0.0:8888/> in your browser.
3. Modify files in `wiki/html` and see them change when you reload your
   browser.


## Stopping the MediaWiki server

Just hit `control-c` (that is, hold down `control` and press `c` on your
keyboard).


## Optional

### Install Strapping

After you create a `LocalSettings.php`, you can quickly install
Strapping, a Bootstrap-based starter skin for MediaWiki, by running
`./install-strapping.sh`. The script will download and add Strapping to
your `LocalSettings.php`.


## License

CC0 / Public Domain — have fun!
https://creativecommons.org/publicdomain/zero/1.0/
