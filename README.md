# OpenSCAD + BOSL2

Tässä muutamia esimerkkejä siitä, miten asiat tehdään
BOSL2-kirjastolla verrattuna tavalliseen OpenSCAD:iin. Esimerkit on
pyritty tekemään reiluiksi molempia kohtaan, eli käytän pohjana omia
aiemmin tosimaailman tarpeisiini tekemiäni koteloita ja kappaleita.

Tämä repo on kloonattava rekursiivisesti (`git clone --recursive`)
koska tämä sisältää BOSL2:n submoduulina. Näin ei tarvitse aloittaa
siitä, että kopioi tiedostoja pysyvästi OpenSCADin kirjastohakemistoon
ja lisäksi mahdollistaa tietynlaisen "virtuaaliympäristön" jossa
BOSL2:n versio pysyy haluttuna.

## Esimerkit

Laatikko, jossa sisäreunus

| Esimerkki            | OpenSCAD | BOSL2 |
|----------------------|----------|-------|
| 1a: yksinkertainen   | [1a-kotelo-pure.scad]        |      |
| 1b: z-välkynnän esto |         |      |
| 1c: putkirakenne     |          |       |
