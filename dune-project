(lang dune 1.11)
(version 0.1)
(name remu_ts)
(generate_opam_files true)
(maintainers "Taine Zhao")
(homepage "https://github.com/RemuLang")
(authors "Taine Zhao <thaut@logic.cs.tsukuba.ac.jp>")
(bug_reports "https://github.com/RemuLang/remu-type-system/issues")
(package
    (name remu_ts)
    (synopsis "External type infer")
    (description "external type infer")
    (depends
    (batteries (>= 2.0))
    (ppx_deriving (>= 4.0))))