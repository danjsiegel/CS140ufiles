/* This program prints a pyramid of a specific height on the screen*/
#include <iostream>
using namespace std;

void print_pyramid(int height);

/*start of main program*/
int main()
{
	int pyramid_height;
	
	cout << "This program prints a 'pyramid' shape of\n";
	cout << "a specific height on the screen.\n\n";
	
	/* input wiht check using a "while" loop */
	cout << "how high would you like your pyramid?: ";
	cin >> pyramid_height;
	while (pyramid_height > 30 || pyramid_height < 1)
		{
		cout << "Pick another height (must be between 1 and 30): ";
		cin >> pyramid_height;
		}
	/*input ok */
	print_pyramid(pyramid_height);
	
	return 0;
}	
/* end of main program */

/* Function to print pyramid */

void print_pyramid(int height)
{
	int line;
	int const MARGIN = 10;

	cout << "\n\n";
	
	for (line=1 ; line<=height ; line++)
	{
		int count;
		int total_no_of_spaces = MARGIN + height - line;
		
		for (count = 1 ; count <= total_no_of_spaces ; count++)
			cout << ' ';
	
		for (count = 1; count <= line * 2 ; count++)
			cout << '*';
		
		cout << " \n"; 

	}

	cout << "\n\n";
}
/*end of function */

