#!/bin/bash
# Gem som tjek_skat.sh

SKAT_FIL=".secret_flag.txt"

echo "--- Status på skattejagten ---"
# Leder specifikt efter den fil vi lige har oprettet
FUNDET_STI=$(find /var/games -name "$SKAT_FIL" 2>/dev/null)

if [ -z "$FUNDET_STI" ]; then
    echo "FEJL: Skatten blev ikke fundet. Kør start_spil.sh først."
else
    echo "SUCCES: Skatten ligger her: $FUNDET_STI"
    echo "Rettigheder og ejer:"
    ls -l "$FUNDET_STI"
fi
