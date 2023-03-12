# Databáze infrastruktury pro ETCS
## `2023-03-11.sql`
Obsahuje `.sql` dump poslední verze DB (2022-04-01) s doplněnými obsahy balíz do příslušné tabulky.
Telegramy jsou zapsány jako HEX řetězec, což umožňuje jejich čtení stávající verzí SimEmulatoru,
který je převádí na JSON struktury, které poté v roli BTM posílá EVC přes MQTT.
Název schématu, které tento skript na daném serveru vytvoří, je `infradb`
## `infra.csv`
Výchozí popis trati, obsahuje kilometrické polohy balíz a návěstidel (a také 2 zarážedel)
## `balises.json`
Mezistupeň převodu z `infra.csv` do `2023-03-11.sql`. Obsahuje pro každou balízu
(ostatní objekty z `infra.csv` nejsou uvažovány):
- UID prvku balízy v tabulce `balise` v databázi
- kilometrickou polohu
- zjednodušený popis obsahu telegramu (packet 225: End of Information není zvlášť vyčleněn,
pouze je uvedeno jeho číslo...)
- HEX řetězec telegramu
