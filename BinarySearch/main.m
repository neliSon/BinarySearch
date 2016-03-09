//
//  main.m
//  BinarySearch
//
//  Created by Nelson Chow on 2016-03-08.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

int findElem(int array[], int st, int en, int elem);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int ar[] = {1,2,3,5,7,12,14,26,35};
        int size = sizeof(ar)/sizeof(int);

        int index = findElem(ar, 0, size-1, 15);
        NSLog(@"%i", index);
    }
    return 0;
}

int findElem(int array[], int st, int en, int elem) {

    int center = st + (en - st) / 2;
    if (st > en) {
        return -1;
    }else if (array[center] == elem) {
        return center;
    }else if (array[center] > elem) {
        int index = findElem(array, st, center-1, elem);
//        center = (center - st) / 2;
        return index;
    }else if (array[center] < elem){
        int index = findElem(array, center+1, en, elem);
//        center = (center + en) / 2;
        return index;
    }
    
    
    
    return -1;
    
}