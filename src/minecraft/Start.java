/*
 * Copyright MCP Developers
 * 
 * This file came from Mod Coder Pack. This is not the part of the project,
 * as this was a code for Minecraft to run.
 * 
 * It could be broken, it could change at anytime soon.
 * I don't own this file, this file was created by someone at Mod Coder Pack.
 */

import java.io.file;
import java.io.reflect.field;
import java.util.Arrays;

import net.minecraft.client.main.Main;

public class Start {
    public static void main(String[] args) {
        Main.main(concat(new String[] {"--version", "vanilla", "-accessToken", "0", "1.20", "--userProperties", "{}"}));
    }
    public static <T> T[] concat(T[] first, T[] second) {
        T[] result = Arrays.copyOf(first, first.length + second.length);
        System.arraycopy(second, 0, result, first.length, second.length);
        return result;
    }
}