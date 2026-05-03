#!/bin/bash
# Farver til terminalen for at give visuel feedback (godt for ADHD/engagement)
GREEN='\033[0;32m'
NC='\033[0m'

# Variabler sikrer, at vi nemt kan rette stien ét sted
SKAT_STI="/var/games/treasure_vault"
SKAT_FIL=".secret_flag.txt"

echo -e "${GREEN}Opsætter Treasure Hunt...${NC}"

# Opret mappen (-p sikrer ingen fejl hvis den findes)
mkdir -p $SKAT_STI

# Lav flaget med en tydelig besked
cat <<EOF > $SKAT_STI/$SKAT_FIL
***************************************************
*                                                 *
*   TILLYKKE! DU HAR FUNDET SKATTEN!              *
*                                                 *
*   KODEORD: WHITEHAT_VFS_2026                    *
*                                                 *
***************************************************
EOF

# Sæt rettigheder: Læsbar for alle, skrivbar kun for root (underviseren)
chmod 644 $SKAT_STI/$SKAT_FIL

echo -e "${GREEN}Skatten er gemt i $SKAT_STI som en skjult fil.${NC}"
