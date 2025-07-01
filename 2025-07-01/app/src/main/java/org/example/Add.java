package org.example;

@Component
public class Add implements Serializable {
    private String nums;
    private int result;

    public Add() {
        this.nums = "";
        this.result = 0;
    }

    public String getNums() {
        return nums;
    }

    public void setNums(String nums) {
        this.nums = nums;
        computeResult();
    }

    public int getResult() {
        return result;
    }

    private void computeResult() {
        if (nums == null || nums.isEmpty()) {
            result = 0;
        } else {
            try {
                result = Integer.parseInt(nums);
            } catch (NumberFormatException e) {
                result = 0;
            }
        }
    }
}
