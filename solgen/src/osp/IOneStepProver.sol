//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../state/Machines.sol";
import "../state/Modules.sol";
import "../state/Instructions.sol";

struct ExecutionContext {
    uint256 maxInboxMessagesRead;
}

abstract contract IOneStepProver {
    function executeOneStep(
        ExecutionContext memory execCtx,
        Machine calldata mach,
        Module calldata mod,
        Instruction calldata instruction,
        bytes calldata proof
    )
        external
        view
        virtual
        returns (Machine memory result, Module memory resultMod);
}