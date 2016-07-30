
%fragment("SWIG_From_std_size_t", "header", fragment=SWIG_From_frag(std::size_t))
{
  SWIGINTERNINLINE PyObject * SWIG_From_std_size_t(std::size_t value)
  {
    return PyInt_FromSize_t(value);
  }
}


%fragment("SWIG_AsVal_std_size_t", "header")
{

SWIGINTERNINLINE bool SWIG_AsVal_std_size_t(PyObject* in, std::size_t& value)
{
  
  // Get integer type
  if(PyInt_Check(in)){
    long unsigned int long_uint = PyLong_AsLong(in);
    value = static_cast<std::size_t>(long_uint);
    return true;
  }else{
    return false;
  }

}
}

%fragment(SWIG_From_frag(std::size_t));
%fragment("SWIG_AsVal_std_size_t");
