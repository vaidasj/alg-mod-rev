#  NLP written by GAMS Convert at 10/11/20 12:19:09
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         42       42        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         63       63        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        143      102       41        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= x1, start=2.65787165646339)
@variable(m, 1 <= x2, start=2.82088780167557)
@variable(m, 1 <= x3, start=2.99388978021114)
@variable(m, 1 <= x4, start=3.17748858499683)
@variable(m, 1 <= x5, start=3.37233255315756)
@variable(m, 1 <= x6, start=3.57910964624528)
@variable(m, 1 <= x7, start=3.7985498695696)
@variable(m, 1 <= x8, start=4.03142783910829)
@variable(m, 1 <= x9, start=4.27856550499248)
@variable(m, 1 <= x10, start=4.54083504110912)
@variable(m, 1 <= x11, start=4.81916191094404)
@variable(m, 1 <= x12, start=5.11452812040596)
@variable(m, 1 <= x13, start=5.42797566902517)
@variable(m, 1 <= x14, start=5.76061021161472)
@variable(m, 1 <= x15, start=6.11360494321832)
@variable(m, 1 <= x16, start=6.48820472094886)
@variable(m, 1 <= x17, start=6.88573043715017)
@variable(m, 1 <= x18, start=7.30758365919499)
@variable(m, 1 <= x19, start=7.75525155216024)
@variable(m, 1 <= x20, start=8.23031210161429)
@variable(m, 4.275 <= x21 <= 4.275, start=4.275)
@variable(m, 1 <= x22, start=4.5315)
@variable(m, 1 <= x23, start=4.80339)
@variable(m, 1 <= x24, start=5.0915934)
@variable(m, 1 <= x25, start=5.397089004)
@variable(m, 1 <= x26, start=5.72091434424)
@variable(m, 1 <= x27, start=6.0641692048944)
@variable(m, 1 <= x28, start=6.42801935718807)
@variable(m, 1 <= x29, start=6.81370051861935)
@variable(m, 1 <= x30, start=7.22252254973651)
@variable(m, 1 <= x31, start=7.6558739027207)
@variable(m, 1 <= x32, start=8.11522633688395)
@variable(m, 1 <= x33, start=8.60213991709698)
@variable(m, 1 <= x34, start=9.1182683121228)
@variable(m, 1 <= x35, start=9.66536441085017)
@variable(m, 1 <= x36, start=10.2452862755012)
@variable(m, 1 <= x37, start=10.8600034520313)
@variable(m, 1 <= x38, start=11.5116036591531)
@variable(m, 1 <= x39, start=12.2022998787023)
@variable(m, 1 <= x40, start=12.9344378714245)
@variable(m, 13.7105041437099 <= x41 <= 13.7105041437099, start=13.7105041437099)
@variable(m, 1 <= x42, start=15)
@variable(m, 1 <= x43, start=15.8671283435366)
@variable(m, 1 <= x44, start=16.7843841246842)
@variable(m, 1 <= x45, start=17.7546651382389)
@variable(m, 1 <= x46, start=18.7810366963301)
@variable(m, 1 <= x47, start=19.866741312356)
@variable(m, 1 <= x48, start=21.0152089447329)
@variable(m, 1 <= x49, start=22.2300678328211)
@variable(m, 1 <= x50, start=23.5151559592598)
@variable(m, 1 <= x51, start=24.8745331749237)
@variable(m, 1 <= x52, start=26.3124940248049)
@variable(m, 1 <= x53, start=27.8335813153413)
@variable(m, 1 <= x54, start=29.4426004660523)
@variable(m, 1 <= x55, start=31.1446346908215)
@variable(m, 1 <= x56, start=32.9450610567885)
@variable(m, 1 <= x57, start=34.8495674715809)
@variable(m, 1 <= x58, start=36.8641706525542)
@variable(m, 1 <= x59, start=38.9952351348076)
@variable(m, 1 <= x60, start=41.2494933780253)
@variable(m, 1 <= x61, start=43.6340670356661)
@variable(m, 1 <= x62, start=46.156489453693)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(10*$(x1)^0.1 + 9.70873786407767*$(x2)^0.1 + 9.42595909133755*$(x3)^0.1 + 
    9.1514165935316*$(x4)^0.1 + 8.88487047915689*$(x5)^0.1 + 8.62608784384164*$(x6)^0.1 + 8.37484256683654*$(x7)^0.1 + 
    8.13091511343354*$(x8)^0.1 + 7.89409234313936*$(x9)^0.1 + 7.66416732343627*$(x10)^0.1 + 7.44093914896725*$(x11)^0.1
     + 7.22421276598762*$(x12)^0.1 + 7.01379880192973*$(x13)^0.1 + 6.80951339993178*$(x14)^0.1 + 6.61117805818619*$(x15)
    ^0.1 + 6.41861947396718*$(x16)^0.1 + 6.23166939220114*$(x17)^0.1 + 6.05016445844771*$(x18)^0.1 + 5.87394607616282*
    $(x19)^0.1 + 5.70286026811925*$(x20)^0.1))

