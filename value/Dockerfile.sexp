((From (Image_tag (ocaml/opam alpine-3.4_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout 71101141df2dc0410d44609e8149218ad1092b72"))
 (Run
  (Shell
   "opam remote add extra1 https://github.com/mirage/mirage-dev#092f8251995b22408c1b8e98871553834e86cb99"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin heads/newlib_removal:cibranch"))
 (Run (Shell "git checkout 5c2c09b9fd73b363a0f99a7dd1d4d76a8de5edd0"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))