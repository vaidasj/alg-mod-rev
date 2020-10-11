#  LP written by GAMS Convert at 10/11/20 12:20:16
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        350       19       30      301        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        949      949        0        0        0        0        0        0
#  FX     17       17        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       5872     5872        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, x8, start=0)
@variable(m, x9, start=0)
@variable(m, x10, start=0)
@variable(m, x11, start=0)
@variable(m, x12, start=0)
@variable(m, x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24, start=0)
@variable(m, 0 <= x25, start=0)
@variable(m, 0 <= x26, start=0)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, 0 <= x30, start=0)
@variable(m, 0 <= x31, start=0)
@variable(m, 250 <= x32 <= 250, start=250)
@variable(m, 0 <= x33 <= 0, start=0)
@variable(m, 0 <= x34, start=0)
@variable(m, 0 <= x35, start=0)
@variable(m, 0 <= x36, start=0)
@variable(m, 0 <= x37, start=0)
@variable(m, 0 <= x38, start=0)
@variable(m, 0 <= x39, start=0)
@variable(m, 0 <= x40, start=0)
@variable(m, 0 <= x41, start=0)
@variable(m, 0 <= x42, start=0)
@variable(m, 0 <= x43, start=0)
@variable(m, 0 <= x44, start=0)
@variable(m, 0 <= x45, start=0)
@variable(m, 0 <= x46, start=0)
@variable(m, 0 <= x47, start=0)
@variable(m, 0 <= x48, start=0)
@variable(m, 0 <= x49, start=0)
@variable(m, 0 <= x50, start=0)
@variable(m, 0 <= x51, start=0)
@variable(m, 0 <= x52, start=0)
@variable(m, 0 <= x53, start=0)
@variable(m, 0 <= x54, start=0)
@variable(m, 0 <= x55, start=0)
@variable(m, 0 <= x56 <= 0, start=0)
@variable(m, 0 <= x57 <= 0, start=0)
@variable(m, 0 <= x58, start=0)
@variable(m, 0 <= x59, start=0)
@variable(m, 0 <= x60, start=0)
@variable(m, 0 <= x61, start=0)
@variable(m, 0 <= x62 <= 0, start=0)
@variable(m, 0 <= x63 <= 0, start=0)
@variable(m, 0 <= x64, start=0)
@variable(m, 0 <= x65, start=0)
@variable(m, 0 <= x66, start=0)
@variable(m, 0 <= x67, start=0)
@variable(m, 0 <= x68 <= 0, start=0)
@variable(m, 0 <= x69 <= 0, start=0)
@variable(m, 0 <= x70, start=0)
@variable(m, 0 <= x71, start=0)
@variable(m, 0 <= x72, start=0)
@variable(m, 0 <= x73, start=0)
@variable(m, 0 <= x74 <= 0, start=0)
@variable(m, 0 <= x75 <= 0, start=0)
@variable(m, 0 <= x76, start=0)
@variable(m, 0 <= x77, start=0)
@variable(m, 0 <= x78, start=0)
@variable(m, 0 <= x79, start=0)
@variable(m, 0 <= x80 <= 0, start=0)
@variable(m, 0 <= x81 <= 0, start=0)
@variable(m, 0 <= x82, start=0)
@variable(m, 0 <= x83, start=0)
@variable(m, 0 <= x84, start=0)
@variable(m, 0 <= x85, start=0)
@variable(m, 0 <= x86 <= 0, start=0)
@variable(m, 0 <= x87 <= 0, start=0)
@variable(m, 0 <= x88, start=0)
@variable(m, 0 <= x89, start=0)
@variable(m, 0 <= x90, start=0)
@variable(m, 0 <= x91, start=0)
@variable(m, 0 <= x92 <= 230, start=0)
@variable(m, 100 <= x93 <= 390, start=100)
@variable(m, 200 <= x94 <= 650, start=200)
@variable(m, 360 <= x95 <= 1110, start=360)
@variable(m, 600 <= x96 <= 1580, start=600)
@variable(m, 1600 <= x97 <= 3580, start=1600)
@variable(m, 0 <= x98, start=0)
@variable(m, 0 <= x99, start=0)
@variable(m, 0 <= x100, start=0)
@variable(m, 0 <= x101, start=0)
@variable(m, 0 <= x102, start=0)
@variable(m, 0 <= x103, start=0)
@variable(m, 0 <= x104, start=0)
@variable(m, 0 <= x105, start=0)
@variable(m, 0 <= x106, start=0)
@variable(m, 0 <= x107, start=0)
@variable(m, 0 <= x108, start=0)
@variable(m, 0 <= x109, start=0)
@variable(m, 0 <= x110, start=0)
@variable(m, 0 <= x111, start=0)
@variable(m, 0 <= x112, start=0)
@variable(m, 0 <= x113, start=0)
@variable(m, 0 <= x114, start=0)
@variable(m, 0 <= x115, start=0)
@variable(m, 0 <= x116 <= 0, start=0)
@variable(m, 0 <= x117 <= 0, start=0)
@variable(m, 0 <= x118, start=0)
@variable(m, 0 <= x119, start=0)
@variable(m, 0 <= x120, start=0)
@variable(m, 0 <= x121, start=0)
@variable(m, 0 <= x122 <= 0, start=0)
@variable(m, 0 <= x123 <= 600, start=0)
@variable(m, 0 <= x124 <= 2500, start=0)
@variable(m, 0 <= x125 <= 5000, start=0)
@variable(m, 0 <= x126 <= 10000, start=0)
@variable(m, 0 <= x127, start=0)
@variable(m, x128, start=0)
@variable(m, x129, start=0)
@variable(m, x130 <= 0, start=0)
@variable(m, x131 <= 2500, start=0)
@variable(m, x132 <= 3500, start=0)
@variable(m, x133, start=0)
@variable(m, 0 <= x134, start=0)
@variable(m, 0 <= x135, start=0)
@variable(m, 0 <= x136, start=0)
@variable(m, 0 <= x137, start=0)
@variable(m, 0 <= x138, start=0)
@variable(m, 0 <= x139, start=0)
@variable(m, 0 <= x140, start=0)
@variable(m, 0 <= x141, start=0)
@variable(m, 0 <= x142, start=0)
@variable(m, 0 <= x143, start=0)
@variable(m, 0 <= x144, start=0)
@variable(m, 0 <= x145, start=0)
@variable(m, 0 <= x146, start=0)
@variable(m, 0 <= x147, start=0)
@variable(m, 0 <= x148, start=0)
@variable(m, 0 <= x149, start=0)
@variable(m, 0 <= x150, start=0)
@variable(m, 0 <= x151, start=0)
@variable(m, 0 <= x152, start=0)
@variable(m, 0 <= x153, start=0)
@variable(m, 0 <= x154, start=0)
@variable(m, 0 <= x155, start=0)
@variable(m, 0 <= x156, start=0)
@variable(m, 0 <= x157, start=0)
@variable(m, 0 <= x158, start=0)
@variable(m, 0 <= x159, start=0)
@variable(m, 0 <= x160, start=0)
@variable(m, 0 <= x161, start=0)
@variable(m, 0 <= x162, start=0)
@variable(m, 0 <= x163, start=0)
@variable(m, 0 <= x164, start=0)
@variable(m, 0 <= x165, start=0)
@variable(m, 0 <= x166, start=0)
@variable(m, 0 <= x167, start=0)
@variable(m, 0 <= x168, start=0)
@variable(m, 0 <= x169, start=0)
@variable(m, 0 <= x170, start=0)
@variable(m, 0 <= x171, start=0)
@variable(m, 0 <= x172, start=0)
@variable(m, 0 <= x173, start=0)
@variable(m, 0 <= x174, start=0)
@variable(m, 0 <= x175, start=0)
@variable(m, 0 <= x176, start=0)
@variable(m, 0 <= x177, start=0)
@variable(m, 0 <= x178, start=0)
@variable(m, 0 <= x179, start=0)
@variable(m, 0 <= x180, start=0)
@variable(m, 0 <= x181, start=0)
@variable(m, 0 <= x182, start=0)
@variable(m, 0 <= x183, start=0)
@variable(m, 0 <= x184, start=0)
@variable(m, 0 <= x185, start=0)
@variable(m, 0 <= x186, start=0)
@variable(m, 0 <= x187, start=0)
@variable(m, 0 <= x188, start=0)
@variable(m, 0 <= x189, start=0)
@variable(m, 0 <= x190, start=0)
@variable(m, 0 <= x191, start=0)
@variable(m, 0 <= x192, start=0)
@variable(m, 0 <= x193, start=0)
@variable(m, 0 <= x194, start=0)
@variable(m, 0 <= x195, start=0)
@variable(m, 0 <= x196, start=0)
@variable(m, 0 <= x197, start=0)
@variable(m, 0 <= x198, start=0)
@variable(m, 0 <= x199, start=0)
@variable(m, 0 <= x200, start=0)
@variable(m, 0 <= x201, start=0)
@variable(m, 0 <= x202, start=0)
@variable(m, 0 <= x203, start=0)
@variable(m, 0 <= x204, start=0)
@variable(m, 0 <= x205, start=0)
@variable(m, 0 <= x206, start=0)
@variable(m, 0 <= x207, start=0)
@variable(m, 0 <= x208, start=0)
@variable(m, 0 <= x209, start=0)
@variable(m, 0 <= x210, start=0)
@variable(m, 0 <= x211, start=0)
@variable(m, 0 <= x212, start=0)
@variable(m, 0 <= x213, start=0)
@variable(m, 0 <= x214, start=0)
@variable(m, 0 <= x215, start=0)
@variable(m, 0 <= x216, start=0)
@variable(m, 0 <= x217, start=0)
@variable(m, 0 <= x218, start=0)
@variable(m, 0 <= x219, start=0)
@variable(m, 0 <= x220, start=0)
@variable(m, 0 <= x221, start=0)
@variable(m, 0 <= x222, start=0)
@variable(m, 0 <= x223, start=0)
@variable(m, 0 <= x224, start=0)
@variable(m, 0 <= x225, start=0)
@variable(m, 0 <= x226, start=0)
@variable(m, 0 <= x227, start=0)
@variable(m, 0 <= x228, start=0)
@variable(m, 0 <= x229, start=0)
@variable(m, 0 <= x230, start=0)
@variable(m, 0 <= x231, start=0)
@variable(m, 0 <= x232, start=0)
@variable(m, 0 <= x233, start=0)
@variable(m, 0 <= x234, start=0)
@variable(m, 0 <= x235, start=0)
@variable(m, 0 <= x236, start=0)
@variable(m, 0 <= x237, start=0)
@variable(m, 0 <= x238, start=0)
@variable(m, 0 <= x239, start=0)
@variable(m, 0 <= x240, start=0)
@variable(m, 0 <= x241, start=0)
@variable(m, 0 <= x242, start=0)
@variable(m, 0 <= x243, start=0)
@variable(m, 0 <= x244, start=0)
@variable(m, 0 <= x245, start=0)
@variable(m, 0 <= x246, start=0)
@variable(m, 0 <= x247, start=0)
@variable(m, 0 <= x248, start=0)
@variable(m, 0 <= x249, start=0)
@variable(m, 0 <= x250, start=0)
@variable(m, 0 <= x251, start=0)
@variable(m, 0 <= x252, start=0)
@variable(m, 0 <= x253, start=0)
@variable(m, 0 <= x254, start=0)
@variable(m, 0 <= x255, start=0)
@variable(m, 0 <= x256, start=0)
@variable(m, 0 <= x257, start=0)
@variable(m, 0 <= x258, start=0)
@variable(m, 0 <= x259, start=0)
@variable(m, 0 <= x260, start=0)
@variable(m, 0 <= x261, start=0)
@variable(m, 0 <= x262, start=0)
@variable(m, 0 <= x263, start=0)
@variable(m, 0 <= x264, start=0)
@variable(m, 0 <= x265, start=0)
@variable(m, 0 <= x266, start=0)
@variable(m, 0 <= x267, start=0)
@variable(m, 0 <= x268, start=0)
@variable(m, 0 <= x269, start=0)
@variable(m, 0 <= x270, start=0)
@variable(m, 0 <= x271, start=0)
@variable(m, 0 <= x272, start=0)
@variable(m, 0 <= x273, start=0)
@variable(m, 0 <= x274, start=0)
@variable(m, 0 <= x275, start=0)
@variable(m, 0 <= x276, start=0)
@variable(m, 0 <= x277, start=0)
@variable(m, 0 <= x278, start=0)
@variable(m, 0 <= x279, start=0)
@variable(m, 0 <= x280, start=0)
@variable(m, 0 <= x281, start=0)
@variable(m, 0 <= x282, start=0)
@variable(m, 0 <= x283, start=0)
@variable(m, 0 <= x284, start=0)
@variable(m, 0 <= x285, start=0)
@variable(m, 0 <= x286, start=0)
@variable(m, 0 <= x287, start=0)
@variable(m, 0 <= x288, start=0)
@variable(m, 0 <= x289, start=0)
@variable(m, 0 <= x290, start=0)
@variable(m, 0 <= x291, start=0)
@variable(m, 0 <= x292, start=0)
@variable(m, 0 <= x293, start=0)
@variable(m, 0 <= x294, start=0)
@variable(m, 0 <= x295, start=0)
@variable(m, 0 <= x296, start=0)
@variable(m, 0 <= x297, start=0)
@variable(m, 0 <= x298, start=0)
@variable(m, 0 <= x299, start=0)
@variable(m, 0 <= x300, start=0)
@variable(m, 0 <= x301, start=0)
@variable(m, 0 <= x302, start=0)
@variable(m, 0 <= x303, start=0)
@variable(m, 0 <= x304, start=0)
@variable(m, 0 <= x305, start=0)
@variable(m, 0 <= x306, start=0)
@variable(m, 0 <= x307, start=0)
@variable(m, 0 <= x308, start=0)
@variable(m, 0 <= x309, start=0)
@variable(m, 0 <= x310, start=0)
@variable(m, 0 <= x311, start=0)
@variable(m, 0 <= x312, start=0)
@variable(m, 0 <= x313, start=0)
@variable(m, 0 <= x314, start=0)
@variable(m, 0 <= x315, start=0)
@variable(m, 0 <= x316, start=0)
@variable(m, 0 <= x317, start=0)
@variable(m, 0 <= x318, start=0)
@variable(m, 0 <= x319, start=0)
@variable(m, 0 <= x320, start=0)
@variable(m, 0 <= x321, start=0)
@variable(m, 0 <= x322, start=0)
@variable(m, 0 <= x323, start=0)
@variable(m, 0 <= x324, start=0)
@variable(m, 0 <= x325, start=0)
@variable(m, 0 <= x326, start=0)
@variable(m, 0 <= x327, start=0)
@variable(m, 0 <= x328, start=0)
@variable(m, 0 <= x329, start=0)
@variable(m, 0 <= x330, start=0)
@variable(m, 0 <= x331, start=0)
@variable(m, 0 <= x332, start=0)
@variable(m, 0 <= x333, start=0)
@variable(m, 0 <= x334, start=0)
@variable(m, 0 <= x335, start=0)
@variable(m, 0 <= x336, start=0)
@variable(m, 0 <= x337, start=0)
@variable(m, 0 <= x338, start=0)
@variable(m, 0 <= x339, start=0)
@variable(m, 0 <= x340, start=0)
@variable(m, 0 <= x341, start=0)
@variable(m, 0 <= x342, start=0)
@variable(m, 0 <= x343, start=0)
@variable(m, 0 <= x344, start=0)
@variable(m, 0 <= x345, start=0)
@variable(m, 0 <= x346, start=0)
@variable(m, 0 <= x347, start=0)
@variable(m, 0 <= x348, start=0)
@variable(m, 0 <= x349, start=0)
@variable(m, 0 <= x350, start=0)
@variable(m, 0 <= x351, start=0)
@variable(m, 0 <= x352, start=0)
@variable(m, 0 <= x353, start=0)
@variable(m, 0 <= x354, start=0)
@variable(m, 0 <= x355, start=0)
@variable(m, 0 <= x356, start=0)
@variable(m, 0 <= x357, start=0)
@variable(m, 0 <= x358, start=0)
@variable(m, 0 <= x359, start=0)
@variable(m, 0 <= x360, start=0)
@variable(m, 0 <= x361, start=0)
@variable(m, 0 <= x362, start=0)
@variable(m, 0 <= x363, start=0)
@variable(m, 0 <= x364, start=0)
@variable(m, 0 <= x365, start=0)
@variable(m, 0 <= x366, start=0)
@variable(m, 0 <= x367, start=0)
@variable(m, 0 <= x368, start=0)
@variable(m, 0 <= x369, start=0)
@variable(m, 0 <= x370, start=0)
@variable(m, 0 <= x371, start=0)
@variable(m, 0 <= x372, start=0)
@variable(m, 0 <= x373, start=0)
@variable(m, 0 <= x374, start=0)
@variable(m, 0 <= x375, start=0)
@variable(m, 0 <= x376, start=0)
@variable(m, 0 <= x377, start=0)
@variable(m, 0 <= x378, start=0)
@variable(m, 0 <= x379, start=0)
@variable(m, 0 <= x380, start=0)
@variable(m, 0 <= x381, start=0)
@variable(m, 0 <= x382, start=0)
@variable(m, 0 <= x383, start=0)
@variable(m, 0 <= x384, start=0)
@variable(m, 0 <= x385, start=0)
@variable(m, 0 <= x386, start=0)
@variable(m, 0 <= x387, start=0)
@variable(m, 0 <= x388, start=0)
@variable(m, 0 <= x389, start=0)
@variable(m, 0 <= x390, start=0)
@variable(m, 0 <= x391, start=0)
@variable(m, 0 <= x392, start=0)
@variable(m, 0 <= x393, start=0)
@variable(m, 0 <= x394, start=0)
@variable(m, 0 <= x395, start=0)
@variable(m, 0 <= x396, start=0)
@variable(m, 0 <= x397, start=0)
@variable(m, 0 <= x398, start=0)
@variable(m, 0 <= x399, start=0)
@variable(m, 0 <= x400, start=0)
@variable(m, 0 <= x401, start=0)
@variable(m, 0 <= x402, start=0)
@variable(m, 0 <= x403, start=0)
@variable(m, 0 <= x404, start=0)
@variable(m, 0 <= x405, start=0)
@variable(m, 0 <= x406, start=0)
@variable(m, 0 <= x407, start=0)
@variable(m, 0 <= x408, start=0)
@variable(m, 0 <= x409, start=0)
@variable(m, 0 <= x410, start=0)
@variable(m, 0 <= x411, start=0)
@variable(m, 0 <= x412, start=0)
@variable(m, 0 <= x413, start=0)
@variable(m, 0 <= x414, start=0)
@variable(m, 0 <= x415, start=0)
@variable(m, 0 <= x416, start=0)
@variable(m, 0 <= x417, start=0)
@variable(m, 0 <= x418, start=0)
@variable(m, 0 <= x419, start=0)
@variable(m, 0 <= x420, start=0)
@variable(m, 0 <= x421, start=0)
@variable(m, 0 <= x422, start=0)
@variable(m, 0 <= x423, start=0)
@variable(m, 0 <= x424, start=0)
@variable(m, 0 <= x425, start=0)
@variable(m, 0 <= x426, start=0)
@variable(m, 0 <= x427, start=0)
@variable(m, 0 <= x428, start=0)
@variable(m, 0 <= x429, start=0)
@variable(m, 0 <= x430, start=0)
@variable(m, 0 <= x431, start=0)
@variable(m, 0 <= x432, start=0)
@variable(m, 0 <= x433, start=0)
@variable(m, 0 <= x434, start=0)
@variable(m, 0 <= x435, start=0)
@variable(m, 0 <= x436, start=0)
@variable(m, 0 <= x437, start=0)
@variable(m, 0 <= x438, start=0)
@variable(m, 0 <= x439, start=0)
@variable(m, 0 <= x440, start=0)
@variable(m, 0 <= x441, start=0)
@variable(m, 0 <= x442, start=0)
@variable(m, 0 <= x443, start=0)
@variable(m, 0 <= x444, start=0)
@variable(m, 0 <= x445, start=0)
@variable(m, 0 <= x446, start=0)
@variable(m, 0 <= x447, start=0)
@variable(m, 0 <= x448, start=0)
@variable(m, 0 <= x449, start=0)
@variable(m, 0 <= x450, start=0)
@variable(m, 0 <= x451, start=0)
@variable(m, 0 <= x452, start=0)
@variable(m, 0 <= x453, start=0)
@variable(m, 0 <= x454, start=0)
@variable(m, 0 <= x455, start=0)
@variable(m, 0 <= x456, start=0)
@variable(m, 0 <= x457, start=0)
@variable(m, 0 <= x458, start=0)
@variable(m, 0 <= x459, start=0)
@variable(m, 0 <= x460, start=0)
@variable(m, 0 <= x461, start=0)
@variable(m, 0 <= x462, start=0)
@variable(m, 0 <= x463, start=0)
@variable(m, 0 <= x464, start=0)
@variable(m, 0 <= x465, start=0)
@variable(m, 0 <= x466, start=0)
@variable(m, 0 <= x467, start=0)
@variable(m, 0 <= x468, start=0)
@variable(m, 0 <= x469, start=0)
@variable(m, 0 <= x470, start=0)
@variable(m, 0 <= x471, start=0)
@variable(m, 0 <= x472, start=0)
@variable(m, 0 <= x473, start=0)
@variable(m, 0 <= x474, start=0)
@variable(m, 0 <= x475, start=0)
@variable(m, 0 <= x476, start=0)
@variable(m, 0 <= x477, start=0)
@variable(m, 0 <= x478, start=0)
@variable(m, 0 <= x479, start=0)
@variable(m, 0 <= x480, start=0)
@variable(m, 0 <= x481, start=0)
@variable(m, 0 <= x482, start=0)
@variable(m, 0 <= x483, start=0)
@variable(m, 0 <= x484, start=0)
@variable(m, 0 <= x485, start=0)
@variable(m, 0 <= x486, start=0)
@variable(m, 0 <= x487, start=0)
@variable(m, 0 <= x488, start=0)
@variable(m, 0 <= x489, start=0)
@variable(m, 0 <= x490, start=0)
@variable(m, 0 <= x491, start=0)
@variable(m, 0 <= x492, start=0)
@variable(m, 0 <= x493, start=0)
@variable(m, 0 <= x494, start=0)
@variable(m, 0 <= x495, start=0)
@variable(m, 0 <= x496, start=0)
@variable(m, 0 <= x497, start=0)
@variable(m, 0 <= x498, start=0)
@variable(m, 0 <= x499, start=0)
@variable(m, 0 <= x500, start=0)
@variable(m, 0 <= x501, start=0)
@variable(m, 0 <= x502, start=0)
@variable(m, 0 <= x503, start=0)
@variable(m, 0 <= x504, start=0)
@variable(m, 0 <= x505, start=0)
@variable(m, 0 <= x506, start=0)
@variable(m, 0 <= x507, start=0)
@variable(m, 0 <= x508, start=0)
@variable(m, 0 <= x509, start=0)
@variable(m, 0 <= x510, start=0)
@variable(m, 0 <= x511, start=0)
@variable(m, 0 <= x512, start=0)
@variable(m, 0 <= x513, start=0)
@variable(m, 0 <= x514, start=0)
@variable(m, 0 <= x515, start=0)
@variable(m, 0 <= x516, start=0)
@variable(m, 0 <= x517, start=0)
@variable(m, 0 <= x518, start=0)
@variable(m, 0 <= x519, start=0)
@variable(m, 0 <= x520, start=0)
@variable(m, 0 <= x521, start=0)
@variable(m, 0 <= x522, start=0)
@variable(m, 0 <= x523, start=0)
@variable(m, 0 <= x524, start=0)
@variable(m, 0 <= x525, start=0)
@variable(m, 0 <= x526, start=0)
@variable(m, 0 <= x527, start=0)
@variable(m, 0 <= x528, start=0)
@variable(m, 0 <= x529, start=0)
@variable(m, 0 <= x530, start=0)
@variable(m, 0 <= x531, start=0)
@variable(m, 0 <= x532, start=0)
@variable(m, 0 <= x533, start=0)
@variable(m, 0 <= x534, start=0)
@variable(m, 0 <= x535, start=0)
@variable(m, 0 <= x536, start=0)
@variable(m, 0 <= x537, start=0)
@variable(m, 0 <= x538, start=0)
@variable(m, 0 <= x539, start=0)
@variable(m, 0 <= x540, start=0)
@variable(m, 0 <= x541, start=0)
@variable(m, 0 <= x542, start=0)
@variable(m, 0 <= x543, start=0)
@variable(m, 0 <= x544, start=0)
@variable(m, 0 <= x545, start=0)
@variable(m, 0 <= x546, start=0)
@variable(m, 0 <= x547, start=0)
@variable(m, 0 <= x548, start=0)
@variable(m, 0 <= x549, start=0)
@variable(m, 0 <= x550, start=0)
@variable(m, 0 <= x551, start=0)
@variable(m, 0 <= x552, start=0)
@variable(m, 0 <= x553, start=0)
@variable(m, 0 <= x554, start=0)
@variable(m, 0 <= x555, start=0)
@variable(m, 0 <= x556, start=0)
@variable(m, 0 <= x557, start=0)
@variable(m, 0 <= x558, start=0)
@variable(m, 0 <= x559, start=0)
@variable(m, 0 <= x560, start=0)
@variable(m, 0 <= x561, start=0)
@variable(m, 0 <= x562, start=0)
@variable(m, 0 <= x563, start=0)
@variable(m, 0 <= x564, start=0)
@variable(m, 0 <= x565, start=0)
@variable(m, 0 <= x566, start=0)
@variable(m, 0 <= x567, start=0)
@variable(m, 0 <= x568, start=0)
@variable(m, 0 <= x569, start=0)
@variable(m, 0 <= x570, start=0)
@variable(m, 0 <= x571, start=0)
@variable(m, 0 <= x572, start=0)
@variable(m, 0 <= x573, start=0)
@variable(m, 0 <= x574, start=0)
@variable(m, 0 <= x575, start=0)
@variable(m, 0 <= x576, start=0)
@variable(m, 0 <= x577, start=0)
@variable(m, 0 <= x578, start=0)
@variable(m, 0 <= x579, start=0)
@variable(m, 0 <= x580, start=0)
@variable(m, 0 <= x581, start=0)
@variable(m, 0 <= x582, start=0)
@variable(m, 0 <= x583, start=0)
@variable(m, 0 <= x584, start=0)
@variable(m, 0 <= x585, start=0)
@variable(m, 0 <= x586, start=0)
@variable(m, 0 <= x587, start=0)
@variable(m, 0 <= x588, start=0)
@variable(m, 0 <= x589, start=0)
@variable(m, 0 <= x590, start=0)
@variable(m, 0 <= x591, start=0)
@variable(m, 0 <= x592, start=0)
@variable(m, 0 <= x593, start=0)
@variable(m, 0 <= x594, start=0)
@variable(m, 0 <= x595, start=0)
@variable(m, 0 <= x596, start=0)
@variable(m, 0 <= x597, start=0)
@variable(m, 0 <= x598, start=0)
@variable(m, 0 <= x599, start=0)
@variable(m, 0 <= x600, start=0)
@variable(m, 0 <= x601, start=0)
@variable(m, 0 <= x602, start=0)
@variable(m, 0 <= x603, start=0)
@variable(m, 0 <= x604, start=0)
@variable(m, 0 <= x605, start=0)
@variable(m, 0 <= x606, start=0)
@variable(m, 0 <= x607, start=0)
@variable(m, 0 <= x608, start=0)
@variable(m, 0 <= x609, start=0)
@variable(m, 0 <= x610, start=0)
@variable(m, 0 <= x611, start=0)
@variable(m, 0 <= x612, start=0)
@variable(m, 0 <= x613, start=0)
@variable(m, 0 <= x614, start=0)
@variable(m, 0 <= x615, start=0)
@variable(m, 0 <= x616, start=0)
@variable(m, 0 <= x617, start=0)
@variable(m, 0 <= x618, start=0)
@variable(m, 0 <= x619, start=0)
@variable(m, 0 <= x620, start=0)
@variable(m, 0 <= x621, start=0)
@variable(m, 0 <= x622, start=0)
@variable(m, 0 <= x623, start=0)
@variable(m, 0 <= x624, start=0)
@variable(m, 0 <= x625, start=0)
@variable(m, 0 <= x626, start=0)
@variable(m, 0 <= x627, start=0)
@variable(m, 0 <= x628, start=0)
@variable(m, 0 <= x629, start=0)
@variable(m, 0 <= x630, start=0)
@variable(m, 0 <= x631, start=0)
@variable(m, 0 <= x632, start=0)
@variable(m, 0 <= x633, start=0)
@variable(m, 0 <= x634, start=0)
@variable(m, 0 <= x635, start=0)
@variable(m, 0 <= x636, start=0)
@variable(m, 0 <= x637, start=0)
@variable(m, 0 <= x638, start=0)
@variable(m, 0 <= x639, start=0)
@variable(m, 0 <= x640, start=0)
@variable(m, 0 <= x641, start=0)
@variable(m, 0 <= x642, start=0)
@variable(m, 0 <= x643, start=0)
@variable(m, 0 <= x644, start=0)
@variable(m, 0 <= x645, start=0)
@variable(m, 0 <= x646, start=0)
@variable(m, 0 <= x647, start=0)
@variable(m, 0 <= x648, start=0)
@variable(m, 0 <= x649, start=0)
@variable(m, 0 <= x650, start=0)
@variable(m, 0 <= x651, start=0)
@variable(m, 0 <= x652, start=0)
@variable(m, 0 <= x653, start=0)
@variable(m, 0 <= x654, start=0)
@variable(m, 0 <= x655, start=0)
@variable(m, 0 <= x656, start=0)
@variable(m, 0 <= x657, start=0)
@variable(m, 0 <= x658, start=0)
@variable(m, 0 <= x659, start=0)
@variable(m, 0 <= x660, start=0)
@variable(m, 0 <= x661, start=0)
@variable(m, 0 <= x662, start=0)
@variable(m, 0 <= x663, start=0)
@variable(m, 0 <= x664, start=0)
@variable(m, 0 <= x665, start=0)
@variable(m, 0 <= x666, start=0)
@variable(m, 0 <= x667, start=0)
@variable(m, 0 <= x668, start=0)
@variable(m, 0 <= x669, start=0)
@variable(m, 0 <= x670, start=0)
@variable(m, 0 <= x671, start=0)
@variable(m, 0 <= x672, start=0)
@variable(m, 0 <= x673, start=0)
@variable(m, 0 <= x674, start=0)
@variable(m, 0 <= x675, start=0)
@variable(m, 0 <= x676, start=0)
@variable(m, 0 <= x677, start=0)
@variable(m, 0 <= x678, start=0)
@variable(m, 0 <= x679, start=0)
@variable(m, 0 <= x680, start=0)
@variable(m, 0 <= x681, start=0)
@variable(m, 0 <= x682, start=0)
@variable(m, 0 <= x683, start=0)
@variable(m, 0 <= x684, start=0)
@variable(m, 0 <= x685, start=0)
@variable(m, 0 <= x686, start=0)
@variable(m, 0 <= x687, start=0)
@variable(m, 0 <= x688, start=0)
@variable(m, 0 <= x689, start=0)
@variable(m, 0 <= x690, start=0)
@variable(m, 0 <= x691, start=0)
@variable(m, 0 <= x692, start=0)
@variable(m, 0 <= x693, start=0)
@variable(m, 0 <= x694, start=0)
@variable(m, 0 <= x695, start=0)
@variable(m, 0 <= x696, start=0)
@variable(m, 0 <= x697, start=0)
@variable(m, 0 <= x698, start=0)
@variable(m, 0 <= x699, start=0)
@variable(m, 0 <= x700, start=0)
@variable(m, 0 <= x701, start=0)
@variable(m, 0 <= x702, start=0)
@variable(m, 0 <= x703, start=0)
@variable(m, 0 <= x704, start=0)
@variable(m, 0 <= x705, start=0)
@variable(m, 0 <= x706, start=0)
@variable(m, 0 <= x707, start=0)
@variable(m, 0 <= x708, start=0)
@variable(m, 0 <= x709, start=0)
@variable(m, 0 <= x710, start=0)
@variable(m, 0 <= x711, start=0)
@variable(m, 0 <= x712, start=0)
@variable(m, 0 <= x713, start=0)
@variable(m, 0 <= x714, start=0)
@variable(m, 0 <= x715, start=0)
@variable(m, 0 <= x716, start=0)
@variable(m, 0 <= x717, start=0)
@variable(m, 0 <= x718, start=0)
@variable(m, 0 <= x719, start=0)
@variable(m, 0 <= x720, start=0)
@variable(m, 0 <= x721, start=0)
@variable(m, 0 <= x722, start=0)
@variable(m, 0 <= x723, start=0)
@variable(m, 0 <= x724, start=0)
@variable(m, 0 <= x725, start=0)
@variable(m, 0 <= x726, start=0)
@variable(m, 0 <= x727, start=0)
@variable(m, 0 <= x728, start=0)
@variable(m, 0 <= x729, start=0)
@variable(m, 0 <= x730, start=0)
@variable(m, 0 <= x731, start=0)
@variable(m, 0 <= x732, start=0)
@variable(m, 0 <= x733, start=0)
@variable(m, 0 <= x734, start=0)
@variable(m, 0 <= x735, start=0)
@variable(m, 0 <= x736, start=0)
@variable(m, 0 <= x737, start=0)
@variable(m, 0 <= x738, start=0)
@variable(m, 0 <= x739, start=0)
@variable(m, 0 <= x740, start=0)
@variable(m, 0 <= x741, start=0)
@variable(m, 0 <= x742, start=0)
@variable(m, 0 <= x743, start=0)
@variable(m, 0 <= x744, start=0)
@variable(m, 0 <= x745, start=0)
@variable(m, 0 <= x746, start=0)
@variable(m, 0 <= x747, start=0)
@variable(m, 0 <= x748, start=0)
@variable(m, 0 <= x749, start=0)
@variable(m, 0 <= x750, start=0)
@variable(m, 0 <= x751, start=0)
@variable(m, 0 <= x752, start=0)
@variable(m, 0 <= x753, start=0)
@variable(m, 0 <= x754, start=0)
@variable(m, 0 <= x755, start=0)
@variable(m, 0 <= x756, start=0)
@variable(m, 0 <= x757, start=0)
@variable(m, 0 <= x758, start=0)
@variable(m, 0 <= x759, start=0)
@variable(m, 0 <= x760, start=0)
@variable(m, 0 <= x761, start=0)
@variable(m, 0 <= x762, start=0)
@variable(m, 0 <= x763, start=0)
@variable(m, 0 <= x764, start=0)
@variable(m, 0 <= x765, start=0)
@variable(m, 0 <= x766, start=0)
@variable(m, 0 <= x767, start=0)
@variable(m, 0 <= x768, start=0)
@variable(m, 0 <= x769, start=0)
@variable(m, 0 <= x770, start=0)
@variable(m, 0 <= x771, start=0)
@variable(m, 0 <= x772, start=0)
@variable(m, 0 <= x773, start=0)
@variable(m, 0 <= x774, start=0)
@variable(m, 0 <= x775, start=0)
@variable(m, 0 <= x776, start=0)
@variable(m, 0 <= x777, start=0)
@variable(m, 0 <= x778, start=0)
@variable(m, 0 <= x779, start=0)
@variable(m, 0 <= x780, start=0)
@variable(m, 0 <= x781, start=0)
@variable(m, 0 <= x782, start=0)
@variable(m, 0 <= x783, start=0)
@variable(m, 0 <= x784, start=0)
@variable(m, 0 <= x785, start=0)
@variable(m, 0 <= x786, start=0)
@variable(m, 0 <= x787, start=0)
@variable(m, 0 <= x788, start=0)
@variable(m, 0 <= x789, start=0)
@variable(m, 0 <= x790, start=0)
@variable(m, 0 <= x791, start=0)
@variable(m, 0 <= x792, start=0)
@variable(m, 0 <= x793, start=0)
@variable(m, 0 <= x794, start=0)
@variable(m, 0 <= x795, start=0)
@variable(m, 0 <= x796, start=0)
@variable(m, 0 <= x797, start=0)
@variable(m, 0 <= x798, start=0)
@variable(m, 0 <= x799, start=0)
@variable(m, 0 <= x800, start=0)
@variable(m, 0 <= x801, start=0)
@variable(m, 0 <= x802, start=0)
@variable(m, 0 <= x803, start=0)
@variable(m, 0 <= x804, start=0)
@variable(m, 0 <= x805, start=0)
@variable(m, 0 <= x806, start=0)
@variable(m, 0 <= x807, start=0)
@variable(m, 0 <= x808, start=0)
@variable(m, 0 <= x809, start=0)
@variable(m, 0 <= x810, start=0)
@variable(m, 0 <= x811, start=0)
@variable(m, 0 <= x812, start=0)
@variable(m, 0 <= x813, start=0)
@variable(m, 0 <= x814, start=0)
@variable(m, 0 <= x815, start=0)
@variable(m, 0 <= x816, start=0)
@variable(m, 0 <= x817, start=0)
@variable(m, 0 <= x818, start=0)
@variable(m, 0 <= x819, start=0)
@variable(m, 0 <= x820, start=0)
@variable(m, 0 <= x821, start=0)
@variable(m, 0 <= x822, start=0)
@variable(m, 0 <= x823, start=0)
@variable(m, 0 <= x824, start=0)
@variable(m, 0 <= x825, start=0)
@variable(m, 0 <= x826, start=0)
@variable(m, 0 <= x827, start=0)
@variable(m, 0 <= x828, start=0)
@variable(m, 0 <= x829, start=0)
@variable(m, 0 <= x830, start=0)
@variable(m, 0 <= x831, start=0)
@variable(m, 0 <= x832, start=0)
@variable(m, 0 <= x833, start=0)
@variable(m, 0 <= x834, start=0)
@variable(m, 0 <= x835, start=0)
@variable(m, 0 <= x836, start=0)
@variable(m, 0 <= x837, start=0)
@variable(m, 0 <= x838, start=0)
@variable(m, 0 <= x839, start=0)
@variable(m, 0 <= x840, start=0)
@variable(m, 0 <= x841, start=0)
@variable(m, 0 <= x842, start=0)
@variable(m, 0 <= x843, start=0)
@variable(m, 0 <= x844, start=0)
@variable(m, 0 <= x845, start=0)
@variable(m, 0 <= x846, start=0)
@variable(m, 0 <= x847, start=0)
@variable(m, 0 <= x848, start=0)
@variable(m, 0 <= x849, start=0)
@variable(m, 0 <= x850, start=0)
@variable(m, 0 <= x851, start=0)
@variable(m, 0 <= x852, start=0)
@variable(m, 0 <= x853, start=0)
@variable(m, 0 <= x854, start=0)
@variable(m, 0 <= x855, start=0)
@variable(m, 0 <= x856, start=0)
@variable(m, 0 <= x857, start=0)
@variable(m, 0 <= x858, start=0)
@variable(m, 0 <= x859, start=0)
@variable(m, 0 <= x860, start=0)
@variable(m, 0 <= x861, start=0)
@variable(m, 0 <= x862, start=0)
@variable(m, 0 <= x863, start=0)
@variable(m, 0 <= x864, start=0)
@variable(m, 0 <= x865, start=0)
@variable(m, 0 <= x866, start=0)
@variable(m, 0 <= x867, start=0)
@variable(m, 0 <= x868, start=0)
@variable(m, 0 <= x869, start=0)
@variable(m, 0 <= x870, start=0)
@variable(m, 0 <= x871, start=0)
@variable(m, 0 <= x872, start=0)
@variable(m, 0 <= x873, start=0)
@variable(m, 0 <= x874, start=0)
@variable(m, 0 <= x875, start=0)
@variable(m, 0 <= x876, start=0)
@variable(m, 0 <= x877, start=0)
@variable(m, 0 <= x878, start=0)
@variable(m, 0 <= x879, start=0)
@variable(m, 0 <= x880, start=0)
@variable(m, 0 <= x881, start=0)
@variable(m, 0 <= x882, start=0)
@variable(m, 0 <= x883, start=0)
@variable(m, 0 <= x884, start=0)
@variable(m, 0 <= x885, start=0)
@variable(m, 0 <= x886, start=0)
@variable(m, 0 <= x887, start=0)
@variable(m, 0 <= x888, start=0)
@variable(m, 0 <= x889, start=0)
@variable(m, 0 <= x890, start=0)
@variable(m, 0 <= x891, start=0)
@variable(m, 0 <= x892, start=0)
@variable(m, 0 <= x893, start=0)
@variable(m, 0 <= x894, start=0)
@variable(m, 0 <= x895, start=0)
@variable(m, 0 <= x896, start=0)
@variable(m, 0 <= x897, start=0)
@variable(m, 0 <= x898, start=0)
@variable(m, 0 <= x899, start=0)
@variable(m, 0 <= x900, start=0)
@variable(m, 0 <= x901, start=0)
@variable(m, 0 <= x902, start=0)
@variable(m, 0 <= x903, start=0)
@variable(m, 0 <= x904, start=0)
@variable(m, 0 <= x905, start=0)
@variable(m, 0 <= x906, start=0)
@variable(m, 0 <= x907, start=0)
@variable(m, 0 <= x908, start=0)
@variable(m, 0 <= x909, start=0)
@variable(m, 0 <= x910, start=0)
@variable(m, 0 <= x911, start=0)
@variable(m, 0 <= x912, start=0)
@variable(m, 0 <= x913, start=0)
@variable(m, 0 <= x914, start=0)
@variable(m, 0 <= x915, start=0)
@variable(m, 0 <= x916, start=0)
@variable(m, 0 <= x917, start=0)
@variable(m, 0 <= x918, start=0)
@variable(m, 0 <= x919, start=0)
@variable(m, 0 <= x920, start=0)
@variable(m, 0 <= x921, start=0)
@variable(m, 0 <= x922, start=0)
@variable(m, 0 <= x923, start=0)
@variable(m, 0 <= x924, start=0)
@variable(m, 0 <= x925, start=0)
@variable(m, 0 <= x926, start=0)
@variable(m, 0 <= x927, start=0)
@variable(m, 0 <= x928, start=0)
@variable(m, 0 <= x929, start=0)
@variable(m, 0 <= x930, start=0)
@variable(m, 0 <= x931, start=0)
@variable(m, 0 <= x932, start=0)
@variable(m, 0 <= x933, start=0)
@variable(m, 0 <= x934, start=0)
@variable(m, 0 <= x935, start=0)
@variable(m, 0 <= x936, start=0)
@variable(m, 0 <= x937, start=0)
@variable(m, 0 <= x938, start=0)
@variable(m, 0 <= x939, start=0)
@variable(m, 0 <= x940, start=0)
@variable(m, 0 <= x941, start=0)
@variable(m, 0 <= x942, start=0)
@variable(m, 0 <= x943, start=0)
@variable(m, 0 <= x944, start=0)
@variable(m, 0 <= x945, start=0)
@variable(m, 0 <= x946, start=0)
@variable(m, 0 <= x947, start=0)
@variable(m, 0 <= x948, start=0)
@variable(m, 0 <= x949, start=0)

