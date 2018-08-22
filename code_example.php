<?php

class CodeExmple {
    public function run() {
        //All PHP variables need to start with the $ dollar sign
        //PHP uses square brackets and this => arrow notation to define 'Associative arrays', aka dictionaries
        $answers = [
            1 => 'This could be one answer',
            4 => 'And this is another answer'
        ];
        //$this-> is used to access other functions in the same class
        $matches = $this->matchQuestionsAndAnswers($answers);

        foreach($matches as $match) {
            $match->printQandA();
        }
    }

    public function matchQuestionsAndAnswers($answers)
    {
        //PHP uses square brackets and this => arrow notation to define 'Associative arrays', aka dictionaries
        $questions = [
            [
                'id' => 1,
                'question' => 'How are you today?'
            ], 
            [
                'id' => 2,
                'question' => 'What is your favourite color?'
            ],
            [
                'id' => 3,
                'question' => 'When is your birthday?'
            ],
            [
                'id' => 4,
                'question' => 'Do you like cats?'
            ]
        ];
        $matches = [];
        foreach($questions as $question) {
            //Square brackets access the array value at the specified key
            $answerId = $question['id'];
            if (array_has_key($answerId, $answers)) {
                $match = new QuestionAnswer();
                $match->setQuestion($question['question']);
                $match->setAnswer($answers[$answerId]);
                //This is PHP syntax for adding the $match object to the $mathes array
                $matches[] = $match;
            }
        }
        return $matches;
    }    
}

class QuestionAnswer {
    //Class properties
    private $question;
    private $answer;

    public function setQuestion($question) {
        //$this refers to the containing object
        // -> arrow is used to access object properties or functions
        $this->question = $question;
    }

    public function setAnswer($answer) {
        $this->answer = $answer;
    }

    public function printQandA() {
        //echo() is PHP's print function
        // . is used to join strings
        echo($this->question . " leads to " . $this->answer);
    }
}


