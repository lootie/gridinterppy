import LaplaceInterpolation
import PyCall

PyCall.PyObject(::typeof(LaplaceInterpolation.matern_3d_grid)) =
    PyCall.pyfunctionret(LaplaceInterpolation.matern_3d_grid,Any,Vararg{PyCall.PyAny})

