import NimBorg/python/high_level

let n = 100
let lx = py_list(n)
let ly = py_list(n)
let py_sin = ~py_import("math").sin
for i in 0..n-1:
  lx[i] = float(i)*0.1
  ly[i] = py_sin(lx[i])
let pylab = py_import("pylab")
~pylab.subplot(2,1,1)
~pylab.plot(lx, ly)
~pylab.title("sin(x)")

~pylab.subplot(2,1,2)
~pylab.plot([1,2,3,4], @[10,11,10,12])
~pylab.title("arrays and seqs are converted to lists")

~pylab.show()
