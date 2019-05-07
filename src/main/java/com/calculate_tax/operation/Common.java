package com.calculate_tax.operation;

public class Common {
    public int getFee(int nhom, int luong_thang, int phuong_thuc, int sl) {
        int fee = 0;
        switch (nhom) {
            case 1:
                fee = (int) (luong_thang * 4.5 / 100 * phuong_thuc);
                break;
            case 2:
                fee = (int) (750600 * 0.3);
                break;
            case 3:
                fee = (int) (750600 * 0.7);
                break;
            case 4:
                fee = (int) (luong_thang * 4.5 / 100 * 0.5 * phuong_thuc);
                break;
            case 5:
                switch (sl) {
                    case 1:
                        fee = 750600;
                        break;
                    case 2:
                        fee = 750600;
                        fee += (int) (fee * 0.7);
                        break;
                    case 3:
                        fee = 750600;
                        fee += (int) (fee * 0.7 + fee * 0.6);
                        break;
                    case 4:
                        fee = 750600;
                        fee += (int) (fee * 0.7 + fee * 0.6 + fee * 0.5);
                        break;
                }

                if (sl > 4) {
                    int a = 0;
                    fee = 750600;
                    fee += (int) (fee * 0.7 + fee * 0.6 + fee * 0.5);

                    a = (int) (( sl-5 ) * 750600 * 0.4);
                    fee += a;
                }
                break;
        }
        return fee;
    };
}
