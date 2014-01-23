use the prototype method to define your methods 
to save memory and to reference only the same thing

function Func1(){
  this.name = "property method"'
  this.myFunc'
 = function() {console.log("what");};

 we define a method on a class via prototype!

 //Define class


 //child class
 function TRex() {
  Dinosaur.call(this); //this is like super but it goes at the top(vs ruby where it goes at the bottom)
  //you could put other stuff here
 }

 > myDino.ear
[Function]
> myDino.ear();
nom nom nom!
undefined
> myDino.ear;
[Function]
> Dinosaur.prototype.sayMyName = function(name) {
... console.log("O HAI " + name);
... }
[Function]
> myDino.sayMyName
[Function]
> myDino.sayMyName();
O HAI undefined
undefined
> myDino.sayMyName("ollie");
O HAI ollie
undefined
>