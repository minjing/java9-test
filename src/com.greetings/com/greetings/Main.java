package com.greetings;

import org.astro.World;
import com.socket.NetworkSocket;

public class Main {

    public static void main(String[] args) {
        System.out.format("Greetings %s!%n", World.name());
        NetworkSocket s = NetworkSocket.open();
        System.out.println(s.getClass());
    }
}
