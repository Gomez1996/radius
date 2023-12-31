<?php
$testPools = [
    "192.168.180.1-192.168.180.254",
    "192.168.10.50-192.168.10.100",
    // Add more test cases as needed
];

// Test the getBaseNetworkIP function
foreach ($testPools as $pool) {
    $baseNetworkIP = Mikrotik::getBaseNetworkIP($pool);
    echo "Base Network IP for pool $pool: $baseNetworkIP\n";
}