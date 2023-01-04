<?php

include("./database.php");
class Question extends Database{
    public static function getQuestions(){
        $sql = "SELECT q.*,
        MIN(CASE WHEN c.id = (q.id*4)-3 THEN c.answers END) AS answer1,
        MIN(CASE WHEN c.id = (q.id*4)-3 THEN c.id END) AS id_1, 
        MAX(CASE WHEN c.id = (q.id*4)-2 THEN c.answers END) AS answer2,
        MIN(CASE WHEN c.id = (q.id*4)-2 THEN c.id END) AS id_2, 
        MIN(CASE WHEN c.id = (q.id*4)-1 THEN c.answers END) AS answer3,
        MIN(CASE WHEN c.id = (q.id*4)-1 THEN c.id END) AS id_3, 
        MAX(CASE WHEN c.id = (q.id*4) THEN c.answers END) AS answer4,
        MIN(CASE WHEN c.id = (q.id*4) THEN c.id END) AS id_4 
        FROM question q JOIN choice c GROUP by q.id ORDER by q.id;";
            
        $db = new Database();
        $res= $db->conn->query($sql)->fetchAll();
        // return $res;
        $encoded_quiz = json_encode($res);
        print_r($encoded_quiz);
        file_put_contents("quiz.json", $encoded_quiz);
    }
    // public static function evaluate($id){
    //     $sql = "SELECT `status` FROM `choice` WHERE id =$id";
    //     $db = new Database;
    //     $res= $db->conn->query($sql)->fetchAll();
    //     return $res[0];

    // }
    
}
Question::getQuestions();
