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

before one accesses basic functionality, i.e.

```
from gridinterppy import gridinterp 
import numpy as np

```

and you may also need PyJulia

```
$ python3 -m pip install --user julia
```

# Acknowledgment

This material is based upon work supported by the U.S. Department of Energy, Office
of Science, Office of Basic Energy Sciences.
