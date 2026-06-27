-- Space Defenses
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
    a.maxacc = 0.22
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
SET("armllt")
BPIC("scavengers/armllt.DDS")
SPACES(2000)
MC(160)
EC(900)
BT(4000)
HP(350)
SD(400)
ASD(1000)
NAME("Orbital Sentry")
DESC("Orbital Light Laser Defense")
WATER()
ADD("armollt")
SET("corllt")
BPIC("scavengers/corllt.DDS")
SPACES(2000)
MC(160)
EC(900)
BT(4000)
HP(350)
SD(400)
ASD(1000)
NAME("Orbital Guard")
DESC("Orbital Light Laser Defense")
WATER()
ADD("corollt")
SET("leglht")
SPACES(2000)
MC(160)
EC(900)
BT(4000)
HP(350)
SD(400)
ASD(1000)
NAME("Orbital Pharos")
DESC("Orbital Light Laser Defense")
WATER()
ADD("legollt")
SET("cormadsam")
BPIC("scavengers/cormadsam.DDS")
SPACES(2000)
ASD(1300)
MC(820)
EC(9500)
BT(20000)
HP(3100)
SD(300)
NAME("Purger")
DESC("Orbital Defense Battery")
TECH(1)
ICT("armhlt")
WATER()
ADD("cororocket")
SET("cormship")
SPACE(2000)
RD(0)
MC(3300)
EC(82000)
BT(82000)
HP(5000)
SP(60)
SD(900)
ASD(1200)
NAME("Shieldbreaker")
DESC("Heavy Duty Orbital Bomber")
UG("weapon")
ICT("armliche")
RA(2)
TR(180)
TECH(3)
a.customparams.maxrange = nil
ADD("corobomber")
SET("cordrone")
SD(250)
ASD(800)
SPACE(2100)
MC(20)
HP(400)
EC(1000)
a.weapondefs.heat_ray.range = 390
a.weapondefs.heat_ray.heightmod = 0.1
a.weapondefs.heat_ray.cylindertargeting = 50
a.weapondefs.heat_ray.minIntensity = 0.5
a.weapondefs.heat_ray.damage.space = 67.5
a.weapondefs.heat_ray.targetmoveerror = 0
a.weapons[1].maxangledif = 360
a.weapons[1].onlytargetcategory = "SPACENOTOBJECT"
ADD("corodrone")
SET("armdrone")
SD(250)
ASD(800)
SPACE(2100)
MC(20)
HP(250)
EC(1000)
a.weapondefs.med_emg.range = 390
a.weapondefs.med_emg.accuracy = 0
a.weapondefs.med_emg.sprayangle = 0
a.weapondefs.med_emg.damage.space = 21.6
a.weapondefs.med_emg.turret = true
a.weapons[1].maxangledif = 360
a.weapons[1].onlytargetcategory = "SPACENOTOBJECT"
ADD("armantiodrone")
SET("cordronecarry")
DESC("Anti Orbital Drone Carrier")
ASD(1100)
a.customparams.ignore_noair = true
a.weapondefs.plasma.customparams.carried_unit = "corodrone"
a.weapondefs.plasma.customparams.droneammo = 0
a.weapons[1].def = "AAMISSILE"
a.weapons[1].onlytargetcategory = "VTOL"
a.weapons[2].def = "PLASMA"
a.weapons[2].onlytargetcategory = "SPACENOTOBJECT"
ADD("cordronecarry")
SET("armdronecarry")
ASD(1100)
DESC("Anti Orbital Drone Carrier")
a.customparams.ignore_noair = true
a.weapondefs.plasma.customparams.carried_unit = "armantiodrone"
a.weapondefs.plasma.customparams.droneammo = 0
a.weapons[1].def = "AAMISSILE"
a.weapons[1].onlytargetcategory = "VTOL"
a.weapons[2].def = "PLASMA"
a.weapons[2].onlytargetcategory = "SPACENOTOBJECT"
ADD("armdronecarry")
SET("armlichet4")
a.weapondefs.nuclear_missile.tracks = true
a.weapondefs.nuclear_missile.collideenemy = true
a.weapondefs.nuclear_missile.turnrate = 20000
a.weapondefs.nuclear_missile.weapontype = "MissileLauncher"
a.weapons[1].badtargetcategory = "SPACENOTOBJECT"
a.weapons[1].onlytargetcategory = "SURFACE SPACENOTOBJECT"
ADD("armlichet4")
SET("corcrwt4")
a.weapondefs.edragon_missile.burnblow = false
a.weapondefs.edragon_missile.damage.space = 450
a.weapons[2].onlytargetcategory = "VTOL SPACENOTOBJECT"
ADD("corcrwt4")
SET("leganavyflagship")
DESC("Anti Orbital Naval Combat Flagship")
a.weapons[4].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[4].burstControlWhenOutOfArc = "nil"
a.weapons[5].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[5].burstControlWhenOutOfArc = "nil"
a.weapons[6].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[6].burstControlWhenOutOfArc = "nil"
a.weapons[7].onlytargetcategory = "NOTSUB SPACENOTOBJECT"
a.weapons[7].burstControlWhenOutOfArc = "nil"
a.weapondefs.leg_experimental_railgun.damage.space = 750
a.weapondefs.leg_experimental_railgun.weaponvelocity = 7000
ADD("leganavyflagship")
table.insert(UnitDefs["armasy"].buildoptions, "armdronecarry")
table.insert(UnitDefs["corasy"].buildoptions, "cordronecarry")
table.insert(UnitDefs["corcom"].buildoptions, "corollt")
table.insert(UnitDefs["armcom"].buildoptions, "armollt")
table.insert(UnitDefs["legcom"].buildoptions, "legollt")
table.insert(UnitDefs["legadvshipyard"].buildoptions, "cordronecarry")
table.insert(UnitDefs["legavp"].buildoptions, "legov")
table.insert(UnitDefs["armavp"].buildoptions, "armov")
table.insert(UnitDefs["coravp"].buildoptions, "corov")
table.insert(UnitDefs["legafcv"].buildoptions, "legollt")
table.insert(UnitDefs["legaceb"].buildoptions, "legocannon")
table.insert(UnitDefs["legaceb"].buildoptions, "legomulti")
table.insert(UnitDefs["armconsul"].buildoptions, "armorocket")
table.insert(UnitDefs["armconsul"].buildoptions, "armomulti")
table.insert(UnitDefs["armmls"].buildoptions, "armorocket")
table.insert(UnitDefs["armmls"].buildoptions, "armomulti")
table.insert(UnitDefs["corfast"].buildoptions, "corocannon")
table.insert(UnitDefs["corfast"].buildoptions, "coromulti")
table.insert(UnitDefs["cormls"].buildoptions, "corocannon")
table.insert(UnitDefs["cormls"].buildoptions, "coromulti")

end
