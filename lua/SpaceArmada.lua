-- Armada Spaceunits
-- Space Expansion V2.9
-- Authors: RandomGuy
-- https://github.com/nuttyb-community/nuttyb

do
local a = {}
function SET(b)
    a = table.copy(UnitDefs[b])
end
function ADD(c)
    UnitDefs[c] = a
end
function CP()
    a.customparams = {}
end
function MC(d)
    a.metalcost = d
end
function EC(d)
    a.energycost = d
end
function BT(d)
    a.buildtime = d
end
function FX(d)
    a.footprintx = d
end
function FZ(d)
    a.footprintz = d
end
function HP(d)
    a.health = d
end
function SD(d)
    a.sightdistance = d
end
function TECH(d)
    a.customparams.techlevel = d
end
function NAME(d)
    a.customparams.i18n_en_humanname = d
end
function DESC(d)
    a.customparams.i18n_en_tooltip = d
end
function IAHP(d)
    a.idleautoheal = d
end
function IT(d)
    a.idletime = d
end
function REP(d)
    a.repairspeed = d
end
function AHP(d)
    a.autoheal = d
end
function CR(d)
    a.crushresistance = d
end
function ICT(d)
    a.icontype = d .. "_scav"
end
function WT(d)
    a.workertime = d
end
function MWD(d)
    a.minwaterdepth = d
end
function B(d)
    a.blocking = d
end
function BD(d)
    a.builddistance = d
end
function EM(d)
    a.energymake = d
end
function RS(d)
    a.removestop = d
end
function RW(d)
    a.removewait = d
end
function ON(d)
    a.onoffable = d
end
function S(d)
    a.script = d
end
function ES(d)
    a.energystorage = d
end
function MS(d)
    a.metalstorage = d
end
function SEID(d)
    a.seismicdistance = d
end
function RDJ(d)
    a.radardistancejam = d
end
function SP(d)
    a.speed = d
end
function ASD(d)
    a.airsightdistance = d
end
function RD(d)
    a.radardistance = d
end
function RA(d)
    a.radiusadjust = d
end
function UG(d)
    a.customparams.unitgroup = d
end
function ONAME(d)
    a.objectname = d
end
function BPIC(d)
    a.buildpic = d
end
function BUILDER(d)
    a.builder = d
end
function AS(d)
    a.airStrafe = d
end
function C(d)
    a.collide = d
end
function BOPTION(d)
    a.buildoptions = d
end
function BNOPTION()
    a.buildoptions = {}
end
function MOVE(d)
    a.canmove = d
end
function UP(d)
    a.upright = d
end
function CF(d)
    a.canfight = d
end
function TR(d)
    a.turnrate = d
end
function NOASD()
    a.customparams.attacksafetydistance = nil
end
function EXP(d)
    a.explodeas = d
end
function SELF(d)
    a.selfdestructas = d
end
function WATER()
    a.floater = true
    a.maxwaterdepth = 1000
    a.waterline = 0
end
function SPACE(d)
    a.corpse = ""
    a.customparams.crashable = 0
    a.radardistance = 0
    a.sightdistance = 0
    a.reclaimable = false
    a.repairable = true
    a.canmove = true
    a.canfly = true
    a.cruisealtitude = d
    a.hoverattack = true
    a.airhoverfactor = 0
    a.verticalspeed = 8
    a.category = "SPACENOTOBJECT"
    a.useSmoothMesh = true
    a.turninplace = true
    a.customparams.restrictions_exclusion = "_nosea_noair_"
    a.customparams.armordef = "space"
    a.maxacc = 0.5
    a.maxdec = 0.5
end
function SPACES(d)
    a.customparams.crashable = 0
    a.customparams.armordef = "space"
    a.radardistance = 0
    a.reclaimable = true
    a.repairable = true
    a.canfly = true
    a.cruisealtitude = d
    a.hoverattack = true
    a.airhoverfactor = 0
    a.verticalspeed = 14
    a.category = "SPACENOTOBJECT"
    a.useSmoothMesh = true
    a.turninplace = false
    a.airstrafe = false
    a.turnrate = 0
    a.canmove = false
    a.maxacc = 0.2
    a.canfight = false
    a.canguard = false
    a.canPatrol = false
    a.maxdec = 0
    a.upright = true
    a.speed = 0.1
    a.sonardistance = 0
    a.customparams.restrictions_exclusion = "_nosea_noair_"
    a.blocking = true
