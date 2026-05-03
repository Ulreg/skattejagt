#!/bin/bash
# Placeres i /opt/skattejagt-mains/start_spil.sh

SKAT_STI="/var/games/treasure_vault"
SKAT_FIL=".secret_flag.txt"

# Opret mappen hvis den mangler
mkdir -p $SKAT_STI

# Lav flaget
cat <<EOF > $SKAT_STI/$SKAT_FIL
***************************************************
*                                                 *
*   TILLYKKE! DU HAR FUNDET SKATTEN!              *
*                                                 *
*   KODEORD: WHITEHAT_VFS_2026                    *
*                                                 *
***************************************************
EOF

# VIGTIGT: Sørg for at mappen og filen kan læses af 'student'
chmod 755 $SKAT_STI
chmod 644 $SKAT_STI/$SKAT_FIL

echo "Skatten er lagt ud. Husk at eleverne logger ind som 'student'."
