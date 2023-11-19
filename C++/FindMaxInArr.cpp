#include <iostream>
using namespace std;

int main()
{
    int data[10] = { 10, 23, 5, 9, 22, 48, 12, 10, 55, 31 };
    int max = data[0];  // Assume that the first data in the data is max
    // Here, max is a variable that stores the maximum value so far. It is initialized to the first data 'data[0]'

    cout << "데이터 : " << data[0];  // Data output number 0
    for (int i = 1; i < 10; i++) {    // Compare the remaining 9 data
        cout << "  " << data[i];     // Output data number i
        if (max < data[i])    // Compare if data i is greater than max
            max = data[i];     // Replace max with data number i
    }
    cout << endl << endl;
    cout << "Maximum value of an array : " << max << endl;
    return 0;
}

