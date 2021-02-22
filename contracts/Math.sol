// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Math{
    uint x;
    
    /*
    Fibonacci: 0 1 1 2 3 5 8 13 21 ...
    Idea: recursiv by decrement n
    */
    function fib(uint n) public view
    returns(uint){
        if(n <= 1){
        return n;
        } else {
        return this.fib(n - 1) +
        this.fib(n - 2);
        }
    }

     /*
    Factorial: 5! = 1 * 2 * 3 * 4 * 5 = 120
    Definition: n! = 1, if n = 0
    = n * (n-1)!, else
    */
    function fac(uint n) public returns(uint){
    if (n == 0){
    return 1;
    }
    else {
    x = n * fac( n - 1);
    }
    return x;
    }

    function factorCal(uint n, uint k) public returns(uint){
        return fac(n)/(fac(k)*fac(n-k));
    }

    /*
    Idea: recursiv, add the two numbers above
    Assumption: max pos <= max row
    */
    function pas(uint row, uint pos) public returns(uint){
    if (pos == 0 || row == 0 || row == pos ){
    return 1;
    } else {
    x = pas(row - 1, pos - 1) + pas(row - 1, pos);
    }
    return x;
    }
}
