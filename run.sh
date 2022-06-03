rm -rf build
cmake -B build -DWITH_DEBUG=on
cmake --build build --target main -- -j $(nproc)
./build/main
