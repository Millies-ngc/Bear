#!/bin/bash
cmake -DENABLE_UNIT_TESTS=OFF -DENABLE_FUNC_TESTS=OFF -S . -B ./build
cd ./build
make -j all | tee build_log.txt
make install