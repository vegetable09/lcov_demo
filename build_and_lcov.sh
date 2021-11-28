report_output=/mnt/c/Users/cc/Downloads
mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Debug -DENABLE_COVERAGE=1 .. -LH && make -j2 && \
  lcov -c -i -d ./ -o init.info && \
  ./lcov_demo && \
  lcov -c -d ./ -o cover.info && \
  lcov -a init.info -a cover.info -o total.info && \
  genhtml -o $report_output/cover_report --legend --title "lcov"  --prefix=./ total.info
