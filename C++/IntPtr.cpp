#include <iostream>
using namespace std;

int main()
{
	int a = 10, b = 100;
	int *ptr = &a;  // Declare pointer ptr and put the address of a.
	// int*ptr This declaration means a pointer to the int data type.
	// ptr is a variable that stores addresses and refers to the location where integer values are stored in memory.
	// In the case of int ptr, it means the variable 'ptr' of the int data type. Here, ptr is a variable that stores integer values.
	// Since there is no symbol of *, this variable does not store an address, but stores an actual value (integer).
	// Declare an integer pointer 'ptr' and initialize it to the address of the variable 'a'. That is, ptr points to the address of 'a'.

	cout << "Value where ptr points : " << *ptr << endl;
	// Outputs the value of the memory location that ptr points to

	*ptr = 20;  // Save 20 where ptr points
	cout << "Value of variable a : " << a << endl;
	// The previously changed value through the pointer is reflected and 20 is output.

	ptr = &b;   // Let ptr point to b
	cout << "Value of variable b: " << *ptr << endl;
	// It outputs the value of the memory location indicated by ptr and now outputs 100 corresponding to the value of 'b'.

	return 0;
}

