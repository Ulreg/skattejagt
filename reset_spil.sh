#!/bin/bash
# Gem som cleanup.sh
RED='\033[0;31m'
NC='\033[0m'

echo -e "${RED}Rydder op og nulstiller serveren...${NC}"

# 1. Fjern den primære skat og mappe
rm -rf /var/games/treasure_vault

# 2. Fjern spor i midlertidige mapper (hvis eleverne har kopieret dem dertil)
rm -f /tmp/.secret_flag.txt
rm -f /var/tmp/.secret_flag.txt
rm -f /tmp/treasure.txt

# 3. Slet filer i alle brugeres hjemmemapper, der indeholder kodeordet
# Dette sikrer at de ikke bare kan "snyde" ved at kigge i en vens mappe
find /home -type f -exec grep -l "WHITEHAT_VFS_2026" {} + | xargs rm -f 2>/dev/null

echo "Maskinen er nu renset og klar til næste runde!"
