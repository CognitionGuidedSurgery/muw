MSML=$(HOME)/workspace/msml/src/msml.py
PWD='.'

all:
	swig -c++ -python -outdir py -o src/prime.cxx src/prime.i
	g++ -shared -fPIC -I/usr/include/python2.7/ -O3 src/prime.cxx -o py/_prime.so

test:
	$(MSML) -vvv exec --repository $(PWD) -e base test.msml.xml
