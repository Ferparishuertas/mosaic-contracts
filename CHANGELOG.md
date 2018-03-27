## OpenST-protocol [v0.9.2](https://github.com/OpenSTFoundation/openst-protocol/releases/tag/v0.9.2) March 27 2018

OpenST v0.9.2 improves usability to facilitate application by the [OpenST-Platform](https://github.com/OpenSTFoundation/openst-platform) and other services. Additionally, this release increases test coverage, with additional unit and integration tests, and adds continuous integration with Travis CI.

Detailed changelog:

- Introduce `conversionRateDecimals` to `BrandedToken` to treat conversion rate as a fixed point arithmetic number ([openst-protocol #107](https://github.com/OpenSTFoundation/openst-protocol/pull/107))
- Expose list of registered tokens on `OpenSTUtility` ([openst-protocol #89](https://github.com/OpenSTFoundation/openst-protocol/pull/89))
- Make token UUIDs iterable on the value chain ([openst-protocol #103](https://github.com/OpenSTFoundation/openst-protocol/pull/103))
- Make token UUIDs iterable on the utility chain ([openst-protocol #102](https://github.com/OpenSTFoundation/openst-protocol/pull/102))
- Incorporate a `beneficiary` into redeem and unstake ([openst-protocol #101](https://github.com/OpenSTFoundation/openst-protocol/pull/101))
- Expose `mints` and `redemptions` on `OpenSTUtility` ([openst-protocol #100](https://github.com/OpenSTFoundation/openst-protocol/pull/100))
- Expose `stakes` and `unstakes` on `OpenSTValue` ([openst-protocol #99](https://github.com/OpenSTFoundation/openst-protocol/pull/99))
- Revise `UtilityTokenAbstract` to set certain invariants upon construction and to expose them ([openst-protocol #97](https://github.com/OpenSTFoundation/openst-protocol/pull/97)) 
- Remove unneeded files ([openst-protocol #93](https://github.com/OpenSTFoundation/openst-protocol/pull/93))
- Tests: configure Travis CI to run unit tests on `master` and `develop` branches for every commit, merge and pull request ([openst-protocol #87](https://github.com/OpenSTFoundation/openst-protocol/pull/87), [openst-protocol #105](https://github.com/OpenSTFoundation/openst-protocol/pull/105))
- Tests: denominate tokens consistently ([openst-protocol #82](https://github.com/OpenSTFoundation/openst-protocol/pull/82))
- Tests: add unit tests for reversion functions ([openst-protocol #74](https://github.com/OpenSTFoundation/openst-protocol/pull/74))
- Tests: migrate unit tests for `Owned`, `OpsManaged`, and `SafeMath` from SimpleTokenSale repo ([openst-protocol #73](https://github.com/OpenSTFoundation/openst-protocol/pull/73))
- Tests: add integration tests for reversion functions ([openst-protocol #65](https://github.com/OpenSTFoundation/openst-protocol/pull/65))

## OpenST-protocol [v0.9.1](https://github.com/OpenSTFoundation/openst-protocol/releases/tag/v0.9.1) December 19 2017

OpenST v0.9.1 is the first release deployed on Ethereum mainnet combined with the
activation of Simple Token to power the OpenST platform.  The OpenST platform
allows Ethereum smart contracts to runs faster and cheaper while leveraging
the security properties of Ethereum's Proof-of-Work.  In this release we implement
the first corner stone of the protocol: the ability to stake value on Ethereum
mainnet and mint a new representation of that value on a utility chain,
effectively increasing the computational throughput of Ethereum smart contracts
by allowing parallel execution across chains.

OpenST smart contracts have been restructured to store value separately from
the logic that implements the protocol.  v0.9.1 is not yet protocol complete
as the validators are whitelisted and not yet open with stake put forward on
Ethereum mainnet.  However, by splitting the protocol implementation into
these two logically separate problems, we can already start working with
member companies and developers to fine-tune the APIs and the developer
experience to build mainstream applications on Ethereum.

```
  Ethereum mainnet (value)   |  OpenST platform (utility)
  ---------------------------------------------------------------------
      Core - - - - - - - - - - - (Core)
      /                      |      \
     /                       |       \
  Registrar                  |  Registrar
    |                        |        |
  OpenSTValue                |  OpenSTUtility
    \_ SimpleStake           |    \_ UtilityTokenAbstract
                             |         \_ SimpleTokenPrime (base token)
                             |         \_ BrandedToken
```

Detailed changelog:

- Generate documentation in /docs ([openst-protocol#78](https://github.com/OpenSTFoundation/openst-protocol/pull/78))
- Unit tests for Owned, OpsManaged, SafeMath (carry over from SimpleTokenSale) ([openst-protocol#73](https://github.com/OpenSTFoundation/openst-protocol/pull/73))
- Add mock ERC20 token for dryrun on Ethereum mainnet ([openst-protocol#71](https://github.com/OpenSTFoundation/openst-protocol/pull/71))
- Unit tests for protocol transfer ([openst-protocol#66](https://github.com/OpenSTFoundation/openst-protocol/pull/66))
- Integration tests for reverting stake and redemption ([openst-protocol#65](https://github.com/OpenSTFoundation/openst-protocol/pull/65))
- Bug fix revert unstaking was restricted to registrar only ([openst-protocol#64](https://github.com/OpenSTFoundation/openst-protocol/pull/64))
- Implement fallback for process staking and process redemption ([openst-protocol#60](https://github.com/OpenSTFoundation/openst-protocol/pull/60))
- Bug fix on reverted redemption allow re-use of nonce ([openst-protocol#59](https://github.com/OpenSTFoundation/openst-protocol/pull/59))
- Initiate and revoke protocol transfer ([openst-protocol#55](https://github.com/OpenSTFoundation/openst-protocol/pull/55))
- Run Truffle tests with optimised compilation to accurately measure gas usage ([openst-protocol#54](https://github.com/OpenSTFoundation/openst-protocol/pull/54))
- Integration tests improvement on event assertion ([openst-protocol#47](https://github.com/OpenSTFoundation/openst-protocol/pull/47))
- Allow reverting escrow after unlock height ([openst-protocol#46](https://github.com/OpenSTFoundation/openst-protocol/pull/46))
- Set minimal redemption accuracy ([openst-protocol#41](https://github.com/OpenSTFoundation/openst-protocol/pull/41)),  ([openst-protocol#38](https://github.com/OpenSTFoundation/openst-protocol/pull/38))
- Integration test framework for staking ([openst-protocol#37](https://github.com/OpenSTFoundation/openst-protocol/pull/37))
- Increase unit test coverage for Registrar, OpenSTValue, and OpenSTUtility ([openst-protocol#35](https://github.com/OpenSTFoundation/openst-protocol/pull/35))
- Bug fix in OpenSTUtility.processRedeeming ([openst-protocol#33](https://github.com/OpenSTFoundation/openst-protocol/pull/33))
- Correct assertion bug on OpenSTValue.processStaking ([openst-protocol#18](https://github.com/OpenSTFoundation/openst-protocol/pull/18))
- Complete separation of value and logic for redemption process ([openst-protocol#11](https://github.com/OpenSTFoundation/openst-protocol/pull/11)), ([openst-protocol#12](https://github.com/OpenSTFoundation/openst-protocol/pull/12)),  ([openst-protocol#13](https://github.com/OpenSTFoundation/openst-protocol/pull/13))
- Unit tests for ProtocolVersioned, SimpleStake, BrandedToken, EIP20Token, STPrime, and UtilityTokenAbstract ([openst-protocol#9](https://github.com/OpenSTFoundation/openst-protocol/pull/9))
- SimpleTokenPrime: add payable initialization function ([openst-protocol#7](https://github.com/OpenSTFoundation/openst-protocol/pull/7))
- SimpleStake: separate value from logic to enable upgrade path ([openst-protocol#5](https://github.com/OpenSTFoundation/openst-protocol/pull/1))


## OpenST-protocol [v0.9.0](https://github.com/OpenSTFoundation/openst-protocol/releases/tag/v0.9.0) November 8 2017

 - update OpenST-protocol with work done on Ropsten demo ([openst-protocol#1](https://github.com/OpenSTFoundation/openst-protocol/pull/1))
