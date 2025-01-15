using Test

# Include modules only once
include("../src/forces/Force.jl")
include("../src/forces/Gravity.jl")

# Include test files
include("test_forces.jl")
include("test_gravity.jl")
