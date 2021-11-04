import java.io.*;
import java.util.*;
import java.lang.Math.*;

public class RsaKeyGen {
    public static void main(String[] args) throws Exception {
        generateKeyPair();
    }

    public static void generateKeyPair() throws Exception {
        int p = generateNum();
        while (!isPrime(p))
            p = generateNum();

        int q = generateNum();
        while (!isPrime(q))
            q = generateNum();

        double n = p * q;
        double phi = (p - 1) * (q - 1);

        double e = generateE(phi);
        while (gcd(phi, e) != 1)
            e = generateE(phi);

        double d = (1 / e) % phi;

        writeToFile(n, e, d);

        return;
    }

    public static int generateNum() {
        Random x = new Random();
        return x.nextInt((Integer.MAX_VALUE - 1) + 1) + 1;
    }

    public static boolean isPrime(int x) {
        int bound = (int) Math.ceil(Math.sqrt(x));

        for (int i = 2; i <= bound; i++)
            if (x % i == 0) return false;

        return true;
    }

    public static double generateE(double phi) {
        Random x = new Random();
        if (phi <= 0) phi = 2;
        return (x.nextInt(((int) phi - 1)) + 1) + 1;
    }

    public static double gcd(double phi, double e) {
        double smaller = (phi < e) ? phi : e;
        for (double i = smaller; i >= 0; i++) {
            if ((phi % i == 0) && (e % i == 0))
                return i;
        }
        return 1;
    }

    public static void writeToFile(double n, double e, double d) throws Exception {
        BufferedWriter appender = new BufferedWriter(new FileWriter("pubkey.rsa", true));
        appender.append(e + "\n" + n);
        appender.close();

        BufferedWriter appender2 = new BufferedWriter(new FileWriter("privkey.rsa", true));
        appender2.append(d + "\n" + n);
        appender2.close();

        return;
    }
}
