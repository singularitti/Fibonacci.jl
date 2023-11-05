module Fibonacci

export FibonacciSequence

struct FibonacciSequence
    maxiter::UInt64
    function FibonacciSequence(maxiter)
        @assert maxiter >= 1
        return new(maxiter)
    end
end

Base.iterate(::FibonacciSequence) = (1, ((0, 1), 2))
function Base.iterate(iter::FibonacciSequence, ((fₙ₋₂, fₙ₋₁), n))
    if n > iter.maxiter
        return nothing
    else
        fₙ = fₙ₋₁ + fₙ₋₂
        return fₙ, ((fₙ₋₁, fₙ), n + 1)
    end
end

Base.eltype(::Type{FibonacciSequence}) = BigInt

Base.length(iter::FibonacciSequence) = iter.maxiter

function Base.getindex(iter::FibonacciSequence, n::Integer)
    if n > iter.maxiter
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

Base.lastindex(sequence::FibonacciSequence) = sequence.maxiter

end
