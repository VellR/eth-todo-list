pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  mapping(uint => Task) public task;

constructor() public {
  createTask("First Task Test");
}

  function createTask(string memory _content) public {
    taskCount ++;
    task[taskCount] = Task(taskCount, _content, false);
  }
}
