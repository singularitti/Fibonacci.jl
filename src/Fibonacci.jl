module Fibonacci

struct FibonacciIterator
    maxiter::UInt64
    function FibonacciIterator(maxiter)
        @assert maxiter > 1
        return new(maxiter)
    end
end

eachfibbo(n) = FibonacciIterator(n)

Base.iterate(::FibonacciIterator) = (1, ((0, 1), 2))
function Base.iterate(iter::FibonacciIterator, ((fₙ₋₂, fₙ₋₁), n))
    if n > iter.maxiter
        return nothing
    else
        fₙ = fₙ₋₁ + fₙ₋₂
        return fₙ, ((fₙ₋₁, fₙ), n + 1)
    end
end

Base.eltype(::Type{FibonacciIterator}) = Base.UInt128

Base.length(iter::FibonacciIterator) = iter.maxiter

end