@objective(m, Min, 0.73119138130095*x2 + 0.433926496298021*x3 + 0.257514255507858*x4 + 0.152822176925149*x5
     + 0.0906925238530297*x6 + 0.0436828169187265*x7 + 0.73119138130095*x8 + 0.433926496298021*x9
     + 0.257514255507858*x10 + 0.152822176925149*x11 + 0.0906925238530297*x12 + 0.0436828169187265*x13)

@constraint(m, x134 + x140 + x146 + x152 + x158 + x164 + x170 + x176 + x182 + x188 + x194 + x200 + x206 + x212 + x218
     + x224 + x230 + x236 + x242 + x248 + x254 + x260 + x266 + x272 + x278 + x284 + x290 + x296 + x302 + x308 + x314
     + x320 + x326 + x332 + x338 + x344 + x350 + x356 + x362 + x368 + x374 + x380 + x386 + x392 + x398 + x404 + x410
     + x416 + x422 + x428 + x434 + x440 + x446 + x452 + x458 + x464 + x530 + x536 + x542 + x548 + x614 + x620 + x626
     + x632 + x698 + x704 + x710 + x716 + x782 + x788 + x794 + x800 + x866 + x872 + x878 + x884 >= 4602)

@constraint(m, x135 + x141 + x147 + x153 + x159 + x165 + x171 + x177 + x183 + x189 + x195 + x201 + x207 + x213 + x219
     + x225 + x231 + x237 + x243 + x249 + x255 + x261 + x267 + x273 + x279 + x285 + x291 + x297 + x303 + x309 + x315
     + x321 + x327 + x333 + x339 + x345 + x351 + x357 + x363 + x369 + x375 + x381 + x387 + x393 + x399 + x405 + x411
     + x417 + x423 + x429 + x435 + x441 + x447 + x453 + x459 + x465 + x470 + x475 + x480 + x485 + x531 + x537 + x543
     + x549 + x554 + x559 + x564 + x569 + x615 + x621 + x627 + x633 + x638 + x643 + x648 + x653 + x699 + x705 + x711
     + x717 + x722 + x727 + x732 + x737 + x783 + x789 + x795 + x801 + x806 + x811 + x816 + x821 + x867 + x873 + x879
     + x885 + x890 + x895 + x900 + x905 >= 7755)