@constraint(m, x1 - x21 - 0.95*x42 + x43 == 0)

@constraint(m, x2 - x22 - 0.95*x43 + x44 == 0)

@constraint(m, x3 - x23 - 0.95*x44 + x45 == 0)

@constraint(m, x4 - x24 - 0.95*x45 + x46 == 0)

@constraint(m, x5 - x25 - 0.95*x46 + x47 == 0)

@constraint(m, x6 - x26 - 0.95*x47 + x48 == 0)

@constraint(m, x7 - x27 - 0.95*x48 + x49 == 0)

@constraint(m, x8 - x28 - 0.95*x49 + x50 == 0)

@constraint(m, x9 - x29 - 0.95*x50 + x51 == 0)

@constraint(m, x10 - x30 - 0.95*x51 + x52 == 0)

@constraint(m, x11 - x31 - 0.95*x52 + x53 == 0)

@constraint(m, x12 - x32 - 0.95*x53 + x54 == 0)

@constraint(m, x13 - x33 - 0.95*x54 + x55 == 0)

@constraint(m, x14 - x34 - 0.95*x55 + x56 == 0)

@constraint(m, x15 - x35 - 0.95*x56 + x57 == 0)

@constraint(m, x16 - x36 - 0.95*x57 + x58 == 0)

@constraint(m, x17 - x37 - 0.95*x58 + x59 == 0)

@constraint(m, x18 - x38 - 0.95*x59 + x60 == 0)

@constraint(m, x19 - x39 - 0.95*x60 + x61 == 0)

@constraint(m, x20 - x40 - 0.95*x61 + x62 == 0)

JuMP.add_NL_constraint(m, :(-0.560877056310648*$(x42)^0.75 + $(x21) == 0))

JuMP.add_NL_constraint(m, :(-0.569991308475696*$(x43)^0.75 + $(x22) == 0))

JuMP.add_NL_constraint(m, :(-0.579253667238426*$(x44)^0.75 + $(x23) == 0))

JuMP.add_NL_constraint(m, :(-0.58866653933105*$(x45)^0.75 + $(x24) == 0))

JuMP.add_NL_constraint(m, :(-0.59823237059518*$(x46)^0.75 + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-0.607953646617352*$(x47)^0.75 + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-0.617832893374884*$(x48)^0.75 + $(x27) == 0))

JuMP.add_NL_constraint(m, :(-0.627872677892226*$(x49)^0.75 + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-0.638075608907974*$(x50)^0.75 + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-0.648444337552729*$(x51)^0.75 + $(x30) == 0))

JuMP.add_NL_constraint(m, :(-0.658981558037961*$(x52)^0.75 + $(x31) == 0))

JuMP.add_NL_constraint(m, :(-0.669690008356078*$(x53)^0.75 + $(x32) == 0))

JuMP.add_NL_constraint(m, :(-0.680572470991864*$(x54)^0.75 + $(x33) == 0))

JuMP.add_NL_constraint(m, :(-0.691631773645482*$(x55)^0.75 + $(x34) == 0))

JuMP.add_NL_constraint(m, :(-0.702870789967221*$(x56)^0.75 + $(x35) == 0))

JuMP.add_NL_constraint(m, :(-0.714292440304189*$(x57)^0.75 + $(x36) == 0))

JuMP.add_NL_constraint(m, :(-0.725899692459132*$(x58)^0.75 + $(x37) == 0))

JuMP.add_NL_constraint(m, :(-0.737695562461593*$(x59)^0.75 + $(x38) == 0))

JuMP.add_NL_constraint(m, :(-0.749683115351594*$(x60)^0.75 + $(x39) == 0))

JuMP.add_NL_constraint(m, :(-0.761865465976057*$(x61)^0.75 + $(x40) == 0))

JuMP.add_NL_constraint(m, :(-0.774245779798168*$(x62)^0.75 + $(x41) == 0))
