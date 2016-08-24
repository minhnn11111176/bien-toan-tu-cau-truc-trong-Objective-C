//
//  main.m
//  BT1
//
//  Created by Nguyen Ngoc Minh on 8/24/16.
//  Copyright © 2016 Nguyen Ngoc Minh. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "stdio.h"

void printHelloWorld() {
    NSLog(@"Hello, World!");
}

void sumTwoNumber(int num1, int num2) {
    int sum = num1 + num2;
    NSLog(@"%d + %d = %d", num1, num2, sum);
}

void subTwoNumber(int num1, int num2) {
    int sub = num1 - num2;
    NSLog(@"%d - %d = %d", num1, num2, sub);
}

void sumThreeNumber(int num1, int num2, int num3) {
    int sum = num1 + num2 + num3 ;
    NSLog(@"%d + %d + %d = %d", num1, num2, num3, sum);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1/ Viết 01 hàm in ra hello word
        NSLog(@"1/ Viết 01 hàm in ra hello word");
        printHelloWorld();
        
        //2/ Viết 01 hàm tính tông 02 số
        NSLog(@"2/ Viết 01 hàm tính tông 02 số");
        sumTwoNumber(4, 7);
        
        //3/ Viết 01 hàm tính hiệu 02 số
        NSLog(@"3/ Viết 01 hàm tính hiệu 02 số");
        subTwoNumber(8, 2);
        
        //4/ Viết 01 hàm tính tổng 03 số nhập vào
        NSLog(@"4/ Viết 01 hàm tính tổng 03 số nhập vào");
        int a, b, c;
        NSLog(@"Nhập số thứ 1: ");
        scanf("%d",&a);
        NSLog(@"Nhập số thứ 2: ");
        scanf("%d",&b);
        NSLog(@"Nhập số thứ 3: ");
        scanf("%d",&c);
        sumThreeNumber(a, b, c);
    }
    return 0;
}
