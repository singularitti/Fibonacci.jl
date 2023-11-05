using Fibonacci
using Documenter

DocMeta.setdocmeta!(Fibonacci, :DocTestSetup, :(using Fibonacci); recursive=true)

makedocs(;
    modules=[Fibonacci],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/singularitti/Fibonacci.jl/blob/{commit}{path}#{line}",
    sitename="Fibonacci.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://singularitti.github.io/Fibonacci.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/singularitti/Fibonacci.jl",
    devbranch="main",
)
