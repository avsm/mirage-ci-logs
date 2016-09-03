((From (Image_tag (ocaml/opam debian-stable_ocaml-4.03.0)))
 (Run (Shell "git -C /home/opam/opam-repository pull origin master"))
 (Run
  (Shell
   "git -C /home/opam/opam-repository checkout 3ec05d969458841cacfa4df17fba45eacab29109"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/586/head:cibranch"))
 (Run (Shell "git checkout 055f3565bc7fd5a1283c019fa3ea5bfa5bafbc6b"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))