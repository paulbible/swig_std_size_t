#ifndef STD_SIZE_VEC
#define STD_SIZE_VEC

#include <vector>

class StdSizeVec{

public:
  StdSizeVec(){
    _myVec = std::vector<std::size_t>();
    _myVec.push_back(1);
    _myVec.push_back(2);

    _myInts = std::vector<int>();
    _myInts.push_back(1);
    _myInts.push_back(2);
  }

  ~StdSizeVec(){
    _myVec.clear();
  }

  inline std::vector<std::size_t> getValues(){
    return _myVec;
  }

  inline std::vector<int> getInts(){
    return _myInts;
  }

private:
  std::vector<std::size_t> _myVec;
  std::vector<int> _myInts;
};
#endif
