pragma solidity ^0.6.4;

import "@openzeppelin/contracts-ethereum-package/contracts/Initializable.sol";

import "./ControlledToken.sol";
import "../external/openzeppelin/ProxyFactory.sol";

contract ControlledTokenProxyFactory is Initializable, ProxyFactory {

  ControlledToken public instance;

  function initialize () public initializer {
    instance = new ControlledToken();
  }

  function create() external returns (ControlledToken) {
    return ControlledToken(deployMinimal(address(instance), ""));
  }
}