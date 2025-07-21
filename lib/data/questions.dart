// This file contains the data structure for fill-in-the-blank questions used in quizzes.
// Each question consists of a sentence with blanks(____)that will be replaced with interactive boxes
// that the user can put answer into,
// To add more default questions please follow the structure below.

class FillInTheBlankQuestion {
  final String sentence;
  final List<String> correctAnswers;
  final List<String> options;
  final String? hint;

  FillInTheBlankQuestion({
    required this.sentence,
    required this.correctAnswers,
    required this.options,
    this.hint,
  });
  
}

// que 1

final List<FillInTheBlankQuestion> questionBank = [
  // Question 1(0)
  FillInTheBlankQuestion(
    sentence: "After school, I met my ____ to ask about the ____. She explained it very ____ so I could understand.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's a person who helps students learn.",
    correctAnswers: ["teacher", "homework", "quickly"],
  ),
  // Question 2
   FillInTheBlankQuestion(
    sentence: "The soup was ____ but the weather outside was really ____. So we stayed inside and played ____.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's something you eat when it's cold.",
    correctAnswers: ["delicious", "cold", "football"],
  ),
  FillInTheBlankQuestion(
    sentence: "I love to go to the ____ and climb the ____. It's so much fun to be outside and enjoy the fresh air.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's a high place you can climb.",
    correctAnswers: ["mountain", "mountain"],
  ),
  FillInTheBlankQuestion(
    sentence: "My friend is very ____. He always helps me with my homework and is very ____ to everyone.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's a word to describe someone who is nice.",
    correctAnswers: ["friendly", "friendly"],
  ),
  FillInTheBlankQuestion(
    sentence: "We had a ____ day at school. We learned about ____ and played ____ during recess.",
    options: ["nothing", "running", "teacher", "good", "quickly", "homework","cold", "catch and catch","friendly"],
    hint: "It's a word to describe something that tastes good.",
    correctAnswers: ["good", "nothing", "catch and catch"],
  ),
  FillInTheBlankQuestion(
    sentence: "I like to play ____ with my friends after school. We run around and have a lot of ____ together.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's a sport played with a ball.",
    correctAnswers: ["football", "running"],
  ),
  FillInTheBlankQuestion(
    sentence: "When it gets too ____ outside, I prefer to stay inside and read a book or do my ____ quietly.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's the opposite of hot.",
    correctAnswers: ["cold", "homework"],
  ),
  FillInTheBlankQuestion(
    sentence: "My favorite subject is ____ because I love learning new things and my ____ makes it interesting.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's a person who teaches students.",
    correctAnswers: ["teacher", "friendly"],
  ),
  FillInTheBlankQuestion(
    sentence: "I always try to finish my ____ ____ so I can have more time to play outside with my friends.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's a word that means fast.",
    correctAnswers: ["homework", "quickly"],
  ),
  // Question 10(9)
  FillInTheBlankQuestion(
    sentence: "On weekends, I like to go to the ____ and enjoy the fresh air while ____ around with my friends.",
    options: ["mountain", "running", "teacher", "delicious", "quickly", "homework","cold", "football","friendly"],
    hint: "It's a place with high land.",
    correctAnswers: ["mountain", "running"],
  ),
];




