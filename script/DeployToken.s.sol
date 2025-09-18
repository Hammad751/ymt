// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "lib/forge-std/src/Script.sol";
// import {Test} from "forge-std/Test.sol";

import {Test, console} from "forge-std/Test.sol";
import {YMT_Token} from "../src/Token.sol";

contract DeployToken  is Script {
    function run() external returns (YMT_Token)  {
        
        address deployer = vm.envAddress("INIT_OWNER");
        console.log("deployer: ", deployer);
        vm.startBroadcast();
        YMT_Token token = new YMT_Token(deployer);
        vm.stopBroadcast();

        return token;
    }
}