//
//  main.m
//  BT3
//
//  Created by Nguyen Ngoc Minh on 8/24/16.
//  Copyright © 2016 Nguyen Ngoc Minh. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h>

#define SUM_TWO_NUMBERS(a,b) ((a) + (b))
#define MAX_NUM(a, b) ((a) > (b) ? (a) : (b))
#define FIND_MAX_OF_3NUMBER(a, b, c) ((MAX_NUM(a, b)) > (c) ? (MAX_NUM(a, b)) : (c))

bool timSo(int mang[20], int soCanTim) {
    
    for (int i = 0; i < 20 ; i++) {
        if (mang[i] == soCanTim) {
            NSLog(@"Vị trí %d", i);
            return true;
        }
    }
    return false;
}

void timSoLonNhat(int mang[20]) {
    int soLonNhat = mang[0];
    for (int i = 0; i < 20 ; i++) {
      if (soLonNhat < mang[i]) {
         soLonNhat = mang[i];
        }
    }
    NSLog(@"Số lớn nhất cần tìm là %d", soLonNhat);
}

void timSoChia2LonNhat(int mang[20]) {
    int kq = 0;
    for (int i = 0; i < 20 ; i++) {
        if ((mang[i] % 2) == 0 ) {
            kq = MAX_NUM(kq, mang[i]);
        }
    }
    NSLog(@"Số chẵn chia 2 lớn nhất cần tìm là %d", kq);
}

void timSoLeCuoiCungCuaMang(int mang[20]) {
    int kq = 0;
    for (int i = 0; i < 20 ; i++) {
        if ((mang[i] % 2) != 0 ) {
            kq = mang[i];
        }
    }
    NSLog(@"Số lẻ cuối cùng của mảng là: %d", kq);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        1/ Viết 01 hàm tìm 01 số trong 01 mảng bất kì
        NSLog(@"bài 1");
        int mang1[20] = {7,3,11,32,8,10};
        int mang2[20] = {23, 17, 9, 72, 30, 94, 8, 203, 22};
        if (timSo(mang1,10)) {
            NSLog(@"Đã tìm thấy trong mảng!");
        } else {
            NSLog(@"Không tìm thấy trong mảng!");
        }
//        2/ Viết 01 Tìm số lớn nhất trong 01 mảng
        NSLog(@"bài 2");
        timSoLonNhat(mang1);
//        3/ Viết 01 tìm số chia hết cho 02 lớn nhất trong mảng
        NSLog(@"bài 3");
        timSoChia2LonNhat(mang2);
//        4/ Viết 01 hàm tìm số lẻ cuối cùng của mảng
        NSLog(@"bài 4");
        timSoLeCuoiCungCuaMang(mang2);
//        5/ Viết 01 macro tính tổng 02 số
        NSLog(@"bài 5");
        NSLog(@"Tổng hai số dùng MACRO: %d", SUM_TWO_NUMBERS(2, 9));
        
//        6/ Viết 01 macro tìm số lớn nhất của 02 số
        NSLog(@"bài 6");
        NSLog(@"Số lớn nhất giữ hai số dùng MACRO: %d", MAX_NUM(4, 8));
        
//        7/ Viết 01 macro tìm số lớn nhất của 03 số
        NSLog(@"bài 7");
        NSLog(@"Số lớn nhất giữ ba số dùng MACRO: %d", FIND_MAX_OF_3NUMBER(11, 8, 20));
        
    }
    return 0;
}
