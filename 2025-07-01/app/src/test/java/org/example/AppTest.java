package org.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {
    @Test public void add() {
        App classUnderTest = new App();
        assertEquals(0, classUnderTest.add(""));
        assertEquals(1, classUnderTest.add("1"));
    }
}
