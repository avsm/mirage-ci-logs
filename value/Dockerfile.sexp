((From (Image_tag (ocaml/opam opensuse-42.1_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout 445f96e93315f5d9dae0e7472c9c7b9907c10b74"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/585/head:cibranch"))
 (Run (Shell "git checkout fde95fb50ff1f89f88c2c59c1eb1cee538dc6c3e"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))