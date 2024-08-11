

huff-compile:; huffc ./src/horseStoreV1/HorseStore.huff -b

huff2-compile:; huffc ./src/horseStoreV2/HorseStoreHuff.huff -b

huff-compile-runtime:; huffc ./src/horseStoreV1/HorseStore.huff --bin-runtime

test-include-huff:; forge test --match-path *Huff* -vvvv

test-include-huff-with-debug:; forge test --match-path *Huff* --debug test_readNumberOfHorses vvvv