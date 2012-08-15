CFLAGS=-lstdc++

gyo:


hs:	gyo.hs
	# https://gist.github.com/3353689
	ghc -O2 -Wall gyo.hs

clean:
	rm -f gyo{,.hi,.o}
