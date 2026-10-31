hello!!!

# super important commands




nextpnr-himbaechel \
  --json synth.json \
  --write routed.json \
  --device GW2AR-LV18QN88C8/I7 \
  --vopt family=GW2A-18C \
  --vopt cst=pins.cst

gowin_pack -c -d GW2A-18C -o top.fs routed.json

openFPGALoader -b tangnano20k top.fs
