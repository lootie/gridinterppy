import LaplaceInterpolation
import PyCall

PyCall.PyObject(::typeof(LaplaceInterpolation.matern_3d_grid)) =
    PyCall.pyfunctionret(LaplaceInterpolation.matern_3d_grid,Any,Vararg{PyCall.PyAny})

PyCall.PyObject(::typeof(LaplaceInterpolation.punch_3D_cart)) =
    PyCall.pyfunctionret(LaplaceInterpolation.punch_3D_cart,Any,Vararg{PyCall.PyAny})