// que 2
final List<FillInTheBlankQuestion> questionBank1 = [
  // Question 1(0)
  FillInTheBlankQuestion(
    sentence: "A ____ lives in water and breathes through ____. It cannot live on land.",
    options: ["dog", "lungs", "cat", "fish", "gills", "fur", "tail", "wing", "leaf"],
    hint: "Think of a water animal and how it breathes.",
    correctAnswers: ["fish", "gills"],
  ),
  // Question 2
   FillInTheBlankQuestion(
    sentence: "A bird has ____ to fly and a ____ to eat seeds and worms.",
    options: ["fins", "wings", "beak", "teeth", "paws", "claws", "fur", "gills", "tongue"],
    hint: "Think of what helps birds fly and eat.",
    correctAnswers: ["wings", "beak"],
  ),
  FillInTheBlankQuestion(
    sentence: "A ____ is a mammal that lives in the ocean and breathes using ____.",
    options: ["shark", "whale", "gills", "lungs", "dolphin", "scales", "fins", "water", "blowhole"],
    hint: "It's a large sea mammal that breathes air.",
    correctAnswers: ["whale", "lungs"],
  ),
  FillInTheBlankQuestion(
    sentence: "An ____ has six legs and a hard outer shell called an ____. ",
    options: ["ant", "spider", "fly", "exoskeleton", "fur", "wings", "sting", "shell", "web"],
    hint: "Think of bugs and their body protection.",
    correctAnswers: ["ant", "exoskeleton"],
  ),
  FillInTheBlankQuestion(
    sentence: "A ____ can live both in water and on land. It lays eggs and has smooth ____.",
    options: ["frog", "lizard", "skin", "scales", "fur", "feathers", "webbed", "claws", "tail"],
    hint: "It jumps and says ribbit!",
    correctAnswers: ["frog", "skin"],
  ),
  FillInTheBlankQuestion(
    sentence: "A ____ is a reptile that has dry ____ and lays eggs on land.",
    options: ["turtle", "snake", "scales", "feathers", "skin", "shell", "gills", "tail", "fur"],
    hint: "Think cold-blooded animals with rough skin.",
    correctAnswers: ["snake", "scales"],
  ),
  FillInTheBlankQuestion(
    sentence: "A ____ is a common pet that barks, and a ____ is a pet that purrs.",
    options: ["fish", "dog", "cat", "hamster", "meow", "bark", "parrot", "tail", "fur"],
    hint: "Think of best friends with fur.",
    correctAnswers: ["dog", "cat"],
  ),
  FillInTheBlankQuestion(
    sentence: "A polar bear lives in the ____ and has thick ____ to stay warm.",
    options: ["jungle", "desert", "ice", "fur", "feathers", "skin", "mountain", "forest", "tail"],
    hint: "Think cold weather animals.",
    correctAnswers: ["ice", "fur"],
  ),
  FillInTheBlankQuestion(
    sentence: "A kangaroo moves by ____, while a snake moves by ____. ",
    options: ["hopping", "sliding", "walking", "crawling", "jumping", "flying", "running", "wiggling", "swimming"],
    hint: "How do they move without legs or with strong legs?",
    correctAnswers: ["hopping", "sliding"],
  ),
  // Question 10(9)
  FillInTheBlankQuestion(
    sentence: "A cow says ____ and a duck says ____. Each animal has a special sound.",
    options: ["woof", "moo", "meow", "quack", "buzz", "chirp", "neigh", "hiss", "bark"],
    hint: "Think of farm animals and their voices.",
    correctAnswers: ["moo", "quack"],
  ),
];


// que 3


final List<FillInTheBlankQuestion> questionBank2 = [
  // Question 1(0)
  FillInTheBlankQuestion(
    sentence: "The Earth goes around the ____, and the ____ goes around the Earth.",
    options: ["moon", "sun", "planet", "star", "earth", "comet", "cloud", "night"],
    hint: "Think of day and night.",
    correctAnswers: ["sun", "moon"],
  ),
  // Question 2
   FillInTheBlankQuestion(
    sentence: "Mars is known as the ____ planet because of its red color and dusty ____. ",
    options: ["hot", "gas", "rocky", "red", "surface", "ring", "dust", "moon", "storm"],
    hint: "Think of color and ground.",
    correctAnswers: ["red", "surface"],
  ),
  FillInTheBlankQuestion(
    sentence: "The Moon shines in the night sky, but it does not have its own ____. It reflects light from the ____. ",
    options: ["sun", "light", "fire", "cloud", "heat", "moon", "shadow", "sky", "energy"],
    hint: "Think of reflection and light source.",
    correctAnswers: ["light", "sun"],
  ),
  FillInTheBlankQuestion(
    sentence: "The ____ is a star at the center of our solar system. It gives us light and ____. ",
    options: ["sun", "planet", "moon", "energy", "dark", "cold", "wind", "gravity", "storm"],
    hint: "It's hot and powers life on Earth.",
    correctAnswers: ["sun", "energy"],
  ),
  FillInTheBlankQuestion(
    sentence: "We have day when our side of Earth faces the ____, and night when it faces ____. ",
    options: ["sun", "moon", "dark", "light", "shadow", "sky", "planet", "night", "sunlight"],
    hint: "Think of the source of daylight.",
    correctAnswers: ["sun", "away"],
  ),
  FillInTheBlankQuestion(
    sentence: "At night, we can see many ____. They are giant balls of ____ burning far away.",
    options: ["stars", "clouds", "fire", "gas", "light", "planets", "dust", "moon", "heat"],
    hint: "What twinkles in the night sky?",
    correctAnswers: ["stars", "gas"],
  ),
  FillInTheBlankQuestion(
    sentence: "The force called ____ pulls everything toward Earth. It also keeps the planets in orbit around the ____. ",
    options: ["gravity", "sun", "moon", "space", "light", "stars", "force", "earth", "pull"],
    hint: "Think of the invisible pull.",
    correctAnswers: ["gravity", "sun"],
  ),
  FillInTheBlankQuestion(
    sentence: "Astronauts wear space ____ and travel in a ____ to explore space.",
    options: ["rocket", "helmet", "moon", "spacesuit", "ship", "boots", "helmet", "comet", "planet"],
    hint: "Think of what protects and moves them.",
    correctAnswers: ["spacesuit", "rocket"],
  ),
  FillInTheBlankQuestion(
    sentence: "There are eight planets in our ____. Earth is the third planet from the ____. ",
    options: ["sun", "moon", "solar system", "star", "universe", "planet", "cloud", "galaxy", "sky"],
    hint: "Think of our planetary neighborhood.",
    correctAnswers: ["solar system", "sun"],
  ),
  // Question 10(9)
  FillInTheBlankQuestion(
    sentence: "A ____ is made of ice and dust. When it gets close to the Sun, it forms a bright ____. ",
    options: ["comet", "tail", "asteroid", "rocket", "star", "fire", "smoke", "cloud", "planet"],
    hint: "Think of a space object with a glowing trail.",
    correctAnswers: ["comet", "tail"],
  ),
];