@constraint(m, x136 + x142 + x148 + x154 + x160 + x166 + x172 + x178 + x184 + x190 + x196 + x202 + x208 + x214 + x220
     + x226 + x232 + x238 + x244 + x250 + x256 + x262 + x268 + x274 + x280 + x286 + x292 + x298 + x304 + x310 + x316
     + x322 + x328 + x334 + x340 + x346 + x352 + x358 + x364 + x370 + x376 + x382 + x388 + x394 + x400 + x406 + x412
     + x418 + x424 + x430 + x436 + x442 + x448 + x454 + x460 + x466 + x471 + x476 + x481 + x486 + x490 + x494 + x498
     + x502 + x532 + x538 + x544 + x550 + x555 + x560 + x565 + x570 + x574 + x578 + x582 + x586 + x616 + x622 + x628
     + x634 + x639 + x644 + x649 + x654 + x658 + x662 + x666 + x670 + x700 + x706 + x712 + x718 + x723 + x728 + x733
     + x738 + x742 + x746 + x750 + x754 + x784 + x790 + x796 + x802 + x807 + x812 + x817 + x822 + x826 + x830 + x834
     + x838 + x868 + x874 + x880 + x886 + x891 + x896 + x901 + x906 + x910 + x914 + x918 + x922 >= 13067)

@constraint(m, x137 + x143 + x149 + x155 + x161 + x167 + x173 + x179 + x185 + x191 + x197 + x203 + x209 + x215 + x221
     + x227 + x233 + x239 + x245 + x251 + x257 + x263 + x269 + x275 + x281 + x287 + x293 + x299 + x305 + x311 + x317
     + x323 + x329 + x335 + x341 + x347 + x353 + x359 + x365 + x371 + x377 + x383 + x389 + x395 + x401 + x407 + x413
     + x419 + x425 + x431 + x437 + x443 + x449 + x455 + x461 + x467 + x472 + x477 + x482 + x487 + x491 + x495 + x499
     + x503 + x506 + x509 + x512 + x515 + x533 + x539 + x545 + x551 + x556 + x561 + x566 + x571 + x575 + x579 + x583
     + x587 + x590 + x593 + x596 + x599 + x617 + x623 + x629 + x635 + x640 + x645 + x650 + x655 + x659 + x663 + x667
     + x671 + x674 + x677 + x680 + x683 + x701 + x707 + x713 + x719 + x724 + x729 + x734 + x739 + x743 + x747 + x751
     + x755 + x758 + x761 + x764 + x767 + x785 + x791 + x797 + x803 + x808 + x813 + x818 + x823 + x827 + x831 + x835
     + x839 + x842 + x845 + x848 + x851 + x869 + x875 + x881 + x887 + x892 + x897 + x902 + x907 + x911 + x915 + x919
     + x923 + x926 + x929 + x932 + x935 >= 22019)

@constraint(m, x138 + x144 + x150 + x156 + x162 + x168 + x174 + x180 + x186 + x192 + x198 + x204 + x210 + x216 + x222
     + x228 + x234 + x240 + x246 + x252 + x258 + x264 + x270 + x276 + x282 + x288 + x294 + x300 + x306 + x312 + x318
     + x324 + x330 + x336 + x342 + x348 + x354 + x360 + x366 + x372 + x378 + x384 + x390 + x396 + x402 + x408 + x414
     + x420 + x426 + x432 + x438 + x444 + x450 + x456 + x462 + x468 + x473 + x478 + x483 + x488 + x492 + x496 + x500
     + x504 + x507 + x510 + x513 + x516 + x518 + x520 + x522 + x524 + x534 + x540 + x546 + x552 + x557 + x562 + x567
     + x572 + x576 + x580 + x584 + x588 + x591 + x594 + x597 + x600 + x602 + x604 + x606 + x608 + x618 + x624 + x630
     + x636 + x641 + x646 + x651 + x656 + x660 + x664 + x668 + x672 + x675 + x678 + x681 + x684 + x686 + x688 + x690
     + x692 + x702 + x708 + x714 + x720 + x725 + x730 + x735 + x740 + x744 + x748 + x752 + x756 + x759 + x762 + x765
     + x768 + x770 + x772 + x774 + x776 + x786 + x792 + x798 + x804 + x809 + x814 + x819 + x824 + x828 + x832 + x836
     + x840 + x843 + x846 + x849 + x852 + x854 + x856 + x858 + x860 + x870 + x876 + x882 + x888 + x893 + x898 + x903
     + x908 + x912 + x916 + x920 + x924 + x927 + x930 + x933 + x936 + x938 + x940 + x942 + x944 >= 37103)

@constraint(m, x139 + x145 + x151 + x157 + x163 + x169 + x175 + x181 + x187 + x193 + x199 + x205 + x211 + x217 + x223
     + x229 + x235 + x241 + x247 + x253 + x259 + x265 + x271 + x277 + x283 + x289 + x295 + x301 + x307 + x313 + x319
     + x325 + x331 + x337 + x343 + x349 + x355 + x361 + x367 + x373 + x379 + x385 + x391 + x397 + x403 + x409 + x415
     + x421 + x427 + x433 + x439 + x445 + x451 + x457 + x463 + x469 + x474 + x479 + x484 + x489 + x493 + x497 + x501
     + x505 + x508 + x511 + x514 + x517 + x519 + x521 + x523 + x525 + x526 + x527 + x528 + x529 + x535 + x541 + x547
     + x553 + x558 + x563 + x568 + x573 + x577 + x581 + x585 + x589 + x592 + x595 + x598 + x601 + x603 + x605 + x607
     + x609 + x610 + x611 + x612 + x613 + x619 + x625 + x631 + x637 + x642 + x647 + x652 + x657 + x661 + x665 + x669
     + x673 + x676 + x679 + x682 + x685 + x687 + x689 + x691 + x693 + x694 + x695 + x696 + x697 + x703 + x709 + x715
     + x721 + x726 + x731 + x736 + x741 + x745 + x749 + x753 + x757 + x760 + x763 + x766 + x769 + x771 + x773 + x775
     + x777 + x778 + x779 + x780 + x781 + x787 + x793 + x799 + x805 + x810 + x815 + x820 + x825 + x829 + x833 + x837
     + x841 + x844 + x847 + x850 + x853 + x855 + x857 + x859 + x861 + x862 + x863 + x864 + x865 + x871 + x877 + x883
     + x889 + x894 + x899 + x904 + x909 + x913 + x917 + x921 + x925 + x928 + x931 + x934 + x937 + x939 + x941 + x943
     + x945 + x946 + x947 + x948 + x949 >= 77033)

@constraint(m, x140 + x146 + x152 + x164 + x170 + x176 + x188 + x194 + x200 + x212 + x218 + x224 + x236 + x242 + x248
     + x260 + x266 + x272 + x284 + x290 + x296 + x308 + x314 + x320 + x332 + x338 + x344 + x356 + x362 + x368 + x380
     + x386 + x392 + x404 + x410 + x416 + x428 + x434 + x440 + x452 + x458 + x464 + x536 + x542 + x548 + x620 + x626
     + x632 + x704 + x710 + x716 + x788 + x794 + x800 + x872 + x878 + x884 >= 3487)

@constraint(m, x141 + x147 + x153 + x165 + x171 + x177 + x189 + x195 + x201 + x213 + x219 + x225 + x237 + x243 + x249
     + x261 + x267 + x273 + x285 + x291 + x297 + x309 + x315 + x321 + x333 + x339 + x345 + x357 + x363 + x369 + x381
     + x387 + x393 + x405 + x411 + x417 + x429 + x435 + x441 + x453 + x459 + x465 + x475 + x480 + x485 + x537 + x543
     + x549 + x559 + x564 + x569 + x621 + x627 + x633 + x643 + x648 + x653 + x705 + x711 + x717 + x727 + x732 + x737
     + x789 + x795 + x801 + x811 + x816 + x821 + x873 + x879 + x885 + x895 + x900 + x905 >= 5877)

@constraint(m, x142 + x148 + x154 + x166 + x172 + x178 + x190 + x196 + x202 + x214 + x220 + x226 + x238 + x244 + x250
     + x262 + x268 + x274 + x286 + x292 + x298 + x310 + x316 + x322 + x334 + x340 + x346 + x358 + x364 + x370 + x382
     + x388 + x394 + x406 + x412 + x418 + x430 + x436 + x442 + x454 + x460 + x466 + x476 + x481 + x486 + x494 + x498
     + x502 + x538 + x544 + x550 + x560 + x565 + x570 + x578 + x582 + x586 + x622 + x628 + x634 + x644 + x649 + x654
     + x662 + x666 + x670 + x706 + x712 + x718 + x728 + x733 + x738 + x746 + x750 + x754 + x790 + x796 + x802 + x812
     + x817 + x822 + x830 + x834 + x838 + x874 + x880 + x886 + x896 + x901 + x906 + x914 + x918 + x922 >= 9902)

@constraint(m, x143 + x149 + x155 + x167 + x173 + x179 + x191 + x197 + x203 + x215 + x221 + x227 + x239 + x245 + x251
     + x263 + x269 + x275 + x287 + x293 + x299 + x311 + x317 + x323 + x335 + x341 + x347 + x359 + x365 + x371 + x383
     + x389 + x395 + x407 + x413 + x419 + x431 + x437 + x443 + x455 + x461 + x467 + x477 + x482 + x487 + x495 + x499
     + x503 + x509 + x512 + x515 + x539 + x545 + x551 + x561 + x566 + x571 + x579 + x583 + x587 + x593 + x596 + x599
     + x623 + x629 + x635 + x645 + x650 + x655 + x663 + x667 + x671 + x677 + x680 + x683 + x707 + x713 + x719 + x729
     + x734 + x739 + x747 + x751 + x755 + x761 + x764 + x767 + x791 + x797 + x803 + x813 + x818 + x823 + x831 + x835
     + x839 + x845 + x848 + x851 + x875 + x881 + x887 + x897 + x902 + x907 + x915 + x919 + x923 + x929 + x932 + x935
     >= 16686)

@constraint(m, x144 + x150 + x156 + x168 + x174 + x180 + x192 + x198 + x204 + x216 + x222 + x228 + x240 + x246 + x252
     + x264 + x270 + x276 + x288 + x294 + x300 + x312 + x318 + x324 + x336 + x342 + x348 + x360 + x366 + x372 + x384
     + x390 + x396 + x408 + x414 + x420 + x432 + x438 + x444 + x456 + x462 + x468 + x478 + x483 + x488 + x496 + x500
     + x504 + x510 + x513 + x516 + x520 + x522 + x524 + x540 + x546 + x552 + x562 + x567 + x572 + x580 + x584 + x588
     + x594 + x597 + x600 + x604 + x606 + x608 + x624 + x630 + x636 + x646 + x651 + x656 + x664 + x668 + x672 + x678
     + x681 + x684 + x688 + x690 + x692 + x708 + x714 + x720 + x730 + x735 + x740 + x748 + x752 + x756 + x762 + x765
     + x768 + x772 + x774 + x776 + x792 + x798 + x804 + x814 + x819 + x824 + x832 + x836 + x840 + x846 + x849 + x852
     + x856 + x858 + x860 + x876 + x882 + x888 + x898 + x903 + x908 + x916 + x920 + x924 + x930 + x933 + x936 + x940
     + x942 + x944 >= 28117)

@constraint(m, x145 + x151 + x157 + x169 + x175 + x181 + x193 + x199 + x205 + x217 + x223 + x229 + x241 + x247 + x253
     + x265 + x271 + x277 + x289 + x295 + x301 + x313 + x319 + x325 + x337 + x343 + x349 + x361 + x367 + x373 + x385
     + x391 + x397 + x409 + x415 + x421 + x433 + x439 + x445 + x457 + x463 + x469 + x479 + x484 + x489 + x497 + x501
     + x505 + x511 + x514 + x517 + x521 + x523 + x525 + x527 + x528 + x529 + x541 + x547 + x553 + x563 + x568 + x573
     + x581 + x585 + x589 + x595 + x598 + x601 + x605 + x607 + x609 + x611 + x612 + x613 + x625 + x631 + x637 + x647
     + x652 + x657 + x665 + x669 + x673 + x679 + x682 + x685 + x689 + x691 + x693 + x695 + x696 + x697 + x709 + x715
     + x721 + x731 + x736 + x741 + x749 + x753 + x757 + x763 + x766 + x769 + x773 + x775 + x777 + x779 + x780 + x781
     + x793 + x799 + x805 + x815 + x820 + x825 + x833 + x837 + x841 + x847 + x850 + x853 + x857 + x859 + x861 + x863
     + x864 + x865 + x877 + x883 + x889 + x899 + x904 + x909 + x917 + x921 + x925 + x931 + x934 + x937 + x941 + x943
     + x945 + x947 + x948 + x949 >= 58375)

