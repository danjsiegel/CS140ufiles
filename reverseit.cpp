#include <iostream>
#include <cstring>

void reverse_string(char s[]) {
	int i,j,c;
	for(i = 0, j = strlen(s)-1; i < j ; i++, j--) {
	c = s[i];
	s[i] = s[j];
	s[j] = c;
	}
}

int main (){
	char s[] ="reverse Dan Siegel";
	reverse_string(s);
	std::cout << s << std::endl;
	return 0;
}
