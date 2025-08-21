#!/usr/bin/env bash

cd /home/codio/jeroo/jeroo
cd src/compiler

opam init --disable-sandboxing --bare
opam switch create ./ ocaml-base-compiler.4.08.1
opam install --deps-only . -y
eval $(opam env)
dune build ./JerooCompiler.bc.js --profile release
