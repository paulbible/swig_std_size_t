# Attempting to get Swig to recognize std:size_t
## Background

I'm specifically interested in getting `std::vector<std::size_t>` to be recognized by swig.
This is a contrived example to facilitate solving the issue. I have a large c++ code base
needs a Python interface. The code base uses `std::size_t` for its integer type in most places.
 
It this code there are 4 approaches (swig ".i" files) that deal with the c++ class StdSizeVec
and generate its python wrapper and interface. The int vector just illustrates what I would 
expected swig to do for `std::size_t`.

These are explained below.

### a_swig_vec_std_size.i
This is the minimal interface. The returned C++ types are Swig pointers and basically useless in python.

### b_swig_vec_std_size.i
Adding the necessary **%include "std_vector.i"** tells swig a little more about the type but this is not useful yet.

### c_swig_vec_std_size.i
Using **%template(VecInt) std::vector<int>;** allows the vector of int to be returned as a tuple. 
This is the desired behavior for `std::size_t`.

```
// Does not compile
//%template(VecSize) std::vector<std::size_t>;

//The following compiles but does not work
%template(VecSize) std::vector<size_t>;
```

### d_swig_vec_std_size.i, where I'm stuck
Looking at [this link](https://github.com/c-abird/magnum.fe/blob/master/magnumfe/swig/typemaps/primitives.i) 
I tried to implement a limited portion for `std::size_t` in `std_size_t.i` which I include, but it
does not compile.


# Getting started / Please help!

```
git clone https://github.com/paulbible/swig_std_size_t
cd swig_std_size_t/
```

Edit the makefile with the location of your python installation (for the includes).

Call make
```
make
```

For testing, just past the first part of the test_a.txt files into the terminal. The same for b and c.

```

python
from a_swig_vec_std_size import StdSizeVec
ssv = StdSizeVec()
vals = ssv.getValues()
vals
ints = ssv.getInts()
ints
exit()
```

# Program versions

python version: Python 2.7.11
g++ version: g++ (GCC) 4.4.7
swig version: SWIG Version 1.3.40

tried a newer swig (swig-3.0.10) without success

## Other Links
[wisdom of the ancients](https://xkcd.com/979/)

[2006 same problem](http://swig.10945.n7.nabble.com/Bug-with-1-3-29-td2034.html)

The [std::vector::size_type wrapped as a pointer not an integer](http://swig.10945.n7.nabble.com/std-vector-size-type-wrapped-as-a-pointer-not-an-integer-td7790.html) link had some helpful info but the problem is not exactly the same.

### some clues?
I found [this link](https://github.com/c-abird/magnum.fe/blob/master/magnumfe/swig/typemaps/primitives.i), but thinking wishfully and importing **primitivies.i** did not work for me. 

After that I tried to implement the `SWIG_AsVal_std_size_t` and `SWIG_From_std_size_t`, but  no luck.

SO questions already consulted:

[vector-vector-double-argument-with-swig-and-python](http://stackoverflow.com/questions/5262479/vector-vector-double-argument-with-swig-and-python)

[how-to-expose-stdvectorint-as-a-python-list-using-swig](http://stackoverflow.com/questions/276769/how-to-expose-stdvectorint-as-a-python-list-using-swig)