end
function SOLBALANCE(e, f, g, h, i, j)
    a.metalcost =
        (UnitDefs[e].metalcost / UnitDefs[e].energymake + UnitDefs[f].metalcost / UnitDefs[f].energymake +
        UnitDefs[g].metalcost / UnitDefs[g].energymake) /
        3 *
        500 *
        h
    a.energycost =
        (UnitDefs[e].energycost / UnitDefs[e].energymake + UnitDefs[f].energycost / UnitDefs[f].energymake +
        UnitDefs[g].energycost / UnitDefs[g].energymake) /
        3 *
        500 *
        i
    a.buildtime =
        (UnitDefs[e].buildtime / UnitDefs[e].energymake + UnitDefs[f].buildtime / UnitDefs[f].energymake +
        UnitDefs[g].buildtime / UnitDefs[g].energymake) /
        3 *
        500 *
        j
end
function FACBALANCE(e, f, g, h, i, j)
    a.metalcost =
        (UnitDefs[e].metalcost / UnitDefs[e].workertime + UnitDefs[f].metalcost / UnitDefs[f].workertime +
        UnitDefs[g].metalcost / UnitDefs[g].workertime) /
        3 *
        600 *
        h
    a.energycost =
        (UnitDefs[e].energycost / UnitDefs[e].workertime + UnitDefs[f].energycost / UnitDefs[f].workertime +
        UnitDefs[g].energycost / UnitDefs[g].workertime) /
        3 *
        600 *
        i
    a.buildtime =
        (UnitDefs[e].buildtime / UnitDefs[e].workertime + UnitDefs[f].buildtime / UnitDefs[f].workertime +
        UnitDefs[g].buildtime / UnitDefs[g].workertime) /
        3 *
        600 *
        j
