
In this program are used 3 Creational Design Patterns:

  * Abstract Factory
  * Singleton
  * Prototype
  
***Abstract Factory:***

  This can be seen in the 59'th line of the [game_1.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1/game_1.rb) file. In this line I create and run class `Game` and I initialize it using `New_Player` or `Player` class. That 2 classes that are implemented in the [new_player.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1/new_player.rb) and [player.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1/player.rb) files are doing the same thing "being players" but they differ by appearance and some stats. Which is the idea of Abstract Factory design pattern, to use it when you have multiple things that differ only by appearence and some small stats.


***Singleton***

  I used the already implimented module `singleton` that is given by ruby. I used it the [player.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1/player.rb) and [new_player.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1/new_player.rb) classes because player by default we need just one, in case of a singleplayer game is nonsens to have more than one player so I don't need to instantiate more than one player.
  
  
***Prototype***

  The prototype pattern was implimented in the [star.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1/star.rb) file. There are 2 classes, one called `Star` and one `StarCollection`. The idea of prototype design patern is to have a list of prototype classes that you will call only the one that you need and it will create it by himself. Lets say we have a lot of stars of different colors and sizes and stuff, but you know that the star of red color have x size and other characteristics, blue star have y size and other characteristics. So in order to not write always all that characteristics at the creation of it you create a collection of prototypes of "kind of star" and you just create a red or a blue star and the rest will be written in the prototype.