@constraint(m, x146 + x152 + x170 + x176 + x194 + x200 + x218 + x224 + x242 + x248 + x266 + x272 + x290 + x296 + x314
     + x320 + x338 + x344 + x362 + x368 + x386 + x392 + x410 + x416 + x434 + x440 + x458 + x464 + x542 + x548 + x626
     + x632 + x710 + x716 + x794 + x800 + x878 + x884 >= 2804)

@constraint(m, x147 + x153 + x171 + x177 + x195 + x201 + x219 + x225 + x243 + x249 + x267 + x273 + x291 + x297 + x315
     + x321 + x339 + x345 + x363 + x369 + x387 + x393 + x411 + x417 + x435 + x441 + x459 + x465 + x480 + x485 + x543
     + x549 + x564 + x569 + x627 + x633 + x648 + x653 + x711 + x717 + x732 + x737 + x795 + x801 + x816 + x821 + x879
     + x885 + x900 + x905 >= 4724)

@constraint(m, x148 + x154 + x172 + x178 + x196 + x202 + x220 + x226 + x244 + x250 + x268 + x274 + x292 + x298 + x316
     + x322 + x340 + x346 + x364 + x370 + x388 + x394 + x412 + x418 + x436 + x442 + x460 + x466 + x481 + x486 + x498
     + x502 + x544 + x550 + x565 + x570 + x582 + x586 + x628 + x634 + x649 + x654 + x666 + x670 + x712 + x718 + x733
     + x738 + x750 + x754 + x796 + x802 + x817 + x822 + x834 + x838 + x880 + x886 + x901 + x906 + x918 + x922 >= 7961)

@constraint(m, x149 + x155 + x173 + x179 + x197 + x203 + x221 + x227 + x245 + x251 + x269 + x275 + x293 + x299 + x317
     + x323 + x341 + x347 + x365 + x371 + x389 + x395 + x413 + x419 + x437 + x443 + x461 + x467 + x482 + x487 + x499
     + x503 + x512 + x515 + x545 + x551 + x566 + x571 + x583 + x587 + x596 + x599 + x629 + x635 + x650 + x655 + x667
     + x671 + x680 + x683 + x713 + x719 + x734 + x739 + x751 + x755 + x764 + x767 + x797 + x803 + x818 + x823 + x835
     + x839 + x848 + x851 + x881 + x887 + x902 + x907 + x919 + x923 + x932 + x935 >= 13414)

@constraint(m, x150 + x156 + x174 + x180 + x198 + x204 + x222 + x228 + x246 + x252 + x270 + x276 + x294 + x300 + x318
     + x324 + x342 + x348 + x366 + x372 + x390 + x396 + x414 + x420 + x438 + x444 + x462 + x468 + x483 + x488 + x500
     + x504 + x513 + x516 + x522 + x524 + x546 + x552 + x567 + x572 + x584 + x588 + x597 + x600 + x606 + x608 + x630
     + x636 + x651 + x656 + x668 + x672 + x681 + x684 + x690 + x692 + x714 + x720 + x735 + x740 + x752 + x756 + x765
     + x768 + x774 + x776 + x798 + x804 + x819 + x824 + x836 + x840 + x849 + x852 + x858 + x860 + x882 + x888 + x903
     + x908 + x920 + x924 + x933 + x936 + x942 + x944 >= 22604)

@constraint(m, x151 + x157 + x175 + x181 + x199 + x205 + x223 + x229 + x247 + x253 + x271 + x277 + x295 + x301 + x319
     + x325 + x343 + x349 + x367 + x373 + x391 + x397 + x415 + x421 + x439 + x445 + x463 + x469 + x484 + x489 + x501
     + x505 + x514 + x517 + x523 + x525 + x528 + x529 + x547 + x553 + x568 + x573 + x585 + x589 + x598 + x601 + x607
     + x609 + x612 + x613 + x631 + x637 + x652 + x657 + x669 + x673 + x682 + x685 + x691 + x693 + x696 + x697 + x715
     + x721 + x736 + x741 + x753 + x757 + x766 + x769 + x775 + x777 + x780 + x781 + x799 + x805 + x820 + x825 + x837
     + x841 + x850 + x853 + x859 + x861 + x864 + x865 + x883 + x889 + x904 + x909 + x921 + x925 + x934 + x937 + x943
     + x945 + x948 + x949 >= 46929)

@constraint(m, x152 + x176 + x200 + x224 + x248 + x272 + x296 + x320 + x344 + x368 + x392 + x416 + x440 + x464 + x548
     + x632 + x716 + x800 + x884 >= 2079)

@constraint(m, x153 + x177 + x201 + x225 + x249 + x273 + x297 + x321 + x345 + x369 + x393 + x417 + x441 + x465 + x485
     + x549 + x569 + x633 + x653 + x717 + x737 + x801 + x821 + x885 + x905 >= 3503)

@constraint(m, x154 + x178 + x202 + x226 + x250 + x274 + x298 + x322 + x346 + x370 + x394 + x418 + x442 + x466 + x486
     + x502 + x550 + x570 + x586 + x634 + x654 + x670 + x718 + x738 + x754 + x802 + x822 + x838 + x886 + x906 + x922
     >= 5903)

@constraint(m, x155 + x179 + x203 + x227 + x251 + x275 + x299 + x323 + x347 + x371 + x395 + x419 + x443 + x467 + x487
     + x503 + x515 + x551 + x571 + x587 + x599 + x635 + x655 + x671 + x683 + x719 + x739 + x755 + x767 + x803 + x823
     + x839 + x851 + x887 + x907 + x923 + x935 >= 9946)

@constraint(m, x156 + x180 + x204 + x228 + x252 + x276 + x300 + x324 + x348 + x372 + x396 + x420 + x444 + x468 + x488
     + x504 + x516 + x524 + x552 + x572 + x588 + x600 + x608 + x636 + x656 + x672 + x684 + x692 + x720 + x740 + x756
     + x768 + x776 + x804 + x824 + x840 + x852 + x860 + x888 + x908 + x924 + x936 + x944 >= 16760)

@constraint(m, x157 + x181 + x205 + x229 + x253 + x277 + x301 + x325 + x349 + x373 + x397 + x421 + x445 + x469 + x489
     + x505 + x517 + x525 + x529 + x553 + x573 + x589 + x601 + x609 + x613 + x637 + x657 + x673 + x685 + x693 + x697
     + x721 + x741 + x757 + x769 + x777 + x781 + x805 + x825 + x841 + x853 + x861 + x865 + x889 + x909 + x925 + x937
     + x945 + x949 >= 34796)

@constraint(m, 0.9*x14 + 0.9*x20 + 0.9*x26 + 0.9*x32 + 0.9*x38 + 0.9*x44 + 0.9*x50 + 0.9*x56 + 0.9*x62 + 0.9*x68
     + 0.9*x74 + 0.9*x80 + 0.9*x86 + 0.8*x92 + 0.9*x98 + 0.8*x104 + 0.8*x110 + 0.8*x116 + 0.8*x122 >= 1559.7)

@constraint(m, 0.9*x14 + 0.9*x15 + 0.9*x20 + 0.9*x21 + 0.9*x26 + 0.9*x27 + 0.9*x32 + 0.9*x33 + 0.9*x38 + 0.9*x39
     + 0.9*x44 + 0.9*x45 + 0.9*x50 + 0.9*x51 + 0.9*x56 + 0.9*x57 + 0.9*x62 + 0.9*x63 + 0.9*x68 + 0.9*x69 + 0.9*x74
     + 0.9*x75 + 0.9*x80 + 0.9*x81 + 0.9*x86 + 0.9*x87 + 0.8*x92 + 0.8*x93 + 0.9*x98 + 0.9*x99 + 0.8*x104 + 0.8*x105
     + 0.8*x110 + 0.8*x111 + 0.8*x116 + 0.8*x117 + 0.8*x122 + 0.8*x123 >= 4870.35)

@constraint(m, 0.9*x14 + 0.9*x15 + 0.9*x16 + 0.9*x20 + 0.9*x21 + 0.9*x22 + 0.9*x26 + 0.9*x27 + 0.9*x28 + 0.9*x32
     + 0.9*x33 + 0.9*x34 + 0.9*x38 + 0.9*x39 + 0.9*x40 + 0.9*x44 + 0.9*x45 + 0.9*x46 + 0.9*x50 + 0.9*x51 + 0.9*x52
     + 0.9*x56 + 0.9*x57 + 0.9*x58 + 0.9*x62 + 0.9*x63 + 0.9*x64 + 0.9*x68 + 0.9*x69 + 0.9*x70 + 0.9*x74 + 0.9*x75
     + 0.9*x76 + 0.9*x80 + 0.9*x81 + 0.9*x82 + 0.9*x86 + 0.9*x87 + 0.9*x88 + 0.8*x92 + 0.8*x93 + 0.8*x94 + 0.9*x98
     + 0.9*x99 + 0.9*x100 + 0.8*x104 + 0.8*x105 + 0.8*x106 + 0.8*x110 + 0.8*x111 + 0.8*x112 + 0.8*x116 + 0.8*x117
     + 0.8*x118 + 0.8*x122 + 0.8*x123 + 0.8*x124 >= 10447.95)

@constraint(m, 0.9*x14 + 0.9*x15 + 0.9*x16 + 0.9*x17 + 0.9*x20 + 0.9*x21 + 0.9*x22 + 0.9*x23 + 0.9*x26 + 0.9*x27
     + 0.9*x28 + 0.9*x29 + 0.9*x32 + 0.9*x33 + 0.9*x34 + 0.9*x35 + 0.9*x38 + 0.9*x39 + 0.9*x40 + 0.9*x41 + 0.9*x44
     + 0.9*x45 + 0.9*x46 + 0.9*x47 + 0.9*x50 + 0.9*x51 + 0.9*x52 + 0.9*x53 + 0.9*x56 + 0.9*x57 + 0.9*x58 + 0.9*x59
     + 0.9*x62 + 0.9*x63 + 0.9*x64 + 0.9*x65 + 0.9*x68 + 0.9*x69 + 0.9*x70 + 0.9*x71 + 0.9*x74 + 0.9*x75 + 0.9*x76
     + 0.9*x77 + 0.9*x80 + 0.9*x81 + 0.9*x82 + 0.9*x83 + 0.9*x86 + 0.9*x87 + 0.9*x88 + 0.9*x89 + 0.8*x92 + 0.8*x93
     + 0.8*x94 + 0.8*x95 + 0.9*x98 + 0.9*x99 + 0.9*x100 + 0.9*x101 + 0.8*x104 + 0.8*x105 + 0.8*x106 + 0.8*x107
     + 0.8*x110 + 0.8*x111 + 0.8*x112 + 0.8*x113 + 0.8*x116 + 0.8*x117 + 0.8*x118 + 0.8*x119 + 0.8*x122 + 0.8*x123
     + 0.8*x124 + 0.8*x125 >= 19847.55)

@constraint(m, 0.9*x14 + 0.9*x15 + 0.9*x16 + 0.9*x17 + 0.9*x18 + 0.9*x20 + 0.9*x21 + 0.9*x22 + 0.9*x23 + 0.9*x24
     + 0.9*x26 + 0.9*x27 + 0.9*x28 + 0.9*x29 + 0.9*x30 + 0.9*x32 + 0.9*x33 + 0.9*x34 + 0.9*x35 + 0.9*x36 + 0.9*x38
     + 0.9*x39 + 0.9*x40 + 0.9*x41 + 0.9*x42 + 0.9*x44 + 0.9*x45 + 0.9*x46 + 0.9*x47 + 0.9*x48 + 0.9*x50 + 0.9*x51
     + 0.9*x52 + 0.9*x53 + 0.9*x54 + 0.9*x56 + 0.9*x57 + 0.9*x58 + 0.9*x59 + 0.9*x60 + 0.9*x62 + 0.9*x63 + 0.9*x64
     + 0.9*x65 + 0.9*x66 + 0.9*x68 + 0.9*x69 + 0.9*x70 + 0.9*x71 + 0.9*x72 + 0.9*x74 + 0.9*x75 + 0.9*x76 + 0.9*x77
     + 0.9*x78 + 0.9*x80 + 0.9*x81 + 0.9*x82 + 0.9*x83 + 0.9*x84 + 0.9*x86 + 0.9*x87 + 0.9*x88 + 0.9*x89 + 0.9*x90
     + 0.8*x92 + 0.8*x93 + 0.8*x94 + 0.8*x95 + 0.8*x96 + 0.9*x98 + 0.9*x99 + 0.9*x100 + 0.9*x101 + 0.9*x102 + 0.8*x104
     + 0.8*x105 + 0.8*x106 + 0.8*x107 + 0.8*x108 + 0.8*x110 + 0.8*x111 + 0.8*x112 + 0.8*x113 + 0.8*x114 + 0.8*x116
     + 0.8*x117 + 0.8*x118 + 0.8*x119 + 0.8*x120 + 0.8*x122 + 0.8*x123 + 0.8*x124 + 0.8*x125 + 0.8*x126 >= 35685.75)

@constraint(m, 0.9*x14 + 0.9*x15 + 0.9*x16 + 0.9*x17 + 0.9*x18 + 0.9*x19 + 0.9*x20 + 0.9*x21 + 0.9*x22 + 0.9*x23
     + 0.9*x24 + 0.9*x25 + 0.9*x26 + 0.9*x27 + 0.9*x28 + 0.9*x29 + 0.9*x30 + 0.9*x31 + 0.9*x32 + 0.9*x33 + 0.9*x34
     + 0.9*x35 + 0.9*x36 + 0.9*x37 + 0.9*x38 + 0.9*x39 + 0.9*x40 + 0.9*x41 + 0.9*x42 + 0.9*x43 + 0.9*x44 + 0.9*x45
     + 0.9*x46 + 0.9*x47 + 0.9*x48 + 0.9*x49 + 0.9*x50 + 0.9*x51 + 0.9*x52 + 0.9*x53 + 0.9*x54 + 0.9*x55 + 0.9*x56
     + 0.9*x57 + 0.9*x58 + 0.9*x59 + 0.9*x60 + 0.9*x61 + 0.9*x62 + 0.9*x63 + 0.9*x64 + 0.9*x65 + 0.9*x66 + 0.9*x67
     + 0.9*x68 + 0.9*x69 + 0.9*x70 + 0.9*x71 + 0.9*x72 + 0.9*x73 + 0.9*x74 + 0.9*x75 + 0.9*x76 + 0.9*x77 + 0.9*x78
     + 0.9*x79 + 0.9*x80 + 0.9*x81 + 0.9*x82 + 0.9*x83 + 0.9*x84 + 0.9*x85 + 0.9*x86 + 0.9*x87 + 0.9*x88 + 0.9*x89
     + 0.9*x90 + 0.9*x91 + 0.8*x92 + 0.8*x93 + 0.8*x94 + 0.8*x95 + 0.8*x96 + 0.8*x97 + 0.9*x98 + 0.9*x99 + 0.9*x100
     + 0.9*x101 + 0.9*x102 + 0.9*x103 + 0.8*x104 + 0.8*x105 + 0.8*x106 + 0.8*x107 + 0.8*x108 + 0.8*x109 + 0.8*x110
     + 0.8*x111 + 0.8*x112 + 0.8*x113 + 0.8*x114 + 0.8*x115 + 0.8*x116 + 0.8*x117 + 0.8*x118 + 0.8*x119 + 0.8*x120
     + 0.8*x121 + 0.8*x122 + 0.8*x123 + 0.8*x124 + 0.8*x125 + 0.8*x126 + 0.8*x127 >= 77612.25)

@constraint(m,  - 0.9*x14 + x134 + x140 + x146 + x152 <= 0)

@constraint(m,  - 0.9*x14 - 0.9*x15 + x135 + x141 + x147 + x153 <= 0)

@constraint(m,  - 0.9*x14 - 0.9*x15 - 0.9*x16 + x136 + x142 + x148 + x154 <= 0)

@constraint(m,  - 0.9*x14 - 0.9*x15 - 0.9*x16 - 0.9*x17 + x137 + x143 + x149 + x155 <= 0)

@constraint(m,  - 0.9*x14 - 0.9*x15 - 0.9*x16 - 0.9*x17 - 0.9*x18 + x138 + x144 + x150 + x156 <= 0)

@constraint(m,  - 0.9*x14 - 0.9*x15 - 0.9*x16 - 0.9*x17 - 0.9*x18 - 0.9*x19 + x139 + x145 + x151 + x157 <= 0)

@constraint(m,  - 0.9*x20 + x158 + x164 + x170 + x176 <= 0)

@constraint(m,  - 0.9*x20 - 0.9*x21 + x159 + x165 + x171 + x177 <= 0)

@constraint(m,  - 0.9*x20 - 0.9*x21 - 0.9*x22 + x160 + x166 + x172 + x178 <= 0)

@constraint(m,  - 0.9*x20 - 0.9*x21 - 0.9*x22 - 0.9*x23 + x161 + x167 + x173 + x179 <= 0)

@constraint(m,  - 0.9*x20 - 0.9*x21 - 0.9*x22 - 0.9*x23 - 0.9*x24 + x162 + x168 + x174 + x180 <= 0)

@constraint(m,  - 0.9*x20 - 0.9*x21 - 0.9*x22 - 0.9*x23 - 0.9*x24 - 0.9*x25 + x163 + x169 + x175 + x181 <= 0)

@constraint(m,  - 0.9*x26 + x182 + x188 + x194 + x200 <= 0)

@constraint(m,  - 0.9*x26 - 0.9*x27 + x183 + x189 + x195 + x201 <= 0)

@constraint(m,  - 0.9*x26 - 0.9*x27 - 0.9*x28 + x184 + x190 + x196 + x202 <= 0)

@constraint(m,  - 0.9*x26 - 0.9*x27 - 0.9*x28 - 0.9*x29 + x185 + x191 + x197 + x203 <= 0)

@constraint(m,  - 0.9*x26 - 0.9*x27 - 0.9*x28 - 0.9*x29 - 0.9*x30 + x186 + x192 + x198 + x204 <= 0)

@constraint(m,  - 0.9*x26 - 0.9*x27 - 0.9*x28 - 0.9*x29 - 0.9*x30 - 0.9*x31 + x187 + x193 + x199 + x205 <= 0)

@constraint(m,  - 0.9*x32 + x206 + x212 + x218 + x224 <= 0)

@constraint(m,  - 0.9*x32 - 0.9*x33 + x207 + x213 + x219 + x225 <= 0)

@constraint(m,  - 0.9*x32 - 0.9*x33 - 0.9*x34 + x208 + x214 + x220 + x226 <= 0)

@constraint(m,  - 0.9*x32 - 0.9*x33 - 0.9*x34 - 0.9*x35 + x209 + x215 + x221 + x227 <= 0)

@constraint(m,  - 0.9*x32 - 0.9*x33 - 0.9*x34 - 0.9*x35 - 0.9*x36 + x210 + x216 + x222 + x228 <= 0)

@constraint(m,  - 0.9*x32 - 0.9*x33 - 0.9*x34 - 0.9*x35 - 0.9*x36 - 0.9*x37 + x211 + x217 + x223 + x229 <= 0)

@constraint(m,  - 0.9*x38 + x230 + x236 + x242 + x248 <= 1646.1)

