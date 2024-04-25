package main.java.descktop;

import java.util.Random;

public class Music {
    private static String[] questions = {
        "ㅅㅈㅎㅈ",
        "ㅈㄴ",
        "ㅇㄹㄹ",
        "ㄹㅈㅋㅅㅇㅂㅇㅅ",
        "ㅇㄱㄱ"
    };

    private static String[] answers = {
        "소주한잔",
        "좋니",
        "아리랑",
        "라젠카세이브어스",
       "애국가"
    };
    

    public static String getRandomQuestion() {
        Random random = new Random();
        int randomIndex = random.nextInt(questions.length);
        return questions[randomIndex];
    }

    public static String getAnswer(String question) {
        for (int i = 0; i < questions.length; i++) {
            if (questions[i].equalsIgnoreCase(question)) {
                return answers[i];
            }
        }
        return null;
    }
}
