((From (Image_tag (ocaml/opam opensuse-42.1_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout 71101141df2dc0410d44609e8149218ad1092b72"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/551/head:cibranch"))
 (Run (Shell "git checkout d0d654abbca0281d3c9e72b69f91cb447de2b13a"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))