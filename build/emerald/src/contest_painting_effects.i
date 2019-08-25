# 1 "src/contest_painting_effects.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/contest_painting_effects.c"
# 1 "include/global.h" 1



# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 5 "include/global.h" 2
# 1 "tools/agbcc/include/limits.h" 1
# 6 "include/global.h" 2
# 1 "include/config.h" 1
# 7 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 117 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    const u8 *boot_srcp;
    const u8 *boot_endp;
    const u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const u32 *src, void *dest);

void LZ77UnCompVram(const u32 *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 11 "include/gba/gba.h" 2
# 8 "include/global.h" 2
# 1 "include/constants/global.h" 1
# 9 "include/global.h" 2
# 114 "include/global.h"
struct Coords8
{
    s8 x;
    s8 y;
};

struct UCoords8
{
    u8 x;
    u8 y;
};

struct Coords16
{
    s16 x;
    s16 y;
};

struct UCoords16
{
    u16 x;
    u16 y;
};

struct Coords32
{
    s32 x;
    s32 y;
};

struct UCoords32
{
    u32 x;
    u32 y;
};

struct Time
{
             s16 days;
             s8 hours;
             s8 minutes;
             s8 seconds;
};



struct Pokedex
{
             u8 order;
             u8 mode;
             u8 nationalMagic;
             u8 unknown2;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
             u8 owned[((412 / 8) + ((412 % 8) ? 1 : 0))];
             u8 seen[((412 / 8) + ((412 % 8) ? 1 : 0))];
};

struct PokemonJumpResults
{
    u16 jumpsInRow;
    u16 field2;
    u16 excellentsInRow;
    u16 field6;
    u32 field8;
    u32 bestJumpScore;
};

struct BerryPickingResults
{
    u32 bestScore;
    u16 berriesPicked;
    u16 berriesPickedInRow;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
};


struct PyramidBag
{
    u16 itemId[2][10];
    u8 quantity[2][10];
};

struct BerryCrush
{
    u16 berryCrushResults[4];
    u32 berryPowderAmount;
    u32 unk;
};

struct ApprenticeMon
{
    u16 species;
    u16 moves[4];
    u16 item;
};

struct Apprentice
{
    u8 id:5;
    u8 lvlMode:2;
    u8 field_1;
    u8 number;
    struct ApprenticeMon party[3];
    u16 easyChatWords[6];
    u8 playerId[4];
    u8 playerName[7];
    u8 language;
    u32 checksum;
};

struct BattleTowerPokemon
{
    u16 species;
    u16 heldItem;
    u16 moves[4];
    u8 level;
    u8 ppBonuses;
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u32 otId;
    u32 hpIV:5;
    u32 attackIV:5;
    u32 defenseIV:5;
    u32 speedIV:5;
    u32 spAttackIV:5;
    u32 spDefenseIV:5;
    u32 gap:1;
    u32 abilityNum:1;
    u32 personality;
    u8 nickname[10 + 1];
    u8 friendship;
};

struct EmeraldBattleTowerRecord
{
             u8 lvlMode;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 speechWon[6];
             u16 speechLost[6];
             struct BattleTowerPokemon party[4];
             u8 language;
             u32 checksum;
};

struct BattleTowerEReaderTrainer
{
             u8 unk0;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 farewellPlayerLost[6];
             u16 farewellPlayerWon[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};

struct FrontierMonData
{
    u16 moves[4];
    u8 evs[6];
    u8 nature;
};

struct RentalMon
{
    u16 monId;
    u32 personality;
    u8 ivs;
    u8 abilityNum;
};

struct BattleDomeTrainer
{
    u16 trainerId:10;
    u16 isEliminated:1;
    u16 eliminatedAt:2;
    u16 unk3:3;
};



struct BattleFrontier
{
              struct EmeraldBattleTowerRecord towerPlayer;
              struct EmeraldBattleTowerRecord towerRecords[5];
              u16 field_BD4;
              u16 field_BD6;
              u8 field_BD8[7 + 1];
              u8 field_BE0[10 + 1];
              u8 field_BEB;
              struct BattleTowerEReaderTrainer ereaderTrainer;
              u8 field_CA8;
              u8 lvlMode:2;
              u8 field_CA9_a:1;
              u8 field_CA9_b:1;
              u8 field_CA9_c:1;
              u8 field_CA9_d:1;
              u8 field_CA9_e:1;
              u8 field_CA9_f:1;
              u16 selectedPartyMons[3];
              u16 field_CB0;
              u16 curChallengeBattleNum;
              u16 trainerIds[20];
              u32 field_CDC;
              u16 towerWinStreaks[4][2];
              u16 towerRecordWinStreaks[4][2];
              u16 field_D00;
              u16 field_D02;
              u16 field_D04;
              u8 field_D06;
              u8 field_D07;
              u8 field_D08_0:1;
              u8 field_D08_1:1;
              u8 field_D08_2:1;
              u8 field_D08_3:1;
              u8 field_D08_4:1;
              u8 field_D08_5:1;
              u8 field_D08_6:1;
              u8 field_D08_7:1;
              u8 filler_D09;
              u8 field_D0A;
              u8 field_D0B;
              u16 domeWinStreaks[2][2];
              u16 domeRecordWinStreaks[2][2];
              u16 domeTotalChampionships[2][2];
              struct BattleDomeTrainer domeTrainers[16];
              u16 domeMonIds[16][3];
              u16 field_DC4;
              u16 field_DC6;
              u16 palaceWinStreaks[2][2];
              u16 palaceRecordWinStreaks[2][2];
              u16 arenaRewardItem;
              u16 arenaWinStreaks[2];
              u16 arenaRecordStreaks[2];
              u16 factoryWinStreaks[2][2];
              u16 factoryRecordWinStreaks[2][2];
              u16 factoryRentsCount[2][2];
              u16 factoryRecordRentsCount[2][2];
              u16 field_E02;
              u16 pikeWinStreaks[2];
              u16 pikeRecordStreaks[2];
              u16 pikeTotalStreaks[2];
              u8 pikeHintedRoomIndex:3;
              u8 pikeHintedRoomType:4;
              u8 pikeHealingRoomsDisabled:1;
              u16 pikeHeldItemsBackup[3];
              u16 pyramidRewardItem;
              u16 pyramidWinStreaks[2];
              u16 pyramidRecordStreaks[2];
              u16 pyramidRandoms[4];
              u8 pyramidTrainerFlags;
              struct PyramidBag pyramidBag;
              u8 pyramidLightRadius;
              u16 field_E6A;
              u16 field_E6C;
              u16 field_E6E;
              struct RentalMon rentalMons[6];
              u16 battlePoints;
              u16 field_EBA;
              u32 battlesCount;
              u16 field_EC0[16];
              u8 field_EE0;
              u8 opponentName[2][7 + 1];
              u8 field_EF1[2][4];
              u8 field_EF9_0:7;
              u8 field_EF9_1:1;
              u8 field_EFA;
              u8 field_EFB;
              struct FrontierMonData field_EFC[3];
};

struct Sav2_B8
{
    u8 unk0_0:2;
    u8 unk0_1:2;
    u8 unk0_2:2;
    u8 unk0_3:2;
    u16 unk2;
};

struct PlayersApprentice
{
             u8 id;
             u8 activeLvlMode:2;
             u8 field_B1_1:4;
             u8 field_B1_2:2;
             u8 field_B2_0:3;
             u8 field_B2_1:2;
             u8 field_B3;
             u8 monIds[3];
             struct Sav2_B8 field_B8[9];
};

struct RankingHall1P
{
    u8 id[4];
    u16 winStreak;
    u8 name[7 + 1];
    u8 language;
};

struct RankingHall2P
{
    u8 id1[4];
    u8 id2[4];
    u16 winStreak;
    u8 name1[7 + 1];
    u8 name2[7 + 1];
    u8 language;
};

struct SaveBlock2
{
             u8 playerName[7 + 1];
             u8 playerGender;
             u8 specialSaveWarpFlags;
             u8 playerTrainerId[4];
             u16 playTimeHours;
             u8 playTimeMinutes;
             u8 playTimeSeconds;
             u8 playTimeVBlanks;
             u8 optionsButtonMode;
             u16 optionsTextSpeed:3;
             u16 optionsWindowFrameType:5;
             u16 optionsSound:1;
             u16 optionsBattleStyle:1;
             u16 optionsBattleSceneOff:1;
             u16 regionMapZoom:1;
             struct Pokedex pokedex;
             u8 filler_90[0x8];
             struct Time localTimeOffset;
             struct Time lastBerryTreeUpdate;
             u32 field_A8;
             u32 encryptionKey;
             struct PlayersApprentice playerApprentice;
             struct Apprentice apprentices[4];
              struct BerryCrush berryCrush;
              struct PokemonJumpResults pokeJump;
              struct BerryPickingResults berryPick;
              struct RankingHall1P hallRecords1P[9][2][3];
              struct RankingHall2P hallRecords2P[2][3];
              u16 contestLinkResults[5][4];
              struct BattleFrontier frontier;
};

extern struct SaveBlock2 *gSaveBlock2Ptr;

struct SecretBaseParty
{
    u32 personality[6];
    u16 moves[6 * 4];
    u16 species[6];
    u16 heldItems[6];
    u8 levels[6];
    u8 EVs[6];
};

struct SecretBase
{
               u8 secretBaseId;
               u8 sbr_field_1_0:4;
               u8 gender:1;
               u8 battledOwnerToday:1;
               u8 registryStatus:2;
               u8 trainerName[7];
               u8 trainerId[4];
               u8 language;
               u16 numSecretBasesReceived;
               u8 numTimesEntered;
               u8 sbr_field_11;
               u8 decorations[16];
               u8 decorationPositions[16];
               struct SecretBaseParty party;
};

# 1 "include/constants/game_stat.h" 1
# 509 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1
# 13 "include/global.fieldmap.h"
enum
{
    CONNECTION_SOUTH = 1,
    CONNECTION_NORTH,
    CONNECTION_WEST,
    CONNECTION_EAST,
    CONNECTION_DIVE,
    CONNECTION_EMERGE
};

typedef void (*TilesetCB)(void);

struct Tileset
{
             bool8 isCompressed;
             bool8 isSecondary;
             void *tiles;
             void *palettes;
             u16 *metatiles;
             u16 *metatileAttributes;
             TilesetCB callback;
};

struct MapLayout
{
             s32 width;
             s32 height;
             u16 *border;
             u16 *map;
             struct Tileset *primaryTileset;
             struct Tileset *secondaryTileset;
};

struct BackupMapLayout
{
    s32 width;
    s32 height;
    u16 *map;
};

struct EventObjectTemplate
{
             u8 localId;
             u8 graphicsId;
             u8 unk2;
             s16 x;
             s16 y;
             u8 elevation;
             u8 movementType;
             u8 movementRangeX:4;
             u8 movementRangeY:4;
             u16 trainerType;
             u16 trainerRange_berryTreeId;
             const u8 *script;
             u16 flagId;
};

struct WarpEvent
{
    s16 x, y;
    u8 elevation;
    u8 warpId;
    u8 mapNum;
    u8 mapGroup;
};

struct CoordEvent
{
    s16 x, y;
    u8 elevation;
    u16 trigger;
    u16 index;
    u8 filler_A[0x2];
    u8 *script;
};

struct BgEvent
{
    u16 x, y;
    u8 elevation;
    u8 kind;
    union {

        u8 *script;


        struct {
            u16 item;
            u16 hiddenItemId;
        } hiddenItem;


        u32 secretBaseId;

    } bgUnion;
};

struct MapEvents
{
    u8 eventObjectCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;

    struct EventObjectTemplate *eventObjects;
    struct WarpEvent *warps;
    struct CoordEvent *coordEvents;
    struct BgEvent *bgEvents;
};

struct MapConnection
{
          u8 direction;
          u32 offset;
          u8 mapGroup;
          u8 mapNum;
};

struct MapConnections
{
    s32 count;
    struct MapConnection *connections;
};

struct MapHeader
{
               const struct MapLayout *mapLayout;
               const struct MapEvents *events;
               const u8 *mapScripts;
               const struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;
               u8 filler_18[2];
               u8 flags;
               u8 battleType;
};

struct EventObject
{
             u32 active:1;
             u32 singleMovementActive:1;
             u32 triggerGroundEffectsOnMove:1;
             u32 triggerGroundEffectsOnStop:1;
             u32 disableCoveringGroundEffects:1;
             u32 landingJump:1;
             u32 heldMovementActive:1;
             u32 heldMovementFinished:1;
             u32 frozen:1;
             u32 facingDirectionLocked:1;
             u32 disableAnim:1;
             u32 enableAnim:1;
             u32 inanimate:1;
             u32 invisible:1;
             u32 offScreen:1;
             u32 trackedByCamera:1;
             u32 isPlayer:1;
             u32 hasReflection:1;
             u32 inShortGrass:1;
             u32 inShallowFlowingWater:1;
             u32 inSandPile:1;
             u32 inHotSprings:1;
             u32 hasShadow:1;
             u32 spriteAnimPausedBackup:1;
             u32 spriteAffineAnimPausedBackup:1;
             u32 disableJumpLandingGroundEffect:1;
             u32 fixedPriority:1;
             u32 unk3_3:1;
             u8 spriteId;
             u8 graphicsId;
             u8 movementType;
             u8 trainerType;
             u8 localId;
             u8 mapNum;
             u8 mapGroup;
             u8 currentElevation:4;
             u8 previousElevation:4;
             struct Coords16 initialCoords;
             struct Coords16 currentCoords;
             struct Coords16 previousCoords;
             u8 facingDirection:4;
             u8 movementDirection:4;
             union __attribute__((packed)) {
        u8 as_byte;
        struct __attribute__((packed)) {
            u8 x:4;
            u8 y:4;
        } __attribute__((aligned(1))) as_nybbles;
    } __attribute__((aligned(1))) range;
             u8 fieldEffectSpriteId;
             u8 warpArrowSpriteId;
             u8 movementActionId;
             u8 trainerRange_berryTreeId;
             u8 currentMetatileBehavior;
             u8 previousMetatileBehavior;
             u8 previousMovementDirection;
             u8 directionSequenceIndex;
             u8 playerCopyableMovement;

};

struct EventObjectGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag1;
             u16 paletteTag2;
             u16 size;
             s16 width;
             s16 height;
             u8 paletteSlot:4;
             u8 shadowSize:2;
             u8 inanimate:1;
             u8 disableReflectionPaletteLoad:1;
             u8 tracks;
             const struct OamData *oam;
             const struct SubspriteTable *subspriteTables;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
};

enum {
    PLAYER_AVATAR_STATE_NORMAL,
    PLAYER_AVATAR_STATE_MACH_BIKE,
    PLAYER_AVATAR_STATE_ACRO_BIKE,
    PLAYER_AVATAR_STATE_SURFING,
    PLAYER_AVATAR_STATE_UNDERWATER,
    PLAYER_AVATAR_STATE_FIELD_MOVE,
    PLAYER_AVATAR_STATE_FISHING,
    PLAYER_AVATAR_STATE_WATERING,
};
# 257 "include/global.fieldmap.h"
enum
{
    ACRO_BIKE_NORMAL,
    ACRO_BIKE_TURNING,
    ACRO_BIKE_WHEELIE_STANDING,
    ACRO_BIKE_BUNNY_HOP,
    ACRO_BIKE_WHEELIE_MOVING,
    ACRO_BIKE_STATE5,
    ACRO_BIKE_STATE6,
};

enum
{
    COLLISION_LEDGE_JUMP = 6
};


enum
{
    NOT_MOVING,
    TURN_DIRECTION,
    MOVING,
};


enum
{
    T_NOT_MOVING,
    T_TILE_TRANSITION,
    T_TILE_CENTER,
};

struct PlayerAvatar
{
             u8 flags;
             u8 unk1;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 eventObjectId;
             bool8 preventStep;
             u8 gender;
             u8 acroBikeState;
             u8 newDirBackup;
             u8 bikeFrameCounter;
             u8 bikeSpeed;

             u32 directionHistory;
             u32 abStartSelectHistory;

             u8 dirTimerHistory[8];
             u8 abStartSelectTimerHistory[8];
};

struct Camera
{
    bool8 active:1;
    s32 x;
    s32 y;
};

extern struct EventObject gEventObjects[16];
extern u8 gSelectedEventObject;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
extern struct Camera gCamera;
# 510 "include/global.h" 2
# 1 "include/global.berry.h" 1






struct Berry
{
    const u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    const u8 *description1;
    const u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};



struct Berry2
{
    u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    u8 *description1;
    u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};

struct EnigmaBerry
{
    struct Berry2 berry;
    u8 itemEffect[18];
    u8 holdEffect;
    u8 holdEffectParam;
    u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[6 + 1];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
    u8 berry;
    u8 stage:7;
    u8 growthSparkle:1;
    u16 minutesUntilNextStage;
    u8 berryYield;
    u8 regrowthCount:4;
    u8 watered1:1;
    u8 watered2:1;
    u8 watered3:1;
    u8 watered4:1;
};
# 511 "include/global.h" 2
# 1 "include/global.tv.h" 1



enum
{
    TVSHOW_OFF_AIR,

    TVSHOW_FAN_CLUB_LETTER = 1,
    TVSHOW_RECENT_HAPPENINGS,
    TVSHOW_PKMN_FAN_CLUB_OPINIONS,
    TVSHOW_UNKN_SHOWTYPE_04,
    TVSHOW_NAME_RATER_SHOW,
    TVSHOW_BRAVO_TRAINER_POKEMON_PROFILE,
    TVSHOW_BRAVO_TRAINER_BATTLE_TOWER_PROFILE,
    TVSHOW_CONTEST_LIVE_UPDATES,
    TVSHOW_3_CHEERS_FOR_POKEBLOCKS,
    TVSHOW_BATTLE_UPDATE,
    TVSHOW_FAN_CLUB_SPECIAL,
    TVSHOW_CONTEST_LIVE_UPDATES_2,

    TVSHOW_POKEMON_TODAY_CAUGHT = 21,
    TVSHOW_SMART_SHOPPER,
    TVSHOW_POKEMON_TODAY_FAILED,
    TVSHOW_FISHING_ADVICE,
    TVSHOW_WORLD_OF_MASTERS,
    TVSHOW_TODAYS_RIVAL_TRAINER,
    TVSHOW_TREND_WATCHER,
    TVSHOW_TREASURE_INVESTIGATORS,
    TVSHOW_FIND_THAT_GAMER,
    TVSHOW_BREAKING_NEWS,
    TVSHOW_SECRET_BASE_VISIT,
    TVSHOW_LOTTO_WINNER,
    TVSHOW_BATTLE_SEMINAR,
    TVSHOW_TRAINER_FAN_CLUB,
    TVSHOW_CUTIES,
    TVSHOW_FRONTIER,
    TVSHOW_NUMBER_ONE,
    TVSHOW_SECRET_BASE_SECRETS,
    TVSHOW_SAFARI_FAN_CLUB,

    TVSHOW_MASS_OUTBREAK = 41,
};

typedef union
{

    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[26];
                 u8 srcTrainerId3Lo;
                 u8 srcTrainerId3Hi;
                 u8 srcTrainerId2Lo;
                 u8 srcTrainerId2Hi;
                 u8 srcTrainerIdLo;
                 u8 srcTrainerIdHi;
                 u8 trainerIdLo;
                 u8 trainerIdHi;
    } common;



    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[6];
                 u8 playerName[8];
                 u8 language;
    } fanclubLetter;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 var02;
                 u16 words[6];
                 u8 playerName[8];
                 u8 language;
    } recentHappenings;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 friendshipHighNybble:4;
                 u8 questionAsked:4;
                 u8 playerName[8];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_0F[1];
                 u8 nickname[8];
                 u16 words18[2];
                 u16 words[4];
    } fanclubOpinions;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 words[2];
                 u16 var06;
                 u8 pad_08[3];
                 u8 string_0b[12];
                 u8 language;
    } unkShow04;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 pokemonName[11];
                 u8 trainerName[11];
                 u8 random;
                 u8 random2;
                 u16 randomSpecies;
                 u8 language;
                 u8 pokemonNameLanguage;
    } nameRaterShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[2];
                 u8 pokemonNickname[11];
                 u8 contestCategory:3;
                 u8 contestRank:2;
                 u8 contestResult:2;
                 u16 move;
                 u8 playerName[8];
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 trainerName[8];
                 u16 species;
                 u8 pokemonName[8];
                 u16 defeatedSpecies;
                 u16 numFights;
                 u16 words[1];
                 u8 btLevel;
                 u8 interviewResponse;
                 bool8 wonTheChallenge;
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainerTower;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winningSpecies;
                 u8 winningTrainerName[8];
                 u8 appealFlags2;
                 u8 round1Rank;
                 u8 round2Rank;
                 u8 appealFlags1;
                 u16 move;
                 u16 species;
                 u8 playerName[8];
                 u8 category;
                 u8 language;
                 u8 winningTrainerLanguage;
    } contestLiveUpdates;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 sheen;
                 u8 flavor:3;
                 u8 unk_03_3:2;
                 u8 worstBlenderName[8];
                 u8 playerName[8];
                 u8 language;
                 u8 worstBlenderLanguage;
    } threeCheers;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 speciesOpponent;
                 u8 playerName[8];
                 u8 linkOpponentName[8];
                 u16 move;
                 u16 speciesPlayer;
                 u8 battleType;
                 u8 language;
                 u8 linkOpponentLanguage;
    } battleUpdate;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[8];
                 u8 idLo;
                 u8 idHi;
                 u8 idolName[8];
                 u16 words[1];
                 u8 score;
                 u8 language;
                 u8 idolNameLanguage;
    } fanClubSpecial;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[8];
                 u8 contestCategory;
                 u8 nickname[11];
                 u8 pokeblockState;
                 u8 language;
                 u8 pokemonNameLanguage;
    } contestLiveUpdates2;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 language2;
                 u8 nickname[11];
                 u8 ball;
                 u16 species;
                 u8 nBallsUsed;
                 u8 playerName[8];
    } pokemonToday;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 priceReduced;
                 u8 language;
                 u8 pad04[2];
                 u16 itemIds[3];
                 u16 itemAmounts[3];
                 u8 shopLocation;
                 u8 playerName[8];
    } smartshopperShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 pad03[9];
                 u16 species;
                 u16 species2;
                 u8 nBallsUsed;
                 u8 outcome;
                 u8 location;
                 u8 playerName[8];
    } pokemonTodayFailed;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nBites;
                 u8 nFails;
                 u16 species;
                 u8 language;
                 u8 pad07[12];
                 u8 playerName[8];
    } pokemonAngler;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 numPokeCaught;
                 u16 caughtPoke;
                 u16 steps;
                 u16 species;
                 u8 location;
                 u8 language;
                 u8 pad0c[7];
                 u8 playerName[8];
    } worldOfMasters;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 dexCount;
                 u8 badgeCount;
                 u8 nSilverSymbols;
                 u8 nGoldSymbols;
                 u8 location;
                 u16 battlePoints;
                 u16 mapLayoutId;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[8];
    } rivalTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 gender;
                 u8 language;
                 u8 filler_0a[9];
                 u8 playerName[8];
    } trendWatcher;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 location;
                 u8 language;
                 u16 mapLayoutId;
                 u8 filler_08[11];
                 u8 playerName[8];
    } treasureInvestigators;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 won;
                 u8 whichGame;
                 u16 nCoins;
                 u8 filler_06[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[8];
    } findThatGamer;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 lastOpponentSpecies;
                 u8 location;
                 u8 outcome;
                 u16 caughtMonBall;
                 u16 balls;
                 u16 poke1Species;
                 u16 lastUsedMove;
                 u8 language;
                 u8 filler_0f[4];
                 u8 playerName[8];
    } breakingNews;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 avgLevel;
                 u8 nDecorations;
                 u8 decorations[4];
                 u16 species;
                 u16 move;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[8];
    } secretBaseVisit;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 whichPrize;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[8];
    } lottoWinner;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 move;
                 u16 foeSpecies;
                 u16 species;
                 u16 otherMoves[3];
                 u16 betterMove;
                 u8 nOtherMoves;
                 u8 language;
                 u8 filler_12[1];
                 u8 playerName[8];
    } battleSeminar;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[8];
    } trainerFanClub;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nRibbons;
                 u8 selectedRibbon;
                 u8 nickname[11];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_12[2];
                 u8 playerName[8];
    } cuties;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winStreak;
                 u16 species1;
                 u16 species2;
                 u16 species3;
                 u16 species4;
                 u8 language;
                 u8 facility;
                 u8 filler_0e[5];
                 u8 playerName[8];
    } frontier;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 count;
                 u8 actionIdx;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[8];
    } numberOne;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 stepsInBase;
                 u8 baseOwnersName[8];
                 u32 flags;
                 u16 item;
                 u8 savedState;
                 u8 playerName[8];
                 u8 language;
                 u8 baseOwnersNameLanguage;
    } secretBaseSecrets;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nMonsCaught;
                 u8 nPkblkUsed;
                 u8 language;
                 u8 filler_05[14];
                 u8 playerName[8];
    } safariFanClub;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 var02;
                 u8 var03;
                 u16 moves[4];
                 u16 species;
                 u16 var0E;
                 u8 locationMapNum;
                 u8 locationMapGroup;
                 u8 var12;
                 u8 probability;
                 u8 level;
                 u8 var15;
                 u16 daysLeft;
                 u8 language;
    } massOutbreak;
} TVShow;

