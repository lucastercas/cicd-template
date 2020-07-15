package hello;

import org.junit.Assert;
import org.junit.Test;

public class ApplicationTest {
    @Test
    public void shouldAnswerWithTrue() {
        int sum = 1 + 1;
        Assert.assertEquals(sum, 2);
    }
}