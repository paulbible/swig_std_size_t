# Attempting to get Swig to recognize std:size_t
## Specifically std::vector<std::size_t>

### Getting started / Please help!

Trying to get Swig to recognize std::size_t 

python version: Python 2.7.11
g++ version: g++ (GCC) 4.4.7
swig version: SWIG Version 1.3.40

tried a newer swig (swig-3.0.10) without success


[wisdom of the ancients](https://xkcd.com/979/)

[2006 same problem](http://swig.10945.n7.nabble.com/Bug-with-1-3-29-td2034.html)

[std::vector::size_type wrapped as a pointer not an integer](http://swig.10945.n7.nabble.com/std-vector-size-type-wrapped-as-a-pointer-not-an-integer-td7790.html)

# some clues?
I found [this link](https://github.com/c-abird/magnum.fe/blob/master/magnumfe/swig/typemaps/primitives.i), but thinking wishfully and importing primitivies.i did not work for me. 

After that I tried to implement

SO questions already consulted:

[vector-vector-double-argument-with-swig-and-python](http://stackoverflow.com/questions/5262479/vector-vector-double-argument-with-swig-and-python)

[how-to-expose-stdvectorint-as-a-python-list-using-swig](http://stackoverflow.com/questions/276769/how-to-expose-stdvectorint-as-a-python-list-using-swig)