enum {
    POKENEWS_NONE,
    POKENEWS_SLATEPORT,
    POKENEWS_GAME_CORNER,
    POKENEWS_LILYCOVE,
    POKENEWS_BLENDMASTER
};

typedef struct
{
    u8 kind;
    u8 state;
    u16 days;
} PokeNews;

struct GabbyAndTyData
{
             u16 mon1;
             u16 mon2;
             u16 lastMove;
             u16 quote[1];
             u8 mapnum;
             u8 battleNum;
             u8 battleTookMoreThanOneTurn:1;
             u8 playerLostAMon:1;
             u8 playerUsedHealingItem:1;
             u8 playerThrewABall:1;
             u8 onAir:1;
             u8 valA_5:3;
             u8 battleTookMoreThanOneTurn2:1;
             u8 playerLostAMon2:1;
             u8 playerUsedHealingItem2:1;
             u8 playerThrewABall2:1;
             u8 valB_4:4;
};
# 512 "include/global.h" 2
# 1 "include/pokemon.h" 1



# 1 "include/constants/pokemon.h" 1
# 5 "include/pokemon.h" 2
# 1 "include/sprite.h" 1






struct SpriteSheet
{
    const void *data;
    u16 size;
    u16 tag;
};

struct CompressedSpriteSheet
{
    const u32 *data;
    u16 size;
    u16 tag;
};

