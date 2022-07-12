#pragma once

#include "fib_constexpr.h"
#include <string>

#define M2 (M1 + 20)

namespace header1 {
 class Base{};
 std::vector<std::string> getName();
}

namespace header2 {

constexpr int complexity = 27;
constexpr int ga = fib(5, complexity);
}  // namespace header2


int foo2() { return 2; }
