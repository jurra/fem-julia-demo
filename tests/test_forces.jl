using Test
# include("../src/forces/Force.jl")
using .ForcesModule

@testset "ForcesModule Tests" begin

    # Acceptance Criteria:
    # - ForcesModule defines an abstract type `Force`.
    # - `apply_force` throws a "not implemented" error for abstract `Force` subtypes without implementation.

    # Ensure Force is an abstract type
    @test isabstracttype(ForcesModule.Force)

    # Define a test subtype of Force
    struct TestForce <: ForcesModule.Force end

    # Ensure apply_force throws an error for the subtype without specific implementation
    try
        ForcesModule.apply_force(TestForce())
        @test false  # Should not reach here
    catch e
        @test e isa ErrorException  # Ensure the correct error type is thrown
        @test occursin("apply_force method not implemented", string(e))  # Check the error message
    end

end