struct SpriteFrameImage
{
    const void *data;
    u16 size;
};





struct SpritePalette
{
    const u16 *data;
    u16 tag;
};

struct CompressedSpritePalette
{
    const u32 *data;
    u16 tag;
};

struct AnimFrameCmd
{


    u32 imageValue:16;

    u32 duration:6;
    u32 hFlip:1;
    u32 vFlip:1;
};

struct AnimLoopCmd
{
    u32 type:16;
    u32 count:6;
};

struct AnimJumpCmd
{
    u32 type:16;
    u32 target:6;
};




union AnimCmd
{
    s16 type;
    struct AnimFrameCmd frame;
    struct AnimLoopCmd loop;
    struct AnimJumpCmd jump;
};
# 86 "include/sprite.h"
struct AffineAnimFrameCmd
{
    s16 xScale;
    s16 yScale;
    u8 rotation;
    u8 duration;
};

struct AffineAnimLoopCmd
{
    s16 type;
    s16 count;
};

struct AffineAnimJumpCmd
{
    s16 type;
    u16 target;
};

struct AffineAnimEndCmdAlt
{
    s16 type;
    u16 val;
};

union AffineAnimCmd
{
    s16 type;
    struct AffineAnimFrameCmd frame;
    struct AffineAnimLoopCmd loop;
    struct AffineAnimJumpCmd jump;
    struct AffineAnimEndCmdAlt end;
};
# 136 "include/sprite.h"
struct AffineAnimState
{
    u8 animNum;
    u8 animCmdIndex;
    u8 delayCounter;
    u8 loopCounter;
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

enum
{
    SUBSPRITES_OFF,
    SUBSPRITES_ON,
    SUBSPRITES_IGNORE_PRIORITY,
};

struct Subsprite
{
    s8 x;
    s8 y;
    u16 shape:2;
    u16 size:2;
    u16 tileOffset:10;
    u16 priority:2;
};

struct SubspriteTable
{
    u8 subspriteCount;
    const struct Subsprite *subsprites;
};

struct Sprite;

typedef void (*SpriteCallback)(struct Sprite *);

struct SpriteTemplate
{
    u16 tileTag;
    u16 paletteTag;
    const struct OamData *oam;
    const union AnimCmd *const *anims;
    const struct SpriteFrameImage *images;
    const union AffineAnimCmd *const *affineAnims;
    SpriteCallback callback;
};

struct Sprite
{
             struct OamData oam;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
             const struct SpriteTemplate *template;
             const struct SubspriteTable *subspriteTables;
             SpriteCallback callback;

             struct Coords16 pos1;
             struct Coords16 pos2;
             s8 centerToCornerVecX;
             s8 centerToCornerVecY;

             u8 animNum;
             u8 animCmdIndex;
             u8 animDelayCounter:6;
             bool8 animPaused:1;
             bool8 affineAnimPaused:1;
             u8 animLoopCounter;


             s16 data[8];

             bool16 inUse:1;
             bool16 coordOffsetEnabled:1;
             bool16 invisible:1;
             bool16 flags_3:1;
             bool16 flags_4:1;
             bool16 flags_5:1;
             bool16 flags_6:1;
             bool16 flags_7:1;
             bool16 hFlip:1;
             bool16 vFlip:1;
             bool16 animBeginning:1;
             bool16 affineAnimBeginning:1;
             bool16 animEnded:1;
             bool16 affineAnimEnded:1;
             bool16 usingSheet:1;
             bool16 flags_f:1;

             u16 sheetTileStart;

             u8 subspriteTableNum:6;
             u8 subspriteMode:2;

