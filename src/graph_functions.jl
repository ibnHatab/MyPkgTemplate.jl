
using VegaLite

"""
    sum_values(x, y)

Sum the numeric arguments

Maybe not only numeric.

# Arguments
* `x`: first adjunct
* `y`: second adjunct

# Note
* can go wrong

#Example
```julia
julia> sum_values(2, 2)
4
```
"""
function sum_values(x, y)
    return x + y
end