end
SET("armrespawn")
NAME("Epic Construction Turret")
DESC("Enormous Assist & Repair in a short Radius")
BD(200)
SD(500)
EM(50)
B(true)
WT(10000)
REP(5000)
EC(200000)
MC(10000)
BT(200000)
MWD(-1000)
ADD("armnanotc3")
SET("correspawn")
NAME("Epic Construction Turret")
DESC("Enormous Assist & Repair in a short Radius")
BD(200)
SD(500)
EM(50)
B(true)
WT(10000)
REP(5000)
EC(200000)
MC(10000)
BT(200000)
MWD(-1000)
ADD("cornanotc3")
SET("legnanotcbase")
NAME("Epic Construction Turret")
DESC("Enormous Assist & Repair in a short Radius")
BD(200)
SD(500)
EM(50)
B(true)
WT(10000)
REP(5000)
EC(200000)
MC(10000)
BT(200000)
MWD(-1000)
ADD("legnanotc3")
SET("armsat")
SPACE(2100)
NAME("Sky Eye")
DESC("Long-Range Radar Satellite")
MC(200)
EC(10000)
BT(10000)
HP(500)
SP(110)
ASD(1300)
SD(1100)
RD(2300)
ICT("armeyes")
RA(2)
ADD("armosat")
SET("corsfig")
SPACE(2100)
BPIC("ARMSABER.DDS")
ONAME("Units/ARMSABER.s3o")
S("Units/ARMSABER.cob")
MC(130)
EC(3000)
BT(4000)
HP(275)
SP(200)
ASD(700)
NAME("Blaster")
DESC("Orbital Fighter")
UG("weapon")
ICT("armhawk")
RA(2.3)
TR(720)
SD(200)
ADD("armofighter")
SET("armmls")
BNOPTION()
SPACE(2000)
MC(600)
EC(13000)
BT(15000)
HP(600)
SP(60)
BUILDER(true)
WT(200)
BD(200)
ASD(500)
SD(200)
EM(30)
NAME("Advanced Orbital Constructor")
DESC("Tech 2 Constructor")
UG("buildert2")
ICT("armaca")
RA(2.5)
a.reclaimSpeed = 50
ADD("armoc")
SET("armhawk")
SPACE(2000)
TR(180)
MC(500)
EC(6000)
BT(8000)
HP(500)
SP(70)
SD(350)
ASD(600)
NAME("Peacemaker")
DESC("Orbital Bomber")
a.nochasecategory = "VTOL"
UG("weapon")
ICT("armbrtha")
RA(2.5)
NOASD()
ADD("armocan")
SET("armaap")
NAME("Space Factory")
DESC("Tech 2 Orbital Units")
FACBALANCE("armaap", "coraap", "legaap", 1.05, 1.1, 1)
WT(600)
ICT("armaap")
HP(4000)
BNOPTION()
WATER()
ADD("armspace")
SET("armemp")
BPIC("scavengers/armemp.DDS")
ASD(1600)
MC(3000)
EC(60000)
BT(50000)
HP(3000)
SD(600)
NAME("Maestro")
DESC("Anti-Orbit Missile Launcher")
UG("weapon")
a.canrepeat = false
WATER()
ADD("armorocket")
SET("armsubk")
SPACE(2030)
MC(700)
EC(20000)
BT(25000)
HP(2600)
SP(90)
ASD(1000)
SD(300)
NAME("Lion")
DESC("Laser Assault Spaceship")
UG("weapon")
ICT("armbrawl")
RA(2.4)
ADD("armobruiser")
SET("armlship")
SPACE(2060)
AS(false)
UP(true)
MC(900)
EC(30000)
BT(30000)
HP(1500)
SP(70)
ASD(1600)
SD(300)
NAME("Accelerator")
DESC("Tachyon Accelerator Spaceship")
UG("weapon")
ICT("armanni")
RA(2.8)
ADD("armotachyon")
SET("armdronecarry")
SPACE(2000)
MC(8000)
EC(80000)
BT(90000)
HP(20000)
SP(70)
ASD(1400)
SD(500)
NAME("Kaiser")
DESC("Orbital Drone Carrier Battleship")
UG("weapon")
TECH(3)
ICT("armtrident")
RA(2)
AS(false)
UP(true)
RD(1200)
a.sonardistance = 0
ADD("armokaiser")
SET("armdrone")
SPACE(2000)
MC(25)
EC(600)
BT(1200)
HP(500)
SP(200)
ASD(800)
NAME("Kaiser Drone")
DESC("Rocket drone capable of attacking aircraft and spaceships.")
UG("weapon")
ICT("armdrone")
ADD("armodrone")
SET("armdl")
BPIC("scavengers/armdl.DDS")
SPACES(2000)
ASD(1300)
MC(800)
EC(9000)
BT(20000)
HP(3000)
SD(300)
NAME("Penguin")
DESC("Orbital Laser Defense")
UG("weapon")
TECH(1)
ICT("armhlt")
WATER()
ADD("armolaser")
SET("armfepocht4")
SPACE(2000)
MC(70000)
EC(900000)
BT(400000)
HP(70000)
SP(50)
SD(1000)
ASD(1500)
UG("weapon")
NAME("Iron Sky")
DESC("Experimental Orbital Carpet Artillery")
a.customparams.paralyzemultiplier = 0
ICT("armvulc")
EXP("fusionExplosion")
SELF("ScavComBossExplo")
a.customparams.crashable = 1
a.corpse = "DEAD"
ADD("armoliberator")
SET("legaap")
NAME("Space Factory")
DESC("Tech 2 Orbital Units")
TECH(2)
FACBALANCE("armaap", "coraap", "legaap", 1.05, 1.1, 1)
WT(600)
ICT("legaap")
HP(4000)
BNOPTION()
WATER()
ADD("legspace")
SET("armptt2")
BPIC("scavengers/armptt2.DDS")
SPACES(2000)
RD(0)
ASD(1500)
MC(1500)
EC(20000)
BT(33000)
HP(4000)
SD(600)
NAME("Kraken")
DESC("Area Control and Anti-Ground Orbital Defense")
UG("weapon")
ICT("armhlt")
RA(2)
ADD("armomulti")
SET("corfdoom")
BPIC("scavengers/corfdoom.DDS")
SPACES(2000)
ASD(1500)
MC(1600)
EC(21000)
BT(36000)
HP(4000)
SD(600)
NAME("Cardinal")
DESC("Area Control and Anti-Ground Orbital Defense")
UG("weapon")
ICT("corfdoom")
ADD("coromulti")
SET("leganavaldefturret")
SPACES(2000)
ASD(1500)
MC(1500)
EC(21000)
BT(32000)
HP(4000)
SD(800)
NAME("Aeon")
DESC("Area Control and Anti-Ground Orbital Defense")
UG("weapon")
ICT("leganavaldefturret")
ADD("legomulti")
SET("armapt3")
NAME("Experimental Space Factory")
DESC("Tech 3 Orbital Units")
TECH(3)
BNOPTION()
ICT("armapt3")
WATER()
ADD("armspacet3")
SET("corapt3")
NAME("Experimental Space Factory")
DESC("Tech 3 Orbital Units")
TECH(3)
BNOPTION()
ICT("corapt3")
WATER()
ADD("corspacet3")
SET("legapt3")
NAME("Experimental Space Factory")
DESC("Tech 3 Orbital Units")
TECH(3)
BNOPTION()
ICT("legapt3")
WATER()
ADD("legspacet3")
SET("coraap")
TECH(2)
NAME("Space Factory")
DESC("Tech 2 Orbital Units")
FACBALANCE("armaap", "coraap", "legaap", 1.05, 1.1, 1)
WT(600)
ICT("coraap")
HP(4000)
BNOPTION()
WATER()
ADD("corspace")
SET("corsat")
SPACE(2100)
NAME("Observer")
DESC("Long-Range Radar Satellite")
MC(200)
EC(10000)
BT(10000)
HP(500)
SP(110)
ASD(1000)
SD(1100)
RD(2300)
ICT("coreyes")
RA(2)
ADD("corosat")
SET("corsfig")
SPACE(2100)
MC(140)
EC(3000)
BT(4000)
HP(280)
SP(200)
ASD(700)
NAME("Zealot")
DESC("Orbital Fighter")
UG("weapon")
ICT("corvamp")
RA(2.8)
TR(720)
SD(200)
ADD("corofighter")
SET("correcl")
BNOPTION()
SPACE(2000)
a.canassist = true
a.canresurrect = false
MC(600)
EC(9000)
BT(15000)
HP(500)
SP(60)
BUILDER(true)
WT(200)
BD(200)
ASD(500)
SD(200)
EM(30)
NAME("Advanced Orbital Constructor")
DESC("Tech 2 Constructor")
UG("buildert2")
ICT("coraca")
TECH(2)
RA(2.5)
a.reclaimSpeed = 50
ADD("coroc")
SET("corvamp")
SPACE(2000)
TR(180)
MC(550)
EC(6660)
BT(9000)
HP(550)
SP(70)
SD(350)
ASD(500)
NAME("Bombard")
DESC("Orbital Bomber")
UG("weapon")
ICT("corint")
RA(2.5)
NOASD()
ADD("corocan")
SET("corshark")
SPACE(2030)
MC(650)
EC(22000)
BT(24000)
HP(2200)
SP(85)
ASD(1000)
SD(300)
NAME("Inquisitor")
DESC("Medium Range Missile Assault Spaceship")
UG("weapon")
ICT("corape")
RA(2.4)
ADD("corobruiser")
SET("corssub")
SPACE(2060)
MC(1100)
EC(50000)
BT(40000)
HP(4000)
SP(65)
ASD(1300)
SD(300)
NAME("Punisher")
DESC("Armored Long Range Laser Spaceship")
UG("weapon")
ICT("corcrwh")
a.stealth = false
ADD("coroheavy")
SET("legsolar")
SPACE(2000)
SOLBALANCE("corfus", "armfus", "legfus", 1.03, 1.2, 1.2)
HP(3000)
SP(10)
ASD(500)
EM(480)
ES(1500)
NAME("Orbital Solar Collector")
DESC("Produces 500 Energy")
UG("energy")
ICT("legadvsol")
RA(2)
EXP("fusionExplosion")
SELF("fusionExplosionSelfd")
ADD("legosolar")
SET("corsolar")
ONAME("Units/CORADVSOL.s3o")
BPIC("CORADVSOL.DDS")
S("Units/CORADVSOL.cob")
SPACE(2000)
SOLBALANCE("corfus", "armfus", "legfus", 1, 1.2, 1.2)
HP(3000)
SP(10)
ASD(500)
EM(480)
ES(1500)
NAME("Orbital Solar Collector")
DESC("Produces 500 Energy")
a.customparams.solar = true
UG("energy")
ICT("coradvsol")
RA(2)
EXP("fusionExplosion")
SELF("fusionExplosionSelfd")
ADD("corosolar")
SET("armsolar")
SPACE(2000)
SOLBALANCE("corfus", "armfus", "legfus", 1.03, 1.2, 1.2)
HP(3000)
SP(10)
ASD(500)
EM(480)
ES(1500)
NAME("Orbital Solar Collector")
DESC("Produces 500 Energy")
UG("energy")
ICT("coradvsol")
RA(2)
EXP("fusionExplosion")
SELF("fusionExplosionSelfd")
ADD("armosolar")

end
