# Run Julia from your OJEDS directory
# Enter package mode with ]
# Type `activate .` (don't forget the space and the period)
# To exit package mode, press <backspace>

include("REPL_helper.jl")

using Plots
n = 100
f(x) = x^2
ϵ = randn(n)
plot(f.(ϵ),label="ϵ²")
plot!(ϵ,label="ϵ")

include("first_LP.jl")

# The line below saves everything you typed into the REPL inside your current Julia session
save_REPL_history("Insert_filename_here.jl")