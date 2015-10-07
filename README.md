#Introduction
To iterate is human, to recurse divine.  
~ L. Peter Deutsch

Recursion is a method where the solution to a problem depends on solutions to smaller instances of the same problem (as opposed to iteration). The approach can be applied to many types of problems, and recursion is one of the central ideas of computer science.

Here we compare the pure recursion, the memoization example prepared by  @RayHightower in his [post](http://rayhightower.com/blog/2014/04/12/recursion-and-memoization/) and a tail-recursion implementation. Also we compare the Ruby and Elixir implementations of the tail-recursion.

Tail-recursive functions are functions in which all recursive calls are tail calls and hence do not build up any deferred operations. The significance of tail recursion is that when making a tail-recursive call (or any tail call), the caller's return position need not be saved on the call stack; when the recursive call returns, it will branch directly on the previously saved return position. Therefore, in languages that recognize this property of tail calls, tail recursion saves both space and time.

#Requirements to run the code
* **Ruby**.  For installation please follow these [instructions](https://www.ruby-lang.org/en/documentation/installation/)
* **Elixir**.  For installation please follow these [instructions](http://elixir-lang.org/install.html/)
* **time**. In Unix Systems the [time command](https://en.wikipedia.org/wiki/Time_(Unix)) is in the console, if you use windows you can use [this method](http://superuser.com/questions/228056/windows-equivalent-to-unix-time-command)

#Running the code
1. In the console run `time ruby pure_recursion.rb`
2. In the console run `time ruby memoization_recursion.rb`
3. Compare the performance time
4. In the console run `time ruby tail_recursion.rb`
5. Compare the performance time
6. In the console run `time elixir tail_recursion.ex`
7. Compare the performance time
8. Now the funny part. Edit the file `tail_recursion.rb` and change the number of Fibbonacci numbers to 5000. Save the change
9. In the console run `time ruby tail_recursion.rb`
10. Edit the file `tail_recursion.ex` and change the number of Fibbonacci numbers to 5000. Save the change
11. In the console run `time elixir tail_recursion.ex`
12. Compare the performance time

#License
The MIT License (MIT)

Copyright (c) [2014] [Manuel Vidaurre]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.