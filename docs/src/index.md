# Fibonacci

Documentation for [Fibonacci](https://github.com/singularitti/Fibonacci.jl).

See the [Index](@ref main-index) for the complete list of documented functions
and types.

The code, which is [hosted on GitHub](https://github.com/singularitti/Fibonacci.jl), is tested
using various continuous integration services for its validity.

This repository is created and maintained by
[@singularitti](https://github.com/singularitti), and contributions are highly welcome.

## Package features

`FibonacciSequence.jl` is an experimental Julia package designed to demonstrate the use of
Julia's iteration and indexing interfaces by implementing the Fibonacci sequence. It
provides an iterable and indexable `FibonacciSequence` object that computes Fibonacci
numbers up to a specified maximum iteration.

### Features

- Iteration: Traverse through the Fibonacci sequence using standard Julia iteration protocols.
- Indexing: Directly access the `n`th Fibonacci number using indexing.
- Bounds Checking: Automatically handles bounds and provides informative errors on out-of-range access.

### Limitations

The `FibonacciSequence` is primarily a demonstration and has the following limitations:

- Performance: The sequence is not optimized for performance and may not be suitable for large-scale computations.
- Memory: The iterative process stores the two most recent Fibonacci numbers, which can lead to high memory usage for large indices.

## Installation

The package can be installed with the Julia package manager.
From [the Julia REPL](https://docs.julialang.org/en/v1/stdlib/REPL/), type `]` to enter
the [Pkg mode](https://docs.julialang.org/en/v1/stdlib/REPL/#Pkg-mode) and run:

```julia-repl
pkg> add Fibonacci
```

Or, equivalently, via [`Pkg.jl`](https://pkgdocs.julialang.org/v1/):

```@repl
import Pkg; Pkg.add("Fibonacci")
```

## Documentation

- [**STABLE**](https://singularitti.github.io/Fibonacci.jl/stable) — **documentation of the most recently tagged version.**
- [**DEV**](https://singularitti.github.io/Fibonacci.jl/dev) — _documentation of the in-development version._

## Project status

The package is developed for and tested against Julia `v1.6` and above on Linux, macOS, and
Windows.

## Questions and contributions

You can post usage questions on
[our discussion page](https://github.com/singularitti/Fibonacci.jl/discussions).

We welcome contributions, feature requests, and suggestions. If you encounter any problems,
please open an [issue](https://github.com/singularitti/Fibonacci.jl/issues).
The [Contributing](@ref) page has
a few guidelines that should be followed when opening pull requests and contributing code.

## Manual outline

```@contents
Pages = [
    "man/installation.md",
    "man/troubleshooting.md",
    "developers/contributing.md",
    "developers/style-guide.md",
    "developers/design-principles.md",
]
Depth = 3
```

## Library outline

```@contents
Pages = ["lib/public.md", "lib/internals.md"]
```

### [Index](@id main-index)

```@index
Pages = ["lib/public.md"]
```
