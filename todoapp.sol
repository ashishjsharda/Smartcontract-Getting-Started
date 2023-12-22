// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }
     Todo[] public todos;
     uint256 public totalTasks;

    function createTask(string calldata _text) public {
        todos.push(Todo({text: _text, completed: false}));
        totalTasks++;
    }

   function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];  //declared a new variable todo
        todo.completed = !todo.completed;
    }

    function viewTask(uint _index) public view returns (string memory, bool) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }
}