@constraint(m,  - 0.9*x38 - 0.9*x39 + x231 + x237 + x243 + x249 <= 1646.1)

@constraint(m,  - 0.9*x38 - 0.9*x39 - 0.9*x40 + x232 + x238 + x244 + x250 <= 1646.1)

@constraint(m,  - 0.9*x38 - 0.9*x39 - 0.9*x40 - 0.9*x41 + x233 + x239 + x245 + x251 <= 1646.1)

@constraint(m,  - 0.9*x38 - 0.9*x39 - 0.9*x40 - 0.9*x41 - 0.9*x42 + x234 + x240 + x246 + x252 <= 1646.1)

@constraint(m,  - 0.9*x38 - 0.9*x39 - 0.9*x40 - 0.9*x41 - 0.9*x42 - 0.9*x43 + x235 + x241 + x247 + x253 <= 1646.1)

@constraint(m,  - 0.9*x44 + x254 + x260 + x266 + x272 <= 0)

@constraint(m,  - 0.9*x44 - 0.9*x45 + x255 + x261 + x267 + x273 <= 0)

@constraint(m,  - 0.9*x44 - 0.9*x45 - 0.9*x46 + x256 + x262 + x268 + x274 <= 0)

@constraint(m,  - 0.9*x44 - 0.9*x45 - 0.9*x46 - 0.9*x47 + x257 + x263 + x269 + x275 <= 0)

@constraint(m,  - 0.9*x44 - 0.9*x45 - 0.9*x46 - 0.9*x47 - 0.9*x48 + x258 + x264 + x270 + x276 <= 0)

@constraint(m,  - 0.9*x44 - 0.9*x45 - 0.9*x46 - 0.9*x47 - 0.9*x48 - 0.9*x49 + x259 + x265 + x271 + x277 <= 0)

@constraint(m,  - 0.9*x50 + x278 + x284 + x290 + x296 <= 0)

@constraint(m,  - 0.9*x50 - 0.9*x51 + x279 + x285 + x291 + x297 <= 0)

@constraint(m,  - 0.9*x50 - 0.9*x51 - 0.9*x52 + x280 + x286 + x292 + x298 <= 0)

@constraint(m,  - 0.9*x50 - 0.9*x51 - 0.9*x52 - 0.9*x53 + x281 + x287 + x293 + x299 <= 0)

@constraint(m,  - 0.9*x50 - 0.9*x51 - 0.9*x52 - 0.9*x53 - 0.9*x54 + x282 + x288 + x294 + x300 <= 0)

@constraint(m,  - 0.9*x50 - 0.9*x51 - 0.9*x52 - 0.9*x53 - 0.9*x54 - 0.9*x55 + x283 + x289 + x295 + x301 <= 0)

@constraint(m,  - 0.9*x56 + x302 + x308 + x314 + x320 <= 0)

@constraint(m,  - 0.9*x56 - 0.9*x57 + x303 + x309 + x315 + x321 <= 0)

@constraint(m,  - 0.9*x56 - 0.9*x57 - 0.9*x58 + x304 + x310 + x316 + x322 <= 0)

@constraint(m,  - 0.9*x56 - 0.9*x57 - 0.9*x58 - 0.9*x59 + x305 + x311 + x317 + x323 <= 0)

@constraint(m,  - 0.9*x56 - 0.9*x57 - 0.9*x58 - 0.9*x59 - 0.9*x60 + x306 + x312 + x318 + x324 <= 0)

@constraint(m,  - 0.9*x56 - 0.9*x57 - 0.9*x58 - 0.9*x59 - 0.9*x60 - 0.9*x61 + x307 + x313 + x319 + x325 <= 0)

@constraint(m,  - 0.9*x62 + x326 + x332 + x338 + x344 <= 0)

@constraint(m,  - 0.9*x62 - 0.9*x63 + x327 + x333 + x339 + x345 <= 0)

@constraint(m,  - 0.9*x62 - 0.9*x63 - 0.9*x64 + x328 + x334 + x340 + x346 <= 0)

@constraint(m,  - 0.9*x62 - 0.9*x63 - 0.9*x64 - 0.9*x65 + x329 + x335 + x341 + x347 <= 0)

@constraint(m,  - 0.9*x62 - 0.9*x63 - 0.9*x64 - 0.9*x65 - 0.9*x66 + x330 + x336 + x342 + x348 <= 0)

@constraint(m,  - 0.9*x62 - 0.9*x63 - 0.9*x64 - 0.9*x65 - 0.9*x66 - 0.9*x67 + x331 + x337 + x343 + x349 <= 0)

@constraint(m,  - 0.9*x68 + x350 + x356 + x362 + x368 <= 0)

@constraint(m,  - 0.9*x68 - 0.9*x69 + x351 + x357 + x363 + x369 <= 0)

@constraint(m,  - 0.9*x68 - 0.9*x69 - 0.9*x70 + x352 + x358 + x364 + x370 <= 0)

@constraint(m,  - 0.9*x68 - 0.9*x69 - 0.9*x70 - 0.9*x71 + x353 + x359 + x365 + x371 <= 0)

@constraint(m,  - 0.9*x68 - 0.9*x69 - 0.9*x70 - 0.9*x71 - 0.9*x72 + x354 + x360 + x366 + x372 <= 0)

@constraint(m,  - 0.9*x68 - 0.9*x69 - 0.9*x70 - 0.9*x71 - 0.9*x72 - 0.9*x73 + x355 + x361 + x367 + x373 <= 0)

@constraint(m,  - 0.9*x74 + x374 + x380 + x386 + x392 <= 0)

@constraint(m,  - 0.9*x74 - 0.9*x75 + x375 + x381 + x387 + x393 <= 0)

@constraint(m,  - 0.9*x74 - 0.9*x75 - 0.9*x76 + x376 + x382 + x388 + x394 <= 0)

@constraint(m,  - 0.9*x74 - 0.9*x75 - 0.9*x76 - 0.9*x77 + x377 + x383 + x389 + x395 <= 0)

@constraint(m,  - 0.9*x74 - 0.9*x75 - 0.9*x76 - 0.9*x77 - 0.9*x78 + x378 + x384 + x390 + x396 <= 0)

@constraint(m,  - 0.9*x74 - 0.9*x75 - 0.9*x76 - 0.9*x77 - 0.9*x78 - 0.9*x79 + x379 + x385 + x391 + x397 <= 0)

@constraint(m,  - 0.9*x80 + x398 + x404 + x410 + x416 <= 0)

@constraint(m,  - 0.9*x80 - 0.9*x81 + x399 + x405 + x411 + x417 <= 0)

@constraint(m,  - 0.9*x80 - 0.9*x81 - 0.9*x82 + x400 + x406 + x412 + x418 <= 0)

@constraint(m,  - 0.9*x80 - 0.9*x81 - 0.9*x82 - 0.9*x83 + x401 + x407 + x413 + x419 <= 0)

@constraint(m,  - 0.9*x80 - 0.9*x81 - 0.9*x82 - 0.9*x83 - 0.9*x84 + x402 + x408 + x414 + x420 <= 0)

@constraint(m,  - 0.9*x80 - 0.9*x81 - 0.9*x82 - 0.9*x83 - 0.9*x84 - 0.9*x85 + x403 + x409 + x415 + x421 <= 0)

@constraint(m,  - 0.9*x86 + x422 + x428 + x434 + x440 <= 0)

@constraint(m,  - 0.9*x86 - 0.9*x87 + x423 + x429 + x435 + x441 <= 0)

@constraint(m,  - 0.9*x86 - 0.9*x87 - 0.9*x88 + x424 + x430 + x436 + x442 <= 0)

@constraint(m,  - 0.9*x86 - 0.9*x87 - 0.9*x88 - 0.9*x89 + x425 + x431 + x437 + x443 <= 0)

@constraint(m,  - 0.9*x86 - 0.9*x87 - 0.9*x88 - 0.9*x89 - 0.9*x90 + x426 + x432 + x438 + x444 <= 0)

@constraint(m,  - 0.9*x86 - 0.9*x87 - 0.9*x88 - 0.9*x89 - 0.9*x90 - 0.9*x91 + x427 + x433 + x439 + x445 <= 0)

@constraint(m,  - 0.8*x92 + x446 + x452 + x458 + x464 <= 96)

@constraint(m,  - 0.8*x92 + x447 + x453 + x459 + x465 <= 96)

@constraint(m,  - 0.8*x92 + x448 + x454 + x460 + x466 <= 96)

@constraint(m,  - 0.8*x92 + x449 + x455 + x461 + x467 <= 96)

@constraint(m,  - 0.8*x92 + x450 + x456 + x462 + x468 <= 96)

@constraint(m,  - 0.8*x92 + x451 + x457 + x463 + x469 <= 96)

@constraint(m,  - 0.8*x93 + x470 + x475 + x480 + x485 <= 0)

@constraint(m,  - 0.8*x93 + x471 + x476 + x481 + x486 <= 0)

@constraint(m,  - 0.8*x93 + x472 + x477 + x482 + x487 <= 0)

@constraint(m,  - 0.8*x93 + x473 + x478 + x483 + x488 <= 0)

@constraint(m,  - 0.8*x93 + x474 + x479 + x484 + x489 <= 0)

@constraint(m,  - 0.8*x94 + x490 + x494 + x498 + x502 <= 0)

@constraint(m,  - 0.8*x94 + x491 + x495 + x499 + x503 <= 0)

@constraint(m,  - 0.8*x94 + x492 + x496 + x500 + x504 <= 0)

@constraint(m,  - 0.8*x94 + x493 + x497 + x501 + x505 <= 0)

@constraint(m,  - 0.8*x95 + x506 + x509 + x512 + x515 <= 0)

@constraint(m,  - 0.8*x95 + x507 + x510 + x513 + x516 <= 0)

@constraint(m,  - 0.8*x95 + x508 + x511 + x514 + x517 <= 0)

@constraint(m,  - 0.8*x96 + x518 + x520 + x522 + x524 <= 0)

@constraint(m,  - 0.8*x96 + x519 + x521 + x523 + x525 <= 0)

@constraint(m,  - 0.8*x97 + x526 + x527 + x528 + x529 <= 0)

@constraint(m,  - 0.9*x98 + x530 + x536 + x542 + x548 <= 762.3)

@constraint(m,  - 0.9*x98 + x531 + x537 + x543 + x549 <= 762.3)

@constraint(m,  - 0.9*x98 + x532 + x538 + x544 + x550 <= 762.3)

@constraint(m,  - 0.9*x98 + x533 + x539 + x545 + x551 <= 762.3)

@constraint(m,  - 0.9*x98 + x534 + x540 + x546 + x552 <= 762.3)

@constraint(m,  - 0.9*x98 + x535 + x541 + x547 + x553 <= 762.3)

@constraint(m,  - 0.9*x99 + x554 + x559 + x564 + x569 <= 0)

@constraint(m,  - 0.9*x99 + x555 + x560 + x565 + x570 <= 0)

@constraint(m,  - 0.9*x99 + x556 + x561 + x566 + x571 <= 0)

@constraint(m,  - 0.9*x99 + x557 + x562 + x567 + x572 <= 0)

@constraint(m,  - 0.9*x99 + x558 + x563 + x568 + x573 <= 0)

@constraint(m,  - 0.9*x100 + x574 + x578 + x582 + x586 <= 0)

@constraint(m,  - 0.9*x100 + x575 + x579 + x583 + x587 <= 0)

@constraint(m,  - 0.9*x100 + x576 + x580 + x584 + x588 <= 0)

@constraint(m,  - 0.9*x100 + x577 + x581 + x585 + x589 <= 0)

@constraint(m,  - 0.9*x101 + x590 + x593 + x596 + x599 <= 0)

@constraint(m,  - 0.9*x101 + x591 + x594 + x597 + x600 <= 0)

@constraint(m,  - 0.9*x101 + x592 + x595 + x598 + x601 <= 0)

@constraint(m,  - 0.9*x102 + x602 + x604 + x606 + x608 <= 0)

@constraint(m,  - 0.9*x102 + x603 + x605 + x607 + x609 <= 0)

@constraint(m,  - 0.9*x103 + x610 + x611 + x612 + x613 <= 0)

@constraint(m,  - 0.8*x104 + x614 + x620 + x626 + x632 <= 768)

@constraint(m,  - 0.8*x104 + x615 + x621 + x627 + x633 <= 768)

@constraint(m,  - 0.8*x104 + x616 + x622 + x628 + x634 <= 768)

@constraint(m,  - 0.8*x104 + x617 + x623 + x629 + x635 <= 768)

@constraint(m,  - 0.8*x104 + x618 + x624 + x630 + x636 <= 768)

@constraint(m,  - 0.8*x104 + x619 + x625 + x631 + x637 <= 768)

@constraint(m,  - 0.8*x105 + x638 + x643 + x648 + x653 <= 0)

@constraint(m,  - 0.8*x105 + x639 + x644 + x649 + x654 <= 0)

@constraint(m,  - 0.8*x105 + x640 + x645 + x650 + x655 <= 0)

@constraint(m,  - 0.8*x105 + x641 + x646 + x651 + x656 <= 0)

@constraint(m,  - 0.8*x105 + x642 + x647 + x652 + x657 <= 0)

@constraint(m,  - 0.8*x106 + x658 + x662 + x666 + x670 <= 0)

@constraint(m,  - 0.8*x106 + x659 + x663 + x667 + x671 <= 0)

@constraint(m,  - 0.8*x106 + x660 + x664 + x668 + x672 <= 0)

@constraint(m,  - 0.8*x106 + x661 + x665 + x669 + x673 <= 0)

@constraint(m,  - 0.8*x107 + x674 + x677 + x680 + x683 <= 0)

@constraint(m,  - 0.8*x107 + x675 + x678 + x681 + x684 <= 0)

@constraint(m,  - 0.8*x107 + x676 + x679 + x682 + x685 <= 0)

@constraint(m,  - 0.8*x108 + x686 + x688 + x690 + x692 <= 0)

@constraint(m,  - 0.8*x108 + x687 + x689 + x691 + x693 <= 0)

@constraint(m,  - 0.8*x109 + x694 + x695 + x696 + x697 <= 0)

@constraint(m,  - 0.8*x110 + x698 + x704 + x710 + x716 <= 0)

@constraint(m,  - 0.8*x110 + x699 + x705 + x711 + x717 <= 0)

@constraint(m,  - 0.8*x110 + x700 + x706 + x712 + x718 <= 0)

@constraint(m,  - 0.8*x110 + x701 + x707 + x713 + x719 <= 0)

@constraint(m,  - 0.8*x110 + x702 + x708 + x714 + x720 <= 0)

@constraint(m,  - 0.8*x110 + x703 + x709 + x715 + x721 <= 0)

@constraint(m,  - 0.8*x111 + x722 + x727 + x732 + x737 <= 0)

@constraint(m,  - 0.8*x111 + x723 + x728 + x733 + x738 <= 0)

@constraint(m,  - 0.8*x111 + x724 + x729 + x734 + x739 <= 0)

@constraint(m,  - 0.8*x111 + x725 + x730 + x735 + x740 <= 0)

@constraint(m,  - 0.8*x111 + x726 + x731 + x736 + x741 <= 0)

@constraint(m,  - 0.8*x112 + x742 + x746 + x750 + x754 <= 0)

@constraint(m,  - 0.8*x112 + x743 + x747 + x751 + x755 <= 0)

@constraint(m,  - 0.8*x112 + x744 + x748 + x752 + x756 <= 0)

@constraint(m,  - 0.8*x112 + x745 + x749 + x753 + x757 <= 0)

@constraint(m,  - 0.8*x113 + x758 + x761 + x764 + x767 <= 0)

@constraint(m,  - 0.8*x113 + x759 + x762 + x765 + x768 <= 0)

@constraint(m,  - 0.8*x113 + x760 + x763 + x766 + x769 <= 0)

@constraint(m,  - 0.8*x114 + x770 + x772 + x774 + x776 <= 0)

@constraint(m,  - 0.8*x114 + x771 + x773 + x775 + x777 <= 0)

@constraint(m,  - 0.8*x115 + x778 + x779 + x780 + x781 <= 0)

@constraint(m,  - 0.8*x116 + x782 + x788 + x794 + x800 <= 0)

@constraint(m,  - 0.8*x116 + x783 + x789 + x795 + x801 <= 0)

@constraint(m,  - 0.8*x116 + x784 + x790 + x796 + x802 <= 0)

@constraint(m,  - 0.8*x116 + x785 + x791 + x797 + x803 <= 0)

@constraint(m,  - 0.8*x116 + x786 + x792 + x798 + x804 <= 0)

@constraint(m,  - 0.8*x116 + x787 + x793 + x799 + x805 <= 0)

@constraint(m,  - 0.8*x117 + x806 + x811 + x816 + x821 <= 0)

@constraint(m,  - 0.8*x117 + x807 + x812 + x817 + x822 <= 0)

@constraint(m,  - 0.8*x117 + x808 + x813 + x818 + x823 <= 0)

@constraint(m,  - 0.8*x117 + x809 + x814 + x819 + x824 <= 0)

@constraint(m,  - 0.8*x117 + x810 + x815 + x820 + x825 <= 0)

@constraint(m,  - 0.8*x118 + x826 + x830 + x834 + x838 <= 0)

@constraint(m,  - 0.8*x118 + x827 + x831 + x835 + x839 <= 0)

@constraint(m,  - 0.8*x118 + x828 + x832 + x836 + x840 <= 0)

@constraint(m,  - 0.8*x118 + x829 + x833 + x837 + x841 <= 0)

@constraint(m,  - 0.8*x119 + x842 + x845 + x848 + x851 <= 0)

@constraint(m,  - 0.8*x119 + x843 + x846 + x849 + x852 <= 0)

@constraint(m,  - 0.8*x119 + x844 + x847 + x850 + x853 <= 0)

@constraint(m,  - 0.8*x120 + x854 + x856 + x858 + x860 <= 0)

@constraint(m,  - 0.8*x120 + x855 + x857 + x859 + x861 <= 0)

@constraint(m,  - 0.8*x121 + x862 + x863 + x864 + x865 <= 0)

@constraint(m,  - 0.8*x122 + x866 + x872 + x878 + x884 <= 0)

@constraint(m,  - 0.8*x122 + x867 + x873 + x879 + x885 <= 0)

@constraint(m,  - 0.8*x122 + x868 + x874 + x880 + x886 <= 0)

@constraint(m,  - 0.8*x122 + x869 + x875 + x881 + x887 <= 0)

@constraint(m,  - 0.8*x122 + x870 + x876 + x882 + x888 <= 0)

@constraint(m,  - 0.8*x122 + x871 + x877 + x883 + x889 <= 0)

@constraint(m,  - 0.8*x123 + x890 + x895 + x900 + x905 <= 0)

@constraint(m,  - 0.8*x123 + x891 + x896 + x901 + x906 <= 0)

@constraint(m,  - 0.8*x123 + x892 + x897 + x902 + x907 <= 0)

@constraint(m,  - 0.8*x123 + x893 + x898 + x903 + x908 <= 0)

@constraint(m,  - 0.8*x123 + x894 + x899 + x904 + x909 <= 0)

@constraint(m,  - 0.8*x124 + x910 + x914 + x918 + x922 <= 0)

@constraint(m,  - 0.8*x124 + x911 + x915 + x919 + x923 <= 0)

@constraint(m,  - 0.8*x124 + x912 + x916 + x920 + x924 <= 0)

