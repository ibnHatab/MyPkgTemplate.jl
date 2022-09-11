using MyPkgTemplate
using Documenter

DocMeta.setdocmeta!(MyPkgTemplate, :DocTestSetup, :(using MyPkgTemplate); recursive=true)

makedocs(;
    modules=[MyPkgTemplate],
    authors="ibnHatab <lib.aca55a@gmail.com> and contributors",
    repo="https://github.com/ibnHatab/MyPkgTemplate.jl/blob/{commit}{path}#{line}",
    sitename="MyPkgTemplate.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ibnHatab.github.io/MyPkgTemplate.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ibnHatab/MyPkgTemplate.jl",
    devbranch="main",
)
