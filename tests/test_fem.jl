using Test
include("../src/fem/SimpleFEM.jl")
include("../src/forces/Gravity.jl")

@testset "FEM Tests" begin
    force = Forces.Gravity()
    fem = FEM.SimpleFEM(force)
    @test typeof(fem) == FEM.SimpleFEM
end
