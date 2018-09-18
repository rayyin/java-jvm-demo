package com.ray.jvm.bytecode;

public class Test {
    public static void main(String[] args) {
        System.out.println("hello world");

        boolean a = true;
        if (a) System.out.println("a is true Java");
        if (a == true) System.out.println("a is realy true JVM");
    }
}
