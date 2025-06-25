package org.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {
    @Test 
    public void addReturnsProperValues() {
        App app = new App();
        assertTrue("add should return zero when empty", app.add("") == 0);
        assertTrue("add should return a single integer", app.add("0") == 0);
        assertTrue("add should return a single integer", app.add("1") == 1);
    }
}
