-- Legion Spaceunits
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
function AHP(d)
    a.autoheal = d
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
function TR(d)
    a.turnrate = d
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
function AS(d)
    a.airStrafe = d
end
function BOPTION(d)
    a.buildoptions = d
end
function BNOPTION()
    a.buildoptions = {}
end
function EXP(d)
    a.explodeas = d
end
function SELF(d)
    a.selfdestructas = d
end
function UP(d)
    a.upright = d
end
function WATER()
    a.floater = true
    a.waterline = 0
    a.maxwaterdepth = 1000
end
function SPACE(d)
    a.corpse = ""
    a.customparams.crashable = 0
    a.customparams.armordef = "space"
    a.maxacc = 0.5
    a.maxdec = 0.5
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
SET("coresuppt3")
SPACE(2000)
MC(14000)
EC(100000)
BT(160000)
HP(36000)
SP(65)
ASD(1600)
NAME("Maginot")
DESC("Heavy Heatray Battleship")
TECH(3)
ICT("coresuppt3")
AS(false)
UP(true)
ADD("coroheatray")
SET("legfortt4")
SPACE(2000)
MC(12000)
EC(130000)
BT(120000)
HP(30000)
SP(70)
ASD(1400)
NAME("Longinus")
DESC("Heavy Anti-Swarm Battleship")
TECH(3)
ICT("legfort")
AS(false)
UP(true)
SELF("largeExplosionGenericSelfd")
EXP("largeexplosiongeneric")
ADD("legofort")
SET("legstronghold")
SPACE(2000)
MC(3600)
EC(70000)
BT(85000)
HP(5000)
SP(60)
SD(1050)
ASD(1300)
NAME("Athena")
DESC("Cluster Plasma Orbital Bomber")
UG("weapon")
ICT("armliche")
RA(2)
TECH(3)
a.transportcapacity = nil
a.transportsize = nil
ADD("legobomber")
SET("corprince")
SPACE(2000)
MC(90000)
EC(900000)
BT(820000)
HP(80000)
SP(50)
SD(1200)
ASD(1600)
NAME("Apocalypse")
DESC("Meteor Rain Artillery")
TECH(3)
UG("weapon")
ICT("corbuzz")
a.firestate = 0
TR(180)
UP(true)
AS(false)
SELF("ScavComBossExplo")
EXP("fusionExplosion")
TECH(3)
a.customparams.crashable = 1
a.corpse = "DEAD"
ADD("coroapoc")
SET("armserpt3")
SPACE(2000)
MC(2900)
EC(72000)
BT(74000)
HP(5000)
SP(60)
SD(900)
ASD(1200)
NAME("Porcupine")
DESC("Orbital Tumbleweed Cannon")
UG("weapon")
ICT("armvader")
RA(2)
a.inheritxpratemultiplier = 1
a.childreninheritxp = "BOTCANNON"
a.parentsinheritxp = "BOTCANNON"
a.stealth = false
a.sonardistance = 0
TECH(3)
ADD("armobomber")
SET("corhurc")
SPACE(2100)
MC(1000)
EC(20000)
BT(20000)
HP(1300)
SP(200)
SD(400)
ASD(1100)
NAME("Hunter")
DESC("Heavy Fighter")
UG("weapon")
ICT("corcrwh")
RA(2)
TR(720)
TECH(3)
ADD("corohunter")
SET("armseadragon")
SPACE(2000)
MC(3500)
EC(60000)
BT(70000)
HP(3000)
SP(80)
SD(1000)
RD(2300)
ASD(1300)
NAME("Porter")
DESC("Orbital Radar and Vanguard Deployment Spaceship. (55 m/s and 1.1k e/s)")
UG("weapon")
ICT("armseadragon")
RA(2)
TR(180)
a.sonardistance = 0
RW(false)
TECH(3)
ADD("armohorizon")
SET("armseap")
SPACE(1970)
MC(200)
EC(4000)
BT(5000)
HP(300)
SP(200)
SD(200)
ASD(900)
NAME("Aspirant")
DESC("Low Orbit Fighter")
UG("weapon")
ICT("armseap")
RA(2)
TR(720)
TECH(2)
ADD("armoplane")
SET("corveng")
SPACE(1970)
MC(200)
EC(4000)
BT(5000)
HP(300)
SP(200)
SD(200)
ASD(800)
NAME("Locust")
DESC("Low Orbit Fighter")
UG("weapon")
ICT("corseap")
RA(2)
TR(720)
TECH(2)
ADD("coroplane")
SET("corcut")
SPACE(1970)
MC(200)
EC(4000)
BT(5000)
HP(300)
SP(205)
SD(200)
ASD(800)
NAME("Koluma")
DESC("Low Orbit Fighter")
UG("weapon")
ICT("corcut")
RA(2)
TR(720)
TECH(2)
ADD("legoplane")
SET("corjuno")
BPIC("scavengers/corjuno.DDS")
ASD(1750)
MC(3300)
EC(60000)
BT(50000)
HP(3666)
SD(600)
NAME("Decimator")
DESC("Anti-Orbital Unstable Plasma Defense")
UG("weapon")
a.stealthy = false
WATER()
ADD("corocannon")
UnitDefs["armaap"].buildoptions[11] = "armoplane"
UnitDefs["coraap"].buildoptions[9] = "coroplane"
UnitDefs["legaap"].buildoptions[10] = "legoplane"
SET("armbanth")
BPIC("scavengers/ARMBANTH.DDS")
DESC("Anti Orbital Assault Mech")
a.weapondefs.bantha_rocket.customparams.overrange_distance = nil
a.weapondefs.bantha_rocket.collidefeature = false
a.weapondefs.bantha_rocket.damage.space = 2100
a.weapondefs.tehlazerofdewm.cylindertargeting = 50
a.weapondefs.tehlazerofdewm.heightmod = 0.1
a.weapondefs.tehlazerofdewm.minintensity = 0.5
a.weapons[2].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[3].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
ADD("armbanth")
SET("corkorg")
BPIC("scavengers/corkorg.DDS")
DESC("Experimental Anti Orbital Assault Bot")
a.weapondefs.corkorg_rocket.customparams.overrange_distance = nil
a.weapondefs.corkorg_rocket.collidefeature = false
a.weapondefs.corkorg_rocket.damage.space = 2400
a.weapondefs.corkorg_laser.cylindertargeting = 50
a.weapondefs.corkorg_laser.heightmod = 0.1
a.weapondefs.corkorg_laser.minintensity = 0.5
a.weapons[2].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[3].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
ADD("corkorg")
SET("legeheatraymech")
DESC("Experimental Anti Orbital Dual Heat-Ray/Riot Mech")
a.weapons[1].onlytargetcategory = "SURFACE SPACENOTOBJECT"
a.weapons[1].badtargetcategory = "SPACENOTOBJECT VTOL GROUNDSCOUT"
a.weapons[2].onlytargetcategory = "SURFACE SPACENOTOBJECT"
a.weapons[2].badtargetcategory = "SPACENOTOBJECT VTOL GROUNDSCOUT"
a.weapons[3].onlytargetcategory = "SURFACE SPACENOTOBJECT"
a.weapons[3].badtargetcategory = "SPACENOTOBJECT VTOL GROUNDSCOUT"
a.weapondefs.heatray1.cylindertargeting = 100
a.weapondefs.heatray1.minintensity = 0.5
a.weapondefs.heatray1.damage.space = 25
ADD("legeheatraymech")
SET("corblackhy")
BPIC("scavengers/CORBLACKHY.DDS")
a.weapondefs.ferret_missile.collidefeature = false
a.weapondefs.ferret_missile.damage.space = 450
a.weapondefs.ferret_missile.flighttime = 5
a.weapondefs.ferret_missile.burnblow = false
a.weapondefs.ferret_missile.range = 1050
a.weapons[3].onlytargetcategory = "VTOL SPACENOTOBJECT"
a.weapons[6].onlytargetcategory = "VTOL SPACENOTOBJECT"
ADD("corblackhy")
SET("armepoch")
BPIC("scavengers/ARMEPOCH.DDS")
a.weapondefs.ferret_missile.collidefeature = false
a.weapondefs.ferret_missile.damage.space = 450
a.weapondefs.ferret_missile.flighttime = 5
a.weapondefs.ferret_missile.burnblow = false
a.weapondefs.ferret_missile.range = 1050
a.weapons[6].onlytargetcategory = "VTOL SPACENOTOBJECT"
a.weapons[7].onlytargetcategory = "VTOL SPACENOTOBJECT"
ADD("armepoch")
SET("corfblackhyt4")
a.weapondefs.ferret_missile.collidefeature = false
a.weapondefs.ferret_missile.damage.space = 1200
a.weapondefs.ferret_missile.flighttime = 5
a.weapondefs.ferret_missile.burnblow = false
a.weapondefs.ferret_missile.range = 1050
a.weapons[3].onlytargetcategory = "VTOL SPACENOTOBJECT"
a.weapons[6].onlytargetcategory = "VTOL SPACENOTOBJECT"
ADD("corfblackhyt4")
SET("armfepocht4")
a.weapondefs.ferret_missile.collidefeature = false
a.weapondefs.ferret_missile.damage.space = 1200
a.weapondefs.ferret_missile.flighttime = 5
a.weapondefs.ferret_missile.burnblow = false
a.weapondefs.ferret_missile.range = 1050
a.weapons[6].onlytargetcategory = "VTOL SPACENOTOBJECT"
a.weapons[7].onlytargetcategory = "VTOL SPACENOTOBJECT"
ADD("armfepocht4")
SET("legfortt4")
a.weapondefs.aa_missiles.collidefeature = false
a.weapondefs.aa_missiles.damage.space = 440
a.weapondefs.aa_missiles.burnblow = false
a.weapons[6].onlytargetcategory = "VTOL SPACENOTOBJECT"
a.category = "T4AIR ALL WEAPON VTOL NOTSUB NOTHOVER", ADD("legfortt4")
SET("legerailtank")
DESC("Experimental Anti-Orbital Rail Accelerator Tank")
a.weapons[1].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[2].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[3].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
ADD("legerailtank")
SET("cordemon")
BPIC("scavengers/CORDEMONT4.DDS")
DESC("Flamethrower Mech with Anti-Orbital Missiles")
a.weapons[2].onlytargetcategory = "VTOL SPACENOTOBJECT"
a.weapondefs.karg_shoulder.damage.space = 360
a.weapondefs.karg_shoulder.flighttime = 5
a.weapondefs.karg_shoulder.collidefeature = false
ADD("cordemon")
SET("armraz")
BPIC("scavengers/ARMRAZ.DDS")
DESC("Anti Orbital Battle Mech")
a.weapondefs.mech_rapidlaser.minintensity = 0.3
a.weapondefs.mech_rapidlaser.accuracy = 0
a.weapondefs.mech_rapidlaser.heightmod = 0.1
a.weapondefs.mech_rapidlaser.cylindertargeting = 100
a.weapondefs.mech_rapidlaser.damage.space = 105
a.weapons[1].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[1].burstcontrolwhenoutofarc = nil
ADD("armraz")
SET("legdrone")
SD(200)
SPACE(2100)
MC(20)
EC(1000)
HP(300)
a.weapondefs.semiauto.range = 390
a.weapondefs.semiauto.sprayangle = 0
a.weapondefs.semiauto.damage.space = 24
a.weapondefs.semiauto.weaponvelocity = 1200
a.weapons[1].maxangledif = 360
a.weapons[1].onlytargetcategory = "SPACENOTOBJECT"
ADD("legodrone")
SET("legvcarry")
ASD(800)
MC(500)
EC(12000)
BT(17000)
HP(2500)
NAME("Carrier")
a.customparams.ignore_noair = true
DESC("Mobile Orbital Drone Vehicle (Drones cost 20m 1000E each)")
a.weapondefs.targeting.customparams.carried_unit = "legodrone"
a.weapondefs.targeting.customparams.droneammo = 0
a.weapons[1].onlytargetcategory = "SPACENOTOBJECT"
ADD("legov")
SET("legov")
ADD("armov")
SET("legov")
ADD("corov")


end
