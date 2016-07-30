%module c_swig_vec_std_size
%{
#include "class_vec_std_size.hpp"
%}
%include "std_vector.i"
%template(VecInt) std::vector<int>;

// Does not compile
//%template(VecSize) std::vector<std::size_t>;
//
// Gives the following errors
//swig -c++ -python c_swig_vec_std_size.i
// :0: Warning(490): Fragment 'SWIG_AsVal_std_size_t' not found.
// :0: Warning(490): Fragment 'SWIG_From_std_size_t' not found.
// g++ -fpic -c c_swig_vec_std_size_wrap.cxx -I/public/users/paul/dev/software/Python-2.7.11/Include -I/public/users/paul/dev/software/Python-2.7.11
// c_swig_vec_std_size_wrap.cxx: In static member function ‘static int swig::traits_asval<long unsigned int>::asval(PyObject*, swig::traits_asval::value_type*)’:
// c_swig_vec_std_size_wrap.cxx:4289: error: ‘SWIG_AsVal_std_size_t’ was not declared in this scope
// c_swig_vec_std_size_wrap.cxx: In static member function ‘static PyObject* swig::traits_from<long unsigned int>::from(const swig::traits_from::value_type&)’:
// c_swig_vec_std_size_wrap.cxx:4295: error: ‘SWIG_From_std_size_t’ was not declared in this scope
// make: *** [c] Error 1

//The following compiles but does not work
%template(VecSize) std::vector<size_t>;

%include "class_vec_std_size.hpp"
