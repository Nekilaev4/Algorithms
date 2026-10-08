#include <iostream>
#include <fstream>
#include "array.h"

using namespace std;

int main(int argc, char *argv[])
{
    if (argc < 2) { cout << "The file was not found.\n"; return 1;}

    ifstream filetask1(argv[1]);
    if(!filetask1) {cout << "Error!"; return 1;}
   
    int n;
    size_t y; 
    filetask1 >> n;

	if (n < 0) {y = 0;}
	else {y = static_cast<size_t>(n);}

    Array *Arre = array_create(y);

    for (int i = 0; i < n; ++i) {
        int value;
        filetask1 >> value;

        array_set(Arre, i, value);
    }

    int maxSum = 0;

    if (n >= 5) {
        int currentSum = 0;

        for (int j = 0; j < 5; ++j) {
            currentSum += array_get(Arre, j);
        }

        maxSum = currentSum;

        for (int i = 5; i < n; ++i) {
            currentSum -= array_get(Arre, i - 5);
            currentSum += array_get(Arre, i);

            if (currentSum > maxSum) {
                maxSum = currentSum;
            }
        }
    }

	cout << "The maximum sum of 5 adjacent elements: " << maxSum << endl;
	array_delete(Arre);
}