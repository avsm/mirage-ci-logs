((From (Image_tag (ocaml/opam ubuntu-16.04_ocaml-4.02.3)))
 (Run (Shell "git -C /home/opam/opam-repository pull origin master"))
 (Run
  (Shell
   "git -C /home/opam/opam-repository checkout e548aee4bd73e5409d4fcd7dfc95fc5595f0fb66"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/551/head:cibranch"))
 (Run (Shell "git checkout d0d654abbca0281d3c9e72b69f91cb447de2b13a"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))