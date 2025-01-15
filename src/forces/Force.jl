module ForcesModule

abstract type Force end

function apply_force(f::Force)
    error("apply_force method not implemented for $(typeof(f))")
end

end # module ForcesModule