@constraint(m,  - 0.8*x124 + x913 + x917 + x921 + x925 <= 0)

@constraint(m,  - 0.8*x125 + x926 + x929 + x932 + x935 <= 0)

@constraint(m,  - 0.8*x125 + x927 + x930 + x933 + x936 <= 0)

@constraint(m,  - 0.8*x125 + x928 + x931 + x934 + x937 <= 0)

@constraint(m,  - 0.8*x126 + x938 + x940 + x942 + x944 <= 0)

@constraint(m,  - 0.8*x126 + x939 + x941 + x943 + x945 <= 0)

@constraint(m,  - 0.8*x127 + x946 + x947 + x948 + x949 <= 0)

@constraint(m,  - 0.4*x14 + 0.0600456621004566*x134 + 0.35*x140 + 0.7*x146 + x152 <= 0)

@constraint(m,  - 0.4*x14 - 0.4*x15 + 0.0600456621004566*x135 + 0.35*x141 + 0.7*x147 + x153 <= 0)

@constraint(m,  - 0.4*x14 - 0.4*x15 - 0.4*x16 + 0.0600456621004566*x136 + 0.35*x142 + 0.7*x148 + x154 <= 0)

@constraint(m,  - 0.4*x14 - 0.4*x15 - 0.4*x16 - 0.4*x17 + 0.0600456621004566*x137 + 0.35*x143 + 0.7*x149 + x155 <= 0)

@constraint(m,  - 0.4*x14 - 0.4*x15 - 0.4*x16 - 0.4*x17 - 0.4*x18 + 0.0600456621004566*x138 + 0.35*x144 + 0.7*x150
     + x156 <= 0)

@constraint(m,  - 0.4*x14 - 0.4*x15 - 0.4*x16 - 0.4*x17 - 0.4*x18 - 0.4*x19 + 0.0600456621004566*x139 + 0.35*x145
     + 0.7*x151 + x157 <= 0)

@constraint(m,  - 0.4*x20 + 0.0600456621004566*x158 + 0.35*x164 + 0.7*x170 + x176 <= 0)

@constraint(m,  - 0.4*x20 - 0.4*x21 + 0.0600456621004566*x159 + 0.35*x165 + 0.7*x171 + x177 <= 0)

@constraint(m,  - 0.4*x20 - 0.4*x21 - 0.4*x22 + 0.0600456621004566*x160 + 0.35*x166 + 0.7*x172 + x178 <= 0)

@constraint(m,  - 0.4*x20 - 0.4*x21 - 0.4*x22 - 0.4*x23 + 0.0600456621004566*x161 + 0.35*x167 + 0.7*x173 + x179 <= 0)

@constraint(m,  - 0.4*x20 - 0.4*x21 - 0.4*x22 - 0.4*x23 - 0.4*x24 + 0.0600456621004566*x162 + 0.35*x168 + 0.7*x174
     + x180 <= 0)

@constraint(m,  - 0.4*x20 - 0.4*x21 - 0.4*x22 - 0.4*x23 - 0.4*x24 - 0.4*x25 + 0.0600456621004566*x163 + 0.35*x169
     + 0.7*x175 + x181 <= 0)

@constraint(m,  - 0.4*x26 + 0.0600456621004566*x182 + 0.35*x188 + 0.7*x194 + x200 <= 0)

@constraint(m,  - 0.4*x26 - 0.4*x27 + 0.0600456621004566*x183 + 0.35*x189 + 0.7*x195 + x201 <= 0)

@constraint(m,  - 0.4*x26 - 0.4*x27 - 0.4*x28 + 0.0600456621004566*x184 + 0.35*x190 + 0.7*x196 + x202 <= 0)

@constraint(m,  - 0.4*x26 - 0.4*x27 - 0.4*x28 - 0.4*x29 + 0.0600456621004566*x185 + 0.35*x191 + 0.7*x197 + x203 <= 0)

@constraint(m,  - 0.4*x26 - 0.4*x27 - 0.4*x28 - 0.4*x29 - 0.4*x30 + 0.0600456621004566*x186 + 0.35*x192 + 0.7*x198
     + x204 <= 0)

@constraint(m,  - 0.4*x26 - 0.4*x27 - 0.4*x28 - 0.4*x29 - 0.4*x30 - 0.4*x31 + 0.0600456621004566*x187 + 0.35*x193
     + 0.7*x199 + x205 <= 0)

@constraint(m,  - 0.4*x32 + 0.0600456621004566*x206 + 0.35*x212 + 0.7*x218 + x224 <= 0)

@constraint(m,  - 0.4*x32 - 0.4*x33 + 0.0600456621004566*x207 + 0.35*x213 + 0.7*x219 + x225 <= 0)

@constraint(m,  - 0.4*x32 - 0.4*x33 - 0.4*x34 + 0.0600456621004566*x208 + 0.35*x214 + 0.7*x220 + x226 <= 0)

@constraint(m,  - 0.4*x32 - 0.4*x33 - 0.4*x34 - 0.4*x35 + 0.0600456621004566*x209 + 0.35*x215 + 0.7*x221 + x227 <= 0)

@constraint(m,  - 0.4*x32 - 0.4*x33 - 0.4*x34 - 0.4*x35 - 0.4*x36 + 0.0600456621004566*x210 + 0.35*x216 + 0.7*x222
     + x228 <= 0)

@constraint(m,  - 0.4*x32 - 0.4*x33 - 0.4*x34 - 0.4*x35 - 0.4*x36 - 0.4*x37 + 0.0600456621004566*x211 + 0.35*x217
     + 0.7*x223 + x229 <= 0)

@constraint(m,  - 0.6*x38 + 0.0600456621004566*x230 + 0.35*x236 + 0.7*x242 + x248 <= 1097.4)

@constraint(m,  - 0.6*x38 - 0.6*x39 + 0.0600456621004566*x231 + 0.35*x237 + 0.7*x243 + x249 <= 1097.4)

@constraint(m,  - 0.6*x38 - 0.6*x39 - 0.6*x40 + 0.0600456621004566*x232 + 0.35*x238 + 0.7*x244 + x250 <= 1097.4)

@constraint(m,  - 0.6*x38 - 0.6*x39 - 0.6*x40 - 0.6*x41 + 0.0600456621004566*x233 + 0.35*x239 + 0.7*x245 + x251
     <= 1097.4)

@constraint(m,  - 0.6*x38 - 0.6*x39 - 0.6*x40 - 0.6*x41 - 0.6*x42 + 0.0600456621004566*x234 + 0.35*x240 + 0.7*x246
     + x252 <= 1097.4)

@constraint(m,  - 0.6*x38 - 0.6*x39 - 0.6*x40 - 0.6*x41 - 0.6*x42 - 0.6*x43 + 0.0600456621004566*x235 + 0.35*x241
     + 0.7*x247 + x253 <= 1097.4)

@constraint(m,  - 0.6*x44 + 0.0600456621004566*x254 + 0.35*x260 + 0.7*x266 + x272 <= 0)

@constraint(m,  - 0.6*x44 - 0.6*x45 + 0.0600456621004566*x255 + 0.35*x261 + 0.7*x267 + x273 <= 0)

@constraint(m,  - 0.6*x44 - 0.6*x45 - 0.6*x46 + 0.0600456621004566*x256 + 0.35*x262 + 0.7*x268 + x274 <= 0)

@constraint(m,  - 0.6*x44 - 0.6*x45 - 0.6*x46 - 0.6*x47 + 0.0600456621004566*x257 + 0.35*x263 + 0.7*x269 + x275 <= 0)

@constraint(m,  - 0.6*x44 - 0.6*x45 - 0.6*x46 - 0.6*x47 - 0.6*x48 + 0.0600456621004566*x258 + 0.35*x264 + 0.7*x270
     + x276 <= 0)

@constraint(m,  - 0.6*x44 - 0.6*x45 - 0.6*x46 - 0.6*x47 - 0.6*x48 - 0.6*x49 + 0.0600456621004566*x259 + 0.35*x265
     + 0.7*x271 + x277 <= 0)

@constraint(m,  - 0.8*x50 + 0.0600456621004566*x278 + 0.35*x284 + 0.7*x290 + x296 <= 0)

@constraint(m,  - 0.8*x50 - 0.8*x51 + 0.0600456621004566*x279 + 0.35*x285 + 0.7*x291 + x297 <= 0)

@constraint(m,  - 0.8*x50 - 0.8*x51 - 0.8*x52 + 0.0600456621004566*x280 + 0.35*x286 + 0.7*x292 + x298 <= 0)

@constraint(m,  - 0.8*x50 - 0.8*x51 - 0.8*x52 - 0.8*x53 + 0.0600456621004566*x281 + 0.35*x287 + 0.7*x293 + x299 <= 0)

@constraint(m,  - 0.8*x50 - 0.8*x51 - 0.8*x52 - 0.8*x53 - 0.8*x54 + 0.0600456621004566*x282 + 0.35*x288 + 0.7*x294
     + x300 <= 0)

@constraint(m,  - 0.8*x50 - 0.8*x51 - 0.8*x52 - 0.8*x53 - 0.8*x54 - 0.8*x55 + 0.0600456621004566*x283 + 0.35*x289
     + 0.7*x295 + x301 <= 0)

@constraint(m,  - 0.4*x56 + 0.0600456621004566*x302 + 0.35*x308 + 0.7*x314 + x320 <= 0)

@constraint(m,  - 0.4*x56 - 0.4*x57 + 0.0600456621004566*x303 + 0.35*x309 + 0.7*x315 + x321 <= 0)

@constraint(m,  - 0.4*x56 - 0.4*x57 - 0.4*x58 + 0.0600456621004566*x304 + 0.35*x310 + 0.7*x316 + x322 <= 0)

@constraint(m,  - 0.4*x56 - 0.4*x57 - 0.4*x58 - 0.4*x59 + 0.0600456621004566*x305 + 0.35*x311 + 0.7*x317 + x323 <= 0)

@constraint(m,  - 0.4*x56 - 0.4*x57 - 0.4*x58 - 0.4*x59 - 0.4*x60 + 0.0600456621004566*x306 + 0.35*x312 + 0.7*x318
     + x324 <= 0)

@constraint(m,  - 0.4*x56 - 0.4*x57 - 0.4*x58 - 0.4*x59 - 0.4*x60 - 0.4*x61 + 0.0600456621004566*x307 + 0.35*x313
     + 0.7*x319 + x325 <= 0)

@constraint(m,  - 0.4*x62 + 0.0600456621004566*x326 + 0.35*x332 + 0.7*x338 + x344 <= 0)

@constraint(m,  - 0.4*x62 - 0.4*x63 + 0.0600456621004566*x327 + 0.35*x333 + 0.7*x339 + x345 <= 0)

@constraint(m,  - 0.4*x62 - 0.4*x63 - 0.4*x64 + 0.0600456621004566*x328 + 0.35*x334 + 0.7*x340 + x346 <= 0)

@constraint(m,  - 0.4*x62 - 0.4*x63 - 0.4*x64 - 0.4*x65 + 0.0600456621004566*x329 + 0.35*x335 + 0.7*x341 + x347 <= 0)

@constraint(m,  - 0.4*x62 - 0.4*x63 - 0.4*x64 - 0.4*x65 - 0.4*x66 + 0.0600456621004566*x330 + 0.35*x336 + 0.7*x342
     + x348 <= 0)

@constraint(m,  - 0.4*x62 - 0.4*x63 - 0.4*x64 - 0.4*x65 - 0.4*x66 - 0.4*x67 + 0.0600456621004566*x331 + 0.35*x337
     + 0.7*x343 + x349 <= 0)

@constraint(m,  - 0.4*x68 + 0.0600456621004566*x350 + 0.35*x356 + 0.7*x362 + x368 <= 0)

@constraint(m,  - 0.4*x68 - 0.4*x69 + 0.0600456621004566*x351 + 0.35*x357 + 0.7*x363 + x369 <= 0)

@constraint(m,  - 0.4*x68 - 0.4*x69 - 0.4*x70 + 0.0600456621004566*x352 + 0.35*x358 + 0.7*x364 + x370 <= 0)

@constraint(m,  - 0.4*x68 - 0.4*x69 - 0.4*x70 - 0.4*x71 + 0.0600456621004566*x353 + 0.35*x359 + 0.7*x365 + x371 <= 0)

@constraint(m,  - 0.4*x68 - 0.4*x69 - 0.4*x70 - 0.4*x71 - 0.4*x72 + 0.0600456621004566*x354 + 0.35*x360 + 0.7*x366
     + x372 <= 0)

@constraint(m,  - 0.4*x68 - 0.4*x69 - 0.4*x70 - 0.4*x71 - 0.4*x72 - 0.4*x73 + 0.0600456621004566*x355 + 0.35*x361
     + 0.7*x367 + x373 <= 0)

@constraint(m,  - 0.6*x74 + 0.0600456621004566*x374 + 0.35*x380 + 0.7*x386 + x392 <= 0)

@constraint(m,  - 0.6*x74 - 0.6*x75 + 0.0600456621004566*x375 + 0.35*x381 + 0.7*x387 + x393 <= 0)

@constraint(m,  - 0.6*x74 - 0.6*x75 - 0.6*x76 + 0.0600456621004566*x376 + 0.35*x382 + 0.7*x388 + x394 <= 0)

@constraint(m,  - 0.6*x74 - 0.6*x75 - 0.6*x76 - 0.6*x77 + 0.0600456621004566*x377 + 0.35*x383 + 0.7*x389 + x395 <= 0)

@constraint(m,  - 0.6*x74 - 0.6*x75 - 0.6*x76 - 0.6*x77 - 0.6*x78 + 0.0600456621004566*x378 + 0.35*x384 + 0.7*x390
     + x396 <= 0)

@constraint(m,  - 0.6*x74 - 0.6*x75 - 0.6*x76 - 0.6*x77 - 0.6*x78 - 0.6*x79 + 0.0600456621004566*x379 + 0.35*x385
     + 0.7*x391 + x397 <= 0)

@constraint(m,  - 0.6*x80 + 0.0600456621004566*x398 + 0.35*x404 + 0.7*x410 + x416 <= 0)

@constraint(m,  - 0.6*x80 - 0.6*x81 + 0.0600456621004566*x399 + 0.35*x405 + 0.7*x411 + x417 <= 0)

@constraint(m,  - 0.6*x80 - 0.6*x81 - 0.6*x82 + 0.0600456621004566*x400 + 0.35*x406 + 0.7*x412 + x418 <= 0)

@constraint(m,  - 0.6*x80 - 0.6*x81 - 0.6*x82 - 0.6*x83 + 0.0600456621004566*x401 + 0.35*x407 + 0.7*x413 + x419 <= 0)

@constraint(m,  - 0.6*x80 - 0.6*x81 - 0.6*x82 - 0.6*x83 - 0.6*x84 + 0.0600456621004566*x402 + 0.35*x408 + 0.7*x414
     + x420 <= 0)

@constraint(m,  - 0.6*x80 - 0.6*x81 - 0.6*x82 - 0.6*x83 - 0.6*x84 - 0.6*x85 + 0.0600456621004566*x403 + 0.35*x409
     + 0.7*x415 + x421 <= 0)

@constraint(m,  - 0.8*x86 + 0.0600456621004566*x422 + 0.35*x428 + 0.7*x434 + x440 <= 0)

@constraint(m,  - 0.8*x86 - 0.8*x87 + 0.0600456621004566*x423 + 0.35*x429 + 0.7*x435 + x441 <= 0)

@constraint(m,  - 0.8*x86 - 0.8*x87 - 0.8*x88 + 0.0600456621004566*x424 + 0.35*x430 + 0.7*x436 + x442 <= 0)

@constraint(m,  - 0.8*x86 - 0.8*x87 - 0.8*x88 - 0.8*x89 + 0.0600456621004566*x425 + 0.35*x431 + 0.7*x437 + x443 <= 0)

@constraint(m,  - 0.8*x86 - 0.8*x87 - 0.8*x88 - 0.8*x89 - 0.8*x90 + 0.0600456621004566*x426 + 0.35*x432 + 0.7*x438
     + x444 <= 0)

@constraint(m,  - 0.8*x86 - 0.8*x87 - 0.8*x88 - 0.8*x89 - 0.8*x90 - 0.8*x91 + 0.0600456621004566*x427 + 0.35*x433
     + 0.7*x439 + x445 <= 0)

@constraint(m, x14 + x20 + x26 + x32 + x38 + x44 + x50 + x56 + x62 + x68 + x74 + x80 + x86 <= 472)

@constraint(m, x14 + x15 + x20 + x21 + x26 + x27 + x32 + x33 + x38 + x39 + x44 + x45 + x50 + x51 + x56 + x57 + x62 + x63
     + x68 + x69 + x74 + x75 + x80 + x81 + x86 + x87 <= 2048.5)

@constraint(m, x14 + x15 + x16 + x20 + x21 + x22 + x26 + x27 + x28 + x32 + x33 + x34 + x38 + x39 + x40 + x44 + x45 + x46
     + x50 + x51 + x52 + x56 + x57 + x58 + x62 + x63 + x64 + x68 + x69 + x70 + x74 + x75 + x76 + x80 + x81 + x82 + x86
     + x87 + x88 <= 4704.5)

@constraint(m, x14 + x15 + x16 + x17 + x20 + x21 + x22 + x23 + x26 + x27 + x28 + x29 + x32 + x33 + x34 + x35 + x38 + x39
     + x40 + x41 + x44 + x45 + x46 + x47 + x50 + x51 + x52 + x53 + x56 + x57 + x58 + x59 + x62 + x63 + x64 + x65 + x68
     + x69 + x70 + x71 + x74 + x75 + x76 + x77 + x80 + x81 + x82 + x83 + x86 + x87 + x88 + x89 <= 9180.5)

@constraint(m, x14 + x15 + x16 + x17 + x18 + x20 + x21 + x22 + x23 + x24 + x26 + x27 + x28 + x29 + x30 + x32 + x33 + x34
     + x35 + x36 + x38 + x39 + x40 + x41 + x42 + x44 + x45 + x46 + x47 + x48 + x50 + x51 + x52 + x53 + x54 + x56 + x57
     + x58 + x59 + x60 + x62 + x63 + x64 + x65 + x66 + x68 + x69 + x70 + x71 + x72 + x74 + x75 + x76 + x77 + x78 + x80
     + x81 + x82 + x83 + x84 + x86 + x87 + x88 + x89 + x90 <= 16722.5)

@constraint(m, x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x30 + x31
     + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
     + x51 + x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60 + x61 + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69
     + x70 + x71 + x72 + x73 + x74 + x75 + x76 + x77 + x78 + x79 + x80 + x81 + x82 + x83 + x84 + x85 + x86 + x87 + x88
     + x89 + x90 + x91 <= 36687.5)

@constraint(m, x14 + x15 + x16 + x17 + x18 + x19 <= 684)

@constraint(m, x20 + x21 + x22 + x23 + x24 + x25 <= 1484)

@constraint(m, x26 + x27 + x28 + x29 + x30 + x31 <= 844)

@constraint(m, x32 + x33 + x34 + x35 + x36 + x37 <= 250)

@constraint(m, x38 + x39 + x40 + x41 + x42 + x43 <= 2000)

@constraint(m, x44 + x45 + x46 + x47 + x48 + x49 <= 814)

@constraint(m, x50 + x51 + x52 + x53 + x54 + x55 <= 890)

@constraint(m, x56 + x57 + x58 + x59 + x60 + x61 <= 1366)

