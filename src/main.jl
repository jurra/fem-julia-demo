include("forces/Force.jl")
include("forces/Gravity.jl")
include("fem/FEM.jl")
include("fem/SimpleFEM.jl")

import .GravityModule
import .SimpleFEMModule

function main()
    force = GravityModule.Gravity()
    fem = SimpleFEMModule.SimpleFEM(force)
    SimpleFEMModule.run(fem)
end

main()
