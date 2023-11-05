# Fibonacci

|                                 **Documentation**                                  |                                                                                                 **Build Status**                                                                                                 |                                        **Others**                                         |
| :--------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------: |
| [![Stable][docs-stable-img]][docs-stable-url] [![Dev][docs-dev-img]][docs-dev-url] | [![Build Status][gha-img]][gha-url] [![Build Status][appveyor-img]][appveyor-url] [![Build Status][cirrus-img]][cirrus-url] [![pipeline status][gitlab-img]][gitlab-url] [![Coverage][codecov-img]][codecov-url] | [![GitHub license][license-img]][license-url] [![Code Style: Blue][style-img]][style-url] |

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://singularitti.github.io/Fibonacci.jl/stable
[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://singularitti.github.io/Fibonacci.jl/dev
[gha-img]: https://github.com/singularitti/Fibonacci.jl/workflows/CI/badge.svg
[gha-url]: https://github.com/singularitti/Fibonacci.jl/actions
[appveyor-img]: https://ci.appveyor.com/api/projects/status/github/singularitti/Fibonacci.jl?svg=true
[appveyor-url]: https://ci.appveyor.com/project/singularitti/Fibonacci-jl
[cirrus-img]: https://api.cirrus-ci.com/github/singularitti/Fibonacci.jl.svg
[cirrus-url]: https://cirrus-ci.com/github/singularitti/Fibonacci.jl
[gitlab-img]: https://gitlab.com/singularitti/Fibonacci.jl/badges/main/pipeline.svg
[gitlab-url]: https://gitlab.com/singularitti/Fibonacci.jl/-/pipelines
[codecov-img]: https://codecov.io/gh/singularitti/Fibonacci.jl/branch/main/graph/badge.svg
[codecov-url]: https://codecov.io/gh/singularitti/Fibonacci.jl
[license-img]: https://img.shields.io/github/license/singularitti/Fibonacci.jl
[license-url]: https://github.com/singularitti/Fibonacci.jl/blob/main/LICENSE
[style-img]: https://img.shields.io/badge/code%20style-blue-4495d1.svg
[style-url]: https://github.com/invenia/BlueStyle

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

```julia
julia> import Pkg; Pkg.add("Fibonacci")
```

## Documentation

- [**STABLE**][docs-stable-url] — **documentation of the most recently tagged version.**
- [**DEV**][docs-dev-url] — _documentation of the in-development version._

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
