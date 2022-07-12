#pragma once

#include "fib_constexpr.h"
#define M1 10
namespace header3 {
constexpr int complexity = 27;
constexpr int ga = fib(7, complexity);
}  // namespace header3

class Conflict {
    int methodConflict() {
        return 3;
    };
};

int foo3() { return 3; }
