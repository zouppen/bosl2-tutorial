# OpenSCAD + BOSL2

Tässä muutamia esimerkkejä siitä, miten asiat tehdään
BOSL2-kirjastolla verrattuna tavalliseen OpenSCADiin. Esimerkit on
pyritty tekemään reiluiksi molempia kohtaan, eli käytän pohjana omia
aiemmin tosimaailman tarpeisiini tekemiäni koteloita ja kappaleita.

Tämä repo on kloonattava rekursiivisesti (`git clone --recursive`)
koska tämä sisältää BOSL2:n submoduulina. Näin ei tarvitse aloittaa
siitä, että kopioi tiedostoja pysyvästi OpenSCADin kirjastohakemistoon
ja lisäksi mahdollistaa tietynlaisen "virtuaaliympäristön" jossa
BOSL2:n versio pysyy haluttuna.

## Lähteitä opiskelun tueksi

BOSL2:n wikistä löytyy kaikki **BOSL2:n** funktioiden ja moduuleiden
parametrit. Sieltä ainakin toistaiseksi puuttuu linkit OpenSCADin
omiin funktioihin, ellei niitä ole jotenkin laajennettu
BOSL2:ssa. Tämän vuoksi voi hämmentää, että BOSL2:n manuaalista löytyy
`sinh()` mutta ei tavallista `sin()`-funktiota. Suosittelen pitämään auki nämä:

* [BOSL2:n wiki](https://github.com/BelfrySCAD/BOSL2/wiki)
* [BOSL2:n lunttilappu](https://github.com/BelfrySCAD/BOSL2/wiki/CheatSheet)
* [OpenSCADin lunttilappu](https://openscad.org/cheatsheet/)
* [OpenSCADin käyttöopas](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual)
  (jos OpenSCAD ei vielä tuttu)

Mikäli samaa asiaa, kuten `cube()`, käsitellään molemmissa, unohda
OpenSCADin ohjeet, koska moduuli on ylikirjoitettu BOSL2:ssa. Lue sen
ohjeet.

## Työkaluista

Tietokoneelta vaaditaan *git* ja *OpenSCAD 2021.01*. Muita varsinaisia
esitietovaatimuksia ei ole, mutta toki kokemus ohjelmoinnista
helpottaa OpenSCADin omaksumista.

**Älä käytä OpenSCADin omaa editoria**. Käytä mallin editointiin
mieluummin vaikka Emacsia tai Vimiä. Itse käytän Emacsia ja sille on
[scad-mode](https://github.com/openscad/emacs-scad-mode). Jos OpenSCAD
kaatuu rendatessaan, joka oli varsin tuttua etenkin vanhoissa
versioissa, menee myös editorin tallentamattomat muutokset mukana. Älä
kiusaa itseäsi sillä. OpenSCAD osaa automaattisesti päivittää näkymän,
kun tiedosto muuttuu.

## Esimerkit

Seuraavat esimerkit on testattu toimiviksi OpenSCAD 2021.1:llä ja
sillä BOSL2:n versiolla, joka on tämän repon submoduulina.

Koska tämä on oppimista toivottavasti edistävä esimerkkikokoelma,
käytän aina aaltosulkuja enkä laita useita lauseita samalle
riville. Käytännössä kannattaa joskus jättää aaltosulut pois, se voi
olla luettavampaa. Oppimista kuitenkin helpottaa, kun aloittaa
koodilla, josta käy helposti ilmi lohkoon kuuluvat asiat.

### 1: Laatikko, jossa sisäreunus

| Esimerkki            | OpenSCAD                    | BOSL2                        |
|----------------------|-----------------------------|------------------------------|
| 1a: yksinkertainen   | [avaa](1a-kotelo-pure.scad) | [avaa](1a-kotelo-bosl2.scad) |
| 1b: z-välkynnän esto | [avaa](1b-kotelo-pure.scad) | [avaa](1b-kotelo-bosl2.scad) |
| 1c: putkirakenne     |                             | [avaa](1c-kotelo-bosl2.scad) |

### 2: Pirra (6-kanttinen puuhyrrä)

| Esimerkki        | OpenSCAD                   | BOSL2                       |
|------------------|----------------------------|-----------------------------|
| 2a: ei numeroita | [avaa](2a-pirra-pure.scad) | [avaa](2a-pirra-bosl2.scad) |

### 3: Kuutiopalat

Tämä on tuntuvasti monimutkaisempi esimerkki, jossa leikataan halutussa tasossa
kappale kahteen osaan. Puhdas OpenSCAD-versio jätetään
harjoitustehtäväksi.

| Esimerkki              | OpenSCAD | BOSL2                             |
|------------------------|----------|-----------------------------------|
| 3a: jokaiselle jotakin | HT       | [avaa](3a-kuutiopalat-bosl2.scad) |
