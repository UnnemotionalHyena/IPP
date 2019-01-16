
In this program are used 4 Design Patterns:

  * Lab_3
    * Builder
    * Decorator
    * Observer
    * Proxy



***Builder***

  This design pattern is locate in [builder.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_3/builder.rb) file. The idea of builder it to split a class that have a lot of field in the initialize into two classes. And in this case we will have a class called `StudentBuilder` that using methods will add the fileds needed for the `Student` class.

***Decorator***

  This design pattern is located in [decorator.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_3/decorator.rb) file. The idea of decorator is to add new functionality to a class without modifying the base class. Here I had the `Db_Proxy` class to which I added two new methods in `Db_etended_proxy` class that returns you the `Subject` that is teached by the teacher you search or the `Teacher` name depending of the `Subject`

***Observer***

  The observer pattern is used when you are building a system where the state of one object effects the state of other objects. In the [observer.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_3/observer.rb) file we have a module `Lesson` which is a class that works like a notification to all `Observers` that are listening to a `Professor`. In my specific case in file [lab_3.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_3/lab_3.rb) we have a Professor "Cazac" that teaches "AR". To this professor is subscribed a student `first_student` and when the professor setted a lesson `professor.set_lesson("01.01.2019 01:00")` the studend got the notification that he will have a pair, in the first night of the new year.

***Proxy***

  Provide a surrogate or placeholder for another object to control access to it. So in the [proxy.rb](https://github.com/UnnemotionalHyena/IPP/blob/master/Lab_3/proxy.rb) file I have a `DATABASE` and a `Db_Proxy`. The database have two basic operations that it has to have `get` and `put`. The proxy on the over hand by the fact it has a lot more functionality it is a placeholder to the database. User use that proxy as a database but this is only a tool that allows you to use the database.
