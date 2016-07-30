PYTHON=/public/users/paul/dev/software/Python-2.7.11

all: a b c d

a:
	swig -c++ -python a_swig_vec_std_size.i
	g++ -fpic -c a_swig_vec_std_size_wrap.cxx -I${PYTHON}/Include -I${PYTHON}
	g++ -g -fpic -shared a_swig_vec_std_size_wrap.o -o _a_swig_vec_std_size.so

b:
	swig -c++ -python b_swig_vec_std_size.i
	g++ -fpic -c b_swig_vec_std_size_wrap.cxx -I${PYTHON}/Include -I${PYTHON}
	g++ -g -fpic -shared b_swig_vec_std_size_wrap.o -o _b_swig_vec_std_size.so

c:
	swig -c++ -python c_swig_vec_std_size.i
	g++ -fpic -c c_swig_vec_std_size_wrap.cxx -I${PYTHON}/Include -I${PYTHON}
	g++ -g -fpic -shared c_swig_vec_std_size_wrap.o -o _c_swig_vec_std_size.so

d:
	swig -c++ -python d_swig_vec_std_size.i
	g++ -fpic -c d_swig_vec_std_size_wrap.cxx -I${PYTHON}/Include -I${PYTHON}
	g++ -g -fpic -shared d_swig_vec_std_size_wrap.o -o _d_swig_vec_std_size.so


clean: clean_a clean_b clean_c clean_d

clean_a:
	rm a_swig_vec_std_size_wrap.cxx a_swig_vec_std_size.py a_swig_vec_std_size_wrap.o _a_swig_vec_std_size.so

clean_b:
	rm b_swig_vec_std_size_wrap.cxx b_swig_vec_std_size.py b_swig_vec_std_size_wrap.o _b_swig_vec_std_size.so

clean_c:
	rm c_swig_vec_std_size_wrap.cxx c_swig_vec_std_size.py c_swig_vec_std_size_wrap.o _c_swig_vec_std_size.so

clean_d:
	rm d_swig_vec_std_size_wrap.cxx d_swig_vec_std_size.py d_swig_vec_std_size_wrap.o _d_swig_vec_std_size.so
