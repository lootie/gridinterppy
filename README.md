# gridinterppy
Wraps the LaplaceInterpolation.jl package so as to work in python

# Installation

Please install using 
```
$ pip install -e git+https://github.com/lootie/gridinterppy.git#egg=gridinterppy
```
Using gridinterppy requires that Julia is installed and in the path, along with
[LaplaceInterpolation.jl](https://github.com/vishwas1984/LaplaceInterpolation.jl) and
[PyCall.jl](https://github.com/JuliaPy/PyCall.jl). To install Julia, download a
generic binary from the [JuliaLang site](https://julialang.org/) and 
[add it to your path](https://julialang.org/downloads/platform/). To install Julia
packages required for gridinterppy, open up Python interpreter then run:

```
>>> import gridinterppy
>>> gridinterppy.install()
```

and you're good! Note that one might additionally require

```
>>> from julia.api import Julia
>>> jl = Julia(compiled_modules=False)
```

before one accesses basic functionality, i.e. here is a small example

```
from gridinterppy import gridint
import numpy as np

x = np.reshape(np.random.rand(27), (3,3,3))
a = gridint.matern_3d_grid(x,np.array([1,5]))
```

and you may also need PyJulia

```
$ python3 -m pip install --user julia
```

You may wish to consult the documentation for
[LaplaceInterpolation.py](https://vishwas1984.github.io/LaplaceInterpolation.jl/dev)
since at present, this package does not have its own documentation.

# Acknowledgment

This material is based upon work supported by the U.S. Department of Energy, Office
of Science, Office of Basic Energy Sciences.
