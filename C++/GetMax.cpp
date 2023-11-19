#include <iostream>
#include <climits>  // Header for using INT_MIN constant
using namespace std;

// Multiple definitions of getMax function for an integer array
int getMax(int arr[], int len) {
    int max = INT_MIN; // Assuming the minimum value of the int type as max
    for (int i = 0; i < len; i++)
        if (max < arr[i])
            max = arr[i];
    return max; // return of results
}

// Multiple definitions of getMax function for float array
float getMax(float arr[], int len) {
    float max = FLT_MIN; // Assuming the minimum value of the float type as max
    for (int i = 0; i < len; i++)
        if (max < arr[i])
            max = arr[i];
    return max; // return of results
}

int main() {
    int intData[10] = { 10, 23, 5, 9, 22, 48, 12, 10, 55, 31 };
    float floatData[10] = { 10.0, 23.5, 5.2, 9.8, 22.1, 48.7, 12.6, 10.3, 55.9, 31.4 };
    // List for float

    cout << "Maximum value of integer data: " << getMax(intData, 10) << endl;
    cout << "Maximum value of float data: " << getMax(floatData, 10) << endl;

    return 0;
}

