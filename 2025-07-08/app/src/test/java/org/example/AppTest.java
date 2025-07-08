package org.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppTest {
    @Test void addReturnsCorrectResults() {
        App app = new App();
        assertEquals(0, app.Add(""), "adding an empty string should return 0");
        assertEquals(1, app.Add("1"), "adding a single number should return the number");
        assertEquals(2, app.Add("1,1"), "1,1 should be 2");
        assertEquals(3, app.Add("1,1,1"), "1,1,1 should be 3");
    }
}
