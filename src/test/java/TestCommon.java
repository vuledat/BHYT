import com.calculate_tax.operation.Common;
import org.junit.Assert;
import org.junit.Test;

public class TestCommon {
    @Test
    public void getFeeTest1() {
        Common common = new Common();
        int fee = common.getFee(1, 10000000, 12, 1);
        Assert.assertEquals(5400000, fee);
    }

    @Test
    public void getFeeTest2() {
        Common common = new Common();
        int fee = common.getFee(2, 10000000, 12, 1);
        Assert.assertEquals(225180, fee);
    }

    @Test
    public void getFeeTest3() {
        Common common = new Common();
        int fee = common.getFee(3, 10000000, 12, 1);
        Assert.assertEquals(525420, fee);
    }

    @Test
    public void getFeeTest4() {
        Common common = new Common();
        int fee = common.getFee(4, 10000000, 12, 1);
        Assert.assertEquals(2700000, fee);
    }

    @Test
    public void getFeeTest51() {
        Common common = new Common();
        int fee = common.getFee(5, 10000000, 12, 1);
        Assert.assertEquals(750600, fee);
    }

    @Test
    public void getFeeTest52() {
        Common common = new Common();
        int fee = common.getFee(5, 10000000, 12, 2);
        Assert.assertEquals(750600 + 525420, fee);
    }

    @Test
    public void getFeeTest53() {
        Common common = new Common();
        int fee = common.getFee(5, 10000000, 12, 3);
        Assert.assertEquals(750600 + 525420 + 450360, fee);
    }

    @Test
    public void getFeeTest54() {
        Common common = new Common();
        int fee = common.getFee(5, 10000000, 12, 4);
        Assert.assertEquals(750600 + 525420 + 450360 + 375300 , fee);
    }

    @Test
    public void getFeeTest55() {
        Common common = new Common();
        int fee = common.getFee(5, 10000000, 12, 5);
        Assert.assertEquals(750600 + 525420 + 450360 + 375300 + 300240, fee);
    }

    @Test
    public void getFeeTest56() {
        Common common = new Common();
        int fee = common.getFee(5, 10000000, 12, 5);
        Assert.assertEquals(750600 + 525420 + 450360 + 375300 + 300240 + 300240, fee);
    }

    @Test
    public void getFeeTestLuongAm() {
        Common common = new Common();
        int fee = common.getFee(5, -1, 12, 5);
        Assert.assertEquals(null, fee);
    }

    @Test
    public void getFeeTestSlAm() {
        Common common = new Common();
        int fee = common.getFee(5, 1000000, 12, -5);
        Assert.assertEquals(null, fee);
    }
}
