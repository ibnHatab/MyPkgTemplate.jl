using MyPkgTemplate
using Test

@testset "MyPkgTemplate.jl" begin
    # Write your tests here.
    x = 2
    y = 2
    @test MyPkgTemplate.sum_values(x, y) == 4
end
