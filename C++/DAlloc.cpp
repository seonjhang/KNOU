#include <iostream>
using namespace std;

int main()
{
    int *intPtr;
    // Declare the pointer intPtr to the int format.
    intPtr = new int[4];  // Allocate memory to store 4 int values
    // In C++, dynamic memory allocation is allocated using the 'new' operator.
    // The 'new' is used to dynamically allocate memory for four elements to an int-type array.

    *intPtr = 10;
    *(intPtr + 1) = 20;
    intPtr[2] = 30;
    intPtr[3] = 40;

    for (int *p = intPtr, i = 0; i < 4; i++)
        cout << *p++ << " ";  // After outputting the value where p points, move p to the next
    cout << endl;

    delete[] intPtr;  // Returns memory allocated by intPtr
    // Use the delete operator to release the memory.

    return 0;
}
// Dynamic memory allocation allocates as much memory as necessary during program execution.
// When used, the memory must be released to prevent memory leakage and to manage the memory efficiently.

