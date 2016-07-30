%module d_swig_vec_std_size
%{
#include "class_vec_std_size.hpp"
%}
%include "std_vector.i"
%template(VecInt) std::vector<int>;

%include "std_size_t.i"
%template(VecSize) std::vector<std::size_t>;

%include "class_vec_std_size.hpp"
