module GravityModule

import ..ForcesModule

struct Gravity <: ForcesModule.Force end

function ForcesModule.apply_force(::Gravity)
    println("Applying gravity force")
end

end # module GravityModule
