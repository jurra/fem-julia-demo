using Test
include("../src/fem/SimpleFEM.jl")
include("../src/forces/Gravity.jl")
include("../src/forces/Force.jl")
using .SimpleFEMModule
using .GravityModule
using .ForcesModule

@testset "SimpleFEMModule Tests" begin

    # Acceptance Criteria:
    # - `SimpleFEM` is a subtype of `FEM`.
    # - `SimpleFEM` takes a `ForcesModule.Force` object as input.
    # - `run(::SimpleFEM)` applies the force and prints "Running SimpleFEM".

    force = Gravity()
    fem = SimpleFEM(force)

    @test fem isa SimpleFEMModule.SimpleFEM  # Ensure SimpleFEM object is created
    @test fem.force isa ForcesModule.Force   # Ensure force is stored correctly

    # Test run function
    output = IOBuffer()
    redirect_stdout(output) do
        SimpleFEMModule.run(fem)
    end
    @test String(take!(output)) == "Applying gravity force\nRunning SimpleFEM\n"  # Correct output

end
