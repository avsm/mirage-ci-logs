((From (Image_tag (ocaml/opam centos-7_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout 1e3b3ca0d47f9bebe4e8f4b24703ca438336163a"))
 (Run
  (Shell
   "opam remote add extra1 https://github.com/mirage/mirage-dev.git#092f8251995b22408c1b8e98871553834e86cb99"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin tags/v2.2.0:cibranch"))
 (Run (Shell "git checkout 5121e8e572d1b993c63791b6228fc0d85acab507"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))