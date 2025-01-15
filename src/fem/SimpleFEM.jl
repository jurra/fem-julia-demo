module SimpleFEMModule

import ..FEMModule
import ..ForcesModule
import ..GravityModule

struct SimpleFEM <: FEMModule.FEM
    force::ForcesModule.Force
end

function run(fem::SimpleFEM)
    ForcesModule.apply_force(fem.force)
    println("Running SimpleFEM")
end

end # module SimpleFEMModule
