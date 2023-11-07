module Fibonacci

export FibonacciSequence

"""
    FibonacciSequence(stopat::Integer)

Create a sequence object that generates Fibonacci numbers.

# Examples
```julia-repl
julia> for i in FibonacciSequence(10)
           println(i)
       end
1
1
2
3
5
8
13
21
34
55

julia> FibonacciSequence(10)[begin]
1

julia> FibonacciSequence(10)[end]
55

julia> FibonacciSequence(10)[6]
8
```
"""
struct FibonacciSequence
    stopat::BigInt
    function FibonacciSequence(stopat)
        @assert stopat >= 1
        return new(stopat)
    end
end

# You have to write `iterate` separately to set `f₀`
Base.iterate(::FibonacciSequence) = (1, ((0, 1), 2))  # (f₁, (f₀, f₁), 2)
# See https://github.com/JuliaLang/julia/blob/v1.10.0-rc1/base/regex.jl#L686-L714
function Base.iterate(iter::FibonacciSequence, ((fₙ₋₂, fₙ₋₁), n))
    if n > iter.stopat
        return nothing
    else
        fₙ = fₙ₋₁ + fₙ₋₂
        return fₙ, ((fₙ₋₁, fₙ), n + 1)
    end
end

Base.eltype(::Type{FibonacciSequence}) = BigInt

Base.length(iter::FibonacciSequence) = iter.stopat

function Base.getindex(iter::FibonacciSequence, n::Integer)
    if n > iter.stopat || n < 1
        throw(BoundsError(iter, n))
    else
        for (i, value) in enumerate(FibonacciSequence(n))
            if i == n
                return value
            end
        end
    end
end

Base.firstindex(::FibonacciSequence) = 1

Base.lastindex(sequence::FibonacciSequence) = sequence.stopat

end
