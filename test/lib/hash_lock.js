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
// Test: lib/hash_lock.js
//
// http://www.simpletoken.org/
//
// ----------------------------------------------------------------------------

const crypto = require('crypto')
  , ethUtil = require('ethereumjs-util');

/// for testing purposes produce a random secret and its hash
module.exports.getHashLock = () => {
	// NOTE: for openst-platform encrypt secret
  const secretBytes = crypto.randomBytes(32)
    , lock = '0x' + ethUtil.keccak(secretBytes).toString('hex')
    , unlockSecret = "0x" + secretBytes.toString('hex');
  return {s: unlockSecret, l: lock};
}
