@info "Updating build project"
using Pkg
Pkg.activate(@__DIR__)
Pkg.update()
using PackageCompiler

# Compile JuliaLSP
create_app(
    joinpath(@__DIR__, "..", ".."),
    joinpath(@__DIR__, "build");
    executables=["julia-lsp" => "runserver"],
    force=true,
    incremental=false
)
