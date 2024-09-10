Steps:

Deployment: Deploy this contract and pass the MapleLoan contract's address to the constructor.
testZeroAddress(): This function attempts to set the zero address as the pending lender. It should revert if the contract properly checks for the zero address.
If it reverts (expected behavior), the function returns true.
If it doesn’t revert (indicating the vulnerability exists), the function returns false.
Usage:
Deploy the TestPendingLender contract, passing the address of the MapleLoan contract.
Call the testZeroAddress() function:
If the contract properly handles the zero-address check, the function will return true.
If the vulnerability exists (no check for zero address), it will return false.
