#include <iostream>
using namespace std;

const float PI = 3.14159265f;
struct Circle {
    float radius, cx, cy;
};

// Enter data of a circle
void inputData(Circle &c) // Unlike value calls, reference calls carry the reference, or address, of the real parameter.
{     
    cout << "Radius of a circle : ";
    cin >> c.radius;
    cout << "Center coordinate(x) : ";
    cin >> c.cx;
    cout << "Center coordinate(y) : ";
    cin >> c.cy;
}

// Output of data of a circle
void prData(const Circle &c) {
    cout << "Radius = " << c.radius << endl;
    cout << "Center coordinate = (" << c.cx << ", " << c.cy << ")" << endl;
}

// Calculate the area of a circle
float area(const Circle &c) {
    return PI * c.radius * c.radius;
}

int main() {
    Circle circle = { 1, 2, 3 };
    inputData(circle);
    cout << "Information of the circle" << endl;
    prData(circle);
    cout << "Area of a circle = " << area(circle) << endl;

    return 0;
}

