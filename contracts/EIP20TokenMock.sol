pragma solidity ^0.4.17;

// Copyright 2017 OpenST Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// 
// ----------------------------------------------------------------------------
// Utility chain: EIP20TokenMock.sol
//
// http://www.simpletoken.org/
//
// ----------------------------------------------------------------------------

import "./EIP20Token.sol";

/// @title EIP20TokenMock
/// @dev Implements mock totalSupply function and wraps internal functions to enable testing EIP20Token
contract EIP20TokenMock is EIP20Token {
    function EIP20TokenMock(string _symbol, string _name, uint8 _decimals)
            EIP20Token(_symbol, _name, _decimals)
            public { }

    /// @dev Mock totalSupply function
    function totalSupply() public view returns (uint256) {
        return 0;
    }

    /// @dev Public wrapper for claimEIP20Public
    function claimEIP20Public(
        address _beneficiary,
        uint256 _amount)
        public
        returns (bool /* success */)
    {
        return claimEIP20(_beneficiary, _amount);
    }

    /// @dev Public wrapper for mintEIP20Public
    function mintEIP20Public(
        uint256 _amount)
        public
        returns (bool /* success */)
    {
        return mintEIP20(_amount);
    }

    /// @dev Public wrapper for burnEIP20Public
    function burnEIP20Public(
        uint256 _amount)
        public
        returns (bool /* success */)
    {
        return burnEIP20(_amount);
    }
}