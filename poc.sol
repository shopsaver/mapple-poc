// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface IMapleLoan {
    function setPendingLender(address pendingLender_) external;
    function pendingLender() external view returns (address);
}

contract TestPendingLender {
    IMapleLoan public mapleLoan;

    constructor(address mapleLoanAddress) {
        mapleLoan = IMapleLoan(mapleLoanAddress);
    }

    function testZeroAddress() public returns (bool success) {
        // Attempt to set the zero address as the pending lender
        try mapleLoan.setPendingLender(address(0)) {
            return false;  // Expected to fail, but passed
        } catch {
            return true;   // Expected to revert, and it did
        }
    }

    function getPendingLender() public view returns (address) {
        return mapleLoan.pendingLender();
    }
}
