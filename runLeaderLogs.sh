#!/bin/sh

SLOTLEADER_CONFIG="slotLeaderLogsConfig.json" # path to configuration file
EPOCH_NONCE=$(cardano-cli query protocol-state --mainnet | jq -r .csTickn.ticknStateEpochNonce.contents)

node cardanoLeaderLogs.js $SLOTLEADER_CONFIG $EPOCH_NONCE