             u8 subpriority;
};

struct OamMatrix
{
    s16 a;
    s16 b;
    s16 c;
    s16 d;
};

extern const struct OamData gDummyOamData;
extern const union AnimCmd *const gDummySpriteAnimTable[];
extern const union AffineAnimCmd *const gDummySpriteAffineAnimTable[];
extern const struct SpriteTemplate gDummySpriteTemplate;

extern u8 gReservedSpritePaletteCount;
extern struct Sprite gSprites[];
extern u8 gOamLimit;
extern u16 gReservedSpriteTileCount;
extern s16 gSpriteCoordOffsetX;
extern s16 gSpriteCoordOffsetY;
extern struct OamMatrix gOamMatrices[];
extern bool8 gAffineAnimsDisabled;

void ResetSpriteData(void);
void AnimateSprites(void);
void BuildOamBuffer(void);
u8 CreateSprite(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateSpriteAtEnd(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateInvisibleSprite(void (*callback)(struct Sprite *));
u8 CreateSpriteAndAnimate(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
void DestroySprite(struct Sprite *sprite);
void ResetOamRange(u8 a, u8 b);
void LoadOam(void);
void SetOamMatrix(u8 matrixNum, u16 a, u16 b, u16 c, u16 d);
void CalcCenterToCornerVec(struct Sprite *sprite, u8 shape, u8 size, u8 affineMode);
void SpriteCallbackDummy(struct Sprite *sprite);
void ProcessSpriteCopyRequests(void);
void RequestSpriteCopy(const u8 *src, u8 *dest, u16 size);
void FreeSpriteTiles(struct Sprite *sprite);
void FreeSpritePalette(struct Sprite *sprite);
void FreeSpriteOamMatrix(struct Sprite *sprite);
void DestroySpriteAndFreeResources(struct Sprite *sprite);
void sub_800142C(u32 a1, u32 a2, u16 *a3, u16 a4, u32 a5);
void AnimateSprite(struct Sprite *sprite);
void sub_8007E18(struct Sprite* sprite, s16 a2, s16 a3);
void StartSpriteAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SeekSpriteAnim(struct Sprite *sprite, u8 animCmdIndex);
void StartSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SetSpriteSheetFrameTileNum(struct Sprite *sprite);
u8 AllocOamMatrix(void);
void FreeOamMatrix(u8 matrixNum);
void InitSpriteAffineAnim(struct Sprite *sprite);
void SetOamMatrixRotationScaling(u8 matrixNum, s16 xScale, s16 yScale, u16 rotation);
u16 LoadSpriteSheet(const struct SpriteSheet *sheet);
void LoadSpriteSheets(const struct SpriteSheet *sheets);
u16 AllocTilesForSpriteSheet(struct SpriteSheet *sheet);
void AllocTilesForSpriteSheets(struct SpriteSheet *sheets);
void LoadTilesForSpriteSheet(const struct SpriteSheet *sheet);
void LoadTilesForSpriteSheets(struct SpriteSheet *sheets);
void FreeSpriteTilesByTag(u16 tag);
void FreeSpriteTileRanges(void);
u16 GetSpriteTileStartByTag(u16 tag);
u16 GetSpriteTileTagByTileStart(u16 start);
void RequestSpriteSheetCopy(const struct SpriteSheet *sheet);
u16 LoadSpriteSheetDeferred(const struct SpriteSheet *sheet);
void FreeAllSpritePalettes(void);
u8 LoadSpritePalette(const struct SpritePalette *palette);
void LoadSpritePalettes(const struct SpritePalette *palettes);
u8 AllocSpritePalette(u16 tag);
u8 IndexOfSpritePaletteTag(u16 tag);
u16 GetSpritePaletteTagByPaletteNum(u8 paletteNum);
void FreeSpritePaletteByTag(u16 tag);
void SetSubspriteTables(struct Sprite *sprite, const struct SubspriteTable *subspriteTables);
bool8 AddSpriteToOamBuffer(struct Sprite *object, u8 *oamIndex);
bool8 AddSubspritesToOamBuffer(struct Sprite *sprite, struct OamData *destOam, u8 *oamIndex);
void CopyToSprites(u8 *src);
void CopyFromSprites(u8 *dest);
u8 SpriteTileAllocBitmapOp(u16 bit, u8 op);
void ClearSpriteCopyRequests(void);
void ResetAffineAnimData(void);
# 6 "include/pokemon.h" 2
# 137 "include/pokemon.h"
struct PokemonSubstruct0
{
    u16 species;
    u16 heldItem;
    u32 experience;
    u8 ppBonuses;
    u8 friendship;
};

struct PokemonSubstruct1
{
    u16 moves[4];
    u8 pp[4];
};

struct PokemonSubstruct2
{
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
};

struct PokemonSubstruct3
{
            u8 pokerus;
            u8 metLocation;

            u16 metLevel:7;
            u16 metGame:4;
            u16 pokeball:4;
            u16 otGender:1;

            u32 hpIV:5;
            u32 attackIV:5;
            u32 defenseIV:5;
            u32 speedIV:5;
            u32 spAttackIV:5;
            u32 spDefenseIV:5;
            u32 isEgg:1;
            u32 abilityNum:1;

            u32 coolRibbon:3;
            u32 beautyRibbon:3;
            u32 cuteRibbon:3;
            u32 smartRibbon:3;
            u32 toughRibbon:3;
            u32 championRibbon:1;
            u32 winningRibbon:1;
            u32 victoryRibbon:1;
            u32 artistRibbon:1;
            u32 effortRibbon:1;
            u32 giftRibbon1:1;
            u32 giftRibbon2:1;
            u32 giftRibbon3:1;
            u32 giftRibbon4:1;
            u32 giftRibbon5:1;
            u32 giftRibbon6:1;
            u32 giftRibbon7:1;
            u32 fatefulEncounter:4;
            u32 obedient:1;
};

union PokemonSubstruct
{
    struct PokemonSubstruct0 type0;
    struct PokemonSubstruct1 type1;
    struct PokemonSubstruct2 type2;
    struct PokemonSubstruct3 type3;
    u16 raw[6];
};

struct BoxPokemon
{
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg:1;
    u8 hasSpecies:1;
    u8 isEgg:1;
    u8 unused:5;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;

    union
    {
        u32 raw[12];
        union PokemonSubstruct substructs[4];
    } secure;
};

struct Pokemon
{
    struct BoxPokemon box;
    u32 status;
    u8 level;
    u8 mail;
    u16 hp;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
};

struct Unknown_806F160_Struct
{
    u8 field_0_0:4;
    u8 field_0_1:4;
    u8 field_1;
    u8 magic;
    u8 field_3_0:4;
    u8 field_3_1:4;
    void *bytes;
    u8 **byteArrays;
    struct SpriteTemplate *templates;
    struct SpriteFrameImage *frameImages;
};

struct BattlePokemon
{
             u16 species;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
             u16 moves[4];
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 isEgg:1;
             u32 abilityNum:1;
             s8 statStages[8];
             u8 ability;
             u8 type1;
             u8 type2;
             u8 unknown;
             u8 pp[4];
             u16 hp;
             u8 level;
             u8 friendship;
             u16 maxHP;
             u16 item;
             u8 nickname[10 + 1];
             u8 ppBonuses;
             u8 otName[7 + 1];
             u32 experience;
             u32 personality;
             u32 status1;
             u32 status2;
             u32 otId;
};

struct BaseStats
{
            u8 baseHP;
            u8 baseAttack;
            u8 baseDefense;
            u8 baseSpeed;
            u8 baseSpAttack;
            u8 baseSpDefense;
            u8 type1;
            u8 type2;
            u8 catchRate;
            u8 expYield;
            u16 evYield_HP:2;
            u16 evYield_Attack:2;
            u16 evYield_Defense:2;
            u16 evYield_Speed:2;
            u16 evYield_SpAttack:2;
            u16 evYield_SpDefense:2;
            u16 item1;
            u16 item2;
            u8 genderRatio;
            u8 eggCycles;
            u8 friendship;
            u8 growthRate;
            u8 eggGroup1;
            u8 eggGroup2;
            u8 abilities[2];
            u8 safariZoneFleeRate;
            u8 bodyColor : 7;
            u8 noFlip : 1;
};

struct BattleMove
{
    u8 effect;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;
    u8 target;
    s8 priority;
    u8 flags;
};
# 358 "include/pokemon.h"
struct SpindaSpot
{
    u8 x, y;
    u16 image[16];
};

struct __attribute__((packed)) LevelUpMove
{
    u16 move:9;
    u16 level:7;
};

enum
{
    GROWTH_MEDIUM_FAST,
    GROWTH_ERRATIC,
    GROWTH_FLUCTUATING,
    GROWTH_MEDIUM_SLOW,
    GROWTH_FAST,
    GROWTH_SLOW
};

enum
{
    BODY_COLOR_RED,
    BODY_COLOR_BLUE,
    BODY_COLOR_YELLOW,
    BODY_COLOR_GREEN,
    BODY_COLOR_BLACK,
    BODY_COLOR_BROWN,
    BODY_COLOR_PURPLE,
    BODY_COLOR_GRAY,
    BODY_COLOR_WHITE,
    BODY_COLOR_PINK
};
# 410 "include/pokemon.h"
struct Evolution
{
    u16 method;
    u16 param;
    u16 targetSpecies;
};



extern u8 gPlayerPartyCount;
extern struct Pokemon gPlayerParty[6];
extern u8 gEnemyPartyCount;
extern struct Pokemon gEnemyParty[6];
extern struct SpriteTemplate gMultiuseSpriteTemplate;

extern const struct BattleMove gBattleMoves[];
extern const u8 gFacilityClassToPicIndex[];
extern const u8 gFacilityClassToTrainerClass[];
extern const struct BaseStats gBaseStats[];
extern const u8 *const gItemEffectTable[];
extern const struct Evolution gEvolutionTable[][5];
extern const u32 gExperienceTables[][100 + 1];
extern const u16 *const gLevelUpLearnsets[];
extern const u8 gPPUpGetMask[];
extern const u8 gPPUpSetMask[];
extern const u8 gPPUpAddMask[];
extern const u8 gStatStageRatios[][2];
extern const u16 gLinkPlayerFacilityClasses[];
extern const struct SpriteTemplate gUnknown_08329D98[];
extern const s8 gNatureStatTable[][5];

void ZeroBoxMonData(struct BoxPokemon *boxMon);
void ZeroMonData(struct Pokemon *mon);
void ZeroPlayerPartyMons(void);
void ZeroEnemyPartyMons(void);
void CreateMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateBoxMon(struct BoxPokemon *boxMon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 nature);
void CreateMonWithGenderNatureLetter(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 gender, u8 nature, u8 unownLetter);
void CreateMaleMon(struct Pokemon *mon, u16 species, u8 level);
void CreateMonWithIVsPersonality(struct Pokemon *mon, u16 species, u8 level, u32 ivs, u32 personality);
void CreateMonWithIVsOTID(struct Pokemon *mon, u16 species, u8 level, u8 *ivs, u32 otId);
void CreateMonWithEVSpread(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 evSpread);
void CreateBattleTowerMon(struct Pokemon *mon, struct BattleTowerPokemon *src);
void CreateBattleTowerMon2(struct Pokemon *mon, struct BattleTowerPokemon *src, bool8 lvl50);
void CreateApprenticeMon(struct Pokemon *mon, const struct Apprentice *src, u8 monId);
void CreateMonWithEVSpreadNatureOTID(struct Pokemon *mon, u16 species, u8 level, u8 nature, u8 fixedIV, u8 evSpread, u32 otId);
void sub_80686FC(struct Pokemon *mon, struct BattleTowerPokemon *dest);
void CreateObedientMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
bool8 sub_80688F8(u8 caseId, u8 battlerId);
void SetDeoxysStats(void);
u16 sub_8068B48(void);
u16 sub_8068BB0(void);
void CreateObedientEnemyMon(void);
void CalculateMonStats(struct Pokemon *mon);
void BoxMonToMon(const struct BoxPokemon *src, struct Pokemon *dest);
u8 GetLevelFromMonExp(struct Pokemon *mon);
u8 GetLevelFromBoxMonExp(struct BoxPokemon *boxMon);
u16 GiveMoveToMon(struct Pokemon *mon, u16 move);
u16 GiveMoveToBoxMon(struct BoxPokemon *boxMon, u16 move);
u16 GiveMoveToBattleMon(struct BattlePokemon *mon, u16 move);
void SetMonMoveSlot(struct Pokemon *mon, u16 move, u8 slot);
void SetBattleMonMoveSlot(struct BattlePokemon *mon, u16 move, u8 slot);
void GiveMonInitialMoveset(struct Pokemon *mon);
void GiveBoxMonInitialMoveset(struct BoxPokemon *boxMon);
u16 MonTryLearningNewMove(struct Pokemon *mon, bool8 firstMove);
void DeleteFirstMoveAndGiveMoveToMon(struct Pokemon *mon, u16 move);
void DeleteFirstMoveAndGiveMoveToBoxMon(struct BoxPokemon *boxMon, u16 move);
s32 CalculateBaseDamage(struct BattlePokemon *attacker, struct BattlePokemon *defender, u32 move, u16 sideStatus, u16 powerOverride, u8 typeOverride, u8 bankAtk, u8 bankDef);

u8 CountAliveMonsInBattle(u8 caseId);




u8 GetDefaultMoveTarget(u8 battlerId);
u8 GetMonGender(struct Pokemon *mon);
u8 GetBoxMonGender(struct BoxPokemon *boxMon);
u8 GetGenderFromSpeciesAndPersonality(u16 species, u32 personality);
void SetMultiuseSpriteTemplateToPokemon(u16 speciesTag, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerBack(u16 trainerSpriteId, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerFront(u16 arg0, u8 battlerPosition);





u32 GetMonData();
u32 GetBoxMonData();

void SetMonData(struct Pokemon *mon, s32 field, const void *dataArg);
void SetBoxMonData(struct BoxPokemon *boxMon, s32 field, const void *dataArg);
void CopyMon(void *dest, void *src, size_t size);
u8 GiveMonToPlayer(struct Pokemon *mon);
u8 SendMonToPC(struct Pokemon* mon);
u8 CalculatePlayerPartyCount(void);
u8 CalculateEnemyPartyCount(void);
u8 GetMonsStateToDoubles(void);
u8 GetMonsStateToDoubles_2(void);
u8 GetAbilityBySpecies(u16 species, bool8 abilityNum);
u8 GetMonAbility(struct Pokemon *mon);
void CreateSecretBaseEnemyParty(struct SecretBase *secretBaseRecord);
u8 GetSecretBaseTrainerPicIndex(void);
u8 GetSecretBaseTrainerClass(void);
bool8 IsPlayerPartyAndPokemonStorageFull(void);
bool8 IsPokemonStorageFull(void);
void GetSpeciesName(u8 *name, u16 species);
u8 CalculatePPWithBonus(u16 move, u8 ppBonuses, u8 moveIndex);
void RemoveMonPPBonus(struct Pokemon *mon, u8 moveIndex);
void RemoveBattleMonPPBonus(struct BattlePokemon *mon, u8 moveIndex);
void CopyPlayerPartyMonToBattleData(u8 battlerId, u8 partyIndex);
bool8 ExecuteTableBasedItemEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
bool8 PokemonUseItemEffects(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex, u8 e);
bool8 HealStatusConditions(struct Pokemon *mon, u32 battlePartyId, u32 healMask, u8 battlerId);
u8 GetItemEffectParamOffset(u16 itemId, u8 effectByte, u8 effectBit);
u8 *sub_806CF78(u16 itemId);
u8 GetNature(struct Pokemon *mon);
u8 GetNatureFromPersonality(u32 personality);
u16 GetEvolutionTargetSpecies(struct Pokemon *mon, u8 type, u16 evolutionItem);
u16 HoennPokedexNumToSpecies(u16 hoennNum);
u16 NationalPokedexNumToSpecies(u16 nationalNum);
u16 NationalToHoennOrder(u16 nationalNum);
u16 SpeciesToNationalPokedexNum(u16 species);
u16 SpeciesToHoennPokedexNum(u16 species);
u16 HoennToNationalOrder(u16 hoennNum);
u16 SpeciesToCryId(u16 species);
void sub_806D544(u16 species, u32 personality, u8 *dest);
void DrawSpindaSpots(u16 species, u32 personality, u8 *dest, u8 a4);
void EvolutionRenameMon(struct Pokemon *mon, u16 oldSpecies, u16 newSpecies);
bool8 sub_806D7EC(void);
bool16 GetLinkTrainerFlankId(u8 id);
s32 GetBattlerMultiplayerId(u16 a1);
u8 GetTrainerEncounterMusicId(u16 trainerOpponentId);
u16 ModifyStatByNature(u8 nature, u16 n, u8 statIndex);
void AdjustFriendship(struct Pokemon *mon, u8 event);
void MonGainEVs(struct Pokemon *mon, u16 defeatedSpecies);
u16 GetMonEVCount(struct Pokemon *mon);
void RandomlyGivePartyPokerus(struct Pokemon *party);
u8 CheckPartyPokerus(struct Pokemon *party, u8 selection);
u8 CheckPartyHasHadPokerus(struct Pokemon *party, u8 selection);
void UpdatePartyPokerusTime(u16 days);
void PartySpreadPokerus(struct Pokemon *party);
bool8 TryIncrementMonLevel(struct Pokemon *mon);
u32 CanMonLearnTMHM(struct Pokemon *mon, u8 tm);
u32 CanSpeciesLearnTMHM(u16 species, u8 tm);
u8 GetMoveRelearnerMoves(struct Pokemon *mon, u16 *moves);
u8 GetLevelUpMovesBySpecies(u16 species, u16 *moves);
u8 GetNumberOfRelearnableMoves(struct Pokemon *mon);
u16 SpeciesToPokedexNum(u16 species);
bool32 IsSpeciesInHoennDex(u16 species);
void ClearBattleMonForms(void);
u16 GetBattleBGM(void);
void PlayBattleBGM(void);
void PlayMapChosenOrBattleBGM(u16 songId);
void sub_806E694(u16 songId);
const u32 *GetMonFrontSpritePal(struct Pokemon *mon);
const u32 *GetMonSpritePalFromSpeciesAndPersonality(u16 species, u32 otId, u32 personality);
const struct CompressedSpritePalette *GetMonSpritePalStruct(struct Pokemon *mon);
const struct CompressedSpritePalette *GetMonSpritePalStructFromOtIdPersonality(u16 species, u32 otId , u32 personality);
bool32 IsHMMove2(u16 move);
bool8 IsMonSpriteNotFlipped(u16 species);
s8 GetMonFlavorRelation(struct Pokemon *mon, u8 flavor);
s8 GetFlavorRelationByPersonality(u32 personality, u8 flavor);
bool8 IsTradedMon(struct Pokemon *mon);
bool8 IsOtherTrainer(u32 otId, u8 *otName);
void MonRestorePP(struct Pokemon *mon);
void BoxMonRestorePP(struct BoxPokemon *boxMon);
void SetMonPreventsSwitchingString(void);
void SetWildMonHeldItem(void);
bool8 IsMonShiny(struct Pokemon *mon);
bool8 IsShinyOtIdPersonality(u32 otId, u32 personality);
const u8 *GetTrainerPartnerName(void);
void BattleAnimateFrontSprite(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void DoMonFrontSpriteAnimation(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void PokemonSummaryDoMonAnimation(struct Sprite* sprite, u16 species, bool8 oneFrame);
void StopPokemonAnimationDelayTask(void);
void BattleAnimateBackSprite(struct Sprite* sprite, u16 species);
u8 sub_806EF08(u8 arg0);
u8 sub_806EF84(u8 arg0, u8 arg1);
u16 sub_806EFF0(u16 arg0);
u16 FacilityClassToPicIndex(u16 facilityClass);
u16 PlayerGenderToFrontTrainerPicId(u8 playerGender);
void HandleSetPokedexFlag(u16 nationalNum, u8 caseId, u32 personality);
const u8 *GetTrainerClassNameFromId(u16 trainerId);
const u8 *GetTrainerNameFromId(u16 trainerId);
bool8 HasTwoFramesAnimation(u16 species);
bool8 sub_806F104(void);
struct Unknown_806F160_Struct *sub_806F2AC(u8 id, u8 arg1);
void sub_806F47C(u8 id);
u8 *sub_806F4F8(u8 id, u8 arg1);
# 513 "include/global.h" 2

struct WarpData
{
    s8 mapGroup;
    s8 mapNum;
    s8 warpId;
    s16 x, y;
};

struct ItemSlot
{
    u16 itemId;
    u16 quantity;
};

struct Pokeblock
{
    u8 color;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 feel;
};

struct Roamer
{
             u32 ivs;
             u32 personality;
             u16 species;
             u16 hp;
             u8 level;
             u8 status;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             bool8 active;
             u8 filler[0x8];
};

struct RamScriptData
{
    u8 magic;
    u8 mapGroup;
    u8 mapNum;
    u8 objectId;
    u8 script[995];
};

struct RamScript
{
    u32 checksum;
    struct RamScriptData data;
};

struct EasyChatPair
{
    u16 unk0_0:7;
    u16 unk0_7:7;
    u16 unk1_6:1;
    u16 unk2;
    u16 words[2];
};

struct MailStruct
{
             u16 words[9];
             u8 playerName[7 + 1];
             u8 trainerId[4];
             u16 species;
             u16 itemId;
};

struct MauvilleManCommon
{
    u8 id;
};

struct MauvilleManBard
{
             u8 id;
             u16 songLyrics[6];
             u16 temporaryLyrics[6];
             u8 playerName[8];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
             u8 language;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
    u8 language[4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[8];
             u8 language;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
    u8 language;
};

struct MauvilleOldManTrader
{
    u8 id;
    u8 decorIds[4];
    u8 playerNames[4][11];
    u8 alreadyTraded;
    u8 language[4];
};

typedef union OldMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManGiddy giddy;
    struct MauvilleManHipster hipster;
    struct MauvilleOldManTrader trader;
    struct MauvilleManStoryteller storyteller;
    u8 filler[0x40];
} OldMan;

struct RecordMixing_UnknownStructSub
{
    u32 unk0;
    u8 data[0x34];

};

struct RecordMixing_UnknownStruct
{
    struct RecordMixing_UnknownStructSub data[2];
    u32 unk70;
    u16 unk74[0x2];
};



struct LinkBattleRecord
{
    u8 name[7 + 1];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct LinkBattleRecords
{
    struct LinkBattleRecord entries[5];
    u8 languages[5];
};

struct RecordMixingGiftData
{
    u8 unk0;
    u8 quantity;
    u16 itemId;
    u8 filler4[8];
};

struct RecordMixingGift
{
    int checksum;
    struct RecordMixingGiftData data;
};

struct ContestWinner
{
    u32 personality;
    u32 trainerId;
    u16 species;
    u8 contestCategory;
    u8 monName[10 + 1];
    u8 trainerName[7 + 1];
    u8 contestRank;
};

struct DayCareMail
{
    struct MailStruct message;
    u8 OT_name[7 + 1];
    u8 monName[10 + 1];
    u8 gameLanguage:4;
    u8 monLanguage:4;
};

struct DaycareMon
{
    struct BoxPokemon mon;
    struct DayCareMail mail;
    u32 steps;
};

struct DayCare
{
    struct DaycareMon mons[2];
    u32 offspringPersonality;
    u8 stepCounter;
};

struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    bool16 holdsItem[2];
};

struct LilycoveLadyQuiz
{
              u8 id;
              u8 state;
              u16 question[9];
              u16 correctAnswer;
              u16 playerAnswer;
              u8 playerName[7 + 1];
              u16 playerTrainerId[4];
              u16 prize;
              bool8 waitingForChallenger;
              u8 questionId;
              u8 prevQuestionId;
              u8 language;
};

struct LilycoveLadyFavor
{
              u8 id;
              u8 state;
              bool8 likedItem;
              u8 numItemsGiven;
              u8 playerName[7 + 1];
              u8 favorId;
              u16 itemId;
              u16 bestItem;
              u8 language;
};

struct LilycoveLadyContest
{
              u8 id;
              bool8 givenPokeblock;
              u8 numGoodPokeblocksGiven;
              u8 numOtherPokeblocksGiven;
              u8 playerName[7 + 1];
              u8 maxSheen;
              u8 category;
              u8 language;
};

typedef union
{
    struct LilycoveLadyQuiz quiz;
    struct LilycoveLadyFavor favor;
    struct LilycoveLadyContest contest;
    u8 id;
    u8 pad[0x40];
} LilycoveLady;

struct WaldaPhrase
{
    u16 colors[2];
    u8 text[16];
    u8 iconId;
    u8 patternId;
    bool8 patternUnlocked;
};

struct TrainerNameRecord
{
    u32 trainerId;
    u8 trainerName[7 + 1];
};

struct SaveTrainerHill
{
               u32 timer;
               u32 bestTime;
               u8 field_3D6C;
               u8 unused;
               u16 field_3D6E_0a:1;
               u16 field_3D6E_0b:1;
               u16 field_3D6E_0c:1;
               u16 hasLost:1;
               u16 maybeECardScanDuringChallenge:1;
               u16 field_3D6E_0f:1;
               u16 tag:2;
};

struct MysteryEventStruct
{
    u8 unk_0_0:2;
    u8 unk_0_2:3;
    u8 unk_0_5:3;
    u8 unk_1;
};

 struct WonderNews
{
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[40];
    u8 unk_2C[10][40];
};

 struct WonderNewsSaveStruct
{
    u32 crc;
    struct WonderNews data;
};

 struct WonderCard
{
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u8 unk_08_0:2;
    u8 unk_08_2:4;
    u8 unk_08_6:2;
    u8 unk_09;
    u8 unk_0A[40];
    u8 unk_32[40];
    u8 unk_5A[4][40];
    u8 unk_FA[40];
    u8 unk_122[40];
};

 struct WonderCardSaveStruct
{
    u32 crc;
    struct WonderCard data;
};

 struct MEventBuffer_3430_Sub
{
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08[2][7];
};

 struct MEventBuffer_3430
{
    u32 crc;
    struct MEventBuffer_3430_Sub data;
};

 struct MEventBuffers
{
                     struct WonderNewsSaveStruct wonderNews;
                     struct WonderCardSaveStruct wonderCard;
                     struct MEventBuffer_3430 buffer_310;
                     u16 unk_338[4];
                     struct MysteryEventStruct unk_340;
                     u32 unk_344[2][5];
};

struct SaveBlock1
{
             struct Coords16 pos;
             struct WarpData location;
             struct WarpData continueGameWarp;
             struct WarpData dynamicWarp;
             struct WarpData lastHealLocation;
             struct WarpData escapeWarp;
             u16 savedMusic;
             u8 weather;
             u8 weatherCycleStage;
             u8 flashLevel;
             u16 mapLayoutId;
             u16 mapView[0x100];
              u8 playerPartyCount;
              struct Pokemon playerParty[6];
              u32 money;
              u16 coins;
              u16 registeredItem;
              struct ItemSlot pcItems[50];
              struct ItemSlot bagPocket_Items[30];
              struct ItemSlot bagPocket_KeyItems[30];
              struct ItemSlot bagPocket_PokeBalls[16];
              struct ItemSlot bagPocket_TMHM[64];
              struct ItemSlot bagPocket_Berries[46];
              struct Pokeblock pokeblocks[40];
              u8 seen1[((412 / 8) + ((412 % 8) ? 1 : 0))];
              u16 berryBlenderRecords[3];
              u8 field_9C2[6];
              u16 trainerRematchStepCounter;
              u8 trainerRematches[100];
              struct EventObject eventObjects[16];
              struct EventObjectTemplate eventObjectTemplates[64];
               u8 flags[300];
               u16 vars[256];
               u32 gameStats[64];
               struct BerryTree berryTrees[128];
               struct SecretBase secretBases[20];
               u8 playerRoomDecor[12];
               u8 playerRoomDecorPos[12];
               u8 decorDesk[10];
               u8 decorChair[10];
               u8 decorPlant[10];
               u8 decorOrnament[30];
               u8 decorMat[30];
               u8 decorPoster[10];
               u8 decorDoll[40];
               u8 decorCushion[10];
               u8 padding_27CA[2];
               TVShow tvShows[25];
               PokeNews pokeNews[16];
               u16 outbreakPokemonSpecies;
               u8 outbreakLocationMapNum;
               u8 outbreakLocationMapGroup;
               u8 outbreakPokemonLevel;
               u8 outbreakUnk1;
               u16 outbreakUnk2;
               u16 outbreakPokemonMoves[4];
               u8 outbreakUnk4;
               u8 outbreakPokemonProbability;
               u16 outbreakDaysLeft;
               struct GabbyAndTyData gabbyAndTyData;
               u16 easyChatProfile[6];
               u16 easyChatBattleStart[6];
               u16 easyChatBattleWon[6];
               u16 easyChatBattleLost[6];
               struct MailStruct mail[16];
               u8 additionalPhrases[8];
               OldMan oldMan;
               struct EasyChatPair easyChatPairs[5];
               struct ContestWinner contestWinners[13];
               struct DayCare daycare;
               struct LinkBattleRecords linkBattleRecords;
               u8 giftRibbons[52];
               struct Roamer roamer;
               struct EnigmaBerry enigmaBerry;
               struct MEventBuffers unk_322C;
               u8 field_3598[0x180];
               u32 trainerHillTimes[4];
               struct RamScript ramScript;
               struct RecordMixingGift recordMixingGift;
               u8 seen2[((412 / 8) + ((412 % 8) ? 1 : 0))];
               LilycoveLady lilycoveLady;
               struct TrainerNameRecord trainerNameRecords[20];
               u8 unk3C88[10][21];
               u8 filler3D5A[0xA];
               struct SaveTrainerHill trainerHill;
               struct WaldaPhrase waldaPhrase;

};

extern struct SaveBlock1* gSaveBlock1Ptr;

struct MapPosition
{
    s16 x;
    s16 y;
    s8 height;
};

struct TradeRoomPlayer
{
    u8 playerId;
    u8 isLocalPlayer;
    u8 c;
    u8 facing;
    struct MapPosition pos;
    u16 field_C;
};
# 2 "src/contest_painting_effects.c" 2
# 1 "include/contest_painting_effects.h" 1



struct Unk030061A0
{
    u8 var_0;
    u8 pad1[3];
    u16 (*var_4)[][32];
    u16 *var_8;
    u8 pad0C[4];
    u32 var_10;
    u16 var_14;
    u16 var_16;
    u8 var_18;
    u8 var_19;
    u8 var_1A;
    u8 var_1B;
    u8 var_1C;
    u8 var_1D;
    u8 var_1E;
    u8 var_1F;
};

void sub_8124F2C(struct Unk030061A0 *);
void sub_81261A4(struct Unk030061A0 *);
void sub_8126058(struct Unk030061A0 *);
# 3 "src/contest_painting_effects.c" 2
# 1 "include/contest_painting.h" 1



enum
{
    CONTESTRESULT_COOL = 9,
    CONTESTRESULT_BEAUTY = 13,
    CONTESTRESULT_CUTE = 2,
    CONTESTRESULT_SMART = 36,
    CONTESTRESULT_TOUGH = 6,
};

void sub_812FDA8(int);
void CB2_ContestPainting(void);
# 4 "src/contest_painting_effects.c" 2
# 1 "include/constants/rgb.h" 1
# 5 "src/contest_painting_effects.c" 2

struct Unk8125954
{
    u8 unk0;
    u8 unk1;
    u16 unk2;
};


u8 gUnknown_03006164;
u16 (*gUnknown_03006168)[][32];
u8 gUnknown_0300616C;
u8 gUnknown_03006170;
u8 gUnknown_03006174;
u8 gUnknown_03006178;
u8 gUnknown_0300617C;
u8 gUnknown_03006180;
u16 *gUnknown_03006184;
u16 gUnknown_03006188;

static void sub_8125230(void);
static void sub_81252E8(void);
static void sub_81254E0(void);
static void sub_8125630(void);
static void sub_8125448(void);
static void sub_81257F8(void);
static void sub_81258A0(void);
static void sub_81256C8(void);
static void sub_8125250(void);
static void sub_81253A4(u8);
static void sub_81250B8(u8);
static void sub_8125170(u8);
static void sub_8125954(u16);
static u16 ConvertColorToGrayscale(u16*);
static u16 sub_8125E18(u16*, u16*, u16*);
static u16 ConvertCoolColor(u16*, u8);
static u16 ConvertToBlackOrWhite(u16*);
static u16 sub_8125C98(u16*, u16*);
static u16 InvertColor(u16*);
static u16 sub_8125F38(u16*, u16*, u16*);
static u16 sub_8125CF4(u16*, u16*);
static u16 GetCoolColorFromPersonality(u8);
static void sub_81263A4(bool8);
static void sub_8126270(void);
static void sub_8126714(void);
static void sub_8126370(void);
static void sub_8126664(void);
static void sub_8126334(void);
static void sub_81265B4(void);
static void sub_8126318(void);
static void sub_81264FC(void);
static u16 sub_81267C4(u16*);
static u16 sub_8126908(u16*);
static u16 sub_812693C(u16*);
static u16 sub_8126838(u16*);

extern const u8 gUnknown_085A1F94[][3];

void sub_8124F2C(struct Unk030061A0 *info)
{
    gUnknown_03006168 = info->var_4;
    gUnknown_0300617C = info->var_1F;
    gUnknown_03006164 = info->var_19;
    gUnknown_03006178 = info->var_1A;
    gUnknown_03006174 = info->var_1B;
    gUnknown_0300616C = info->var_1C;
    gUnknown_03006180 = info->var_1D;
    gUnknown_03006170 = info->var_1E;
    switch (info->var_0)
    {
    case 2:
        sub_8125230();
        break;
    case 8:
        sub_81252E8();
        break;
    case 9:
        sub_81254E0();
        sub_81253A4(gUnknown_0300617C);
        break;
    case 10:
        sub_81254E0();
        sub_8125630();
        sub_8125448();
    case 31:
        sub_8125630();
        break;
    case 11:
        sub_81254E0();
        sub_81257F8();
        sub_81257F8();
        sub_81258A0();
        sub_8125448();
        break;
    case 13:
        sub_81256C8();
        break;
    case 30:
        sub_81254E0();
        break;
    case 32:
        sub_81257F8();
        break;
    case 33:
        sub_81258A0();
        break;
    case 6:
        sub_8125250();
        sub_81250B8(3);
        break;
    case 36:
        sub_81254E0();
        sub_81257F8();
        sub_81258A0();
        sub_8125448();
        sub_81252E8();
        sub_81252E8();
        sub_81250B8(2);
        sub_8125170(4);
        break;
    }
}

static void sub_81250B8(u8 a0)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var2 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* pal = &var2[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, pal++)
        {
            if (!(0x8000 & *pal))
            {
                u8 val = (31 & *pal);
                val += a0;
                if (val > 31)
                    val = 31;

                *pal = (((val) << 10) | ((val) << 5) | (val));
            }
        }
    }
}

static void sub_8125170(u8 a0)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var2 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* pal = &var2[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, pal++)
        {
            if (!(0x8000 & *pal))
            {
                u8 val = (31 & *pal);
                if (val > 31 - a0)
                    val = 31 - (a0 >> 1);

                *pal = (((val) << 10) | ((val) << 5) | (val));
            }
        }
    }
}

static void sub_8125230(void)
{
    u32 i;
    for (i = 0; i < 3200; i++)
        sub_8125954(i);
}

static void sub_8125250(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var2 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* color = &var2[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, color++)
        {
            if (!(0x8000 & *color))
            {
                *color = ConvertColorToGrayscale(color);
            }
        }
    }
}

static void sub_81252E8(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_03006174; i++)
    {
        u16* var0 = &(*gUnknown_03006168)[0][gUnknown_03006178 * gUnknown_03006180];
        u16* palette = &var0[gUnknown_03006164 + i];
        u16 color = *palette;

        j = 1;
        palette += gUnknown_03006180;
        while (j < gUnknown_0300616C - 1)
        {
            if (!(0x8000 & *palette))
            {
                *palette = sub_8125E18(&color, palette, palette + gUnknown_03006180);
                color = *palette;
            }

            j++;
            palette += gUnknown_03006180;
        }
    }
}

static void sub_81253A4(u8 arg0)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var0 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* color = &var0[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, color++)
        {
            if (!(0x8000 & *color))
            {
                *color = ConvertCoolColor(color, arg0);
            }
        }
    }
}

