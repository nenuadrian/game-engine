cd build
find . -name "*.gcda" -print0 | xargs -0 rm\n
make