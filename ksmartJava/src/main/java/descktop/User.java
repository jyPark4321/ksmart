package main.java.descktop;

public class User {
    private String username;
    private int score;

    public User(String username) {
        this.username = username;
        this.score = 0;
    }

    public String getUsername() {
        return username;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public void displayRank() {
        System.out.println("User: " + username);
        System.out.println("Score: " + score);
    }
}
