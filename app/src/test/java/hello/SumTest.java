package hello;

import org.junit.Assert;
import org.junit.Test;

public class SumTest {
  
  @Test
  public void shouldSumRight() {
    Sum sum = new Sum();
    Assert.assertEquals(sum.sum(), 2);
  }
}