static void sub_8125448(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var0 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* color = &var0[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, color++)
        {
            if (!(0x8000 & *color))
            {
                *color = ConvertToBlackOrWhite(color);
            }
        }
    }
}

static void sub_81254E0(void)
{
    u8 i, j;
    u16 *palette;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16 *var0 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        palette = &var0[gUnknown_03006164];
        *palette = sub_8125C98(palette, palette + 1);
        for (j = 1, palette = palette + 1; j < gUnknown_03006174 - 1; j++, palette++)
        {
            *palette = sub_8125C98(palette, palette + 1);
            *palette = sub_8125C98(palette, palette - 1);
        }

        *palette = sub_8125C98(palette, palette - 1);
    }

    for (j = 0; j < gUnknown_03006174; j++)
    {
        u16 *var0 = &(*gUnknown_03006168)[0][gUnknown_03006178 * gUnknown_03006180];
        palette = &var0[gUnknown_03006164 + j];
        *palette = sub_8125C98(palette, palette + gUnknown_03006180);
        for (i = 1, palette = palette + gUnknown_03006180; i < gUnknown_0300616C - 1; i++, palette += gUnknown_03006180)
        {
            *palette = sub_8125C98(palette, palette + gUnknown_03006180);
            *palette = sub_8125C98(palette, palette - gUnknown_03006180);
        }

        *palette = sub_8125C98(palette, palette - gUnknown_03006180);
    }
}

