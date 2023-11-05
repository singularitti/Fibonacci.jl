module Fibonacci

struct FibonacciIterator
    maxiter::UInt64
    function FibonacciIterator(maxiter)
        @assert maxiter > 1
        return new(maxiter)
    end
end

eachfibonacci(n) = FibonacciIterator(n)

Base.iterate(::FibonacciIterator) = (1, ((0, 1), 2))
function Base.iterate(iter::FibonacciIterator, ((fₙ₋₂, fₙ₋₁), n))
    if n > iter.maxiter
        return nothing
    else
        fₙ = fₙ₋₁ + fₙ₋₂
        return fₙ, ((fₙ₋₁, fₙ), n + 1)
    end
end

Base.eltype(::Type{FibonacciIterator}) = BigInt

Base.length(iter::FibonacciIterator) = iter.maxiter

function Base.getindex(iter::FibonacciIterator, n::Integer)
    if n > iter.maxiter
        throw(BoundsError(iter, n))
    else
        for (i, value) in enumerate(eachfibonacci(n))
            if i == n
                return value
            end
        end
    end
end

Base.firstindex(::FibonacciIterator) = 1

Base.lastindex(sequence::FibonacciIterator) = sequence.maxiter

end
