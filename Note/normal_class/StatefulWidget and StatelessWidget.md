## StatelessWidget
If you are creating a user interface where the state of the widget isn't going to change, then you would use a Stateless widget. 

Every widget is an immutable declaration of part of user interface. StatelessWidget does not have any **mutable state** that is needs to track data over time or trigger rebuilds on their own. **Mutable state** means that any properties that will change over time. And you can create final values inside the stateless widget.
## StatefulWidget
But if you're creating something which is going to change especially when it's dependent on user interaction. Such as a user taps on a button something changes or a user pulls in some data from the Internet, something on the screen updates. Then you're going to need to use a Stateful widget. 

Stateful widget provides immutable configuration info and a state object that can change over time and trigger rebuild of the UI.

### explanation of Stateful widget constructor
![[assets/StatefulWidget and StatelessWidget/image-20230713011423101.png]]
About the code above, there are some explanation:
###### 1. what does `const Test({super.key});` meas?
   `{super.key}` represent a named paremeter. In Dart, named parameter are defined using curly braces `{}` in the function or method declaration. Named parameter means that it allows you to provide arguments to a function in a named form, rather than relying solely on the position of the argument. In this case, `const Test({super.key});`is a constructor function, and using the curly braces with `super.key` is the named parameter's normal format which means that passing super class' `key` parameter to the current constructor function. Additionally, this is a alternative parameter, that is, when you create an instance of the Test class, you have the option of passing the key parameter instead of having to.
###### 2. What does `State<Test> createState() => _TestState();` mean? And the signs => represent for what?
   In Dart, the symbol combination **=>** represents the syntax of an **arrow function**. It is a shorthand way to define a function that consists of a single expression. Arrow functions allow you to condense the function body to a single expression and automatically return the result of that expression.
   
   So `createState() => _TestState()` is a definition of an arrow function. It defines the function `createState()` that returns an `_TestState` object. So we can say that the `_TestState()` at the right of the => is an instance (of the `_TestState` class).  `createState()` is an overridden method within a subclass of `StatefulWidget` used to create the associated state object for the widget. 
   
   The Syntax for an arrow function is as follows: `ReturnType functionName(Parameters) => Expression;`
   
   The advantages of arrow functions are their concise and clear syntax, which makes them suitable for functions that contain a single expression. They are commonly used for callback functions, anonymous functions, and **to simplify function definitions**.
   
###### 3. Why the class's name for example `_TestState` start with a underscore?
   In Dart, using an underscore `_` as a prefix for an identifier is a naming convention that denotes a private member. Private members can only be accessed within the same library (or file) and cannot be accessed from other libraries.
   
   The class name `_TestState` starts with an underscore, indicating that the class is marked as private and can only be accessed within the same library. This naming convention is used to hide implementation details and restrict access to the class, ensuring that the internal state and behavior of the class are only used within the library where it is defined.
   
   Although classes starting with an underscore are syntactically valid and can be accessed and used, they are considered private and should not be directly exposed in the public API of the library. This helps to prevent misuse or reliance on private classes by other developers and provides better encapsulation and abstraction.

###### summary
My understanding is  creating a Test widget means that you will create a state object which will call build method to return a widget.

And Chatgpt's summary is more accurate:
> When you create a `Test` widget, it also creates an associated state object of type `_TestState`. The state object is responsible for managing the mutable state of the widget and rebuilding the UI necessary.
> 
> The `buid` method in the `_TestState` class is called whenever the widget needs to be rebuilt. It returns a widget that represents the visual representation of the widget. The returned widget can be based on the current state of the widget or any other factors that determine the UI. 
> 
> So, when you create a `Test` widget, the associated state object's `build` method will be called, and the returned widget will be displayed on the screen. **If the state of the widget changes, the `build` method will be called again to update the UI  accordingly.**
> 
> In summary, the `Test` widget and its associated state object work together to manage the state and build the UI representation of the widget.

### How does function setState() work?
In Flutter, the setState() function is used to notify the framework that the state of a widget has changed and needs to be updated. When you call setState(), Flutter schedules a rebuild of the widget and its descendants in the next frame.

Here's how the setState() function works:
1. When you call setState(), Flutter marks the current widget's state as dirty.
2. The framework schedules a rebuild of the widget and its descendants for the next frame.
3. During the rebuild process, Flutter compares the new state values with the previous state values.
4. If there are differences in the state values, Flutter updates the widget's UI to reflect the new state.
5. The build() method of the widget is called, and you can use the updated state values to build the widget's UI.
6. The updated UI is then rendered on the screen.

By using setState(), you ensure that the widget's UI stays in sync with its state and gets updated when the state changes. It's important to only modify the state using setState() to ensure that the changes are properly reflected in the UI.

It's worth noting that the setState() function does not trigger an immediate rebuild of the UI. Instead, it adds a request for a rebuild to the framework's queue, which will be processed in the next frame. This helps avoid unnecessary frequent rebuilds and optimizes performance.