@constraint(m, x62 + x63 + x64 + x65 + x66 + x67 <= 656)

@constraint(m, x68 + x69 + x70 + x71 + x72 + x73 <= 192)

@constraint(m, x74 + x75 + x76 + x77 + x78 + x79 <= 1002)

@constraint(m, x80 + x81 + x82 + x83 + x84 + x85 <= 947)

@constraint(m, x86 + x87 + x88 + x89 + x90 + x91 <= 81)

@constraint(m,  - x92 - x93 - x94 - x95 - x96 - x97 + x128 == 0)

@constraint(m,  - x98 - x99 - x100 - x101 - x102 - x103 + x129 == 0)

@constraint(m,  - x104 - x105 - x106 - x107 - x108 - x109 + x130 == 0)

@constraint(m,  - x110 - x111 - x112 - x113 - x114 - x115 + x131 == 0)

@constraint(m,  - x116 - x117 - x118 - x119 - x120 - x121 + x132 == 0)

@constraint(m,  - x122 - x123 - x124 - x125 - x126 - x127 + x133 == 0)

@constraint(m, x2 - 0.154838940676897*x14 - 0.442396973362564*x20 - 0.718895081714167*x26 - 0.774194703384487*x32
     - 0.331797730021923*x38 - 0.752074854716359*x44 - 0.475576746364756*x50 - 0.298617957019731*x56
     - 0.508756519366949*x62 - 0.67465538437791*x68 - 0.4313370490285*x74 - 0.61935576270759*x80 - 0.67465538437791*x86
     - 0.287561496190986*x92 - 0.502237137946711*x98 - 0.558041264385235*x104 - 0.781257770139329*x110
     - 0.781257770139329*x116 - 0.974342087002751*x122 == 0)

@constraint(m, x3 - 0.154838940676897*x14 - 0.154838940676897*x15 - 0.442396973362564*x20 - 0.442396973362564*x21
     - 0.718895081714167*x26 - 0.718895081714167*x27 - 0.774194703384487*x32 - 0.774194703384487*x33
     - 0.331797730021923*x38 - 0.331797730021923*x39 - 0.752074854716359*x44 - 0.752074854716359*x45
     - 0.475576746364756*x50 - 0.475576746364756*x51 - 0.298617957019731*x56 - 0.298617957019731*x57
     - 0.508756519366949*x62 - 0.508756519366949*x63 - 0.67465538437791*x68 - 0.67465538437791*x69 - 0.4313370490285*x74
     - 0.4313370490285*x75 - 0.61935576270759*x80 - 0.61935576270759*x81 - 0.67465538437791*x86 - 0.67465538437791*x87
     - 0.287561496190986*x92 - 0.287561496190986*x93 - 0.502237137946711*x98 - 0.477622520877576*x99
     - 0.558041264385235*x104 - 0.530691689863974*x105 - 0.781257770139329*x110 - 0.742968365809563*x111
     - 0.781257770139329*x116 - 0.742968365809563*x117 - 0.974342087002751*x122 - 0.880728075639302*x123 == 0)

@constraint(m, x4 - 0.154838940676897*x14 - 0.154838940676897*x15 - 0.154838940676897*x16 - 0.442396973362564*x20
     - 0.442396973362564*x21 - 0.442396973362564*x22 - 0.718895081714167*x26 - 0.718895081714167*x27
     - 0.718895081714167*x28 - 0.774194703384487*x32 - 0.774194703384487*x33 - 0.774194703384487*x34
     - 0.331797730021923*x38 - 0.331797730021923*x39 - 0.331797730021923*x40 - 0.752074854716359*x44
     - 0.752074854716359*x45 - 0.752074854716359*x46 - 0.475576746364756*x50 - 0.475576746364756*x51
     - 0.475576746364756*x52 - 0.298617957019731*x56 - 0.298617957019731*x57 - 0.298617957019731*x58
     - 0.508756519366949*x62 - 0.508756519366949*x63 - 0.508756519366949*x64 - 0.67465538437791*x68
     - 0.67465538437791*x69 - 0.67465538437791*x70 - 0.4313370490285*x74 - 0.4313370490285*x75 - 0.4313370490285*x76
     - 0.61935576270759*x80 - 0.61935576270759*x81 - 0.61935576270759*x82 - 0.67465538437791*x86 - 0.67465538437791*x87
     - 0.67465538437791*x88 - 0.287561496190986*x92 - 0.287561496190986*x93 - 0.287561496190986*x94
     - 0.502237137946711*x98 - 0.477622520877576*x99 - 0.45421426496273*x100 - 0.558041264385235*x104
     - 0.530691689863974*x105 - 0.504682516625256*x106 - 0.781257770139329*x110 - 0.742968365809563*x111
     - 0.706555523275358*x112 - 0.781257770139329*x116 - 0.742968365809563*x117 - 0.706555523275358*x118
     - 0.974342087002751*x122 - 0.880728075639302*x123 - 0.796108423896008*x124 == 0)

@constraint(m, x5 - 0.154838940676897*x14 - 0.154838940676897*x15 - 0.154838940676897*x16 - 0.154838940676897*x17
     - 0.442396973362564*x20 - 0.442396973362564*x21 - 0.442396973362564*x22 - 0.442396973362564*x23
     - 0.718895081714167*x26 - 0.718895081714167*x27 - 0.718895081714167*x28 - 0.718895081714167*x29
     - 0.774194703384487*x32 - 0.774194703384487*x33 - 0.774194703384487*x34 - 0.774194703384487*x35
     - 0.331797730021923*x38 - 0.331797730021923*x39 - 0.331797730021923*x40 - 0.331797730021923*x41
     - 0.752074854716359*x44 - 0.752074854716359*x45 - 0.752074854716359*x46 - 0.752074854716359*x47
     - 0.475576746364756*x50 - 0.475576746364756*x51 - 0.475576746364756*x52 - 0.475576746364756*x53
     - 0.298617957019731*x56 - 0.298617957019731*x57 - 0.298617957019731*x58 - 0.298617957019731*x59
     - 0.508756519366949*x62 - 0.508756519366949*x63 - 0.508756519366949*x64 - 0.508756519366949*x65
     - 0.67465538437791*x68 - 0.67465538437791*x69 - 0.67465538437791*x70 - 0.67465538437791*x71 - 0.4313370490285*x74
     - 0.4313370490285*x75 - 0.4313370490285*x76 - 0.4313370490285*x77 - 0.61935576270759*x80 - 0.61935576270759*x81
     - 0.61935576270759*x82 - 0.61935576270759*x83 - 0.67465538437791*x86 - 0.67465538437791*x87 - 0.67465538437791*x88
     - 0.67465538437791*x89 - 0.287561496190986*x92 - 0.287561496190986*x93 - 0.287561496190986*x94
     - 0.287561496190986*x95 - 0.502237137946711*x98 - 0.477622520877576*x99 - 0.45421426496273*x100
     - 0.431953246502198*x101 - 0.558041264385235*x104 - 0.530691689863974*x105 - 0.504682516625256*x106
     - 0.479948051669109*x107 - 0.781257770139329*x110 - 0.742968365809563*x111 - 0.706555523275358*x112
     - 0.671927272336753*x113 - 0.781257770139329*x116 - 0.742968365809563*x117 - 0.706555523275358*x118
     - 0.671927272336753*x119 - 0.974342087002751*x122 - 0.880728075639302*x123 - 0.796108423896008*x124
     - 0.719618960867272*x125 == 0)

@constraint(m, x6 - 0.154838940676897*x14 - 0.154838940676897*x15 - 0.154838940676897*x16 - 0.154838940676897*x17
     - 0.154838940676897*x18 - 0.442396973362564*x20 - 0.442396973362564*x21 - 0.442396973362564*x22
     - 0.442396973362564*x23 - 0.442396973362564*x24 - 0.718895081714167*x26 - 0.718895081714167*x27
     - 0.718895081714167*x28 - 0.718895081714167*x29 - 0.718895081714167*x30 - 0.774194703384487*x32
     - 0.774194703384487*x33 - 0.774194703384487*x34 - 0.774194703384487*x35 - 0.774194703384487*x36
     - 0.331797730021923*x38 - 0.331797730021923*x39 - 0.331797730021923*x40 - 0.331797730021923*x41
     - 0.331797730021923*x42 - 0.752074854716359*x44 - 0.752074854716359*x45 - 0.752074854716359*x46
     - 0.752074854716359*x47 - 0.752074854716359*x48 - 0.475576746364756*x50 - 0.475576746364756*x51
     - 0.475576746364756*x52 - 0.475576746364756*x53 - 0.475576746364756*x54 - 0.298617957019731*x56
     - 0.298617957019731*x57 - 0.298617957019731*x58 - 0.298617957019731*x59 - 0.298617957019731*x60
     - 0.508756519366949*x62 - 0.508756519366949*x63 - 0.508756519366949*x64 - 0.508756519366949*x65
     - 0.508756519366949*x66 - 0.67465538437791*x68 - 0.67465538437791*x69 - 0.67465538437791*x70 - 0.67465538437791*x71
     - 0.67465538437791*x72 - 0.4313370490285*x74 - 0.4313370490285*x75 - 0.4313370490285*x76 - 0.4313370490285*x77
     - 0.4313370490285*x78 - 0.61935576270759*x80 - 0.61935576270759*x81 - 0.61935576270759*x82 - 0.61935576270759*x83
     - 0.61935576270759*x84 - 0.67465538437791*x86 - 0.67465538437791*x87 - 0.67465538437791*x88 - 0.67465538437791*x89
     - 0.67465538437791*x90 - 0.287561496190986*x92 - 0.287561496190986*x93 - 0.287561496190986*x94
     - 0.287561496190986*x95 - 0.287561496190986*x96 - 0.502237137946711*x98 - 0.477622520877576*x99
     - 0.45421426496273*x100 - 0.431953246502198*x101 - 0.410783239445593*x102 - 0.558041264385235*x104
     - 0.530691689863974*x105 - 0.504682516625256*x106 - 0.479948051669109*x107 - 0.456425821606214*x108
     - 0.781257770139329*x110 - 0.742968365809563*x111 - 0.706555523275358*x112 - 0.671927272336753*x113
     - 0.6389961502487*x114 - 0.781257770139329*x116 - 0.742968365809563*x117 - 0.706555523275358*x118
     - 0.671927272336753*x119 - 0.6389961502487*x120 - 0.974342087002751*x122 - 0.880728075639302*x123
     - 0.796108423896008*x124 - 0.719618960867272*x125 - 0.650478544499532*x126 == 0)

@constraint(m, x7 - 0.154838940676897*x14 - 0.154838940676897*x15 - 0.154838940676897*x16 - 0.154838940676897*x17
     - 0.154838940676897*x18 - 0.154838940676897*x19 - 0.442396973362564*x20 - 0.442396973362564*x21
     - 0.442396973362564*x22 - 0.442396973362564*x23 - 0.442396973362564*x24 - 0.442396973362564*x25
     - 0.718895081714167*x26 - 0.718895081714167*x27 - 0.718895081714167*x28 - 0.718895081714167*x29
     - 0.718895081714167*x30 - 0.718895081714167*x31 - 0.774194703384487*x32 - 0.774194703384487*x33
     - 0.774194703384487*x34 - 0.774194703384487*x35 - 0.774194703384487*x36 - 0.774194703384487*x37
     - 0.331797730021923*x38 - 0.331797730021923*x39 - 0.331797730021923*x40 - 0.331797730021923*x41
     - 0.331797730021923*x42 - 0.331797730021923*x43 - 0.752074854716359*x44 - 0.752074854716359*x45
     - 0.752074854716359*x46 - 0.752074854716359*x47 - 0.752074854716359*x48 - 0.752074854716359*x49
     - 0.475576746364756*x50 - 0.475576746364756*x51 - 0.475576746364756*x52 - 0.475576746364756*x53
     - 0.475576746364756*x54 - 0.475576746364756*x55 - 0.298617957019731*x56 - 0.298617957019731*x57
     - 0.298617957019731*x58 - 0.298617957019731*x59 - 0.298617957019731*x60 - 0.298617957019731*x61
     - 0.508756519366949*x62 - 0.508756519366949*x63 - 0.508756519366949*x64 - 0.508756519366949*x65
     - 0.508756519366949*x66 - 0.508756519366949*x67 - 0.67465538437791*x68 - 0.67465538437791*x69
     - 0.67465538437791*x70 - 0.67465538437791*x71 - 0.67465538437791*x72 - 0.67465538437791*x73 - 0.4313370490285*x74
     - 0.4313370490285*x75 - 0.4313370490285*x76 - 0.4313370490285*x77 - 0.4313370490285*x78 - 0.4313370490285*x79
     - 0.61935576270759*x80 - 0.61935576270759*x81 - 0.61935576270759*x82 - 0.61935576270759*x83 - 0.61935576270759*x84
     - 0.61935576270759*x85 - 0.67465538437791*x86 - 0.67465538437791*x87 - 0.67465538437791*x88 - 0.67465538437791*x89
     - 0.67465538437791*x90 - 0.67465538437791*x91 - 0.287561496190986*x92 - 0.287561496190986*x93
     - 0.287561496190986*x94 - 0.287561496190986*x95 - 0.287561496190986*x96 - 0.287561496190986*x97
     - 0.502237137946711*x98 - 0.477622520877576*x99 - 0.45421426496273*x100 - 0.431953246502198*x101
     - 0.410783239445593*x102 - 0.382876822988217*x103 - 0.558041264385235*x104 - 0.530691689863974*x105
     - 0.504682516625256*x106 - 0.479948051669109*x107 - 0.456425821606214*x108 - 0.42541869220913*x109
     - 0.781257770139329*x110 - 0.742968365809563*x111 - 0.706555523275358*x112 - 0.671927272336753*x113
     - 0.6389961502487*x114 - 0.595586169092782*x115 - 0.781257770139329*x116 - 0.742968365809563*x117
     - 0.706555523275358*x118 - 0.671927272336753*x119 - 0.6389961502487*x120 - 0.595586169092782*x121
     - 0.974342087002751*x122 - 0.880728075639302*x123 - 0.796108423896008*x124 - 0.719618960867272*x125
     - 0.650478544499532*x126 - 0.564697033309207*x127 == 0)

@constraint(m, x8 - 0.0054041095890411*x134 - 0.0315*x140 - 0.063*x146 - 0.09*x152 - 0.0054041095890411*x158
     - 0.0315*x164 - 0.063*x170 - 0.09*x176 - 0.0054041095890411*x182 - 0.0315*x188 - 0.063*x194 - 0.09*x200
     - 0.0054041095890411*x206 - 0.0315*x212 - 0.063*x218 - 0.09*x224 - 0.0054041095890411*x230 - 0.0315*x236
     - 0.063*x242 - 0.09*x248 - 0.0054041095890411*x254 - 0.0315*x260 - 0.063*x266 - 0.09*x272 - 0.0054041095890411*x278
     - 0.0315*x284 - 0.063*x290 - 0.09*x296 - 0.0054041095890411*x302 - 0.0315*x308 - 0.063*x314 - 0.09*x320
     - 0.0054041095890411*x326 - 0.0315*x332 - 0.063*x338 - 0.09*x344 - 0.0054041095890411*x350 - 0.0315*x356
     - 0.063*x362 - 0.09*x368 - 0.0054041095890411*x374 - 0.0315*x380 - 0.063*x386 - 0.09*x392 - 0.0054041095890411*x398
     - 0.0315*x404 - 0.063*x410 - 0.09*x416 - 0.0054041095890411*x422 - 0.0315*x428 - 0.063*x434 - 0.09*x440
     - 0.100554104249429*x446 - 0.586119550625*x452 - 1.17223910125*x458 - 1.6746272875*x464 - 0.0650644203966895*x530
     - 0.379253826875*x536 - 0.75850765375*x542 - 1.0835823625*x548 - 0.0354896838527397*x614 - 0.20686572375*x620
     - 0.4137314475*x626 - 0.591044925*x632 - 0.0118298946175799*x698 - 0.06895524125*x704 - 0.1379104825*x710
     - 0.197014975*x716 - 0.0118298946175799*x782 - 0.06895524125*x788 - 0.1379104825*x794 - 0.197014975*x800
     - 0.0177448419263699*x866 - 0.103432861875*x872 - 0.20686572375*x878 - 0.2955224625*x884 == 0)

@constraint(m, x9 - 0.0054041095890411*x135 - 0.0315*x141 - 0.063*x147 - 0.09*x153 - 0.0054041095890411*x159
     - 0.0315*x165 - 0.063*x171 - 0.09*x177 - 0.0054041095890411*x183 - 0.0315*x189 - 0.063*x195 - 0.09*x201
     - 0.0054041095890411*x207 - 0.0315*x213 - 0.063*x219 - 0.09*x225 - 0.0054041095890411*x231 - 0.0315*x237
     - 0.063*x243 - 0.09*x249 - 0.0054041095890411*x255 - 0.0315*x261 - 0.063*x267 - 0.09*x273 - 0.0054041095890411*x279
     - 0.0315*x285 - 0.063*x291 - 0.09*x297 - 0.0054041095890411*x303 - 0.0315*x309 - 0.063*x315 - 0.09*x321
     - 0.0054041095890411*x327 - 0.0315*x333 - 0.063*x339 - 0.09*x345 - 0.0054041095890411*x351 - 0.0315*x357
     - 0.063*x363 - 0.09*x369 - 0.0054041095890411*x375 - 0.0315*x381 - 0.063*x387 - 0.09*x393 - 0.0054041095890411*x399
     - 0.0315*x405 - 0.063*x411 - 0.09*x417 - 0.0054041095890411*x423 - 0.0315*x429 - 0.063*x435 - 0.09*x441
     - 0.100554104249429*x447 - 0.586119550625*x453 - 1.17223910125*x459 - 1.6746272875*x465 - 0.0980652647905429*x470
     - 0.571612360927385*x475 - 1.14322472185477*x480 - 1.63317817407824*x485 - 0.0650644203966895*x531
     - 0.379253826875*x537 - 0.75850765375*x543 - 1.0835823625*x549 - 0.0634539948644689*x554 - 0.369866821776543*x559
     - 0.739733643553086*x564 - 1.05676234793298*x569 - 0.0354896838527397*x615 - 0.20686572375*x621 - 0.4137314475*x627
     - 0.591044925*x633 - 0.034611269926074*x638 - 0.201745539150842*x643 - 0.403491078301683*x648
     - 0.576415826145262*x653 - 0.0118298946175799*x699 - 0.06895524125*x705 - 0.1379104825*x711 - 0.197014975*x717
     - 0.011537089975358*x722 - 0.0672485130502806*x727 - 0.134497026100561*x732 - 0.192138608715087*x737
     - 0.0118298946175799*x783 - 0.06895524125*x789 - 0.1379104825*x795 - 0.197014975*x801 - 0.011537089975358*x806
     - 0.0672485130502806*x811 - 0.134497026100561*x816 - 0.192138608715087*x821 - 0.0177448419263699*x867
     - 0.103432861875*x873 - 0.20686572375*x879 - 0.2955224625*x885 - 0.017305634963037*x890 - 0.100872769575421*x895
     - 0.201745539150842*x900 - 0.288207913072631*x905 == 0)

