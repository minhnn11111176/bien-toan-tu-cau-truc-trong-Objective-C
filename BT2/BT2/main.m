//
//  main.m
//  BT2
//
//  Created by Nguyen Ngoc Minh on 8/24/16.
//  Copyright © 2016 Nguyen Ngoc Minh. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>

void timSoLonNhat(int num1, int num2) {
    if (num1 > num2) {
        NSLog(@"Số lớn nhất %d", num1);
    } else {
        NSLog(@"Số lớn nhất %d", num2);
    }
}

void xepLoaiHocSinh(int diemSo) {
    if (diemSo >= 8) {
        NSLog(@"Loại Giỏi");
    } else if (diemSo >= 6.5 && diemSo < 8) {
        NSLog(@"Loại Khá");
    } else if (diemSo >= 5 && diemSo < 6.5) {
        NSLog(@"Loại Trung Bình");
    } else if (diemSo >= 3.5 && diemSo < 5) {
        NSLog(@"Loại Yếu");
    } else {
        NSLog(@"Loại Kém");
    }
}

void tinhS1(int n) {
    int tongS = 0;
    for (int i = 1; i <= n; i ++) {
        tongS += i;
    }
    NSLog(@"Tổng S1 là: %d", tongS);
}

void tinhS2(int n) {
    int tongS = 0;
    for (int i = 1; i <= n; i ++) {
        tongS += i*(i + 1);
    }
    NSLog(@"Tổng S2 là: %d", tongS);
}

double tinhGiaiThua(double n) {
    if (n == 0) {
        return 1;
    } else
        return n*tinhGiaiThua(n - 1);
}

void timSoDuChia10(int n) {
    while (n > 10) {
        n %= 10;
        if (n < 10) {
            NSLog(@"Số dư cuối cùng là %d", n);
            break;
        }
    }
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        1/ Viết 01 Tìm số lớn nhất trong 2 số
        NSLog(@"bài 1:");
        timSoLonNhat(42, 9);
//        2/ Viết 01 tính tính loại học lực của 1 học sinh dựa vào số điểm được đưa vào. VD: > 8 – giỏi, <5 yếu …
        NSLog(@"bài 2:");
        int a;
        NSLog(@"Nhập vào số điểm của học sinh:");
        scanf("%d", &a);
        xepLoaiHocSinh(a);
//        3/ Viết 01 hàm tính S = 1 + 2 + 3 + ..n với n cho trước
        NSLog(@"bài 3:");
        tinhS1(7);
//        4/ Viết 01 hàm tính giai thừa 01 số n cho trước
        NSLog(@"bài 4:");
        NSLog(@"Giai thừa của %d là %f", 8, tinhGiaiThua(8));
//        5/ Viết 01 hàm tính S = 1*2+2*3+3*4+..n*(n+1)
        NSLog(@"bài 5:");
        tinhS2(3);
//        6/ Viết 01 hàm tính số dư chia 10 nếu > 10 thì tiếp tục
        NSLog(@"bài 6:");
        timSoDuChia10(372);
    }
    return 0;
}
