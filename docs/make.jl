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
        "Manual" => [
            "Installation Guide" => "man/installation.md",
            "Troubleshooting" => "man/troubleshooting.md",
        ],
        "Reference" => Any[
            "Public API" => "lib/public.md",
            # "Internals" => map(
            #     s -> "lib/internals/$(s)",
            #     sort(readdir(joinpath(@__DIR__, "src/lib/internals")))
            # ),
        ],
        "Developer Docs" => [
            "Contributing" => "developers/contributing.md",
            "Style Guide" => "developers/style-guide.md",
            "Design Principles" => "developers/design-principles.md",
        ],
    ],
)

deploydocs(;
    repo="github.com/singularitti/Fibonacci.jl",
    devbranch="main",
)