@constraint(m, x10 - 0.0054041095890411*x136 - 0.0315*x142 - 0.063*x148 - 0.09*x154 - 0.0054041095890411*x160
     - 0.0315*x166 - 0.063*x172 - 0.09*x178 - 0.0054041095890411*x184 - 0.0315*x190 - 0.063*x196 - 0.09*x202
     - 0.0054041095890411*x208 - 0.0315*x214 - 0.063*x220 - 0.09*x226 - 0.0054041095890411*x232 - 0.0315*x238
     - 0.063*x244 - 0.09*x250 - 0.0054041095890411*x256 - 0.0315*x262 - 0.063*x268 - 0.09*x274 - 0.0054041095890411*x280
     - 0.0315*x286 - 0.063*x292 - 0.09*x298 - 0.0054041095890411*x304 - 0.0315*x310 - 0.063*x316 - 0.09*x322
     - 0.0054041095890411*x328 - 0.0315*x334 - 0.063*x340 - 0.09*x346 - 0.0054041095890411*x352 - 0.0315*x358
     - 0.063*x364 - 0.09*x370 - 0.0054041095890411*x376 - 0.0315*x382 - 0.063*x388 - 0.09*x394 - 0.0054041095890411*x400
     - 0.0315*x406 - 0.063*x412 - 0.09*x418 - 0.0054041095890411*x424 - 0.0315*x430 - 0.063*x436 - 0.09*x442
     - 0.100554104249429*x448 - 0.586119550625*x454 - 1.17223910125*x460 - 1.6746272875*x466 - 0.0980652647905429*x471
     - 0.571612360927385*x476 - 1.14322472185477*x481 - 1.63317817407824*x486 - 0.0956380272115434*x490
     - 0.557464242263483*x494 - 1.11492848452697*x498 - 1.59275497789567*x502 - 0.0650644203966895*x532
     - 0.379253826875*x538 - 0.75850765375*x544 - 1.0835823625*x550 - 0.0634539948644689*x555 - 0.369866821776543*x560
     - 0.739733643553086*x565 - 1.05676234793298*x570 - 0.0618834293721752*x574 - 0.360712156758725*x578
     - 0.721424313517449*x582 - 1.03060616216778*x586 - 0.0354896838527397*x616 - 0.20686572375*x622 - 0.4137314475*x628
     - 0.591044925*x634 - 0.034611269926074*x639 - 0.201745539150842*x644 - 0.403491078301683*x649
     - 0.576415826145262*x654 - 0.0337545978393683*x658 - 0.196752085504759*x662 - 0.393504171009518*x666
     - 0.562148815727882*x670 - 0.0118298946175799*x700 - 0.06895524125*x706 - 0.1379104825*x712 - 0.197014975*x718
     - 0.011537089975358*x723 - 0.0672485130502806*x728 - 0.134497026100561*x733 - 0.192138608715087*x738
     - 0.0112515326131228*x742 - 0.0655840285015863*x746 - 0.131168057003173*x750 - 0.187382938575961*x754
     - 0.0118298946175799*x784 - 0.06895524125*x790 - 0.1379104825*x796 - 0.197014975*x802 - 0.011537089975358*x807
     - 0.0672485130502806*x812 - 0.134497026100561*x817 - 0.192138608715087*x822 - 0.0112515326131228*x826
     - 0.0655840285015863*x830 - 0.131168057003173*x834 - 0.187382938575961*x838 - 0.0177448419263699*x868
     - 0.103432861875*x874 - 0.20686572375*x880 - 0.2955224625*x886 - 0.017305634963037*x891 - 0.100872769575421*x896
     - 0.201745539150842*x901 - 0.288207913072631*x906 - 0.0168772989196841*x910 - 0.0983760427523794*x914
     - 0.196752085504759*x918 - 0.281074407863941*x922 == 0)

@constraint(m, x11 - 0.0054041095890411*x137 - 0.0315*x143 - 0.063*x149 - 0.09*x155 - 0.0054041095890411*x161
     - 0.0315*x167 - 0.063*x173 - 0.09*x179 - 0.0054041095890411*x185 - 0.0315*x191 - 0.063*x197 - 0.09*x203
     - 0.0054041095890411*x209 - 0.0315*x215 - 0.063*x221 - 0.09*x227 - 0.0054041095890411*x233 - 0.0315*x239
     - 0.063*x245 - 0.09*x251 - 0.0054041095890411*x257 - 0.0315*x263 - 0.063*x269 - 0.09*x275 - 0.0054041095890411*x281
     - 0.0315*x287 - 0.063*x293 - 0.09*x299 - 0.0054041095890411*x305 - 0.0315*x311 - 0.063*x317 - 0.09*x323
     - 0.0054041095890411*x329 - 0.0315*x335 - 0.063*x341 - 0.09*x347 - 0.0054041095890411*x353 - 0.0315*x359
     - 0.063*x365 - 0.09*x371 - 0.0054041095890411*x377 - 0.0315*x383 - 0.063*x389 - 0.09*x395 - 0.0054041095890411*x401
     - 0.0315*x407 - 0.063*x413 - 0.09*x419 - 0.0054041095890411*x425 - 0.0315*x431 - 0.063*x437 - 0.09*x443
     - 0.100554104249429*x449 - 0.586119550625*x455 - 1.17223910125*x461 - 1.6746272875*x467 - 0.0980652647905429*x472
     - 0.571612360927385*x477 - 1.14322472185477*x482 - 1.63317817407824*x487 - 0.0956380272115434*x491
     - 0.557464242263483*x495 - 1.11492848452697*x499 - 1.59275497789567*x503 - 0.0932708667890937*x506
     - 0.543666307177493*x509 - 1.08733261435499*x512 - 1.55333230622141*x515 - 0.0650644203966895*x533
     - 0.379253826875*x539 - 0.75850765375*x545 - 1.0835823625*x551 - 0.0634539948644689*x556 - 0.369866821776543*x561
     - 0.739733643553086*x566 - 1.05676234793298*x571 - 0.0618834293721752*x575 - 0.360712156758725*x579
     - 0.721424313517449*x583 - 1.03060616216778*x587 - 0.0603517373341195*x590 - 0.351784081114848*x593
     - 0.703568162229697*x596 - 1.00509737461385*x599 - 0.0354896838527397*x617 - 0.20686572375*x623 - 0.4137314475*x629
     - 0.591044925*x635 - 0.034611269926074*x640 - 0.201745539150842*x645 - 0.403491078301683*x650
     - 0.576415826145262*x655 - 0.0337545978393683*x659 - 0.196752085504759*x663 - 0.393504171009518*x667
     - 0.562148815727882*x671 - 0.0329191294549742*x674 - 0.191882226062645*x677 - 0.383764452125289*x680
     - 0.548234931607556*x683 - 0.0118298946175799*x701 - 0.06895524125*x707 - 0.1379104825*x713 - 0.197014975*x719
     - 0.011537089975358*x724 - 0.0672485130502806*x729 - 0.134497026100561*x734 - 0.192138608715087*x739
     - 0.0112515326131228*x743 - 0.0655840285015863*x747 - 0.131168057003173*x751 - 0.187382938575961*x755
     - 0.0109730431516581*x758 - 0.0639607420208815*x761 - 0.127921484041763*x764 - 0.182744977202519*x767
     - 0.0118298946175799*x785 - 0.06895524125*x791 - 0.1379104825*x797 - 0.197014975*x803 - 0.011537089975358*x808
     - 0.0672485130502806*x813 - 0.134497026100561*x818 - 0.192138608715087*x823 - 0.0112515326131228*x827
     - 0.0655840285015863*x831 - 0.131168057003173*x835 - 0.187382938575961*x839 - 0.0109730431516581*x842
     - 0.0639607420208815*x845 - 0.127921484041763*x848 - 0.182744977202519*x851 - 0.0177448419263699*x869
     - 0.103432861875*x875 - 0.20686572375*x881 - 0.2955224625*x887 - 0.017305634963037*x892 - 0.100872769575421*x897
     - 0.201745539150842*x902 - 0.288207913072631*x907 - 0.0168772989196841*x911 - 0.0983760427523794*x915
     - 0.196752085504759*x919 - 0.281074407863941*x923 - 0.0164595647274871*x926 - 0.0959411130313223*x929
     - 0.191882226062645*x932 - 0.274117465803778*x935 == 0)

@constraint(m, x12 - 0.0054041095890411*x138 - 0.0315*x144 - 0.063*x150 - 0.09*x156 - 0.0054041095890411*x162
     - 0.0315*x168 - 0.063*x174 - 0.09*x180 - 0.0054041095890411*x186 - 0.0315*x192 - 0.063*x198 - 0.09*x204
     - 0.0054041095890411*x210 - 0.0315*x216 - 0.063*x222 - 0.09*x228 - 0.0054041095890411*x234 - 0.0315*x240
     - 0.063*x246 - 0.09*x252 - 0.0054041095890411*x258 - 0.0315*x264 - 0.063*x270 - 0.09*x276 - 0.0054041095890411*x282
     - 0.0315*x288 - 0.063*x294 - 0.09*x300 - 0.0054041095890411*x306 - 0.0315*x312 - 0.063*x318 - 0.09*x324
     - 0.0054041095890411*x330 - 0.0315*x336 - 0.063*x342 - 0.09*x348 - 0.0054041095890411*x354 - 0.0315*x360
     - 0.063*x366 - 0.09*x372 - 0.0054041095890411*x378 - 0.0315*x384 - 0.063*x390 - 0.09*x396 - 0.0054041095890411*x402
     - 0.0315*x408 - 0.063*x414 - 0.09*x420 - 0.0054041095890411*x426 - 0.0315*x432 - 0.063*x438 - 0.09*x444
     - 0.100554104249429*x450 - 0.586119550625*x456 - 1.17223910125*x462 - 1.6746272875*x468 - 0.0980652647905429*x473
     - 0.571612360927385*x478 - 1.14322472185477*x483 - 1.63317817407824*x488 - 0.0956380272115434*x492
     - 0.557464242263483*x496 - 1.11492848452697*x500 - 1.59275497789567*x504 - 0.0932708667890937*x507
     - 0.543666307177493*x510 - 1.08733261435499*x513 - 1.55333230622141*x516 - 0.0909622965386601*x518
     - 0.530209888189224*x520 - 1.06041977637845*x522 - 1.51488539482635*x524 - 0.0650644203966895*x534
     - 0.379253826875*x540 - 0.75850765375*x546 - 1.0835823625*x552 - 0.0634539948644689*x557 - 0.369866821776543*x562
     - 0.739733643553086*x567 - 1.05676234793298*x572 - 0.0618834293721752*x576 - 0.360712156758725*x580
     - 0.721424313517449*x584 - 1.03060616216778*x588 - 0.0603517373341195*x591 - 0.351784081114848*x594
     - 0.703568162229697*x597 - 1.00509737461385*x600 - 0.0588579565838389*x602 - 0.34307698647538*x604
     - 0.686153972950761*x606 - 0.98021996135823*x608 - 0.0354896838527397*x618 - 0.20686572375*x624 - 0.4137314475*x630
     - 0.591044925*x636 - 0.034611269926074*x641 - 0.201745539150842*x646 - 0.403491078301683*x651
     - 0.576415826145262*x656 - 0.0337545978393683*x660 - 0.196752085504759*x664 - 0.393504171009518*x668
     - 0.562148815727882*x672 - 0.0329191294549742*x675 - 0.191882226062645*x678 - 0.383764452125289*x681
     - 0.548234931607556*x684 - 0.0321043399548212*x686 - 0.187132901713844*x688 - 0.374265803427688*x690
     - 0.534665433468125*x692 - 0.0118298946175799*x702 - 0.06895524125*x708 - 0.1379104825*x714 - 0.197014975*x720
     - 0.011537089975358*x725 - 0.0672485130502806*x730 - 0.134497026100561*x735 - 0.192138608715087*x740
     - 0.0112515326131228*x744 - 0.0655840285015863*x748 - 0.131168057003173*x752 - 0.187382938575961*x756
     - 0.0109730431516581*x759 - 0.0639607420208815*x762 - 0.127921484041763*x765 - 0.182744977202519*x768
     - 0.0107014466516071*x770 - 0.0623776339046146*x772 - 0.124755267809229*x774 - 0.178221811156042*x776
     - 0.0118298946175799*x786 - 0.06895524125*x792 - 0.1379104825*x798 - 0.197014975*x804 - 0.011537089975358*x809
     - 0.0672485130502806*x814 - 0.134497026100561*x819 - 0.192138608715087*x824 - 0.0112515326131228*x828
     - 0.0655840285015863*x832 - 0.131168057003173*x836 - 0.187382938575961*x840 - 0.0109730431516581*x843
     - 0.0639607420208815*x846 - 0.127921484041763*x849 - 0.182744977202519*x852 - 0.0107014466516071*x854
     - 0.0623776339046146*x856 - 0.124755267809229*x858 - 0.178221811156042*x860 - 0.0177448419263699*x870
     - 0.103432861875*x876 - 0.20686572375*x882 - 0.2955224625*x888 - 0.017305634963037*x893 - 0.100872769575421*x898
     - 0.201745539150842*x903 - 0.288207913072631*x908 - 0.0168772989196841*x912 - 0.0983760427523794*x916
     - 0.196752085504759*x920 - 0.281074407863941*x924 - 0.0164595647274871*x927 - 0.0959411130313223*x930
     - 0.191882226062645*x933 - 0.274117465803778*x936 - 0.0160521699774106*x938 - 0.0935664508569219*x940
     - 0.187132901713844*x942 - 0.267332716734063*x944 == 0)

@constraint(m, x13 - 0.0054041095890411*x139 - 0.0315*x145 - 0.063*x151 - 0.09*x157 - 0.0054041095890411*x163
     - 0.0315*x169 - 0.063*x175 - 0.09*x181 - 0.0054041095890411*x187 - 0.0315*x193 - 0.063*x199 - 0.09*x205
     - 0.0054041095890411*x211 - 0.0315*x217 - 0.063*x223 - 0.09*x229 - 0.0054041095890411*x235 - 0.0315*x241
     - 0.063*x247 - 0.09*x253 - 0.0054041095890411*x259 - 0.0315*x265 - 0.063*x271 - 0.09*x277 - 0.0054041095890411*x283
     - 0.0315*x289 - 0.063*x295 - 0.09*x301 - 0.0054041095890411*x307 - 0.0315*x313 - 0.063*x319 - 0.09*x325
     - 0.0054041095890411*x331 - 0.0315*x337 - 0.063*x343 - 0.09*x349 - 0.0054041095890411*x355 - 0.0315*x361
     - 0.063*x367 - 0.09*x373 - 0.0054041095890411*x379 - 0.0315*x385 - 0.063*x391 - 0.09*x397 - 0.0054041095890411*x403
     - 0.0315*x409 - 0.063*x415 - 0.09*x421 - 0.0054041095890411*x427 - 0.0315*x433 - 0.063*x439 - 0.09*x445
     - 0.100554104249429*x451 - 0.586119550625*x457 - 1.17223910125*x463 - 1.6746272875*x469 - 0.0980652647905429*x474
     - 0.571612360927385*x479 - 1.14322472185477*x484 - 1.63317817407824*x489 - 0.0956380272115434*x493
     - 0.557464242263483*x497 - 1.11492848452697*x501 - 1.59275497789567*x505 - 0.0932708667890937*x508
     - 0.543666307177493*x511 - 1.08733261435499*x514 - 1.55333230622141*x517 - 0.0909622965386601*x519
     - 0.530209888189224*x521 - 1.06041977637845*x523 - 1.51488539482635*x525 - 0.0878259753892832*x526
     - 0.511928594189244*x527 - 1.02385718837849*x528 - 1.46265312625498*x529 - 0.0650644203966895*x535
     - 0.379253826875*x541 - 0.75850765375*x547 - 1.0835823625*x553 - 0.0634539948644689*x558 - 0.369866821776543*x563
     - 0.739733643553086*x568 - 1.05676234793298*x573 - 0.0618834293721752*x577 - 0.360712156758725*x581
     - 0.721424313517449*x585 - 1.03060616216778*x589 - 0.0603517373341195*x592 - 0.351784081114848*x595
     - 0.703568162229697*x598 - 1.00509737461385*x601 - 0.0588579565838389*x603 - 0.34307698647538*x605
     - 0.686153972950761*x607 - 0.98021996135823*x609 - 0.0568285723107127*x610 - 0.331247913887158*x611
     - 0.662495827774316*x612 - 0.946422611106166*x613 - 0.0354896838527397*x619 - 0.20686572375*x625
     - 0.4137314475*x631 - 0.591044925*x637 - 0.034611269926074*x642 - 0.201745539150842*x647 - 0.403491078301683*x652
     - 0.576415826145262*x657 - 0.0337545978393683*x661 - 0.196752085504759*x665 - 0.393504171009518*x669
     - 0.562148815727882*x673 - 0.0329191294549742*x676 - 0.191882226062645*x679 - 0.383764452125289*x682
     - 0.548234931607556*x685 - 0.0321043399548212*x687 - 0.187132901713844*x689 - 0.374265803427688*x691
     - 0.534665433468125*x693 - 0.0309974030785706*x694 - 0.180680680302086*x695 - 0.361361360604172*x696
     - 0.516230515148818*x697 - 0.0118298946175799*x703 - 0.06895524125*x709 - 0.1379104825*x715 - 0.197014975*x721
     - 0.011537089975358*x726 - 0.0672485130502806*x731 - 0.134497026100561*x736 - 0.192138608715087*x741
     - 0.0112515326131228*x745 - 0.0655840285015863*x749 - 0.131168057003173*x753 - 0.187382938575961*x757
     - 0.0109730431516581*x760 - 0.0639607420208815*x763 - 0.127921484041763*x766 - 0.182744977202519*x769
     - 0.0107014466516071*x771 - 0.0623776339046146*x773 - 0.124755267809229*x775 - 0.178221811156042*x777
     - 0.0103324676928569*x778 - 0.0602268934340287*x779 - 0.120453786868057*x780 - 0.172076838382939*x781
     - 0.0118298946175799*x787 - 0.06895524125*x793 - 0.1379104825*x799 - 0.197014975*x805 - 0.011537089975358*x810
     - 0.0672485130502806*x815 - 0.134497026100561*x820 - 0.192138608715087*x825 - 0.0112515326131228*x829
     - 0.0655840285015863*x833 - 0.131168057003173*x837 - 0.187382938575961*x841 - 0.0109730431516581*x844
     - 0.0639607420208815*x847 - 0.127921484041763*x850 - 0.182744977202519*x853 - 0.0107014466516071*x855
     - 0.0623776339046146*x857 - 0.124755267809229*x859 - 0.178221811156042*x861 - 0.0103324676928569*x862
     - 0.0602268934340287*x863 - 0.120453786868057*x864 - 0.172076838382939*x865 - 0.0177448419263699*x871
     - 0.103432861875*x877 - 0.20686572375*x883 - 0.2955224625*x889 - 0.017305634963037*x894 - 0.100872769575421*x899
     - 0.201745539150842*x904 - 0.288207913072631*x909 - 0.0168772989196841*x913 - 0.0983760427523794*x917
     - 0.196752085504759*x921 - 0.281074407863941*x925 - 0.0164595647274871*x928 - 0.0959411130313223*x931
     - 0.191882226062645*x934 - 0.274117465803778*x937 - 0.0160521699774106*x939 - 0.0935664508569219*x941
     - 0.187132901713844*x943 - 0.267332716734063*x945 - 0.0154987015392853*x946 - 0.0903403401510431*x947
     - 0.180680680302086*x948 - 0.258115257574409*x949 == 0)
