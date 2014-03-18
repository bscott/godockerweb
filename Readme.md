godockerweb
===========

This is an example of a go web app inside a docker.
There are two ways to build the same app:

  - basic
  - withssh

Both run the same simple go web server except withssh also runs an ssh server.

Simply run the following commands to get your go web server up and running.

sudo make docker-build-basic
sudo make docker-run-basic

See the Makefile for further commands.