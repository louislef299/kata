package org.example;

public class App {
    public int Add(String nums) {
        if (nums == "") {
            return 0;
        }

        int value = 0;
        try {
            String[] parts = nums.split(",");
            for (String part : parts) {
                value += Integer.parseInt(part.trim());
            }
        } catch (NumberFormatException e) {
            System.err.println("Error: Invalid number format. " + e.getMessage());
            return 0;
        }
        return value;
    }

    public static void main(String[] args) {
        App app = new App();
        System.out.println(app.Add("1,1"));
    }
}
