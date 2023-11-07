using Fibonacci
using Test

@testset "Fibonacci.jl" begin
    @test_throws AssertionError FibonacciSequence(0)
    @test_throws AssertionError FibonacciSequence(-1)
    @test_throws BoundsError FibonacciSequence(10)[-1]
    @test_throws BoundsError FibonacciSequence(10)[0]
    @test_throws BoundsError FibonacciSequence(10)[11]

    expected_values = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    for (i, number) in enumerate(FibonacciSequence(10))
        @test number == expected_values[i]  # Test the iteration interface
        @test number == FibonacciSequence(10)[i]  # Test the indexing interface
    end

    @test FibonacciSequence(10)[1] == FibonacciSequence(10)[begin] == 1
    @test FibonacciSequence(10)[10] == FibonacciSequence(10)[end] == 55
end
