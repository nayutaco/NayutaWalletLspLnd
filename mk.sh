#!/bin/bash

if [ -z "$GOPATH" ]; then
	echo no GOPATH
	exit 1
fi
TAGS="chainrpc invoicesrpc kvdb_postgres monitoring routerrpc signrpc walletrpc watchtowerrpc wtclientrpc"
make tags="$TAGS" && make install tags="$TAGS"