static void sub_8125630(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16 *var0 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16 *color = &var0[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, color++)
        {
            if (!(0x8000 & *color))
            {
                *color = InvertColor(color);
            }
        }
    }
}

static void sub_81256C8(void)
{
    u8 i, j;
    u16 *palette;
    u16 color;

    palette = (*gUnknown_03006168)[0];
    for (i = 0; i < 64; i++)
    {
        for (j = 0; j < 64; j++, palette++)
        {
            if (!(0x8000 & *palette))
            {
                *palette = InvertColor(palette);
            }
        }
    }

    for (j = 0; j < 64; j++)
    {
        palette = &(*gUnknown_03006168)[0][j];
        color = *palette;
        *palette = 0x8000;
        for (i = 1, palette += 64; i < 63; i++, palette += 64)
        {
            if (!(0x8000 & *palette))
            {
                *palette = sub_8125F38(&color, palette, palette + 64);
                color = *palette;
            }
        }

        *palette = 0x8000;
        palette = &(*gUnknown_03006168)[0][j];
        color = *palette;
        *palette = 0x8000;
        for (i = 1, palette += 64; i < 63; i++, palette += 64)
        {
            if (!(0x8000 & *palette))
            {
                *palette = sub_8125F38(&color, palette, palette + 64);
                color = *palette;
            }
        }

        *palette = 0x8000;
    }

    palette = (*gUnknown_03006168)[0];
    for (i = 0; i < 64; i++)
    {
        for (j = 0; j < 64; j++, palette++)
        {
            if (!(0x8000 & *palette))
            {
                *palette = InvertColor(palette);
            }
        }
    }
}

static void sub_81257F8(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16 *var0 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16 *palette = &var0[gUnknown_03006164];
        u16 color = *palette;
        for (j = 1, palette++; j < gUnknown_03006174 - 1; j++, palette++)
        {
            if (!(0x8000 & *palette))
            {
                *palette = sub_8125CF4(&color, palette);
                color = *palette;
            }
        }
    }
}

static void sub_81258A0(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_03006174; i++)
    {
        u16* var0 = &(*gUnknown_03006168)[0][gUnknown_03006178 * gUnknown_03006180];
        u16* palette = &var0[gUnknown_03006164 + i];
        u16 color = *palette;
        for (j = 1, palette += gUnknown_03006180; j < gUnknown_0300616C - 1; j++, palette += gUnknown_03006180)
        {
            if (!(0x8000 & *palette))
            {
                *palette = sub_8125CF4(&color, palette);
                color = *palette;
            }
        }
    }
}

static void sub_8125954(u16 arg0)
{
    u8 i;
    u8 r5, r9;
    struct Unk8125954 unkStruct[6];

    unkStruct[0].unk0 = gUnknown_085A1F94[arg0][0];
    unkStruct[0].unk1 = gUnknown_085A1F94[arg0][1];
    unkStruct[0].unk2 = (gUnknown_085A1F94[arg0][2] >> 3) & 7;

    r9 = (gUnknown_085A1F94[arg0][2] >> 1) & 3;
    r5 = gUnknown_085A1F94[arg0][2] & 1;
    for (i = 1; i < unkStruct[0].unk2; i++)
    {
        if (!r5)
        {
            unkStruct[i].unk0 = unkStruct[0].unk0 - i;
            unkStruct[i].unk1 = unkStruct[0].unk1 + i;
        }
        else
        {
            unkStruct[i].unk0 = unkStruct[0].unk0 + 1;
            unkStruct[i].unk1 = unkStruct[0].unk1 - 1;
        }

        if (unkStruct[i].unk0 > 63 || unkStruct[i].unk1 > 63)
        {
            unkStruct[0].unk2 = i - 1;
            break;
        }

        unkStruct[i].unk2 = unkStruct[0].unk2 - i;
    }

    for (i = 0; i < unkStruct[0].unk2; i++)
    {
        u16 *pal = &(*gUnknown_03006168)[unkStruct[i].unk1 * 2][unkStruct[i].unk0];

        if (!(0x8000 & *pal))
        {
            u16 r = (*pal) & 0x1F;
            u16 g = (*pal >> 5) & 0x1F;
            u16 b = (*pal >> 10) & 0x1F;

            switch (r9)
            {
            case 0:
            case 1:
                switch (((gUnknown_085A1F94[arg0][2] >> 3) & 7) % 3)
                {
                case 0:
                    if (r >= unkStruct[i].unk2)
                        r -= unkStruct[i].unk2;
                    else
                        r = 0;
                    break;
                case 1:
                    if (g >= unkStruct[i].unk2)
                        g -= unkStruct[i].unk2;
                    else
                        g = 0;
                    break;
                case 2:
                    if (b >= unkStruct[i].unk2)
                        b -= unkStruct[i].unk2;
                    else
                        b = 0;
                    break;
                }
                break;
            case 2:
            case 3:
                r += unkStruct[i].unk2;
                g += unkStruct[i].unk2;
                b += unkStruct[i].unk2;
                if (r > 31)
                    r = 31;
                if (g > 31)
                    g = 31;
                if (b > 31)
                    b = 31;
                break;
            }

            *pal = (((b) << 10) | ((g) << 5) | (r));
        }
    }
}

