((From (Image_tag (ocaml/opam alpine-3.4_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout 1e3b3ca0d47f9bebe4e8f4b24703ca438336163a"))
 (Run
  (Shell
   "opam remote add extra1 https://github.com/mirage/mirage-dev.git#092f8251995b22408c1b8e98871553834e86cb99"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin heads/one-build:cibranch"))
 (Run (Shell "git checkout 3035408a0c7920c5a1e6519a843ee307d77ef98b"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))