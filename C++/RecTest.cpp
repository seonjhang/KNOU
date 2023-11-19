#include <iostream>
using namespace std;

int main()
{
    int a = 10, b = 20;
    int &aRef = a; // Declare the reference variable aRef referring to a
    // Declaration and initialization of references

    cout << "value of a : " << a << endl;
    cout << "value aRef refers to : " << aRef << endl << endl;
    aRef = 100;
    cout << "value of a : " << a << endl;
    aRef = b;
    cout << "value of a : " << a << endl;
    return 0;
}

// The limitation of the reference is that it must be initialized at the same time as the declaration.
// A variable that has been referenced once cannot refer to another variable.
// References are mainly used to transfer values from functions to parameters or to be used as return values for functions, 
// saving memory and helping to write efficient codes when calling functions.

