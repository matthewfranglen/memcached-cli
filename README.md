# Memcached Command Line Interface

This is a simple set of command line scripts that can query and update a memcached cache.

## Installation

This can be installed using antigen. The following command will install the
scripts into your current session:

        antigen-bundle matthewfranglen/memcached-cli

This can also be installed by cloning the git repository and adding the _bin_
folder to your $PATH.

## Usage

Each command will connect to localhost port 11211 by default. You can change
this with the options _-H_ and _-P_.

List cache content:

        ➜ mc-list
        0 items

        ➜ mc-list -H memcache.example.com -P 11212
        0 items

Add key:

        ➜ echo hello | mc-set KEY
        STORED

Read key:

        ➜ mc-get KEY
        hello

### OPTIONS

 * -h
    Print help for the command

 * -H HOST
    Set the host to connect to.
    Hostnames and IP addresses are accepted.
    This defaults to 127.0.0.1

 * -P PORT
    Set the port to connect to.
    This defaults to 11211

 * -K KEY
    Set the key to request. Not used by mc-list.
    If this is not set then the first bare argument is the key.
    Only one key is accepted at a time (just run the command multiple times).
