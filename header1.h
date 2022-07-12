#pragma once

#include "header3.h"

#define M1 10

namespace header1 {
class Base;
constexpr int complexity = 27;
constexpr int ga = fib(3, complexity);
}  // namespace header1

class Conflict {
    int methodConflict() {
        return 1;
    };
};

int foo1() { return 1; }
