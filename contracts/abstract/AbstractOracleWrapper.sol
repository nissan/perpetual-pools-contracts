// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

/**
@title The oracle management contract
*/
abstract contract AbstractOracleWrapper {
  // #### Globals
  /**
  @notice Format: Market code => oracle address. Market code looks like TSLA/USD+aDAI
   */
  mapping(string => address) public assetOracles;

  // #### Functions
  /**
    @notice Sets the oracle for a given market
    @dev Should be secured, ideally only allowing the PoolKeeper to access.
    @param marketCode The market code for the market.
    @param oracle The oracle to set for the market
   */
  function setOracle(string memory marketCode, address oracle) external virtual;

  /**
    @notice Returns the current price for the asset in question
    @param MarketCode The market code for the asset to quote for.
     */
  function getPrice(string memory MarketCode) external virtual;
}
