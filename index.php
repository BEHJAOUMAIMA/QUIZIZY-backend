<?php
// include_once('script.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <title>Quiz Application</title>
    <!-------- Link css ----------->
    <link rel="stylesheet" href="./dist/css/style.css" />
</head>

<body>
    <div class="container">
        <div id="stepper">
            <ul id="prog">
                <li>
                    <i class="icon uil uil-user-exclamation"></i>
                    <div class="progress one">
                        <p class="number">1</p>
                        <i class="uil uil-check"></i>
                    </div>
                    <p class="step">Informations</p>
                </li>
                <li>
                    <i class="icon uil uil-file-question-alt"></i>
                    <div class="progress two">
                        <p class="number">2</p>
                        <i class="uil uil-check"></i>
                    </div>
                    <p class="step">Quiz</p>
                </li>
                <li>
                    <i class="icon uil uil-trophy"></i>
                    <div class="progress three">
                        <p class="number">3</p>
                        <i class="uil uil-check"></i>
                    </div>
                    <p class="step">Résultats</p>
                </li>
            </ul>
        </div>
        <div class="loading">
            <div class="affiche">
              <span class="test">Tester</span><span class="part">Vos Connaissances !</span>
            </div>
            <div id="start">
                Commencer Le Quiz
            </div>
        </div>


    </div>
    <div class="section" id="section">
        <div>
            <p class="logo"><span class="p1">Quiz</span><span class="p2">izy</span> <span class="p3"> !</span> </p>
        </div>
        <div class="form">
            <input id="input" type="text" placeholder="Entrer votre Nom" />
            <div id="errorname" class="errorname"></div>
            <button id="btnvalider">Valider</button>
        </div>
    </div>
    <div class="guide">
        <h4 class="title">Guide de QUIZ :</h4>
        <p class="rule">1. Vous avez 3O secondes pour répondre à chaque question</p>
        <p class="rule">2. Une fois que vous avez sélectionné votre réponse, cela ne peut pas être fait.</p>
        <p class="rule">3. Vous obtiendrez des points sur les bases de vos réponses correctes</p>
        <p class="rule">4. Vous ne pouvez pas quitter le quiz pendant que vous jouez</p>
        <div id="button">
            <button id="continue" onclick="StartQuiz()">Continuer</button>
            <button id="exit"> Sortir</button>
        </div>
    </div>

    <div id="quiz-app" class="application">
        <div class="information">
            <div class="categorie">
                AWS Certified Cloud Practitioner (CLF-C01) - Sample Exam Questions
            </div>
            <div class="timer">
                <span id="time"></span>
            </div>
        </div>
        <div class="question">
            <h2 id="questionNo" class="titre"></h2>
            <h2 id="question" class="titre"></h2>
        </div>
        <div id="options" class="options">
            <p class="answer" id="option1"></p>
            <p class="answer" id="option2"></p>
            <p class="answer" id="option3"></p>
            <p class="answer" id="option4"></p>
        </div>
        <div class="app-footer">
            <p id="total_correct"></p>
            <button id="btnNext"> Suivant</button>
        </div>
    </div>
    <div class="" id="result">
        <div>
            <h6>Vous Avez complété le Quiz <i class="uil uil-award"></i></h6>
            <h6 id="points"></h6>
        </div>
        <div class="correction">
            
        </div>
        <div class="div">
            <button id="quit">Quitter</button>
            <button id="startAgain">Recommencer !</button>
        </div>

    </div>

</body>

</html>
</div>
<script src="./script.js"></script>
</body>

</html>