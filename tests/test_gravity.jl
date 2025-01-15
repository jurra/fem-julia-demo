using Test
# include("../src/forces/Gravity.jl")
# include("../src/forces/Force.jl")
using .GravityModule
using .ForcesModule

@testset "GravityModule Tests" begin

    # Acceptance Criteria:
    # - Gravity is a subtype of `ForcesModule.Force`.
    # - `apply_force(::Gravity)` prints "Applying gravity force".

    # Check that Gravity is a subtype of Force
    @test GravityModule.Gravity <: ForceModule.Force end # Use `<:` for type hierarchy

    # Test `apply_force`
    output = IOBuffer()  # Create a buffer to capture printed output
    redirect_stdout(output) do
        ForcesModule.apply_force(GravityModule.Gravity())
    end
    @test String(take!(output)) == "Applying gravity force\n"  # Check the captured output

end
