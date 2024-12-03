// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TodoList {
    enum Status {
        TODO,
        DOING,
        DONE
    }

    struct Task {
        uint id;
        string content;
        Status status;
    }

    Task[] tasksList;

    function create(string calldata content, Status status) external returns (Task memory) {
        Task memory task = Task({ id: tasksList.length, content: content, status: status });
        tasksList.push(task);

        return task;
    }

    function update(uint calldata id, )



}