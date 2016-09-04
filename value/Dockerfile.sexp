((From (Image_tag (ocaml/opam ubuntu-16.04_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout e548aee4bd73e5409d4fcd7dfc95fc5595f0fb66"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/553/head:cibranch"))
 (Run (Shell "git checkout 370e7bf5090a475c4ae2455d0a78c6cb2a0907c4"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))