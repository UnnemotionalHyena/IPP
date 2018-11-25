
In this program are used 3 Creational Design Patterns for Lab_1 and 3 Structural/Behavioral Patterns for Lab_2:

  * Lab_1
    * Abstract Factory
    * Singleton
    * Prototype
  * Lab_2
    * Iterator 
    * Command 
    * Composite


  
***Abstract Factory:***

  This can be seen in the 59'th line of the [game_1.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/game_1.rb) file. In this line I create and run class `Game` and I initialize it using `New_Player` or `Player` class. That 2 classes that are implemented in the [new_player.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/new_player.rb) and [player.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/player.rb) files are doing the same thing "being players" but they differ by appearance and some stats. Which is the idea of Abstract Factory design pattern, to use it when you have multiple things that differ only by appearence and some small stats.


***Singleton***

  I used the already implimented module `singleton` that is given by ruby. I used it the [player.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/player.rb) and [new_player.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/new_player.rb) classes because player by default we need just one, in case of a singleplayer game is nonsens to have more than one player so I don't need to instantiate more than one player.
  
  
***Prototype***

  The prototype pattern was implimented in the [star.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/star.rb) file. There are 2 classes, one called `Star` and one `StarCollection`. The idea of prototype design patern is to have a list of prototype classes that you will call only the one that you need and it will create it by himself. Lets say we have a lot of stars of different colors and sizes and stuff, but you know that the star of red color have x size and other characteristics, blue star have y size and other characteristics. So in order to not write always all that characteristics at the creation of it you create a collection of prototypes of "kind of star" and you just create a red or a blue star and the rest will be written in the prototype.


***Iterator***

  Iterator provide a way to access the elements of an aggregate object sequentially. So we have to be able to have acces to all objects from a list step by step in a loop to the end of the list. In the ruby exist an already defined iterator called `each`. Lets call it an internal iterator that is the most used method in the ruby. I also created an external iterator. This is a class that gets an array as a parameter and then you have acces to methods like `first`, `next`, `has_next`... This class is defined in the [externiterator.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/externiterator.rb) file. This external iterator was used at 62'nd to 68'th lines in [game_1.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/game_1.rb) file


***Command***

  `Command` is a more hardcore design pattern that `iterator`. The command idea is to have some requests but you will not execute them instantly but you will store them into a class in my case `AddItemToButtonListCommand` you store them into that object and execute them from this object. This is made in order to have control on the request. You can store all request that were done to make some kind of log, you can delete a request before executing in case you don't want to do this. I stored all classes that I use to realize this pattern in the [command_pattern.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/command_pattern.rb) file. And used them at 25'th and 33'rd lines in [game_1.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/game_1.rb) file.

***Composite***

  `Composite` pattern is pretty simple. The idea of this pattern is to split a big badass class into a lot of small `leafs` classes that cannot further be splitted and as a result you will have a class that is created out of a lot of smaller classes. And it will be a lot easier to control the stability of the code because you will know which class is responsable for which action and you will have to fix/change only one small class which will not damage the whole tree. In my case I have the class `Game` defined in the [game_1.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/game_1.rb) file and this class is created out of a lot of smalled classes. This you can see in the same [game_1.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_1-2/game_1.rb) file at 20'th to 28'th lines.
