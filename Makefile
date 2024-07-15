normal:
	cd worldGen/; make
	cd moreDiamondsAndChestLoot/; make
	cd tradingChanges/; make
	mv worldGen/WorldGenTweaks.zip .
	mv moreDiamondsAndChestLoot/DiamondsLootChanges.zip .
	mv tradingChanges/TradingChanges.zip .

clean:
	rm WorldGenTweaks.zip
	rm DiamondsLootChanges.zip
	rm TradingChanges.zip