// que 4


final List<FillInTheBlankQuestion> questionBank3 = [
  // Question 1(0)
  FillInTheBlankQuestion(
    sentence: "A ____ is an insect with six legs and two long ____. It is often found in dark places.",
    options: ["cockroach", "wings", "legs", "feelers", "eyes", "antennae", "tail", "teeth", "claws"],
    hint: "Think of what helps it sense the environment.",
    correctAnswers: ["cockroach", "antennae"],
  ),
  // Question 2
   FillInTheBlankQuestion(
    sentence: "Cockroaches usually hide in ____ places like under the sink or behind the ____. ",
    options: ["bright", "cold", "dark", "fridge", "light", "sofa", "fan", "door", "bed"],
    hint: "Think of where you don’t often look.",
    correctAnswers: ["dark", "fridge"],
  ),
  FillInTheBlankQuestion(
    sentence: "Cockroaches have hard outer shells called ____, which protect their ____. ",
    options: ["wings", "shell", "exoskeleton", "bones", "organs", "skin", "fur", "joints", "legs"],
    hint: "What insects use for body protection?",
    correctAnswers: ["exoskeleton", "organs"],
  ),
  FillInTheBlankQuestion(
    sentence: "Cockroaches are ____, meaning they eat both plants and ____. ",
    options: ["carnivores", "herbivores", "omnivores", "meat", "leaves", "sugar", "wood", "insects", "crumbs"],
    hint: "They eat almost anything!",
    correctAnswers: ["omnivores", "meat"],
  ),
  FillInTheBlankQuestion(
    sentence: "Cockroaches can move very ____. They use their six ____ to scurry away.",
    options: ["slowly", "quickly", "legs", "hands", "wings", "claws", "eyes", "feet", "tails"],
    hint: "They’re hard to catch!",
    correctAnswers: ["quickly", "legs"],
  ),
  FillInTheBlankQuestion(
    sentence: "A female cockroach lays eggs in a case called an ____, which holds many tiny ____. ",
    options: ["cocoon", "sack", "ootheca", "babies", "worms", "larvae", "bugs", "eggs", "shell"],
    hint: "Special term for egg case.",
    correctAnswers: ["ootheca", "eggs"],
  ),
  FillInTheBlankQuestion(
    sentence: "Some cockroaches have ____, but not all of them can actually ____. ",
    options: ["claws", "wings", "run", "walk", "fly", "jump", "legs", "eyes", "tails"],
    hint: "Do they really fly?",
    correctAnswers: ["wings", "fly"],
  ),
  FillInTheBlankQuestion(
    sentence: "Cockroaches can survive without their ____ for several days and without ____ for a long time.",
    options: ["food", "head", "heart", "tail", "antennae", "eyes", "wings", "legs", "water"],
    hint: "They’re known for being tough!",
    correctAnswers: ["head", "food"],
  ),
  FillInTheBlankQuestion(
    sentence: "Cockroaches use their long ____ to feel the environment and their ____ to smell.",
    options: ["legs", "tail", "antennae", "wings", "eyes", "feet", "nose", "feelers", "claws"],
    hint: "Insects don't have noses!",
    correctAnswers: ["antennae", "antennae"],
  ),
  // Question 10(9)
  FillInTheBlankQuestion(
    sentence: "Cockroaches do not bite people, but they can spread ____ if they walk on our ____. ",
    options: ["bacteria", "clothes", "germs", "food", "hair", "smell", "shoes", "light", "sugar"],
    hint: "They carry germs.",
    correctAnswers: ["germs", "food"],
  ),
];