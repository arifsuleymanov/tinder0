package heroku;

public class HerokuEnv {

    public static int port() {
        try {
            return Integer.parseInt(System.getenv("PORT"));
        } catch (NumberFormatException ex) {
            return 8080;
        }
    }

    public static String jdbc_url() {
        return "jdbc:postgresql://ec2-3-220-207-90.compute-1.amazonaws.com:5432/dgoetfuaviiqk";
    }

    public static String jdbc_username() {
        return "fnerjqwfyojtcl";
    }

    public static String jdbc_password() {
        return "be7c163971b7a147673a5e14a6c2e842ab706e50e1e209eb9cb3662d41716d80";
    }
}
