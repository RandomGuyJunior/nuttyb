-- Cortex Spaceunits
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
function UP(d)
    a.upright = d
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
SET("armsat")
SPACE(2100)
BPIC("legwhisper.DDS")
ONAME("Units/legwhisper.s3o")
S("Units/legwhisper.cob")
MC(200)
EC(10000)
BT(10000)
HP(500)
SP(70)
ASD(1500)
SD(1100)
RA(2)
RD(2300)
ICT("legeyes")
NAME("Lumen")
DESC("Long-Range Radar Satellite")
ADD("legosat")
SET("legnavyrezsub")
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
ICT("legaca")
RA(2.5)
a.reclaimSpeed = 50
ADD("legoc")
SET("corsfig")
ONAME("Units/legionnaire.s3o")
BPIC("legionnaire.DDS")
S("Units/legionnaire.cob")
SPACE(2100)
MC(127.5)
EC(2600)
BT(4000)
HP(265)
SP(215)
ASD(700)
NAME("Lykion")
DESC("Orbital Fighter")
UG("weapon")
ICT("legionnaire")
RA(2.8)
TR(720)
SD(200)
ADD("legofighter")
SET("legafigdef")
SPACE(2000)
MC(500)
EC(6000)
BT(8000)
HP(500)
SP(70)
SD(400)
ASD(500)
NAME("Zeus")
DESC("Orbital Lightning Bomber")
UG("weapon")
ICT("leglrpc")
RA(2.5)
NOASD()
ADD("legocan")
SET("legnavyscout")
SPACE(2030)
MC(720)
EC(19000)
BT(26000)
HP(2900)
SP(100)
ASD(900)
SD(300)
NAME("Thaleon")
DESC("Gatling Gun Assault Spaceship")
UG("weapon")
ICT("legvelite")
RA(2.4)
ADD("legobruiser")
SET("legnavyfrigate")
SPACE(2060)
MC(900)
EC(31000)
BT(33000)
HP(1100)
SP(70)
ASD(1400)
SD(300)
NAME("Trikeos")
DESC("Seeker Missile Orbital Striker")
UG("weapon")
ICT("legacluster")
RA(2)
ADD("legotrigun")
SET("legerailtank")
SPACE(2000)
MC(1000)
EC(30000)
BT(30000)
HP(2000)
SP(70)
ASD(2000)
SD(1000)
NAME("Propheteus")
DESC("Orbital Camera Deployer")
UG("weapon")
ICT("spy")
RA(2.5)
ADD("legospy")
SET("legeyes")
NAME("Argus")
DESC("Orbital Deployed Camera with increased uncloaking range.")
a.movementclass = "HOVER2"
a.mincloakdistance = 50
a.icontype = "legeyes"
ADD("legoeyes")
SET("legosat")
SPACE(1850)
BPIC("ARMSPID.DDS")
ONAME("dbg_sphere_fullmetal.s3o")
S("Units/ARMSILO.cob")
MC(110000)
EC(1500000)
BT(1100000)
HP(100000)
SP(50)
SD(1500)
ASD(1500)
NAME("Phaethon")
DESC("Celestial Earth Scorcher")
UG("weapon")
ICT("defence_hllllt")
RA(3)
TR(160)
TECH(3)
UP(true)
AS(false)
SELF("ScavComBossExplo")
EXP("korgExplosion")
a.customparams.crashable = 1
a.collisionvolumetype = "sphere"
a.corpse = "DEAD"
ADD("legohelios")
SET("leglraa")
ASD(1600)
MC(3100)
EC(60000)
BT(50000)
HP(3000)
SD(600)
NAME("Nostradamos")
DESC("Anti-Orbit Railgun Defense")
UG("weapon")
ICT("leglraa")
WATER()
ADD("legocannon")
SET("leglupara")
SPACES(2000)
ASD(1200)
MC(780)
EC(10000)
BT(21000)
HP(3000)
SD(300)
NAME("Pompeii")
DESC("Orbital Beam Laser Defense")
WATER()
ADD("legolaser")
SET("cordemon")
DESC("Anti Orbital Flamethrower Mech")
ADD("cordemon")
UnitDefs["armoc"].buildoptions = {
    [1] = "armafus",
    [2] = "armageo",
    [3] = "armckfus",
    [4] = "armfus",
    [5] = "armuwageo",
    [6] = "armgmm",
    [7] = "armmoho",
    [8] = "armmmkr",
    [9] = "armuwadves",
    [10] = "armuwadvms",
    [11] = "armarad",
    [12] = "armveil",
    [13] = "armfort",
    [14] = "armasp",
    [15] = "armfasp",
    [16] = "armtarg",
    [17] = "armsd",
    [18] = "armgate",
    [19] = "armamb",
    [20] = "armpb",
    [21] = "armanni",
    [22] = "armflak",
    [23] = "armmercury",
    [24] = "armemp",
    [25] = "armamd",
    [26] = "armsilo",
    [27] = "armbrtha",
    [28] = "armvulc",
    [29] = "armdf",
    [30] = "armshltx",
    [31] = "armap",
    [32] = "armspace",
    [33] = "armap",
    [34] = "armuwmme",
    [35] = "armanavaldefturret",
    [36] = "t3mmex"
}
UnitDefs["coroc"].buildoptions = {
    [1] = "corfus",
    [2] = "corafus",
    [3] = "corageo",
    [4] = "coruwageo",
    [5] = "corbhmth",
    [6] = "cormoho",
    [7] = "cormexp",
    [8] = "cormmkr",
    [9] = "coruwadves",
    [10] = "coruwadvms",
    [11] = "corarad",
    [12] = "corshroud",
    [13] = "corfort",
    [14] = "corasp",
    [15] = "corfasp",
    [16] = "cortarg",
    [17] = "corsd",
    [18] = "corgate",
    [19] = "cortoast",
    [20] = "corvipe",
    [21] = "cordoom",
    [22] = "corflak",
    [23] = "corscreamer",
    [24] = "cortron",
    [25] = "corfmd",
    [26] = "corsilo",
    [27] = "corint",
    [28] = "corbuzz",
    [29] = "corplat",
    [30] = "corgant",
    [31] = "corspace",
    [32] = "corap",
    [33] = "coruwmme",
    [34] = "coranavaldefturret",
    [35] = "t3mmex"
}
UnitDefs["legoc"].buildoptions = {
    "legfus",
    "legafus",
    "legageo",
    "leganavalmex",
    "legrampart",
    "legmoho",
    "legadveconv",
    "legadvestore",
    "legamstor",
    "legarad",
    "legajam",
    "legforti",
    "legtarg",
    "legsd",
    "legdeflector",
    "legacluster",
    "legapopupdef",
    "legbastion",
    "legflak",
    "leglraa",
    "legperdition",
    "legabm",
    "legsilo",
    "leglrpc",
    "legstarfall",
    "leggant",
    "legspace",
    "legap",
    "leganavaltorpturret",
    "leganavaldefturret",
    "leganavalaaturret",
    "t3mmex"
}
local e = Spring.GetModOptions()
for c, f in pairs(UnitDefs) do
    local g = f.customparams
    if f.buildoptions then
        if c == "armaca" or c == "armack" or c == "armacsub" or c == "armacv" or c == "armoc" then
            table.insert(f.buildoptions, "armnanotc3")
            table.insert(f.buildoptions, "armfirewall")
            table.insert(f.buildoptions, "armorocket")
            table.insert(f.buildoptions, "armomulti")
            table.insert(f.buildoptions, "armspacet3")
        elseif c == "coraca" or c == "corack" or c == "coracsub" or c == "coracv" or c == "coroc" then
            table.insert(f.buildoptions, "cornanotc3")
            table.insert(f.buildoptions, "cortyrant")
            table.insert(f.buildoptions, "corocannon")
            table.insert(f.buildoptions, "coromulti")
            table.insert(f.buildoptions, "corspacet3")
        elseif c == "legaca" or c == "legack" or c == "legacv" or c == "legoc" then
            table.insert(f.buildoptions, "legnanotc3")
            table.insert(f.buildoptions, "legparagon")
            table.insert(f.buildoptions, "legocannon")
            table.insert(f.buildoptions, "legomulti")
            table.insert(f.buildoptions, "legspacet3")
        end
        if
            c == "armca" or c == "armcs" or c == "armcsa" or c == "armbeaver" or c == "armcv" or c == "armck" or
                c == "armch"
         then
            table.insert(f.buildoptions, "armspace")
            table.insert(f.buildoptions, "armolaser")
            table.insert(f.buildoptions, "armollt")
        elseif
            c == "corca" or c == "corcs" or c == "corcsa" or c == "corch" or c == "cormuskrat" or c == "corcv" or
                c == "corck"
         then
            table.insert(f.buildoptions, "corspace")
            table.insert(f.buildoptions, "cororocket")
            table.insert(f.buildoptions, "corollt")
        elseif
            c == "legca" or c == "legnavyconship" or c == "legotter" or c == "legch" or c == "legcv" or c == "legck" or
                c == "legspcon"
         then
            table.insert(f.buildoptions, "legspace")
            table.insert(f.buildoptions, "legolaser")
            table.insert(f.buildoptions, "legollt")
        end
        if e.scavunitsforplayers then
            if c == "armoc" then
                table.insert(f.buildoptions, "armapt3")
                table.insert(f.buildoptions, "armminivulc")
                table.insert(f.buildoptions, "legmbotrail")
                table.insert(f.buildoptions, "armannit3")
                table.insert(f.buildoptions, "armafust3")
                table.insert(f.buildoptions, "armmmkrt3")
            elseif c == "coroc" then
                table.insert(f.buildoptions, "corapt3")
                table.insert(f.buildoptions, "corminibuzz")
                table.insert(f.buildoptions, "corhllllt")
                table.insert(f.buildoptions, "cordoomt3")
                table.insert(f.buildoptions, "corafust3")
                table.insert(f.buildoptions, "cormmkrt3")
            elseif c == "legoc" then
                table.insert(f.buildoptions, "legapt3")
                table.insert(f.buildoptions, "legministarfall")
                table.insert(f.buildoptions, "legafust3")
                table.insert(f.buildoptions, "legadveconvt3")
            end
        end
        if e.experimentalextraunits then
            if c == "coroc" then
                table.insert(f.buildoptions, "corwint2")
                table.insert(f.buildoptions, "cornanotct2")
                table.insert(f.buildoptions, "cormwall")
                table.insert(f.buildoptions, "corgatet3")
                table.insert(f.buildoptions, "corfgate")
                table.insert(f.buildoptions, "cornanotc2plat")
            elseif c == "armoc" then
                table.insert(f.buildoptions, "armshockwave")
                table.insert(f.buildoptions, "armwint2")
                table.insert(f.buildoptions, "armnanotct2")
                table.insert(f.buildoptions, "armlwall")
                table.insert(f.buildoptions, "armgatet3")
                table.insert(f.buildoptions, "armfgate")
                table.insert(f.buildoptions, "armnanotc2plat")
            elseif c == "legoc" then
                table.insert(f.buildoptions, "legmohocon")
                table.insert(f.buildoptions, "legwint2")
                table.insert(f.buildoptions, "legnanotct2")
                table.insert(f.buildoptions, "legrwall")
                table.insert(f.buildoptions, "leggatet3")
            end
        end
    end
end

end
