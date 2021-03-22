#!/usr/bin/env bash

cd /home/codio/jeroo/jeroo
cd src/compiler

opam switch create ./ ocaml-base-compiler.4.08.1
opam install --deps-only .
eval $(opam env)
dune build ./JerooCompiler.bc.js --profile release
