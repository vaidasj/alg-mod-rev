using BenchmarkTools

@elapsed for i = 1:100
   include("jump_transport_min.jl")
   write_to_file(model,"jump_transport.mps")
end