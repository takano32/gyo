#include <iostream>
#include <fstream>

int main(int argc, char** argv) {
	std::ifstream ifs(argv[1], std::ifstream::in);
	int count = 0, ch;
	while (ifs.good()) {
		ch = ifs.get();
		if (ch == '\n') count++;
	}
	ifs.close();
	std::cout << count << std::endl;
	return 0;
}

