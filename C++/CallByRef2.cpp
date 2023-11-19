#include <iostream>
using namespace std;

const float PI = 3.14159265f;

struct Circle {
    float radius, cx, cy;
};

struct Rectangle {
    float x1, y1; // vertex coordinates at the bottom left
    float x2, y2; // vertex coordinates at the top right
};

// Multiple Definition of Functions for Circle
void inputData(Circle &c) {
    cout << "Radius of circle : ";
    cin >> c.radius;
    cout << "Center coordinate(x) : ";
    cin >> c.cx;
    cout << "Center coordinate(y) : ";
    cin >> c.cy;
}

void prData(Circle &c) {
    cout << "Radius = " << c.radius << endl;
    cout << "Center coordinate" = (" << c.cx << ", " << c.cy << ")" << endl;
}

float area(Circle &c) {
    return PI * c.radius * c.radius;
}

// Multiple Definition of Functions for Rectangle
void inputData(Rectangle& rect) {
    cout << "Lower left coordinate(x1, y1) : ";
    cin >> rect.x1 >> rect.y1;
    cout << "Top right coordinate(x2, y2) : ";
    cin >> rect.x2 >> rect.y2;
}

void prData(Rectangle &rect) {
    cout << "Lower left coordinate = (" << rect.x1 << ", " << rect.y1 << ")" << endl;
    cout << "Top right coordinate = (" << rect.x2 << ", " << rect.y2 << ")" << endl;
}

float area(Rectangle &rect) {
    return (rect.x2 - rect.x1) * (rect.y2 - rect.y1);
}

int main() {
    Circle circle;
    inputData(circle);
    cout << "Information of the circle" << endl;
    prData(circle);
    cout << "Area of circle = " << area(circle) << endl;

    Rectangle rectangle;
    inputData(rectangle);
    cout << "Information of the rectangle" << endl;
    prData(rectangle);
    cout << "Area of rectangle = " << area(rectangle) << endl;

    return 0;
}

