google test examples
===
JeHo Park <linuxpark@gmail.com>
2018. 10. 08. (월) 21:47:17 KST

---
all docs was gotten from its orignal git server 
(https://github.com/google/googletest/tree/master/googletest/samples)


1. build & test
2. samples



---

1. build & test


		1.1. googletest install

		  sudo apt-get install libgtest-dev
		  sudo apt-get install cmake # install cmake
		  cd /usr/src/gtest
		  sudo cmake CMakeLists.txt
		  sudo make
		  sudo cp *.a /usr/lib




		1.2. test 

		  # build.sh {example number}
		  # open the page below with your web broswer 
		  $ {samples directory}/test_coverage/samples/index.html


2. samples

		https://github.com/google/googletest/blob/master/googletest/docs/samples.md


3. etc

		3.1. branch coverage

		http://ltp.sourceforge.net/coverage/lcov/genhtml.1.php

		 ...
		' + ': Branch was taken at least once
		' - ': Branch was not taken
		' # ': The basic block containing the branch was never executed