static u16 ConvertColorToGrayscale(u16 *color)
{
    s32 clr = *color;
    s32 r = clr & 0x1F;
    s32 g = (clr >> 5) & 0x1F;
    s32 b = (clr >> 10) & 0x1F;
    s32 gray = (r * ((s16)((0.3) * 256)) + g * ((s16)((0.59) * 256)) + b * ((s16)((0.1133) * 256))) >> 8;
    return (((gray) << 10) | ((gray) << 5) | (gray));
}



static u16 ConvertCoolColor(u16 *color, u8 personality)
{
    u16 red = *color & 0x1F;
    u16 green = (*color >> 5) & 0x1F;
    u16 blue = (*color >> 10) & 0x1F;

    if (red < 17 && green < 17 && blue < 17)
        return GetCoolColorFromPersonality(personality);
    else
        return ((31) | ((31) << 5) | ((31) << 10));
}



static u16 GetCoolColorFromPersonality(u8 personality)
{
    u16 red = 0;
    u16 green = 0;
    u16 blue = 0;
    u8 strength = (personality / 6) % 3;
    u8 colorType = personality % 6;

    switch (colorType)
    {
    case 0:

        green = 21 - strength;
        blue = green;
        red = 0;
        break;
    case 1:

        blue = 0;
        red = 21 - strength;
        green = red;
        break;
    case 2:

        blue = 21 - strength;
        green = 0;
        red = blue;
        break;
    case 3:

        blue = 0;
        green = 0;
        red = 23 - strength;
        break;
    case 4:

        blue = 23 - strength;
        green = 0;
        red = 0;
        break;
    case 5:

        blue = 0;
        green = 23 - strength;
        red = 0;
        break;
    }

    return (((blue) << 10) | ((green) << 5) | (red));
}

static u16 ConvertToBlackOrWhite(u16 *color)
{
    u16 red = *color & 0x1F;
    u16 green = (*color >> 5) & 0x1F;
    u16 blue = (*color >> 10) & 0x1F;

    if (red < 17 && green < 17 && blue < 17)
        return ((0) | ((0) << 5) | ((0) << 10));
    else
        return ((31) | ((31) << 5) | ((31) << 10));
}

static u16 sub_8125C98(u16 *colorA, u16 *colorB)
{
    if (*colorA)
    {
        if (*colorA & 0x8000)
            return 0x8000;
        if (*colorB & 0x8000)
            return ((0) | ((0) << 5) | ((0) << 10));

        return *colorA;
    }

    return ((0) | ((0) << 5) | ((0) << 10));
}

static u16 InvertColor(u16 *color)
{
    u16 red = *color & 0x1F;
    u16 green = (*color >> 5) & 0x1F;
    u16 blue = (*color >> 10) & 0x1F;

    red = 31 - red;
    green = 31 - green;
    blue = 31 - blue;

    return (((blue) << 10) | ((green) << 5) | (red));
}

static u16 sub_8125CF4(u16 *a0, u16 *a1)
{
    u16 sp0[2][3];
    u16 spC[3];
    u8 r4;
    u16 r2;
    u16 r, g, b;

    if (*a0 == *a1)
        return *a1;

    sp0[0][0] = (*a0 >> 0) & 0x1F;
    sp0[0][1] = (*a0 >> 5) & 0x1F;
    sp0[0][2] = (*a0 >> 10) & 0x1F;
    sp0[1][0] = (*a1 >> 0) & 0x1F;
    sp0[1][1] = (*a1 >> 5) & 0x1F;
    sp0[1][2] = (*a1 >> 10) & 0x1F;

    if (sp0[0][0] > 25 && sp0[0][1] > 25 && sp0[0][2] > 25)
        return *a1;
    if (sp0[1][0] > 25 && sp0[1][1] > 25 && sp0[1][2] > 25)
        return *a1;

    for (r4 = 0; r4 < 3; r4++)
    {
        if (sp0[0][r4] > sp0[1][r4])
            spC[r4] = sp0[0][r4] - sp0[1][r4];
        else
            spC[r4] = sp0[1][r4] - sp0[0][r4];
    }

    if (spC[0] >= spC[1])
    {
        if (spC[0] >= spC[2])
            r2 = spC[0];
        else if (spC[1] >= spC[2])
            r2 = spC[1];
        else
            r2 = spC[2];
    }
    else
    {
        if (spC[1] >= spC[2])
            r2 = spC[1];
        else if (spC[2] >= spC[0])
            r2 = spC[2];
        else
            r2 = spC[0];
    }

    r = (sp0[1][0] * (31 - r2 / 2)) / 31;
    g = (sp0[1][1] * (31 - r2 / 2)) / 31;
    b = (sp0[1][2] * (31 - r2 / 2)) / 31;
    return (((b) << 10) | ((g) << 5) | (r));
}

static u16 sub_8125E18(u16 * a0, u16 * a1, u16 * a2)
{
    u16 red, green, blue;
    u16 avg0, avg1, avg2;
    u16 diff1, diff2;
    u32 minimum;
    u16 factor;

    if (*a0 == *a1 && *a2 == *a1)
        return *a1;

    red = (*a1 >> 0) & 0x1F;
    green = (*a1 >> 5) & 0x1F;
    blue = (*a1 >> 10) & 0x1F;

    avg0 = (((*a0 >> 0) & 0x1F) + ((*a0 >> 5) & 0x1F) + ((*a0 >> 10) & 0x1F)) / 3;
    avg1 = (((*a1 >> 0) & 0x1F) + ((*a1 >> 5) & 0x1F) + ((*a1 >> 10) & 0x1F)) / 3;
    avg2 = (((*a2 >> 0) & 0x1F) + ((*a2 >> 5) & 0x1F) + ((*a2 >> 10) & 0x1F)) / 3;

    if (avg0 == avg1 && avg2 == avg1)
        return *a1;

    if (avg0 > avg1)
        diff1 = avg0 - avg1;
    else
        diff1 = avg1 - avg0;

    if (avg2 > avg1)
        diff2 = avg2 - avg1;
    else
        diff2 = avg1 - avg2;

    if (diff1 >= diff2)
        minimum = diff1;
    else
        minimum = diff2;

    factor = 31 - minimum / 2;
    red = red * factor / 31;
    green = green * factor / 31;
    blue = blue * factor / 31;
    return (((blue) << 10) | ((green) << 5) | (red));
}

static u16 sub_8125F38(u16 *a0, u16 *a1, u16 *a2)
{
    u16 red, green, blue;
    u16 avg0, avg1, avg2;
    u16 diff1, diff2;
    u32 minimum;
    u16 factor;

    if (*a0 == *a1 && *a2 == *a1)
        return *a1;

    red = (*a1 >> 0) & 0x1F;
    green = (*a1 >> 5) & 0x1F;
    blue = (*a1 >> 10) & 0x1F;

    avg0 = (((*a0 >> 0) & 0x1F) + ((*a0 >> 5) & 0x1F) + ((*a0 >> 10) & 0x1F)) / 3;
    avg1 = (((*a1 >> 0) & 0x1F) + ((*a1 >> 5) & 0x1F) + ((*a1 >> 10) & 0x1F)) / 3;
    avg2 = (((*a2 >> 0) & 0x1F) + ((*a2 >> 5) & 0x1F) + ((*a2 >> 10) & 0x1F)) / 3;

    if (avg0 == avg1 && avg2 == avg1)
        return *a1;

    if (avg0 > avg1)
        diff1 = avg0 - avg1;
    else
        diff1 = avg1 - avg0;

    if (avg2 > avg1)
        diff2 = avg2 - avg1;
    else
        diff2 = avg1 - avg2;

    if (diff1 >= diff2)
        minimum = diff1;
    else
        minimum = diff2;

    factor = 31 - minimum;
    red = red * factor / 31;
    green = green * factor / 31;
    blue = blue * factor / 31;
    return (((blue) << 10) | ((green) << 5) | (red));
}
# 788 "src/contest_painting_effects.c"
__attribute__((naked))
void sub_8126058(struct Unk030061A0 *arg0)
{
    asm(".syntax unified\n" "\n    push {r4-r7,lr}\n    mov r7, r10\n    mov r6, r9\n    mov r5, r8\n    push {r5-r7}\n    sub sp, 0xC\n    ldrb r1, [r0, 0x1D]\n    lsrs r5, r1, 3\n    ldrb r1, [r0, 0x1E]\n    lsrs r1, 3\n    str r1, [sp, 0x8]\n    ldr r1, [r0, 0x4]\n    str r1, [sp]\n    ldr r2, [r0, 0x10]\n    str r2, [sp, 0x4]\n    ldrh r0, [r0, 0x16]\n    cmp r0, 0x2\n    bne _08126108\n    movs r1, 0\n    ldr r0, [sp, 0x8]\n    cmp r1, r0\n    bcc _08126086\n    b _08126194\n_08126086:\n    movs r0, 0\n    adds r2, r1, 0x1\n    mov r10, r2\n    cmp r0, r5\n    bcs _081260FA\n    adds r2, r1, 0\n    muls r2, r5\n    mov r9, r2\n    lsls r1, 3\n    mov r8, r1\n_0812609A:\n    movs r4, 0\n    lsls r6, r0, 4\n    adds r7, r0, 0x1\n    add r0, r9\n    lsls r0, 6\n    ldr r1, [sp, 0x4]\n    adds r1, r0\n    mov r12, r1\n_081260AA:\n    lsls r0, r4, 3\n    mov r2, r12\n    adds r3, r2, r0\n    mov r1, r8\n    adds r0, r1, r4\n    lsls r0, 3\n    muls r0, r5\n    lsls r0, 1\n    ldr r2, [sp]\n    adds r0, r2, r0\n    adds r2, r0, r6\n    ldrh r0, [r2, 0x2]\n    lsls r0, 8\n    ldrh r1, [r2]\n    orrs r0, r1\n    strh r0, [r3]\n    ldrh r0, [r2, 0x6]\n    lsls r0, 8\n    ldrh r1, [r2, 0x4]\n    orrs r0, r1\n    strh r0, [r3, 0x2]\n    ldrh r0, [r2, 0xA]\n    lsls r0, 8\n    ldrh r1, [r2, 0x8]\n    orrs r0, r1\n    strh r0, [r3, 0x4]\n    ldrh r0, [r2, 0xE]\n    lsls r0, 8\n    ldrh r1, [r2, 0xC]\n    orrs r0, r1\n    strh r0, [r3, 0x6]\n    adds r0, r4, 0x1\n    lsls r0, 16\n    lsrs r4, r0, 16\n    cmp r4, 0x7\n    bls _081260AA\n    lsls r0, r7, 16\n    lsrs r0, 16\n    cmp r0, r5\n    bcc _0812609A\n_081260FA:\n    mov r1, r10\n    lsls r0, r1, 16\n    lsrs r1, r0, 16\n    ldr r2, [sp, 0x8]\n    cmp r1, r2\n    bcc _08126086\n    b _08126194\n_08126108:\n    movs r1, 0\n    ldr r0, [sp, 0x8]\n    cmp r1, r0\n    bcs _08126194\n_08126110:\n    movs r0, 0\n    adds r2, r1, 0x1\n    mov r10, r2\n    cmp r0, r5\n    bcs _08126188\n    adds r2, r1, 0\n    muls r2, r5\n    mov r9, r2\n    lsls r1, 3\n    mov r8, r1\n_08126124:\n    movs r4, 0\n    lsls r6, r0, 4\n    adds r7, r0, 0x1\n    add r0, r9\n    lsls r0, 5\n    ldr r1, [sp, 0x4]\n    adds r1, r0\n    mov r12, r1\n_08126134:\n    lsls r0, r4, 2\n    mov r2, r12\n    adds r3, r2, r0\n    mov r1, r8\n    adds r0, r1, r4\n    lsls r0, 3\n    muls r0, r5\n    lsls r0, 1\n    ldr r2, [sp]\n    adds r0, r2, r0\n    adds r2, r0, r6\n    ldrh r1, [r2, 0x2]\n    lsls r1, 4\n    ldrh r0, [r2]\n    orrs r1, r0\n    ldrh r0, [r2, 0x4]\n    lsls r0, 8\n    orrs r1, r0\n    ldrh r0, [r2, 0x6]\n    lsls r0, 12\n    orrs r1, r0\n    strh r1, [r3]\n    ldrh r1, [r2, 0xA]\n    lsls r1, 4\n    ldrh r0, [r2, 0x8]\n    orrs r1, r0\n    ldrh r0, [r2, 0xC]\n    lsls r0, 8\n    orrs r1, r0\n    ldrh r0, [r2, 0xE]\n    lsls r0, 12\n    orrs r1, r0\n    strh r1, [r3, 0x2]\n    adds r0, r4, 0x1\n    lsls r0, 16\n    lsrs r4, r0, 16\n    cmp r4, 0x7\n    bls _08126134\n    lsls r0, r7, 16\n    lsrs r0, 16\n    cmp r0, r5\n    bcc _08126124\n_08126188:\n    mov r1, r10\n    lsls r0, r1, 16\n    lsrs r1, r0, 16\n    ldr r2, [sp, 0x8]\n    cmp r1, r2\n    bcc _08126110\n_08126194:\n    add sp, 0xC\n    pop {r3-r5}\n    mov r8, r3\n    mov r9, r4\n    mov r10, r5\n    pop {r4-r7}\n    pop {r0}\n    bx r0" "\n.syntax divided")
# 967 "src/contest_painting_effects.c"
           ;
}

