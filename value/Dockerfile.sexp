((From (Image_tag (ocaml/opam debian-stable_ocaml-4.02.3)))
 (Run (Shell "git -C /home/opam/opam-repository pull origin master"))
 (Run
  (Shell
   "git -C /home/opam/opam-repository checkout ee8cc617a7b766014d45d04371b7324fa41912f9"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/551/head:cibranch"))
 (Run (Shell "git checkout d0d654abbca0281d3c9e72b69f91cb447de2b13a"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))