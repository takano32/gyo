CFLAGS=-lstdc++

gyo:


fs:	gyo.fsx
	#fsharpc2 $<
	fsharpi2 $<

hs:	gyo.hs
	# https://gist.github.com/3353689
	ghc -O2 -Wall gyo.hs

clean:
	rm -f gyo{,.hi,.o}

bench:
	time ./gyo TESTDATA