void sub_81261A4(struct Unk030061A0 *arg0)
{
    gUnknown_03006188 = arg0->var_18 * 16;
    gUnknown_03006184 = &arg0->var_8[gUnknown_03006188];
    gUnknown_03006168 = arg0->var_4;
    gUnknown_03006164 = arg0->var_19;
    gUnknown_03006178 = arg0->var_1A;
    gUnknown_03006174 = arg0->var_1B;
    gUnknown_0300616C = arg0->var_1C;
    gUnknown_03006180 = arg0->var_1D;
    gUnknown_03006170 = arg0->var_1E;

    switch (arg0->var_14)
    {
    case 0:
        sub_81263A4(0);
        break;
    case 1:
        sub_81263A4(1);
        break;
    case 2:
        sub_8126270();
        sub_8126714();
        break;
    case 3:
        sub_8126370();
        sub_8126664();
        break;
    case 4:
        sub_8126334();
        sub_81265B4();
        break;
    case 5:
        sub_8126318();
        sub_81264FC();
        break;
    }
}

static void sub_8126270(void)
{
    gUnknown_03006184[0] = (((0) << 10) | ((0) << 5) | (0));
    gUnknown_03006184[1] = (((6) << 10) | ((6) << 5) | (6));
    gUnknown_03006184[2] = (((29) << 10) | ((29) << 5) | (29));
    gUnknown_03006184[3] = (((11) << 10) | ((11) << 5) | (11));
    gUnknown_03006184[4] = (((6) << 10) | ((6) << 5) | (29));
    gUnknown_03006184[5] = (((6) << 10) | ((29) << 5) | (6));
    gUnknown_03006184[6] = (((29) << 10) | ((6) << 5) | (6));
    gUnknown_03006184[7] = (((6) << 10) | ((29) << 5) | (29));
    gUnknown_03006184[8] = (((29) << 10) | ((6) << 5) | (29));
    gUnknown_03006184[9] = (((29) << 10) | ((29) << 5) | (6));
    gUnknown_03006184[10] = (((6) << 10) | ((11) << 5) | (29));
    gUnknown_03006184[11] = (((6) << 10) | ((29) << 5) | (11));
    gUnknown_03006184[12] = (((29) << 10) | ((11) << 5) | (6));
    gUnknown_03006184[13] = (((11) << 10) | ((6) << 5) | (29));
    gUnknown_03006184[14] = (((11) << 10) | ((29) << 5) | (6));
    gUnknown_03006184[15] = (((29) << 10) | ((6) << 5) | (11));
}

static void sub_8126318(void)
{
    gUnknown_03006184[0] = (((0) << 10) | ((0) << 5) | (0));
    gUnknown_03006184[1] = (((0) << 10) | ((0) << 5) | (0));
    gUnknown_03006184[2] = (((31) << 10) | ((31) << 5) | (31));
}

static void sub_8126334(void)
{
    u8 i;

    gUnknown_03006184[0] = (((0) << 10) | ((0) << 5) | (0));
    gUnknown_03006184[1] = (((0) << 10) | ((0) << 5) | (0));
    for (i = 0; i < 14; i++)
        gUnknown_03006184[i + 2] = (((2 * (i + 2)) << 10) | ((2 * (i + 2)) << 5) | (2 * (i + 2)));
}

static void sub_8126370(void)
{
    u8 i;

    gUnknown_03006184[0] = (((0) << 10) | ((0) << 5) | (0));
    for (i = 0; i < 32; i++)
        gUnknown_03006184[i + 1] = (((i) << 10) | ((i) << 5) | (i));
}

static void sub_81263A4(bool8 arg0)
{
    u8 i, j;
    u16 maxIndex;

    maxIndex = 0xDF;
    if (!arg0)
        maxIndex = 0xFF;

    for (j = 0; j < maxIndex; j++)
        gUnknown_03006184[j] = 0;

    gUnknown_03006184[maxIndex] = (((15) << 10) | ((15) << 5) | (15));
    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var2 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* pal = &var2[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, pal++)
        {
            if (*pal & 0x8000)
            {
                *pal = gUnknown_03006188;
            }
            else
            {
                u16 color = sub_81267C4(pal);
                u8 curIndex = 1;
                if (curIndex < maxIndex)
                {
                    if (gUnknown_03006184[curIndex] == ((0) | ((0) << 5) | ((0) << 10)))
                    {
                        gUnknown_03006184[curIndex] = color;
                        *pal = gUnknown_03006188 + curIndex;
                    }
                    else
                    {
                        while (curIndex < maxIndex)
                        {
                            if (gUnknown_03006184[curIndex] == ((0) | ((0) << 5) | ((0) << 10)))
                            {
                                gUnknown_03006184[curIndex] = color;
                                *pal = gUnknown_03006188 + curIndex;
                                break;
                            }

                            if (gUnknown_03006184[curIndex] == color)
                            {
                                *pal = gUnknown_03006188 + curIndex;
                                break;
                            }

                            curIndex++;
                        }
                    }
                }

                if (curIndex == maxIndex)
                {
                    curIndex = maxIndex;
                    *pal = curIndex;
                }
            }
        }
    }
}

static void sub_81264FC(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var2 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* pal = &var2[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, pal++)
        {
            if (*pal & 0x8000)
            {
                *pal = gUnknown_03006188;
            }
            else
            {
                if (ConvertToBlackOrWhite(pal) == ((0) | ((0) << 5) | ((0) << 10)))
                    *pal = gUnknown_03006188 + 1;
                else
                    *pal = gUnknown_03006188 + 2;
            }
        }
    }
}

static void sub_81265B4(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var2 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* pal = &var2[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, pal++)
        {
            if (*pal & 0x8000)
                *pal = gUnknown_03006188;
            else
                *pal = sub_8126908(pal) + gUnknown_03006188;
        }
    }
}

static void sub_8126664(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var2 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* pal = &var2[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, pal++)
        {
            if (*pal & 0x8000)
                *pal = gUnknown_03006188;
            else
                *pal = sub_812693C(pal) + gUnknown_03006188;
        }
    }
}

static void sub_8126714(void)
{
    u8 i, j;

    for (i = 0; i < gUnknown_0300616C; i++)
    {
        u16* var2 = &(*gUnknown_03006168)[0][(gUnknown_03006178 + i) * gUnknown_03006180];
        u16* pal = &var2[gUnknown_03006164];
        for (j = 0; j < gUnknown_03006174; j++, pal++)
        {
            if (*pal & 0x8000)
                *pal = gUnknown_03006188;
            else
                *pal = sub_8126838(pal) + gUnknown_03006188;
        }
    }
}

static u16 sub_81267C4(u16 *color)
{
    u16 red = *color & 0x1F;
    u16 green = (*color >> 5) & 0x1F;
    u16 blue = (*color >> 10) & 0x1F;

    if (red & 3)
        red = (red & 0x1C) + 4;
    if (green & 3)
        green = (green & 0x1C) + 4;
    if (blue & 3)
        blue = (blue & 0x1C) + 4;

    if (red < 6)
        red = 6;
    if (red > 30)
        red = 30;

    if (green < 6)
        green = 6;
    if (green > 30)
        green = 30;

    if (blue < 6)
        blue = 6;
    if (blue > 30)
        blue = 30;

    return (((blue) << 10) | ((green) << 5) | (red));
}

static u16 sub_8126838(u16* color)
{
    u16 red = *color & 0x1F;
    u16 green = (*color >> 5) & 0x1F;
    u16 blue = (*color >> 10) & 0x1F;

    if (red < 12 && green < 11 && blue < 11)
        return 1;

    if (red > 19 && green > 19 && blue > 19)
        return 2;

    if (red > 19)
    {
        if (green > 19)
        {
            if (blue > 14)
                return 2;
            else
                return 7;
        }
        else if (blue > 19)
        {
            if (green > 14)
                return 2;
            else
                return 8;
        }
    }

    if (green > 19 && blue > 19)
    {
        if (red > 14)
            return 2;
        else
            return 9;
    }

    if (red > 19)
    {
        if (green > 11)
        {
            if (blue > 11)
            {
                if (green < blue)
                    return 8;
                else
                    return 7;
            }
            else
            {
                return 10;
            }
        }
        else if (blue > 11)
        {
            return 13;
        }
        else
        {
            return 4;
        }
    }

    if (green > 19)
    {
        if (red > 11)
        {
            if (blue > 11)
            {
                if (red < blue)
                    return 9;
                else
                    return 7;
            }
            else
            {
                return 11;
            }
        }
        else
        {
            if (blue > 11)
                return 14;
            else
                return 5;
        }
    }

    if (blue > 19)
    {
        if (red > 11)
        {
            if (green > 11)
            {
                if (red < green)
                    return 9;
                else
                    return 8;
            }
        }
        else if (green > 11)
        {
            return 12;
        }

        if (blue > 11)
            return 15;
        else
            return 6;
    }

    return 3;
}

static u16 sub_8126908(u16 *color)
{
    u16 red = *color & 0x1F;
    u16 green = (*color >> 5) & 0x1F;
    u16 blue = (*color >> 10) & 0x1F;
    u16 average = ((red + green + blue) / 3) & 0x1E;
    if (average == 0)
        return 1;
    else
        return average / 2;
}

static u16 sub_812693C(u16 *color)
{
    u16 red = *color & 0x1F;
    u16 green = (*color >> 5) & 0x1F;
    u16 blue = (*color >> 10) & 0x1F;
    u16 average = (red + green + blue) / 3;
    return average + 1;
}
