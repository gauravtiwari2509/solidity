// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//we can also import struct from other location as we do in ennum
contract TodosPrac {
    struct Todo {
        string text;
        bool completed;
    }
    //an array of 'todo' structs
    //Todo public t1;//{t1.text t1.completed}
    Todo[] public todos;
    function create(string calldata _text) public {
        //3 ways to nitialize a struct
        //calling it like a function
       // todos.push(Todo(_text, false));
        //by key value mapping
        //todos.push(Todo({text: _text , completed: false}));
        //initialize an empty struct and then update it
          Todo memory todo;
          todo.text=_text;
        //todo.comopleted initialize to false
        //   todo.completed=false;
         todos.push(todo);
    }

    //solidity created a getter for todos so we don't actually need this funciton
    function get(uint256 _idx) public view returns (string memory, bool) {
        Todo storage todo = todos[_idx]; //it's like we are storign reference in todo of todos[_idx] it mutates original on mutating todo use memory to avoid this 
        return (todo.text, todo.completed);
    }

    //update todo
    function updateText(uint256 _idx, string calldata _text) public {
        Todo storage todo = todos[_idx];
        todo.text = _text;
    }

    function toggleComplete(uint256 _idx) public {
        Todo storage todo = todos[_idx];
        todo.completed = !todo.completed;
    }
}
