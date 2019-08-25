# 1 "src/contest_ai.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/contest_ai.c"
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
# 2 "src/contest_ai.c" 2
# 1 "include/battle.h" 1




# 1 "include/constants/battle.h" 1
# 6 "include/battle.h" 2
# 1 "include/battle_main.h" 1



struct TrainerMoney
{
    u8 classId;
    u8 value;
};

struct UnknownPokemonStruct4
{
             u16 species;
             u16 heldItem;
             u8 nickname[10 + 1];
             u8 level;
             u16 hp;
             u16 maxhp;
             u32 status;
             u32 personality;
             u8 gender;
             u8 language;
};
# 46 "include/battle_main.h"
void CB2_InitBattle(void);
void BattleMainCB2(void);
void CB2_QuitRecordedBattle(void);
void sub_8038528(struct Sprite* sprite);
void sub_8038A04(void);
void VBlankCB_Battle(void);
void nullsub_17(struct Sprite *sprite);
void sub_8038B74(struct Sprite *sprite);
void sub_8038D64(void);
u32 sub_80391E0(u8 arrayId, u8 caseId);
u32 sub_80397C4(u32 setId, u32 tableId);
void SpriteCb_WildMon(struct Sprite *sprite);
void SpriteCallbackDummy_2(struct Sprite *sprite);
void SpriteCB_FaintOpponentMon(struct Sprite *sprite);
void sub_8039AD8(struct Sprite *sprite);
void sub_8039B2C(struct Sprite *sprite);
void sub_8039B58(struct Sprite *sprite);
void sub_8039BB4(struct Sprite *sprite);
void sub_80105DC(struct Sprite *sprite);
void sub_8039C00(struct Sprite *sprite);
void DoBounceEffect(u8 battlerId, u8 b, s8 c, s8 d);
void EndBounceEffect(u8 battlerId, bool8 b);
void sub_8039E44(struct Sprite *sprite);
void sub_8039E60(struct Sprite *sprite);
void sub_8039E84(struct Sprite *sprite);
void sub_8039E9C(struct Sprite *sprite);
void nullsub_20(void);
void BeginBattleIntro(void);
void SwitchInClearSetData(void);
void FaintClearSetData(void);
void sub_803B3AC(void);
void sub_803B598(void);
void BattleTurnPassed(void);
u8 IsRunningFromBattleImpossible(void);
void sub_803BDA0(u8 battlerId);
void SwapTurnOrder(u8 id1, u8 id2);
u8 GetWhoStrikesFirst(u8 battlerId1, u8 battlerId2, bool8 ignoreChosenMoves);
void RunBattleScriptCommands_PopCallbacksStack(void);
void RunBattleScriptCommands(void);
bool8 TryRunFromBattle(u8 battlerId);

extern struct UnknownPokemonStruct4 gUnknown_02022FF8[3];

extern const struct SpriteTemplate gUnknown_0831AC88;
extern const struct OamData gOamData_831ACA8;
extern const struct OamData gOamData_831ACB0;
extern const u8 gTypeEffectiveness[336];
extern const u8 gTypeNames[][6 + 1];
extern const struct TrainerMoney gTrainerMoneyTable[];
extern const u8 gAbilityNames[][12 + 1];
extern const u8 *const gAbilityDescriptionPointers[];

extern const u8 gStatusConditionString_PoisonJpn[8];
extern const u8 gStatusConditionString_SleepJpn[8];
extern const u8 gStatusConditionString_ParalysisJpn[8];
extern const u8 gStatusConditionString_BurnJpn[8];
extern const u8 gStatusConditionString_IceJpn[8];
extern const u8 gStatusConditionString_ConfusionJpn[8];
extern const u8 gStatusConditionString_LoveJpn[8];

extern const u8 *const gStatusConditionStringsTable[7][2];
# 7 "include/battle.h" 2
# 1 "include/battle_message.h" 1
# 198 "include/battle_message.h"
struct BattleMsgData
{
    u16 currentMove;
    u16 originallyUsedMove;
    u16 lastItem;
    u8 lastAbility;
    u8 scrActive;
    u8 unk1605E;
    u8 hpScale;
    u8 itemEffectBattler;
    u8 moveType;
    u8 abilities[4];
    u8 textBuffs[3][16];
};

void BufferStringBattle(u16 stringID);
u32 BattleStringExpandPlaceholdersToDisplayedString(const u8* src);
u32 BattleStringExpandPlaceholders(const u8* src, u8* dst);
void BattlePutTextOnWindow(const u8* text, u8 arg1);
void SetPpNumbersPaletteInMoveSelection(void);
u8 GetCurrentPpToMaxPpState(u8 currentPp, u8 maxPp);

extern struct BattleMsgData *gBattleMsgDataPtr;

extern const u8* const gBattleStringsTable[];
extern const u8* const gStatNamesTable[];
extern const u8* const gPokeblockWasTooXStringTable[];
extern const u8* const gRefereeStringsTable[];
extern const u8* const gStatNamesTable2[];
extern const u8 *const gRoundsStringTable[];

extern const u8 gText_PkmnIsEvolving[];
extern const u8 gText_CongratsPkmnEvolved[];
extern const u8 gText_PkmnStoppedEvolving[];
extern const u8 gText_EllipsisQuestionMark[];
extern const u8 gText_WhatWillPkmnDo[];
extern const u8 gText_WhatWillPkmnDo2[];
extern const u8 gText_WhatWillWallyDo[];
extern const u8 gText_LinkStandby[];
extern const u8 gText_BattleMenu[];
extern const u8 gText_SafariZoneMenu[];
extern const u8 gText_MoveInterfacePP[];
extern const u8 gText_MoveInterfaceType[];
extern const u8 gText_MoveInterfacePpType[];
extern const u8 gText_MoveInterfaceDynamicColors[];
extern const u8 gText_WhichMoveToForget4[];
extern const u8 gText_BattleYesNoChoice[];
extern const u8 gText_BattleSwitchWhich[];
extern const u8 gText_BattleSwitchWhich2[];
extern const u8 gText_BattleSwitchWhich3[];
extern const u8 gText_BattleSwitchWhich4[];
extern const u8 gText_BattleSwitchWhich5[];
extern const u8 gText_SafariBalls[];
extern const u8 gText_SafariBallLeft[];
extern const u8 gText_Sleep[];
extern const u8 gText_Poison[];
extern const u8 gText_Burn[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];
extern const u8 gText_SpaceAndSpace[];
extern const u8 gText_CommaSpace[];
extern const u8 gText_Space2[];
extern const u8 gText_ScrollTextUp[];
extern const u8 gText_NewLine[];
extern const u8 gText_Are[];
extern const u8 gText_Are2[];
extern const u8 gText_BadEgg[];
extern const u8 gText_BattleWallyName[];
extern const u8 gText_Win[];
extern const u8 gText_Loss[];
extern const u8 gText_Draw[];
extern const u8 gText_StatRose[];
extern const u8 gText_PkmnsStatChanged2[];
extern const u8 gText_PkmnGettingPumped[];
extern const u8 gText_PkmnShroudedInMist[];
extern const u8 gText_PkmnsXPreventsSwitching[];
extern const u8 gText_TheGreatNewHope[];
extern const u8 gText_WillChampinshipDreamComeTrue[];
extern const u8 gText_AFormerChampion[];
extern const u8 gText_ThePreviousChampion[];
extern const u8 gText_TheUnbeatenChampion[];
extern const u8 gText_PlayerMon1Name[];
extern const u8 gText_Vs[];
extern const u8 gText_OpponentMon1Name[];
extern const u8 gText_Mind[];
extern const u8 gText_Skill[];
extern const u8 gText_Body[];
extern const u8 gText_Judgement[];
extern const u8 gText_EmptyString3[];
extern const u8 gText_RecordBattleToPass[];
extern const u8 gText_BattleRecordedOnPass[];
extern const u8 gText_BattleTourney[];

extern const u16 gMissStringIds[];
extern const u16 gTrappingMoves[];
# 8 "include/battle.h" 2
# 1 "include/battle_util.h" 1
# 44 "include/battle_util.h"
u8 GetBattlerForBattleScript(u8 caseId);
void PressurePPLose(u8 target, u8 attacker, u16 move);
void PressurePPLoseOnUsingPerishSong(u8 attacker);
void PressurePPLoseOnUsingImprison(u8 attacker);
void MarkAllBattlersForControllerExec(void);
void MarkBattlerForControllerExec(u8 battlerId);
void sub_803F850(u8 arg0);
void CancelMultiTurnMoves(u8 battlerId);
bool8 WasUnableToUseMove(u8 battlerId);
void PrepareStringBattle(u16 stringId, u8 battlerId);
void ResetSentPokesToOpponentValue(void);
void sub_803F9EC(u8 battlerId);
void sub_803FA70(u8 battlerId);
void BattleScriptPush(const u8* bsPtr);
void BattleScriptPushCursor(void);
void BattleScriptPop(void);
u8 TrySetCantSelectMoveBattleScript(void);
u8 CheckMoveLimitations(u8 battlerId, u8 unusableMoves, u8 check);
bool8 AreAllMovesUnusable(void);
u8 GetImprisonedMovesCount(u8 battlerId, u16 move);
u8 DoFieldEndTurnEffects(void);
u8 DoBattlerEndTurnEffects(void);
bool8 HandleWishPerishSongOnTurnEnd(void);
bool8 HandleFaintedMonActions(void);
void TryClearRageStatuses(void);
u8 AtkCanceller_UnableToUseMove(void);
bool8 HasNoMonsToSwitch(u8 battlerId, u8 r1, u8 r2);
u8 CastformDataTypeChange(u8 battlerId);
u8 AbilityBattleEffects(u8 caseID, u8 battlerId, u8 ability, u8 special, u16 moveArg);
void BattleScriptExecute(const u8* BS_ptr);
void BattleScriptPushCursorAndCallback(const u8* BS_ptr);
u8 ItemBattleEffects(u8 caseID, u8 battlerId, bool8 moveTurn);
void ClearFuryCutterDestinyBondGrudge(u8 battlerId);
void HandleAction_RunBattleScript(void);
u8 GetMoveTarget(u16 move, u8 setTarget);
u8 IsMonDisobedient(void);
# 9 "include/battle.h" 2
# 1 "include/battle_script_commands.h" 1






void AI_CalcDmg(u8 battlerIdAtk, u8 battlerIdDef);
u8 TypeCalc(u16 move, u8 battlerIdAtk, u8 battlerIdDef);
u8 AI_TypeCalc(u16 move, u16 targetSpecies, u8 targetAbility);
u8 GetBattlerTurnOrderNum(u8 battlerId);
void SetMoveEffect(bool8 primary, u8 certain);
void BattleDestroyYesNoCursorAt(u8 cursorPosition);
void BattleCreateYesNoCursorAt(u8 cursorPosition);
void BufferMoveToLearnIntoBattleTextBuff2(void);
void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags);
bool8 UproarWakeUpCheck(u8 battlerId);

extern void (* const gBattleScriptingCommandsTable[])(void);
extern const u8 gUnknown_0831C494[][4];
# 10 "include/battle.h" 2
# 1 "include/battle_ai_switch_items.h" 1



enum
{
    AI_ITEM_FULL_RESTORE = 1,
    AI_ITEM_HEAL_HP,
    AI_ITEM_CURE_CONDITION,
    AI_ITEM_X_STAT,
    AI_ITEM_GUARD_SPECS,
    AI_ITEM_NOT_RECOGNIZABLE
};

void AI_TrySwitchOrUseItem(void);
u8 GetMostSuitableMonToSwitchInto(void);
# 11 "include/battle.h" 2
# 1 "include/battle_gfx_sfx_util.h" 1



void AllocateBattleSpritesData(void);
void FreeBattleSpritesData(void);
u16 ChooseMoveAndTargetInBattlePalace(void);
void sub_805D714(struct Sprite *sprite);
void sub_805D770(struct Sprite *sprite, bool8 arg1);
void sub_805D7AC(struct Sprite *sprite);
void InitAndLaunchChosenStatusAnimation(bool8 isStatus2, u32 status);
bool8 TryHandleLaunchBattleTableAnimation(u8 activeBattlerId, u8 attacker, u8 target, u8 tableId, u16 argument);
void InitAndLaunchSpecialAnimation(u8 activeBattlerId, u8 attacker, u8 target, u8 tableId);
bool8 IsMoveWithoutAnimation(u16 moveId, u8 animationTurn);
bool8 mplay_80342A4(u8 battlerId);
void BattleLoadOpponentMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void BattleLoadPlayerMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void nullsub_23(void);
void nullsub_24(u16 species);
void DecompressTrainerFrontPic(u16 frontPicId, u8 battlerId);
void DecompressTrainerBackPic(u16 backPicId, u8 battlerId);
void nullsub_25(u8 arg0);
void FreeTrainerFrontPicPalette(u16 frontPicId);
void sub_805DFFC(void);
bool8 BattleLoadAllHealthBoxesGfx(u8 state);
void LoadBattleBarGfx(u8 arg0);
bool8 BattleInitAllSprites(u8 *state1, u8 *battlerId);
void ClearSpritesHealthboxAnimData(void);
void CopyAllBattleSpritesInvisibilities(void);
void CopyBattleSpriteInvisibility(u8 battlerId);
void HandleSpeciesGfxDataChange(u8 attacker, u8 target, bool8 notTransform);
void BattleLoadSubstituteOrMonSpriteGfx(u8 battlerId, bool8 loadMonSprite);
void LoadBattleMonGfxAndAnimate(u8 battlerId, bool8 loadMonSprite, u8 spriteId);
void TrySetBehindSubstituteSpriteBit(u8 battlerId, u16 move);
void ClearBehindSubstituteBit(u8 battlerId);
void HandleLowHpMusicChange(struct Pokemon *mon, u8 battlerId);
void BattleStopLowHpSound(void);
u8 GetMonHPBarLevel(struct Pokemon *mon);
void HandleBattleLowHpMusicChange(void);
void sub_805EB9C(u8 affineMode);
void LoadAndCreateEnemyShadowSprites(void);
void SpriteCB_SetInvisible(struct Sprite *sprite);
void SetBattlerShadowSpriteCallback(u8 battlerId, u16 species);
void HideBattlerShadowSprite(u8 battlerId);
void sub_805EF14(void);
void ClearTemporarySpeciesSpriteData(u8 battlerId, bool8 dontClearSubstitute);
void AllocateMonSpritesGfx(void);
void FreeMonSpritesGfx(void);
bool32 ShouldPlayNormalMonCry(struct Pokemon *mon);
# 12 "include/battle.h" 2
# 1 "include/battle_util2.h" 1



void AllocateBattleResources(void);
void FreeBattleResources(void);
void AdjustFriendshipOnBattleFaint(u8 battler);
void sub_80571DC(u8 battler, u8 arg1);
u32 sub_805725C(u8 battler);
# 13 "include/battle.h" 2
# 1 "include/battle_bg.h" 1



void BattleInitBgsAndWindows(void);
void sub_80356D0(void);
void LoadBattleMenuWindowGfx(void);
void DrawMainBattleBackground(void);
void LoadBattleTextboxAndBackground(void);
void sub_8035D74(u8 taskId);
void DrawBattleEntryBackground(void);
bool8 LoadChosenBattleElement(u8 caseId);
# 14 "include/battle.h" 2
# 65 "include/battle.h"
struct ResourceFlags
{
    u32 flags[4];
};



struct DisableStruct
{
    u32 transformedMonPersonality;
    u16 disabledMove;
    u16 encoredMove;
    u8 protectUses;
    u8 stockpileCounter;
    u8 substituteHP;
    u8 disableTimer:4;
    u8 disableTimerStartValue:4;
    u8 encoredMovePos;
    u8 filler_D;
    u8 encoreTimer:4;
    u8 encoreTimerStartValue:4;
    u8 perishSongTimer:4;
    u8 perishSongTimerStartValue:4;
    u8 furyCutterCounter;
    u8 rolloutTimer:4;
    u8 rolloutTimerStartValue:4;
    u8 chargeTimer:4;
    u8 chargeTimerStartValue:4;
    u8 tauntTimer:4;
    u8 tauntTimer2:4;
    u8 battlerPreventingEscape;
    u8 battlerWithSureHit;
    u8 isFirstTurn;
    u8 filler_17;
    u8 truantCounter:1;
    u8 truantSwitchInHack:1;
    u8 filler_18_2:2;
    u8 mimickedMoves:4;
    u8 rechargeTimer;
};

struct ProtectStruct
{
    u32 protected:1;
    u32 endured:1;
    u32 noValidMoves:1;
    u32 helpingHand:1;
    u32 bounceMove:1;
    u32 stealMove:1;
    u32 flag0Unknown:1;
    u32 prlzImmobility:1;
    u32 confusionSelfDmg:1;
    u32 targetNotAffected:1;
    u32 chargingTurn:1;
    u32 fleeFlag:2;
    u32 usedImprisonedMove:1;
    u32 loveImmobility:1;
    u32 usedDisabledMove:1;
    u32 usedTauntedMove:1;
    u32 flag2Unknown:1;
    u32 flinchImmobility:1;
    u32 notFirstStrike:1;
    u32 palaceUnableToUseMove:1;
    u32 physicalDmg;
    u32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
};

struct SpecialStatus
{
    u8 statLowered:1;
    u8 lightningRodRedirected:1;
    u8 restoredBattlerSprite: 1;
    u8 intimidatedMon:1;
    u8 traced:1;
    u8 ppNotAffectedByPressure:1;
    u8 flag40:1;
    u8 focusBanded:1;
    s32 dmg;
    s32 physicalDmg;
    s32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
};

struct SideTimer
{
    u8 reflectTimer;
    u8 reflectBattlerId;
    u8 lightscreenTimer;
    u8 lightscreenBattlerId;
    u8 mistTimer;
    u8 mistBattlerId;
    u8 safeguardTimer;
    u8 safeguardBattlerId;
    u8 followmeTimer;
    u8 followmeTarget;
    u8 spikesAmount;
};

struct WishFutureKnock
{
    u8 futureSightCounter[4];
    u8 futureSightAttacker[4];
    s32 futureSightDmg[4];
    u16 futureSightMove[4];
    u8 wishCounter[4];
    u8 wishMonId[4];
    u8 weatherDuration;
    u8 knockedOffMons[2];
};

struct AI_ThinkingStruct
{
    u8 aiState;
    u8 movesetIndex;
    u16 moveConsidered;
    s8 score[4];
    u32 funcResult;
    u32 aiFlags;
    u8 aiAction;
    u8 aiLogicId;
    u8 filler12[6];
    u8 simulatedRNG[4];
};

struct UsedMoves
{
    u16 moves[4];
    u16 unknown[4];
};

struct BattleHistory
{
    struct UsedMoves usedMoves[4];
    u8 abilities[4];
    u8 itemEffects[4];
    u16 trainerItems[4];
    u8 itemsNo;
};

struct BattleScriptsStack
{
    const u8 *ptr[8];
    u8 size;
};

struct BattleCallbacksStack
{
    void (*function[8])(void);
    u8 size;
};

struct StatsArray
{
    u16 stats[6];
};

struct BattleResources
{
    struct SecretBase* secretBase;
    struct ResourceFlags *flags;
    struct BattleScriptsStack* battleScriptsStack;
    struct BattleCallbacksStack* battleCallbackStack;
    struct StatsArray* beforeLvlUp;
    struct AI_ThinkingStruct *ai;
    struct BattleHistory *battleHistory;
    struct BattleScriptsStack *AI_ScriptsStack;
};

struct BattleResults
{
    u8 playerFaintCounter;
    u8 opponentFaintCounter;
    u8 playerSwitchesCounter;
    u8 numHealingItemsUsed;
    u8 numRevivesUsed;
    u8 playerMonWasDamaged:1;
    u8 usedMasterBall:1;
    u8 caughtMonBall:4;
    u8 shinyWildMon:1;
    u16 playerMon1Species;
    u8 playerMon1Name[10 + 1];
    u8 battleTurnCounter;
    u8 playerMon2Name[10 + 1];
    u8 pokeblockThrows;
    u16 lastOpponentSpecies;
    u16 lastUsedMovePlayer;
    u16 lastUsedMoveOpponent;
    u16 playerMon2Species;
    u16 caughtMonSpecies;
    u8 caughtMonNick[10 + 1];
    u8 filler35[1];
    u8 catchAttempts[11];
};

struct BattleTv_Side
{
    u32 spikesMonId:3;
    u32 reflectMonId:3;
    u32 lightScreenMonId:3;
    u32 safeguardMonId:3;
    u32 mistMonId:3;
    u32 futureSightMonId:3;
    u32 doomDesireMonId:3;
    u32 perishSongMonId:3;
    u32 wishMonId:3;
    u32 grudgeMonId:3;
    u32 usedMoveSlot:2;
    u32 spikesMoveSlot:2;
    u32 reflectMoveSlot:2;
    u32 lightScreenMoveSlot:2;
    u32 safeguardMoveSlot:2;
    u32 mistMoveSlot:2;
    u32 futureSightMoveSlot:2;
    u32 doomDesireMoveSlot:2;
    u32 perishSongMoveSlot:2;
    u32 wishMoveSlot:2;
    u32 grudgeMoveSlot:2;
    u32 destinyBondMonId:3;
    u32 destinyBondMoveSlot:2;
    u32 faintCause:4;
    u32 faintCauseMonId:3;
    u32 explosion:1;
    u32 explosionMoveSlot:2;
    u32 explosionMonId:3;
    u32 perishSong:1;
};

struct BattleTv_Position
{
    u32 curseMonId:3;
    u32 leechSeedMonId:3;
    u32 nightmareMonId:3;
    u32 wrapMonId:3;
    u32 attractMonId:3;
    u32 confusionMonId:3;
    u32 curseMoveSlot:2;
    u32 leechSeedMoveSlot:2;
    u32 nightmareMoveSlot:2;
    u32 wrapMoveSlot:2;
    u32 attractMoveSlot:2;
    u32 confusionMoveSlot:2;
    u32 waterSportMoveSlot:2;
    u32 waterSportMonId:3;
    u32 mudSportMonId:3;
    u32 mudSportMoveSlot:2;
    u32 ingrainMonId:3;
    u32 ingrainMoveSlot:2;
    u32 attackedByMonId:3;
    u32 attackedByMoveSlot:2;
};

struct BattleTv_Mon
{
    u32 psnMonId:3;
    u32 badPsnMonId:3;
    u32 brnMonId:3;
    u32 prlzMonId:3;
    u32 slpMonId:3;
    u32 frzMonId:3;
    u32 psnMoveSlot:2;
    u32 badPsnMoveSlot:2;
    u32 brnMoveSlot:2;
    u32 prlzMoveSlot:2;
    u32 slpMoveSlot:2;
    u32 frzMoveSlot:2;
};

struct BattleTv
{
    struct BattleTv_Mon mon[2][6];
    struct BattleTv_Position pos[2][2];
    struct BattleTv_Side side[2];
};

struct BattleTvMovePoints
{
    s16 points[2][6 * 4];
};

struct BattleStruct
{
    u8 turnEffectsTracker;
    u8 turnEffectsBattlerId;
    u8 unused_0;
    u8 turnCountersTracker;
    u8 wrappedMove[4 * 2];
    u8 moveTarget[4];
    u8 expGetterMonId;
    u8 unused_1;
    u8 wildVictorySong;
    u8 dynamicMoveType;
    u8 wrappedBy[4];
    u16 assistPossibleMoves[6 * 4];
    u8 focusPunchBattlerId;
    u8 battlerPreventingSwitchout;
    u8 moneyMultiplier;
    u8 savedTurnActionNumber;
    u8 switchInAbilitiesCounter;
    u8 faintedActionsState;
    u8 faintedActionsBattlerId;
    u16 expValue;
    u8 field_52;
    u8 sentInPokes;
    bool8 selectionScriptFinished[4];
    u8 field_58[4];
    u8 monToSwitchIntoId[4];
    u8 field_60[4][3];
    u8 runTries;
    u8 caughtMonNick[10 + 1];
    u8 unused_2;
    u8 safariGoNearCounter;
    u8 safariPkblThrowCounter;
    u8 safariEscapeFactor;
    u8 safariCatchFactor;
    u8 linkBattleVsSpriteId_V;
    u8 linkBattleVsSpriteId_S;
    u8 formToChangeInto;
    u8 chosenMovePositions[4];
    u8 stateIdAfterSelScript[4];
    u8 unused_3[3];
    u8 field_8B;
    u8 unused_4[2];
    u8 stringMoveType;
    u8 expGetterBattlerId;
    u8 unused_5;
    u8 field_91;
    u8 field_92;
    u8 field_93;
    u8 wallyBattleState;
    u8 wallyMovesState;
    u8 wallyWaitFrames;
    u8 wallyMoveFrames;
    u8 lastTakenMove[4 * 2 * 2];
    u16 hpOnSwitchout[2];
    u32 savedBattleTypeFlags;
    u8 abilityPreventingSwitchout;
    u8 hpScale;
    u8 synchronizeMoveEffect;
    bool8 anyMonHasTransformed;
    void (*savedCallback)(void);
    u16 usedHeldItems[4];
    u8 chosenItem[4];
    u8 AI_itemType[2];
    u8 AI_itemFlags[2];
    u16 choicedMove[4];
    u16 changedItems[4];
    u8 intimidateBattler;
    u8 switchInItemsCounter;
    u8 arenaTurnCounter;
    u8 turnSideTracker;
    u8 unused_6[3];
    u8 givenExpMons;
    u8 lastTakenMoveFrom[4 * 4 * 2];
    u16 castformPalette[4][16];
    u8 field_180;
    u8 field_181;
    u8 field_182;
    u8 field_183;
    struct BattleEnigmaBerry battleEnigmaBerry;
    u8 wishPerishSongState;
    u8 wishPerishSongBattlerId;
    bool8 overworldWeatherDone;
    u8 atkCancellerTracker;
    struct BattleTvMovePoints tvMovePoints;
    struct BattleTv tv;
    u8 unused_7[0x28];
    u8 AI_monToSwitchIntoId[4];
    s8 arenaMindPoints[2];
    s8 arenaSkillPoints[2];
    u16 arenaStartHp[2];
    u8 arenaLostPlayerMons;
    u8 arenaLostOpponentMons;
    u8 alreadyStatusedMoveAttempt;
};
# 472 "include/battle.h"
struct BattleScripting
{
    s32 painSplitHp;
    s32 bideDmg;
    u8 multihitString[6];
    u8 dmgMultiplier;
    u8 twoTurnsMoveStringId;
    u8 animArg1;
    u8 animArg2;
    u16 tripleKickPower;
    u8 atk49_state;
    u8 battlerWithAbility;
    u8 multihitMoveEffect;
    u8 battler;
    u8 animTurn;
    u8 animTargetsHit;
    u8 statChanger;
    bool8 statAnimPlayed;
    u8 atk23_state;
    u8 battleStyle;
    u8 atk6C_state;
    u8 learnMoveState;
    u8 field_20;
    u8 reshowMainState;
    u8 reshowHelperState;
    u8 field_23;
    u8 windowsType;
    u8 multiplayerId;
    u8 specialTrainerBattleType;
};




struct BattleSpriteInfo
{
    u16 invisible:1;
    u16 lowHpSong:1;
    u16 behindSubstitute:1;
    u16 flag_x8:1;
    u16 hpNumbersNoBars:1;
    u16 transformSpecies;
};

struct BattleAnimationInfo
{
    u16 animArg;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 ballThrowCaseId;
    u8 field_9_x1:1;
    u8 field_9_x2:1;
    u8 field_9_x1C:3;
    u8 field_9_x20:1;
    u8 field_9_x40:1;
    u8 field_9_x80:1;
    u8 field_A;
    u8 field_B;
    s16 field_C;
    u8 field_E;
    u8 field_F;
};

struct BattleHealthboxInfo
{
    u8 partyStatusSummaryShown:1;
    u8 healthboxIsBouncing:1;
    u8 battlerIsBouncing:1;
    u8 ballAnimActive:1;
    u8 statusAnimActive:1;
    u8 animFromTableActive:1;
    u8 specialAnimActive:1;
    u8 flag_x80:1;
    u8 field_1_x1:1;
    u8 field_1_x1E:4;
    u8 field_1_x20:1;
    u8 field_1_x40:1;
    u8 field_1_x80:1;
    u8 healthboxBounceSpriteId;
    u8 battlerBounceSpriteId;
    u8 animationState;
    u8 field_5;
    u8 matrixNum;
    u8 shadowSpriteId;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
};

struct BattleBarInfo
{
    u8 healthboxSpriteId;
    s32 maxValue;
    s32 oldValue;
    s32 receivedValue;
    s32 currValue;
};

struct BattleSpriteData
{
    struct BattleSpriteInfo *battlerData;
    struct BattleHealthboxInfo *healthBoxesData;
    struct BattleAnimationInfo *animationData;
    struct BattleBarInfo *battleBars;
};



struct MonSpritesGfx
{
    void* firstDecompressed;
    void* sprites[4];
    struct SpriteTemplate templates[4];
    struct SpriteFrameImage field_74[4][4];
    u8 field_F4[0x80];
    u8 *barFontGfx;
    void *field_178;
    u16 *field_17C;
};


extern u16 gBattle_BG0_X;
extern u16 gBattle_BG0_Y;
extern u16 gBattle_BG1_X;
extern u16 gBattle_BG1_Y;
extern u16 gBattle_BG2_X;
extern u16 gBattle_BG2_Y;
extern u16 gBattle_BG3_X;
extern u16 gBattle_BG3_Y;
extern u16 gBattle_WIN0H;
extern u16 gBattle_WIN0V;
extern u16 gBattle_WIN1H;
extern u16 gBattle_WIN1V;
extern u8 gDisplayedStringBattle[300];
extern u8 gBattleTextBuff1[16];
extern u8 gBattleTextBuff2[16];
extern u8 gBattleTextBuff3[16];
extern u32 gBattleTypeFlags;
extern u8 gBattleTerrain;
extern u32 gUnknown_02022FF4;
extern u8 *gUnknown_0202305C;
extern u8 *gUnknown_02023060;
extern u8 gBattleBufferA[4][0x200];
extern u8 gBattleBufferB[4][0x200];
extern u8 gActiveBattler;
extern u32 gBattleControllerExecFlags;
extern u8 gBattlersCount;
extern u16 gBattlerPartyIndexes[4];
extern u8 gBattlerPositions[4];
extern u8 gActionsByTurnOrder[4];
extern u8 gBattlerByTurnOrder[4];
extern u8 gCurrentTurnActionNumber;
extern u8 gCurrentActionFuncId;
extern struct BattlePokemon gBattleMons[4];
extern u8 gBattlerSpriteIds[4];
extern u8 gCurrMovePos;
extern u8 gChosenMovePos;
extern u16 gCurrentMove;
extern u16 gChosenMove;
extern u16 gCalledMove;
extern s32 gBattleMoveDamage;
extern s32 gHpDealt;
extern s32 gTakenDmg[4];
extern u16 gLastUsedItem;
extern u8 gLastUsedAbility;
extern u8 gBattlerAttacker;
extern u8 gBattlerTarget;
extern u8 gBattlerFainted;
extern u8 gEffectBattler;
extern u8 gPotentialItemEffectBattler;
extern u8 gAbsentBattlerFlags;
extern u8 gCritMultiplier;
extern u8 gMultiHitCounter;
extern const u8 *gBattlescriptCurrInstr;
extern u32 gUnusedBattleMainVar;
extern u8 gChosenActionByBattler[4];
extern const u8 *gSelectionBattleScripts[4];
extern const u8 *gPalaceSelectionBattleScripts[4];
extern u16 gLastPrintedMoves[4];
extern u16 gLastMoves[4];
extern u16 gLastLandedMoves[4];
extern u16 gLastHitByType[4];
extern u16 gLastResultingMoves[4];
extern u16 gLockedMoves[4];
extern u8 gLastHitBy[4];
extern u16 gChosenMoveByBattler[4];
extern u8 gMoveResultFlags;
extern u32 gHitMarker;
extern u8 gTakenDmgByBattler[4];
extern u8 gUnknown_0202428C;
extern u16 gSideStatuses[2];
extern struct SideTimer gSideTimers[2];
extern u32 gStatuses3[4];
extern struct DisableStruct gDisableStructs[4];
extern u16 gPauseCounterBattle;
extern u16 gPaydayMoney;
extern u16 gRandomTurnNumber;
extern u8 gBattleCommunication[0x8];
extern u8 gBattleOutcome;
extern struct ProtectStruct gProtectStructs[4];
extern struct SpecialStatus gSpecialStatuses[4];
extern u16 gBattleWeather;
extern struct WishFutureKnock gWishFutureKnock;
extern u16 gIntroSlideFlags;
extern u8 gSentPokesToOpponent[2];
extern u16 gDynamicBasePower;
extern u16 gExpShareExp;
extern struct BattleEnigmaBerry gEnigmaBerries[4];
extern struct BattleScripting gBattleScripting;
extern struct BattleStruct *gBattleStruct;
extern u8 *gLinkBattleSendBuffer;
extern u8 *gLinkBattleRecvBuffer;
extern struct BattleResources *gBattleResources;
extern u8 gActionSelectionCursor[4];
extern u8 gMoveSelectionCursor[4];
extern u8 gBattlerStatusSummaryTaskId[4];
extern u8 gBattlerInMenuId;
extern bool8 gDoingBattleAnim;
extern u32 gTransformedPersonalities[4];
extern u8 gPlayerDpadHoldFrames;
extern struct BattleSpriteData *gBattleSpritesDataPtr;
extern struct MonSpritesGfx *gMonSpritesGfxPtr;
extern struct BattleHealthboxInfo *gUnknown_020244D8;
extern struct BattleHealthboxInfo *gUnknown_020244DC;
extern u16 gBattleMovePower;
extern u16 gMoveToLearn;
extern u8 gBattleMonForms[4];

extern void (*gPreBattleCallback1)(void);
extern void (*gBattleMainFunc)(void);
extern struct BattleResults gBattleResults;
extern u8 gLeveledUpInBattle;
extern void (*gBattlerControllerFuncs[4])(void);
extern u8 gHealthboxSpriteIds[4];
extern u8 gMultiUsePlayerCursor;
extern u8 gNumberOfMovesToChoose;
extern u8 gUnknown_03005D7C[4];
# 3 "src/contest_ai.c" 2
# 1 "include/contest.h" 1



# 1 "include/palette.h" 1
# 17 "include/palette.h"
enum
{
    FAST_FADE_IN_FROM_WHITE,
    FAST_FADE_OUT_TO_WHITE,
    FAST_FADE_IN_FROM_BLACK,
    FAST_FADE_OUT_TO_BLACK,
};

struct PaletteFadeControl
{
    u32 multipurpose1;
    u8 delayCounter:6;
    u16 y:5;
    u16 targetY:5;
    u16 blendColor:15;
    bool16 active:1;
    u16 multipurpose2:6;
    bool16 yDec:1;
    bool16 bufferTransferDisabled:1;
    u16 mode:2;
    bool16 shouldResetBlendRegisters:1;
    bool16 hardwareFadeFinishing:1;
    u16 softwareFadeFinishingCounter:5;
    bool16 softwareFadeFinishing:1;
    bool16 objPaletteToggle:1;
    u8 deltaY:4;
};

extern struct PaletteFadeControl gPaletteFade;
extern u32 gPlttBufferTransferPending;
extern u8 gPaletteDecompressionBuffer[];
extern u16 gPlttBufferUnfaded[];
extern u16 gPlttBufferFaded[];

void LoadCompressedPalette(const u32 *, u16, u16);
void LoadPalette(const void *, u16, u16);
void FillPalette(u16, u16, u16);
void TransferPlttBuffer(void);
u8 UpdatePaletteFade(void);
void ResetPaletteFade(void);
void ReadPlttIntoBuffers(void);
bool8 BeginNormalPaletteFade(u32, s8, u8, u8, u16);
bool8 unref_sub_8073D3C(u32, u8, u8, u8, u16);
void unref_sub_8073D84(u8, u32 *);
void ResetPaletteStructByUid(u16);
void ResetPaletteStruct(u8);
void ResetPaletteFadeControl(void);
void unref_sub_8074168(u16);
void unref_sub_8074194(u16);
void InvertPlttBuffer(u32);
void TintPlttBuffer(u32, s8, s8, s8);
void UnfadePlttBuffer(u32);
void BeginFastPaletteFade(u8);
void BeginHardwarePaletteFade(u8, u8, u8, u8, u8);
void BlendPalettes(u32 selectedPalettes, u8 coeff, u16 color);
void BlendPalettesUnfaded(u32, u8, u16);
void sub_80A2C44(u32 a1, s8 a2, u8 a3, u8 a4, u16 a5, u8 a6, u8 a7);
void TintPalette_GrayScale(u16 *palette, u16 count);
void TintPalette_GrayScale2(u16 *palette, u16 count);
void TintPalette_SepiaTone(u16 *palette, u16 count);
void TintPalette_CustomTone(u16 *palette, u16 count, u16 rTone, u16 gTone, u16 bTone);
# 5 "include/contest.h" 2
# 1 "include/constants/contest.h" 1
# 6 "include/contest.h" 2

enum
{
    CONTEST_DEBUG_MODE_OFF,

    CONTEST_DEBUG_MODE_PRINT_POINT_TOTAL,

    CONTEST_DEBUG_MODE_PRINT_UNK_C,

    CONTEST_DEBUG_MODE_PRINT_UNK_D
};

enum
{
    CONTEST_EFFECT_HIGHLY_APPEALING,
    CONTEST_EFFECT_USER_MORE_EASILY_STARTLED,
    CONTEST_EFFECT_GREAT_APPEAL_BUT_NO_MORE_MOVES,
    CONTEST_EFFECT_REPETITION_NOT_BORING,
    CONTEST_EFFECT_AVOID_STARTLE_ONCE,
    CONTEST_EFFECT_AVOID_STARTLE,
    CONTEST_EFFECT_AVOID_STARTLE_SLIGHTLY,
    CONTEST_EFFECT_USER_LESS_EASILY_STARTLED,
    CONTEST_EFFECT_STARTLE_FRONT_MON,
    CONTEST_EFFECT_SLIGHTLY_STARTLE_PREV_MONS,
    CONTEST_EFFECT_STARTLE_PREV_MON,
    CONTEST_EFFECT_STARTLE_PREV_MONS,
    CONTEST_EFFECT_BADLY_STARTLE_FRONT_MON,
    CONTEST_EFFECT_BADLY_STARTLE_PREV_MONS,
    CONTEST_EFFECT_STARTLE_PREV_MON_2,
    CONTEST_EFFECT_STARTLE_PREV_MONS_2,
    CONTEST_EFFECT_SHIFT_JUDGE_ATTENTION,
    CONTEST_EFFECT_STARTLE_MON_WITH_JUDGES_ATTENTION,
    CONTEST_EFFECT_JAMS_OTHERS_BUT_MISS_ONE_TURN,
    CONTEST_EFFECT_STARTLE_MONS_SAME_TYPE_APPEAL,
    CONTEST_EFFECT_STARTLE_MONS_COOL_APPEAL,
    CONTEST_EFFECT_STARTLE_MONS_BEAUTY_APPEAL,
    CONTEST_EFFECT_STARTLE_MONS_CUTE_APPEAL,
    CONTEST_EFFECT_STARTLE_MONS_SMART_APPEAL,
    CONTEST_EFFECT_STARTLE_MONS_TOUGH_APPEAL,
    CONTEST_EFFECT_MAKE_FOLLOWING_MON_NERVOUS,
    CONTEST_EFFECT_MAKE_FOLLOWING_MONS_NERVOUS,
    CONTEST_EFFECT_WORSEN_CONDITION_OF_PREV_MONS,
    CONTEST_EFFECT_BADLY_STARTLES_MONS_IN_GOOD_CONDITION,
    CONTEST_EFFECT_BETTER_IF_FIRST,
    CONTEST_EFFECT_BETTER_IF_LAST,
    CONTEST_EFFECT_APPEAL_AS_GOOD_AS_PREV_ONES,
    CONTEST_EFFECT_APPEAL_AS_GOOD_AS_PREV_ONE,
    CONTEST_EFFECT_BETTER_WHEN_LATER,
    CONTEST_EFFECT_QUALITY_DEPENDS_ON_TIMING,
    CONTEST_EFFECT_BETTER_IF_SAME_TYPE,
    CONTEST_EFFECT_BETTER_IF_DIFF_TYPE,
    CONTEST_EFFECT_AFFECTED_BY_PREV_APPEAL,
    CONTEST_EFFECT_IMPROVE_CONDITION_PREVENT_NERVOUSNESS,
    CONTEST_EFFECT_BETTER_WITH_GOOD_CONDITION,
    CONTEST_EFFECT_NEXT_APPEAL_EARLIER,
    CONTEST_EFFECT_NEXT_APPEAL_LATER,
    CONTEST_EFFECT_MAKE_SCRAMBLING_TURN_ORDER_EASIER,
    CONTEST_EFFECT_SCRAMBLE_NEXT_TURN_ORDER,
    CONTEST_EFFECT_EXCITE_AUDIENCE_IN_ANY_CONTEST,
    CONTEST_EFFECT_BADLY_STARTLE_MONS_WITH_GOOD_APPEALS,
    CONTEST_EFFECT_BETTER_WHEN_AUDIENCE_EXCITED,
    CONTEST_EFFECT_DONT_EXCITE_AUDIENCE
};

enum
{
    COMBO_STARTER_RAIN_DANCE = 1,
    COMBO_STARTER_RAGE,
    COMBO_STARTER_FOCUS_ENERGY,
    COMBO_STARTER_HYPNOSIS,
    COMBO_STARTER_ENDURE,
    COMBO_STARTER_HORN_ATTACK,
    COMBO_STARTER_SWORDS_DANCE,
    COMBO_STARTER_STOCKPILE,
    COMBO_STARTER_SUNNY_DAY,
    COMBO_STARTER_REST,
    COMBO_STARTER_VICE_GRIP,
    COMBO_STARTER_DEFENSE_CURL,
    COMBO_STARTER_CHARGE,
    COMBO_STARTER_ROCK_THROW,
    COMBO_STARTER_YAWN,
    COMBO_STARTER_SCARY_FACE,
    COMBO_STARTER_POWDER_SNOW,
    COMBO_STARTER_LOCK_ON,
    COMBO_STARTER_SOFT_BOILED,
    COMBO_STARTER_MEAN_LOOK,
    COMBO_STARTER_SCRATCH,
    COMBO_STARTER_GROWTH,
    COMBO_STARTER_HAIL,
    COMBO_STARTER_SANDSTORM,
    COMBO_STARTER_BELLY_DRUM,
    COMBO_STARTER_MIND_READER,
    COMBO_STARTER_DRAGON_BREATH,
    COMBO_STARTER_DRAGON_RAGE,
    COMBO_STARTER_DRAGON_DANCE,
    COMBO_STARTER_SURF,
    COMBO_STARTER_DIVE,
    COMBO_STARTER_STRING_SHOT,
    COMBO_STARTER_LEER,
    COMBO_STARTER_TAUNT,
    COMBO_STARTER_CHARM,
    COMBO_STARTER_HARDEN,
    COMBO_STARTER_SING,
    COMBO_STARTER_EARTHQUAKE,
    COMBO_STARTER_DOUBLE_TEAM,
    COMBO_STARTER_CURSE,
    COMBO_STARTER_SWEET_SCENT,
    COMBO_STARTER_SLUDGE,
    COMBO_STARTER_SLUDGE_BOMB,
    COMBO_STARTER_THUNDER_PUNCH,
    COMBO_STARTER_FIRE_PUNCH,
    COMBO_STARTER_ICE_PUNCH,
    COMBO_STARTER_PECK,
    COMBO_STARTER_METAL_SOUND,
    COMBO_STARTER_MUD_SPORT,
    COMBO_STARTER_WATER_SPORT,
    COMBO_STARTER_BONE_CLUB,
    COMBO_STARTER_BONEMERANG,
    COMBO_STARTER_BONE_RUSH,
    COMBO_STARTER_SAND_ATTACK,
    COMBO_STARTER_MUD_SLAP,
    COMBO_STARTER_FAKE_OUT,
    COMBO_STARTER_PSYCHIC,
    COMBO_STARTER_KINESIS,
    COMBO_STARTER_CONFUSION,
    COMBO_STARTER_POUND,
    COMBO_STARTER_SMOG,
    COMBO_STARTER_CALM_MIND
};

enum
{
    CONTEST_STRING_MORE_CONSCIOUS,
    CONTEST_STRING_NO_APPEAL,
    CONTEST_STRING_SETTLE_DOWN,
    CONTEST_STRING_OBLIVIOUS_TO_OTHERS,
    CONTEST_STRING_LESS_AWARE,
    CONTEST_STRING_STOPPED_CARING,
    CONTEST_STRING_STARTLE_ATTEMPT,
    CONTEST_STRING_DAZZLE_ATTEMPT,
    CONTEST_STRING_JUDGE_LOOK_AWAY2,
    CONTEST_STRING_UNNERVE_ATTEMPT,
    CONTEST_STRING_NERVOUS,
    CONTEST_STRING_UNNERVE_WAITING,
    CONTEST_STRING_TAUNT_WELL,
    CONTEST_STRING_REGAINED_FORM,
    CONTEST_STRING_JAM_WELL,
    CONTEST_STRING_HUSTLE_STANDOUT,
    CONTEST_STRING_WORK_HARD_UNNOTICED,
    CONTEST_STRING_WORK_BEFORE,
    CONTEST_STRING_APPEAL_NOT_WELL,
    CONTEST_STRING_WORK_PRECEDING,
    CONTEST_STRING_APPEAL_NOT_WELL2,
    CONTEST_STRING_APPEAL_NOT_SHOWN_WELL,
    CONTEST_STRING_APPEAL_SLIGHTLY_WELL,
    CONTEST_STRING_APPEAL_PRETTY_WELL,
    CONTEST_STRING_APPEAL_EXCELLENTLY,
    CONTEST_STRING_APPEAL_DUD,
    CONTEST_STRING_APPEAL_NOT_VERY_WELL,
    CONTEST_STRING_APPEAL_SLIGHTLY_WELL2,
    CONTEST_STRING_APPEAL_PRETTY_WELL2,
    CONTEST_STRING_APPEAL_VERY_WELL,
    CONTEST_STRING_APPEAL_EXCELLENTLY2,
    CONTEST_STRING_SAME_TYPE_GOOD,
    CONTEST_STRING_DIFF_TYPE_GOOD,
    CONTEST_STRING_STOOD_OUT_AS_MUCH,
    CONTEST_STRING_NOT_AS_WELL,
    CONTEST_STRING_CONDITION_ROSE,
    CONTEST_STRING_HOT_STATUS,
    CONTEST_STRING_MOVE_UP_LINE,
    CONTEST_STRING_MOVE_BACK_LINE,
    CONTEST_STRING_SCRAMBLE_ORDER,
    CONTEST_STRING_JUDGE_EXPECTANTLY2,
    CONTEST_STRING_WENT_OVER_WELL,
    CONTEST_STRING_WENT_OVER_VERY_WELL,
    CONTEST_STRING_APPEAL_COMBO_EXCELLENTLY,
    CONTEST_STRING_AVERT_GAZE,
    CONTEST_STRING_AVOID_SEEING,
    CONTEST_STRING_NOT_FAZED,
    CONTEST_STRING_LITTLE_DISTRACTED,
    CONTEST_STRING_ATTEMPT_STARTLE,
    CONTEST_STRING_LOOKED_DOWN,
    CONTEST_STRING_TURNED_BACK,
    CONTEST_STRING_UTTER_CRY,
    CONTEST_STRING_LEAPT_UP,
    CONTEST_STRING_TRIPPED_OVER,
    CONTEST_STRING_MESSED_UP2,
    CONTEST_STRING_FAILED_TARGET_NERVOUS,
    CONTEST_STRING_FAILED_ANYONE_NERVOUS,
    CONTEST_STRING_IGNORED,
    CONTEST_STRING_NO_CONDITION_IMPROVE,
    CONTEST_STRING_BAD_CONDITION_WEAK_APPEAL,
    CONTEST_STRING_UNAFFECTED,
    CONTEST_STRING_ATTRACTED_ATTENTION,
    CONTEST_STRING_NONE = 255
};

enum {
    CONTEST_RANK_NORMAL,
    CONTEST_RANK_SUPER,
    CONTEST_RANK_HYPER,
    CONTEST_RANK_MASTER,
    CONTEST_RANK_LINK
};

enum {
    CONTEST_FILTER_NONE,
    CONTEST_FILTER_NO_POSTGAME,
    CONTEST_FILTER_ONLY_POSTGAME
};

struct ContestPokemon
{
             u16 species;
             u8 nickname[10 + 1];
             u8 trainerName[7 + 1];
             u8 trainerGfxId;
             u32 aiChecks;
             u8 whichRank:2;
    u8 aiPool_Cool:1;
    u8 aiPool_Beauty:1;
    u8 aiPool_Cute:1;
    u8 aiPool_Smart:1;
    u8 aiPool_Tough:1;
             u16 moves[4];
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             u8 sheen;
             u8 unk2C[12];
             u32 personality;
             u32 otId;
};

struct Shared1A004
{
    u16 cachedWindowPalettes[16][16];
    u16 unk18204[0x200];
    u16 unk18604[0x200];
    u8 savedJunk[0x800];
};

struct ContestStruct_field_18
{
    u16 species;
    u16 unk2;
    u8 unk4_0:1;
    u8 unk5;
    u32 unk8;
    u32 unkC;
    u32 unk10;
};

struct Contest
{
            u8 playerMoveChoice;
            u8 turnNumber;
            u8 unused2[4];
            u16 unk1920A_0:1;
    u16 unk1920A_1:1;
    u16 unk1920A_2:1;
    u16 unk1920A_3:1;
    u16 unk1920A_4:1;
    u16 isShowingApplauseMeter:1;
    u16 applauseMeterIsMoving:1;
    u16 unk1920A_7:1;
            u16 unk1920B_0:1;
    u16 unk1920B_1:1;
    u16 unk1920B_2:1;
            u8 mainTaskId;
            u8 unk1920D[4];
            u8 unk19211;
            u8 unk19212;
            u8 filler19213;
             u8 unk19214;
             u8 unk19215;
             u8 unk19216;
             s8 applauseLevel;
                u8 prevTurnOrder[4];
                u32 unk1921C;
    u16 moveHistory[5][4];
    u8 excitementHistory[5][4];
    u8 applauseMeterSpriteId;
                u8 contestSetupState;
                u8 unk1925E;
};

struct ContestantStatus
{
             s16 appeal1;
             s16 appeal2;
             s16 pointTotal;
             u16 currMove;
             u16 prevMove;
             u8 moveCategory;
             u8 ranking:2;
    u8 unkB_2:2;
    u8 moveRepeatCount:3;
    u8 noMoreTurns:1;
             u8 nervous:1;
    u8 numTurnsSkipped:2;
             s8 condition;
             u8 jam;
             u8 jamReduction;


             u8 resistant:1;
    u8 immune:1;
    u8 moreEasilyStartled:1;
    u8 usedRepeatableMove:1;
    u8 conditionMod:2;
    u8 turnOrderMod:2;
             u8 turnOrderModAction:2;
    u8 turnSkipped:1;
    u8 exploded:1;
    u8 overrideCategoryExcitementMod:1;
    u8 appealTripleCondition:1;

             u8 jamSafetyCount;
             u8 effectStringId;
             u8 effectStringId2;
             u8 disappointedRepeat:1;
    u8 unk15_1:1;
    u8 unk15_2:1;
    u8 unk15_3:1;
    u8 hasJudgesAttention:1;
    u8 judgesAttentionWasRemoved:1;
    u8 unk15_6:1;
             u8 unk16;
             u8 unk17;
             u8 unk18;
             u8 nextTurnOrder;
             u8 attentionLevel;
             u8 unk1B;
};

struct UnknownContestStruct7
{
    u8 turnOrder[4];
    s16 jam;
    s16 jam2;
    u8 jamQueue[5];
    u8 unnervedPokes[4];
    u8 contestant;
};

struct ContestAIInfo
{
             u8 aiState;
             u16 nextMove;
             u8 nextMoveIndex;
             u8 unk5[4];
             u8 aiAction;
             u8 fillerA[0x6];
             u8 currentAICheck;
             u32 aiChecks;
             s16 scriptResult;
             s16 scriptArr[3];
             const u8 *stack[8];
             u8 stackSize;
             u8 contestantId;
};

struct UnknownContestStruct5
{
    s8 bits_0;
    u8 excitementFrozen:1;
    u8 excitementFreezer:3;
    s8 unk2;
};

struct UnknownContestStruct4
{
    u8 unk0;
    u8 unk1;
    u8 unk2_0:1;
    u8 unk2_1:1;
    u8 unk2_2:1;
};

struct UnknownContestStruct6
{
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
};

struct ContestResourcesField1C
{
    u16 unk0[5];
    s16 unkA;
    u8 unkC;
    u8 unkD;
    u8 unkE_1:1;
    u8 unkE_2:1;
};

struct ContestResourcesField20
{
    u8 filler_00[0x0C];
};

struct ContestResources
{
    struct Contest *contest;
    struct ContestantStatus *status;
    struct UnknownContestStruct7 *field_8;
    struct ContestAIInfo *aiData;
    struct UnknownContestStruct5 *field_10;
    struct UnknownContestStruct4 *field_14;
    struct ContestStruct_field_18 *field_18;
    struct ContestResourcesField1C * field_1c;
    struct ContestResourcesField20 * field_20;
    u8 * contestBgTilemaps[4];
    void * field_34;
    void * field_38;
    void * field_3c;
};
# 439 "include/contest.h"
extern struct ContestPokemon gContestMons[4];
extern s16 gContestMonConditions[4];
extern s16 gUnknown_02039F08[4];
extern s16 gUnknown_02039F10[4];
extern s16 gUnknown_02039F18[4];
extern u8 gContestFinalStandings[4];
extern u8 gContestMonPartyIndex;
extern u8 gContestPlayerMonIndex;
extern u8 gContestantTurnOrder[4];
extern u8 gLinkContestFlags;
extern u8 gUnknown_02039F2B;
extern u16 gSpecialVar_ContestCategory;
extern u16 gSpecialVar_ContestRank;
extern u8 gNumLinkContestPlayers;
extern u8 gHighestRibbonRank;
extern struct ContestResources *gContestResources;
extern u8 sContestBgCopyFlags;
extern struct ContestWinner gUnknown_02039F3C;
extern u8 gUnknown_02039F5C;
extern u8 gUnknown_02039F5D;

extern u32 gContestRngValue;


void ResetLinkContestBoolean(void);
void LoadContestBgAfterMoveAnim(void);
void CB2_StartContest(void);
void sub_80DA8C8(u8 partyIndex);
void sub_80DAB8C(u8 contestType, u8 rank);
void sub_80DACBC(u8 contestType, u8 rank, bool32 isPostgame);
u8 sub_80DAE0C(struct Pokemon *pkmn);
void sub_80DB09C(u8 contestCategory);
bool8 IsSpeciesNotUnown(u16 species);
bool8 Contest_IsMonsTurnDisabled(u8 a);
void SaveLinkContestResults(void);
void SortContestants(bool8 a);
void SetContestantEffectStringID(u8 a, u8 b);
void SetContestantEffectStringID2(u8 a, u8 b);
void SetStartledString(u8 contestant, u8 jam);
void MakeContestantNervous(u8 p);
s8 Contest_GetMoveExcitement(u16 move);
bool8 sub_80DE1E8(u8 a);
void Contest_PrintTextToBg0WindowAt(u32 windowId, u8 *currChar, s32 x, s32 y, s32 fontId);
void ResetContestLinkResults(void);
bool8 sub_80DEDA8(u8 a);
u8 sub_80DEFA8(u8 a, u8 b);
void ClearContestWinnerPicsInContestHall(void);
void sub_80DFA08(struct ContestPokemon *mon, s32 language);


void sub_81D9DE4(u8 taskId);
void sub_80FCF40(u8);
void sub_80FCFD0(u8);
void sub_80F8714(u8);
bool32 sub_80FC670(s16 *);
bool32 sub_80FC4F4(void *, u16);
bool8 sub_80FC55C(void);
bool8 sub_80FC530(u8);
u8 sub_80F86E0(u8 *);
void sub_80FC9F8(u8 taskId);
# 4 "src/contest_ai.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);





void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 5 "src/contest_ai.c" 2
# 1 "include/contest_ai.h" 1




enum
{
    CONTESTAI_SETTING_UP,
    CONTESTAI_PROCESSING,
    CONTESTAI_FINISHED,
    CONTESTAI_DO_NOT_PROCESS
};

void ContestAI_ResetAI(u8);
u8 ContestAI_GetActionToUse(void);
# 6 "src/contest_ai.c" 2
# 1 "include/contest_effect.h" 1



struct ContestMove
{
    u8 effect;
    u8 contestCategory:3;
    u8 comboStarterId;
    u8 comboMoves[4];
};

struct ContestEffect
{
    u8 effectType;
    u8 appeal;
    u8 jam;
};

extern const struct ContestMove gContestMoves[];
extern const struct ContestEffect gContestEffects[];
extern const u8 *const gContestEffectDescriptionPointers[];
extern const u8 *const gContestMoveTypeTextPointers[];

bool8 AreMovesContestCombo(u16 lastMove, u16 nextMove);
# 7 "src/contest_ai.c" 2

extern const u8 *gAIScriptPtr;
extern const u8 *gContestAIChecks[];

static void ContestAICmd_score(void);
static void ContestAICmd_get_turn(void);
static void ContestAICmd_if_turn_less_than(void);
static void ContestAICmd_if_turn_more_than(void);
static void ContestAICmd_if_turn_eq(void);
static void ContestAICmd_if_turn_not_eq(void);
static void ContestAICmd_get_excitement(void);
static void ContestAICmd_if_excitement_less_than(void);
static void ContestAICmd_if_excitement_more_than(void);
static void ContestAICmd_if_excitement_eq(void);
static void ContestAICmd_if_excitement_not_eq(void);
static void ContestAICmd_get_user_order(void);
static void ContestAICmd_if_user_order_less_than(void);
static void ContestAICmd_if_user_order_more_than(void);
static void ContestAICmd_if_user_order_eq(void);
static void ContestAICmd_if_user_order_not_eq(void);
static void ContestAICmd_get_user_condition(void);
static void ContestAICmd_if_user_condition_less_than(void);
static void ContestAICmd_if_user_condition_more_than(void);
static void ContestAICmd_if_user_condition_eq(void);
static void ContestAICmd_if_user_condition_not_eq(void);
static void ContestAICmd_unk_15(void);
static void ContestAICmd_unk_16(void);
static void ContestAICmd_unk_17(void);
static void ContestAICmd_unk_18(void);
static void ContestAICmd_unk_19(void);
static void ContestAICmd_unk_1A(void);
static void ContestAICmd_unk_1B(void);
static void ContestAICmd_unk_1C(void);
static void ContestAICmd_unk_1D(void);
static void ContestAICmd_unk_1E(void);
static void ContestAICmd_get_contest_type(void);
static void ContestAICmd_if_contest_type_eq(void);
static void ContestAICmd_if_contest_type_not_eq(void);
static void ContestAICmd_get_move_excitement(void);
static void ContestAICmd_if_move_excitement_less_than(void);
static void ContestAICmd_if_move_excitement_greater_than(void);
static void ContestAICmd_if_move_excitement_eq(void);
static void ContestAICmd_if_move_excitement_not_eq(void);
static void ContestAICmd_get_move_effect(void);
static void ContestAICmd_if_move_effect_eq(void);
static void ContestAICmd_if_move_effect_not_eq(void);
static void ContestAICmd_get_move_effect_type(void);
static void ContestAICmd_if_move_effect_type_eq(void);
static void ContestAICmd_if_move_effect_type_not_eq(void);
static void ContestAICmd_check_most_appealing_move(void);
static void ContestAICmd_if_most_appealing_move(void);
static void ContestAICmd_unk_2F(void);
static void ContestAICmd_unk_30(void);
static void ContestAICmd_unk_31(void);
static void ContestAICmd_unk_32(void);
static void ContestAICmd_unk_33(void);
static void ContestAICmd_unk_34(void);
static void ContestAICmd_unk_35(void);
static void ContestAICmd_unk_36(void);
static void ContestAICmd_unk_37(void);
static void ContestAICmd_unk_38(void);
static void ContestAICmd_unk_39(void);
static void ContestAICmd_unk_3A(void);
static void ContestAICmd_get_move_used_count(void);
static void ContestAICmd_if_most_used_count_less_than(void);
static void ContestAICmd_if_most_used_count_more_than(void);
static void ContestAICmd_if_most_used_count_eq(void);
static void ContestAICmd_if_most_used_count_not_eq(void);
static void ContestAICmd_check_combo_starter(void);
static void ContestAICmd_if_combo_starter(void);
static void ContestAICmd_if_not_combo_starter(void);
static void ContestAICmd_check_combo_finisher(void);
static void ContestAICmd_if_combo_finisher(void);
static void ContestAICmd_if_not_combo_finisher(void);
static void ContestAICmd_check_would_finish_combo(void);
static void ContestAICmd_if_would_finish_combo(void);
static void ContestAICmd_if_would_not_finish_combo(void);
static void ContestAICmd_get_condition(void);
static void ContestAICmd_if_condition_less_than(void);
static void ContestAICmd_if_condition_more_than(void);
static void ContestAICmd_if_condition_eq(void);
static void ContestAICmd_if_condition_not_eq(void);
static void ContestAICmd_get_used_combo_starter(void);
static void ContestAICmd_if_used_combo_starter_less_than(void);
static void ContestAICmd_if_used_combo_starter_more_than(void);
static void ContestAICmd_if_used_combo_starter_eq(void);
static void ContestAICmd_if_used_combo_starter_not_eq(void);
static void ContestAICmd_check_can_participate(void);
static void ContestAICmd_if_can_participate(void);
static void ContestAICmd_if_cannot_participate(void);
static void ContestAICmd_get_val_812A188(void);
static void ContestAICmd_unk_57(void);
static void ContestAICmd_contest_58(void);
static void ContestAICmd_unk_59(void);
static void ContestAICmd_unk_5A(void);
static void ContestAICmd_unk_5B(void);
static void ContestAICmd_unk_5C(void);
static void ContestAICmd_unk_5D(void);
static void ContestAICmd_unk_5E(void);
static void ContestAICmd_unk_5F(void);
static void ContestAICmd_unk_60(void);
static void ContestAICmd_unk_61(void);
static void ContestAICmd_unk_62(void);
static void ContestAICmd_unk_63(void);
static void ContestAICmd_unk_64(void);
static void ContestAICmd_unk_65(void);
static void ContestAICmd_unk_66(void);
static void ContestAICmd_unk_67(void);
static void ContestAICmd_unk_68(void);
static void ContestAICmd_unk_69(void);
static void ContestAICmd_unk_6A(void);
static void ContestAICmd_unk_6B(void);
static void ContestAICmd_unk_6C(void);
static void ContestAICmd_unk_6D(void);
static void ContestAICmd_unk_6E(void);
static void ContestAICmd_unk_6F(void);
static void ContestAICmd_unk_70(void);
static void ContestAICmd_unk_71(void);
static void ContestAICmd_unk_72(void);
static void ContestAICmd_unk_73(void);
static void ContestAICmd_unk_74(void);
static void ContestAICmd_unk_75(void);
static void ContestAICmd_unk_76(void);
static void ContestAICmd_unk_77(void);
static void ContestAICmd_unk_78(void);
static void ContestAICmd_unk_79(void);
static void ContestAICmd_unk_7A(void);
static void ContestAICmd_unk_7B(void);
static void ContestAICmd_unk_7C(void);
static void ContestAICmd_if_random(void);
static void ContestAICmd_unk_7E(void);
static void ContestAICmd_jump(void);
static void ContestAICmd_call(void);
static void ContestAICmd_end(void);
static void ContestAICmd_check_user_has_exciting_move(void);
static void ContestAICmd_if_user_has_exciting_move(void);
static void ContestAICmd_if_user_doesnt_have_exciting_move(void);
static void ContestAICmd_unk_85(void);
static void ContestAICmd_unk_86(void);
static void ContestAICmd_if_effect_in_user_moveset(void);

typedef void (* ContestAICmdFunc)(void);

static const ContestAICmdFunc sContestAICmdTable[] =
{
    ContestAICmd_score,
    ContestAICmd_get_turn,
    ContestAICmd_if_turn_less_than,
    ContestAICmd_if_turn_more_than,
    ContestAICmd_if_turn_eq,
    ContestAICmd_if_turn_not_eq,
    ContestAICmd_get_excitement,
    ContestAICmd_if_excitement_less_than,
    ContestAICmd_if_excitement_more_than,
    ContestAICmd_if_excitement_eq,
    ContestAICmd_if_excitement_not_eq,
    ContestAICmd_get_user_order,
    ContestAICmd_if_user_order_less_than,
    ContestAICmd_if_user_order_more_than,
    ContestAICmd_if_user_order_eq,
    ContestAICmd_if_user_order_not_eq,
    ContestAICmd_get_user_condition,
    ContestAICmd_if_user_condition_less_than,
    ContestAICmd_if_user_condition_more_than,
    ContestAICmd_if_user_condition_eq,
    ContestAICmd_if_user_condition_not_eq,
    ContestAICmd_unk_15,
    ContestAICmd_unk_16,
    ContestAICmd_unk_17,
    ContestAICmd_unk_18,
    ContestAICmd_unk_19,
    ContestAICmd_unk_1A,
    ContestAICmd_unk_1B,
    ContestAICmd_unk_1C,
    ContestAICmd_unk_1D,
    ContestAICmd_unk_1E,
    ContestAICmd_get_contest_type,
    ContestAICmd_if_contest_type_eq,
    ContestAICmd_if_contest_type_not_eq,
    ContestAICmd_get_move_excitement,
    ContestAICmd_if_move_excitement_less_than,
    ContestAICmd_if_move_excitement_greater_than,
    ContestAICmd_if_move_excitement_eq,
    ContestAICmd_if_move_excitement_not_eq,
    ContestAICmd_get_move_effect,
    ContestAICmd_if_move_effect_eq,
    ContestAICmd_if_move_effect_not_eq,
    ContestAICmd_get_move_effect_type,
    ContestAICmd_if_move_effect_type_eq,
    ContestAICmd_if_move_effect_type_not_eq,
    ContestAICmd_check_most_appealing_move,
    ContestAICmd_if_most_appealing_move,
    ContestAICmd_unk_2F,
    ContestAICmd_unk_30,
    ContestAICmd_unk_31,
    ContestAICmd_unk_32,
    ContestAICmd_unk_33,
    ContestAICmd_unk_34,
    ContestAICmd_unk_35,
    ContestAICmd_unk_36,
    ContestAICmd_unk_37,
    ContestAICmd_unk_38,
    ContestAICmd_unk_39,
    ContestAICmd_unk_3A,
    ContestAICmd_get_move_used_count,
    ContestAICmd_if_most_used_count_less_than,
    ContestAICmd_if_most_used_count_more_than,
    ContestAICmd_if_most_used_count_eq,
    ContestAICmd_if_most_used_count_not_eq,
    ContestAICmd_check_combo_starter,
    ContestAICmd_if_combo_starter,
    ContestAICmd_if_not_combo_starter,
    ContestAICmd_check_combo_finisher,
    ContestAICmd_if_combo_finisher,
    ContestAICmd_if_not_combo_finisher,
    ContestAICmd_check_would_finish_combo,
    ContestAICmd_if_would_finish_combo,
    ContestAICmd_if_would_not_finish_combo,
    ContestAICmd_get_condition,
    ContestAICmd_if_condition_less_than,
    ContestAICmd_if_condition_more_than,
    ContestAICmd_if_condition_eq,
    ContestAICmd_if_condition_not_eq,
    ContestAICmd_get_used_combo_starter,
    ContestAICmd_if_used_combo_starter_less_than,
    ContestAICmd_if_used_combo_starter_more_than,
    ContestAICmd_if_used_combo_starter_eq,
    ContestAICmd_if_used_combo_starter_not_eq,
    ContestAICmd_check_can_participate,
    ContestAICmd_if_can_participate,
    ContestAICmd_if_cannot_participate,
    ContestAICmd_get_val_812A188,
    ContestAICmd_unk_57,
    ContestAICmd_contest_58,
    ContestAICmd_unk_59,
    ContestAICmd_unk_5A,
    ContestAICmd_unk_5B,
    ContestAICmd_unk_5C,
    ContestAICmd_unk_5D,
    ContestAICmd_unk_5E,
    ContestAICmd_unk_5F,
    ContestAICmd_unk_60,
    ContestAICmd_unk_61,
    ContestAICmd_unk_62,
    ContestAICmd_unk_63,
    ContestAICmd_unk_64,
    ContestAICmd_unk_65,
    ContestAICmd_unk_66,
    ContestAICmd_unk_67,
    ContestAICmd_unk_68,
    ContestAICmd_unk_69,
    ContestAICmd_unk_6A,
    ContestAICmd_unk_6B,
    ContestAICmd_unk_6C,
    ContestAICmd_unk_6D,
    ContestAICmd_unk_6E,
    ContestAICmd_unk_6F,
    ContestAICmd_unk_70,
    ContestAICmd_unk_71,
    ContestAICmd_unk_72,
    ContestAICmd_unk_73,
    ContestAICmd_unk_74,
    ContestAICmd_unk_75,
    ContestAICmd_unk_76,
    ContestAICmd_unk_77,
    ContestAICmd_unk_78,
    ContestAICmd_unk_79,
    ContestAICmd_unk_7A,
    ContestAICmd_unk_7B,
    ContestAICmd_unk_7C,
    ContestAICmd_if_random,
    ContestAICmd_unk_7E,
    ContestAICmd_jump,
    ContestAICmd_call,
    ContestAICmd_end,
    ContestAICmd_check_user_has_exciting_move,
    ContestAICmd_if_user_has_exciting_move,
    ContestAICmd_if_user_doesnt_have_exciting_move,
    ContestAICmd_unk_85,
    ContestAICmd_unk_86,
    ContestAICmd_if_effect_in_user_moveset,
};

static void ContestAI_DoAIProcessing(void);
static bool8 sub_81563B0(u8);
static void AIStackPushVar(const u8 *);
static u8 AIStackPop(void);

void ContestAI_ResetAI(u8 contestantAI)
{
    int i;
    memset(&(*gContestResources->aiData), 0, sizeof(struct ContestAIInfo));

    for (i = 0; i < 4; i++)
        (*gContestResources->aiData).unk5[i] = 100;

    (*gContestResources->aiData).contestantId = contestantAI;
    (*gContestResources->aiData).stackSize = 0;
    (*gContestResources->aiData).aiChecks = gContestMons[(*gContestResources->aiData).contestantId].aiChecks;
}

u8 ContestAI_GetActionToUse(void)
{
    while ((*gContestResources->aiData).aiChecks != 0)
    {
        if ((*gContestResources->aiData).aiChecks & 1)
        {
            (*gContestResources->aiData).aiState = CONTESTAI_SETTING_UP;
            ContestAI_DoAIProcessing();
        }
        (*gContestResources->aiData).aiChecks >>= 1;
        (*gContestResources->aiData).currentAICheck++;
        (*gContestResources->aiData).nextMoveIndex = 0;
    }

    while (1)
    {
        u8 rval = Random() & 3;
        u8 r2 = (*gContestResources->aiData).unk5[rval];
        int i;
        for (i = 0; i < 4; i++)
        {
            if (r2 < (*gContestResources->aiData).unk5[i])
                break;
        }
        if (i == 4)
            return rval;
    }
}

static void ContestAI_DoAIProcessing(void)
{
    while ((*gContestResources->aiData).aiState != CONTESTAI_FINISHED)
    {
        switch((*gContestResources->aiData).aiState)
        {
            case CONTESTAI_DO_NOT_PROCESS:
                break;
            case CONTESTAI_SETTING_UP:
                gAIScriptPtr = gContestAIChecks[(*gContestResources->aiData).currentAICheck];

                if (gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex] == 0)
                    (*gContestResources->aiData).nextMove = 0;
                else
                    (*gContestResources->aiData).nextMove = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];
                (*gContestResources->aiData).aiState++;
                break;
            case CONTESTAI_PROCESSING:
                if ((*gContestResources->aiData).nextMove != 0)
                {
                    sContestAICmdTable[*gAIScriptPtr]();
                }
                else
                {
                    (*gContestResources->aiData).unk5[(*gContestResources->aiData).nextMoveIndex] = 0;
                    (*gContestResources->aiData).aiAction |= 1;
                }
                if ((*gContestResources->aiData).aiAction & 1)
                {
                    (*gContestResources->aiData).nextMoveIndex++;
                    if ((*gContestResources->aiData).nextMoveIndex < 4)
                        (*gContestResources->aiData).aiState = 0;
                    else

                        (*gContestResources->aiData).aiState++;
                    (*gContestResources->aiData).aiAction &= 0xFE;
                }
                break;
        }
    }
}

static u8 sub_81563B0(u8 var)
{
    int i;

    for (i = 0; i < 4; i++)
        if ((*gContestResources->field_8).turnOrder[i] == var)
            break;

    return i;
}

static void ContestAICmd_score(void)
{
    s16 score = (*gContestResources->aiData).unk5[(*gContestResources->aiData).nextMoveIndex] + (s8)gAIScriptPtr[1];

    if (score > 255)
        score = 255;
    else if (score < 0)
        score = 0;

    (*gContestResources->aiData).unk5[(*gContestResources->aiData).nextMoveIndex] = score;

    gAIScriptPtr += 2;
}

static void ContestAICmd_get_turn(void)
{
    (*gContestResources->aiData).scriptResult = (*gContestResources->contest).turnNumber;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_turn_less_than(void)
{
    ContestAICmd_get_turn();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_turn_more_than(void)
{
    ContestAICmd_get_turn();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_turn_eq(void)
{
    ContestAICmd_get_turn();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_turn_not_eq(void)
{
    ContestAICmd_get_turn();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_get_excitement(void)
{
    (*gContestResources->aiData).scriptResult = (*gContestResources->contest).applauseLevel;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_excitement_less_than(void)
{
    ContestAICmd_get_excitement();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_excitement_more_than(void)
{
    ContestAICmd_get_excitement();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_excitement_eq(void)
{
    ContestAICmd_get_excitement();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_excitement_not_eq(void)
{
    ContestAICmd_get_excitement();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_get_user_order(void)
{
    (*gContestResources->aiData).scriptResult = (*gContestResources->field_8).turnOrder[(*gContestResources->aiData).contestantId];
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_user_order_less_than(void)
{
    ContestAICmd_get_user_order();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_user_order_more_than(void)
{
    ContestAICmd_get_user_order();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_user_order_eq(void)
{
    ContestAICmd_get_user_order();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_user_order_not_eq(void)
{
    ContestAICmd_get_user_order();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_get_user_condition(void)
{
    (*gContestResources->aiData).scriptResult = (gContestResources->status)[(*gContestResources->aiData).contestantId].condition / 10;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_user_condition_less_than(void)
{
    ContestAICmd_get_user_condition();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_user_condition_more_than(void)
{
    ContestAICmd_get_user_condition();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_user_condition_eq(void)
{
    ContestAICmd_get_user_condition();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_user_condition_not_eq(void)
{
    ContestAICmd_get_user_condition();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_15(void)
{
    (*gContestResources->aiData).scriptResult = (gContestResources->status)[(*gContestResources->aiData).contestantId].pointTotal;
    gAIScriptPtr += 1;
}

static void ContestAICmd_unk_16(void)
{
    ContestAICmd_unk_15();

    if ((*gContestResources->aiData).scriptResult < (s16)((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_unk_17(void)
{
    ContestAICmd_unk_15();

    if ((*gContestResources->aiData).scriptResult > (s16)((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_unk_18(void)
{
    ContestAICmd_unk_15();

    if ((*gContestResources->aiData).scriptResult == (s16)((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_unk_19(void)
{
    ContestAICmd_unk_15();

    if ((*gContestResources->aiData).scriptResult != (s16)((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_unk_1A(void)
{
    (*gContestResources->aiData).scriptResult = gContestMonConditions[(*gContestResources->aiData).contestantId];
    gAIScriptPtr += 1;
}

static void ContestAICmd_unk_1B(void)
{
    ContestAICmd_unk_1A();

    if ((*gContestResources->aiData).scriptResult < (s16)((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_unk_1C(void)
{
    ContestAICmd_unk_1A();

    if ((*gContestResources->aiData).scriptResult > (s16)((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_unk_1D(void)
{
    ContestAICmd_unk_1A();

    if ((*gContestResources->aiData).scriptResult == (s16)((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_unk_1E(void)
{
    ContestAICmd_unk_1A();

    if ((*gContestResources->aiData).scriptResult != (s16)((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_get_contest_type(void)
{
    (*gContestResources->aiData).scriptResult = gSpecialVar_ContestCategory;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_contest_type_eq(void)
{
    ContestAICmd_get_contest_type();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_contest_type_not_eq(void)
{
    ContestAICmd_get_contest_type();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_get_move_excitement(void)
{
    (*gContestResources->aiData).scriptResult = Contest_GetMoveExcitement(gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex]);
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_move_excitement_less_than(void)
{
    ContestAICmd_get_move_excitement();

    if ((*gContestResources->aiData).scriptResult < (s8)gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_move_excitement_greater_than(void)
{
    ContestAICmd_get_move_excitement();

    if ((*gContestResources->aiData).scriptResult > (s8)gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_move_excitement_eq(void)
{
    ContestAICmd_get_move_excitement();

    if ((*gContestResources->aiData).scriptResult == (s8)gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_move_excitement_not_eq(void)
{
    ContestAICmd_get_move_excitement();

    if ((*gContestResources->aiData).scriptResult != (s8)gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_get_move_effect(void)
{
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];

    (*gContestResources->aiData).scriptResult = gContestMoves[move].effect;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_move_effect_eq(void)
{
    ContestAICmd_get_move_effect();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_move_effect_not_eq(void)
{
    ContestAICmd_get_move_effect();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_get_move_effect_type(void)
{
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];

    (*gContestResources->aiData).scriptResult = gContestEffects[gContestMoves[move].effect].effectType;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_move_effect_type_eq(void)
{
    ContestAICmd_get_move_effect_type();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_move_effect_type_not_eq(void)
{
    ContestAICmd_get_move_effect_type();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_check_most_appealing_move(void)
{
    int i;
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];
    u8 appeal = gContestEffects[gContestMoves[move].effect].appeal;

    for (i = 0; i < 4; i++)
    {
        u16 newMove = gContestMons[(*gContestResources->aiData).contestantId].moves[i];
        if (newMove != 0 && appeal < gContestEffects[gContestMoves[newMove].effect].appeal)
            break;
    }

    if (i == 4)
        (*gContestResources->aiData).scriptResult = 1;
    else
        (*gContestResources->aiData).scriptResult = 0;

    gAIScriptPtr += 1;
}

static void ContestAICmd_if_most_appealing_move(void)
{
    ContestAICmd_check_most_appealing_move();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_2F(void)
{
    int i;
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];
    u8 jam = gContestEffects[gContestMoves[move].effect].jam;

    for (i = 0; i < 4; i++)
    {
        u16 newMove = gContestMons[(*gContestResources->aiData).contestantId].moves[i];
        if (newMove != 0 && jam < gContestEffects[gContestMoves[newMove].effect].jam)
            break;
    }

    if (i == 4)
        (*gContestResources->aiData).scriptResult = 1;
    else
        (*gContestResources->aiData).scriptResult = 0;

    gAIScriptPtr += 1;
}

static void ContestAICmd_unk_30(void)
{
    ContestAICmd_unk_2F();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_31(void)
{
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];

    (*gContestResources->aiData).scriptResult = gContestEffects[gContestMoves[move].effect].appeal / 10;
    gAIScriptPtr += 1;
}

static void ContestAICmd_unk_32(void)
{
    ContestAICmd_unk_31();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_33(void)
{
    ContestAICmd_unk_31();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_34(void)
{
    ContestAICmd_unk_31();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_35(void)
{
    ContestAICmd_unk_31();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_36(void)
{
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];

    (*gContestResources->aiData).scriptResult = gContestEffects[gContestMoves[move].effect].jam / 10;
    gAIScriptPtr += 1;
}

static void ContestAICmd_unk_37(void)
{
    ContestAICmd_unk_36();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_38(void)
{
    ContestAICmd_unk_36();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_39(void)
{
    ContestAICmd_unk_36();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_3A(void)
{
    ContestAICmd_unk_36();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_get_move_used_count(void)
{
    s16 result;
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];

    if (move != (gContestResources->status)[(*gContestResources->aiData).contestantId].prevMove)
        result = 0;
    else
        result = (gContestResources->status)[(*gContestResources->aiData).contestantId].moveRepeatCount + 1;

    (*gContestResources->aiData).scriptResult = result;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_most_used_count_less_than(void)
{
    ContestAICmd_get_move_used_count();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_most_used_count_more_than(void)
{
    ContestAICmd_get_move_used_count();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_most_used_count_eq(void)
{
    ContestAICmd_get_move_used_count();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_most_used_count_not_eq(void)
{
    ContestAICmd_get_move_used_count();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_check_combo_starter(void)
{
    u8 result = 0;
    int i;
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];

    for (i = 0; i < 4; i++)
    {
        if (gContestMons[(*gContestResources->aiData).contestantId].moves[i])
        {
            result = AreMovesContestCombo(move, gContestMons[(*gContestResources->aiData).contestantId].moves[i]);
            if (result)
            {
                result = 1;
                break;
            }
        }
    }

    if (result)
        result = 1;

    (*gContestResources->aiData).scriptResult = result;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_combo_starter(void)
{
    ContestAICmd_check_combo_starter();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_if_not_combo_starter(void)
{
    ContestAICmd_check_combo_starter();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_check_combo_finisher(void)
{
    u8 result = 0;
    int i;
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];

    for (i = 0; i < 4; i++)
    {
        if (gContestMons[(*gContestResources->aiData).contestantId].moves[i])
        {
            result = AreMovesContestCombo(gContestMons[(*gContestResources->aiData).contestantId].moves[i], move);
            if (result)
            {
                result = 1;
                break;
            }
        }
    }

    if (result)
        result = 1;

    (*gContestResources->aiData).scriptResult = result;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_combo_finisher(void)
{
    ContestAICmd_check_combo_finisher();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_if_not_combo_finisher(void)
{
    ContestAICmd_check_combo_finisher();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_check_would_finish_combo(void)
{
    u8 result = 0;
    u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[(*gContestResources->aiData).nextMoveIndex];

    if ((gContestResources->status)[(*gContestResources->aiData).contestantId].prevMove)
        result = AreMovesContestCombo((gContestResources->status)[(*gContestResources->aiData).contestantId].prevMove, move);

    if (result)
        result = 1;

    (*gContestResources->aiData).scriptResult = result;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_would_finish_combo(void)
{
    ContestAICmd_check_would_finish_combo();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_if_would_not_finish_combo(void)
{
    ContestAICmd_check_would_finish_combo();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_get_condition(void)
{
    int var = sub_81563B0(gAIScriptPtr[1]);

    (*gContestResources->aiData).scriptResult = (gContestResources->status)[var].condition / 10;
    gAIScriptPtr += 2;
}

static void ContestAICmd_if_condition_less_than(void)
{
    ContestAICmd_get_condition();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_condition_more_than(void)
{
    ContestAICmd_get_condition();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_condition_eq(void)
{
    ContestAICmd_get_condition();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_condition_not_eq(void)
{
    ContestAICmd_get_condition();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_get_used_combo_starter(void)
{
    u16 result = 0;
    u8 var = sub_81563B0(gAIScriptPtr[1]);

    if (sub_80DE1E8(var))
        result = gContestMoves[(gContestResources->status)[var].prevMove].comboStarterId ? 1 : 0;

    (*gContestResources->aiData).scriptResult = result;
    gAIScriptPtr += 2;
}

static void ContestAICmd_if_used_combo_starter_less_than(void)
{
    ContestAICmd_get_used_combo_starter();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_used_combo_starter_more_than(void)
{
    ContestAICmd_get_used_combo_starter();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_used_combo_starter_eq(void)
{
    ContestAICmd_get_used_combo_starter();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_if_used_combo_starter_not_eq(void)
{
    ContestAICmd_get_used_combo_starter();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_check_can_participate(void)
{
    if (Contest_IsMonsTurnDisabled(sub_81563B0(gAIScriptPtr[1])))
        (*gContestResources->aiData).scriptResult = 0;
    else
        (*gContestResources->aiData).scriptResult = 1;

    gAIScriptPtr += 2;
}

static void ContestAICmd_if_can_participate(void)
{
    ContestAICmd_check_can_participate();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_if_cannot_participate(void)
{
    ContestAICmd_check_can_participate();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_get_val_812A188(void)
{
    u8 var = sub_81563B0(gAIScriptPtr[1]);

    (*gContestResources->aiData).scriptResult = (gContestResources->status)[var].unk15_3;
    gAIScriptPtr += 2;
}

static void ContestAICmd_unk_57(void)
{
    ContestAICmd_get_val_812A188();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_contest_58(void)
{
    ContestAICmd_get_val_812A188();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_59(void)
{
    u8 var = sub_81563B0(gAIScriptPtr[1]);

    (*gContestResources->aiData).scriptResult = (gContestResources->status)[var].pointTotal - (gContestResources->status)[(*gContestResources->aiData).contestantId].pointTotal;
    gAIScriptPtr += 2;
}

static void ContestAICmd_unk_5A(void)
{
    ContestAICmd_unk_59();

    if ((*gContestResources->aiData).scriptResult < 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_5B(void)
{
    ContestAICmd_unk_59();

    if ((*gContestResources->aiData).scriptResult > 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_5C(void)
{
    ContestAICmd_unk_59();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_5D(void)
{
    ContestAICmd_unk_59();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_5E(void)
{
    u8 var = sub_81563B0(gAIScriptPtr[1]);

    (*gContestResources->aiData).scriptResult = gContestMonConditions[var] - gContestMonConditions[(*gContestResources->aiData).contestantId];
    gAIScriptPtr += 2;
}

static void ContestAICmd_unk_5F(void)
{
    ContestAICmd_unk_5E();

    if ((*gContestResources->aiData).scriptResult < 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_60(void)
{
    ContestAICmd_unk_5E();

    if ((*gContestResources->aiData).scriptResult > 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_61(void)
{
    ContestAICmd_unk_5E();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_62(void)
{
    ContestAICmd_unk_5E();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_63(void)
{
    u8 var = sub_81563B0(gAIScriptPtr[1]);
    u8 var2 = gAIScriptPtr[2];
    u16 move = (*gContestResources->contest).moveHistory[var2][var];

    (*gContestResources->aiData).scriptResult = gContestMoves[move].effect;
    gAIScriptPtr += 3;
}

static void ContestAICmd_unk_64(void)
{
    ContestAICmd_unk_63();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_65(void)
{
    ContestAICmd_unk_63();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_66(void)
{
    ContestAICmd_unk_63();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_67(void)
{
    ContestAICmd_unk_63();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_68(void)
{
    u8 var = sub_81563B0(gAIScriptPtr[1]);
    u8 var2 = gAIScriptPtr[2];
    s8 result = (*gContestResources->contest).excitementHistory[var2][var];

    (*gContestResources->aiData).scriptResult = result;
    gAIScriptPtr += 3;
}

static void ContestAICmd_unk_69(void)
{
    ContestAICmd_unk_68();

    if ((*gContestResources->aiData).scriptResult < gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_6A(void)
{
    ContestAICmd_unk_68();

    if ((*gContestResources->aiData).scriptResult > gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_6B(void)
{
    ContestAICmd_unk_68();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_6C(void)
{
    ContestAICmd_unk_68();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_6D(void)
{
    u8 var = sub_81563B0(gAIScriptPtr[1]);
    u8 var2 = gAIScriptPtr[2];
    u16 move = (*gContestResources->contest).moveHistory[var2][var];

    (*gContestResources->aiData).scriptResult = gContestEffects[gContestMoves[move].effect].effectType;
    gAIScriptPtr += 3;
}

static void ContestAICmd_unk_6E(void)
{
    ContestAICmd_unk_6D();

    if ((*gContestResources->aiData).scriptResult == gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_6F(void)
{
    ContestAICmd_unk_6D();

    if ((*gContestResources->aiData).scriptResult != gAIScriptPtr[0])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
    else
        gAIScriptPtr += 5;
}

static void ContestAICmd_unk_70(void)
{
    (*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] = (*gContestResources->aiData).scriptResult;
    gAIScriptPtr += 2;
}

static void ContestAICmd_unk_71(void)
{
    (*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] = ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8));
    gAIScriptPtr += 4;
}

static void ContestAICmd_unk_72(void)
{

    (*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] += ((s8)gAIScriptPtr[2] | gAIScriptPtr[3] << 8);
    gAIScriptPtr += 4;
}

static void ContestAICmd_unk_73(void)
{
    (*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] += (*gContestResources->aiData).scriptArr[gAIScriptPtr[2]];
    gAIScriptPtr += 3;
}

static void ContestAICmd_unk_74(void)
{
    (*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] += (*gContestResources->aiData).scriptArr[gAIScriptPtr[2]];
    gAIScriptPtr += 3;
}

static void ContestAICmd_unk_75(void)
{
    if ((*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] < ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void ContestAICmd_unk_76(void)
{
    if ((*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] > ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void ContestAICmd_unk_77(void)
{
    if ((*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] == ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void ContestAICmd_unk_78(void)
{
    if ((*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] != ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8)))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 4)[0] | ((gAIScriptPtr + 4)[1] << 8) | ((gAIScriptPtr + 4)[2] << 16) | ((gAIScriptPtr + 4)[3] << 24));
    else
        gAIScriptPtr += 8;
}

static void ContestAICmd_unk_79(void)
{
    if ((*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] < ((*gContestResources->aiData).scriptArr[gAIScriptPtr[2]]))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void ContestAICmd_unk_7A(void)
{
    if ((*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] > ((*gContestResources->aiData).scriptArr[gAIScriptPtr[2]]))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void ContestAICmd_unk_7B(void)
{
    if ((*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] == ((*gContestResources->aiData).scriptArr[gAIScriptPtr[2]]))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void ContestAICmd_unk_7C(void)
{
    if ((*gContestResources->aiData).scriptArr[gAIScriptPtr[1]] != ((*gContestResources->aiData).scriptArr[gAIScriptPtr[2]]))
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 3)[0] | ((gAIScriptPtr + 3)[1] << 8) | ((gAIScriptPtr + 3)[2] << 16) | ((gAIScriptPtr + 3)[3] << 24));
    else
        gAIScriptPtr += 7;
}

static void ContestAICmd_if_random(void)
{
    if ((Random() & 0xFF) < (*gContestResources->aiData).scriptArr[gAIScriptPtr[1]])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}

static void ContestAICmd_unk_7E(void)
{
    if ((Random() & 0xFF) > (*gContestResources->aiData).scriptArr[gAIScriptPtr[1]])
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 2)[0] | ((gAIScriptPtr + 2)[1] << 8) | ((gAIScriptPtr + 2)[2] << 16) | ((gAIScriptPtr + 2)[3] << 24));
    else
        gAIScriptPtr += 6;
}


static void ContestAICmd_jump(void)
{
    gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
}

static void ContestAICmd_call(void)
{
    AIStackPushVar(gAIScriptPtr + 5);
    gAIScriptPtr = (u8*) ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8) | ((gAIScriptPtr + 1)[2] << 16) | ((gAIScriptPtr + 1)[3] << 24));
}

static void ContestAICmd_end(void)
{
    if (!AIStackPop())
        (*gContestResources->aiData).aiAction |= 1;
}

static void AIStackPushVar(const u8 *ptr)
{
    (*gContestResources->aiData).stack[(*gContestResources->aiData).stackSize++] = ptr;
}

static bool8 AIStackPop(void)
{
    if ((*gContestResources->aiData).stackSize != 0)
    {
        --(*gContestResources->aiData).stackSize;
        gAIScriptPtr = (*gContestResources->aiData).stack[(*gContestResources->aiData).stackSize];
        return 1;
    }
    else
    {
        return 0;
    }
}

static void ContestAICmd_check_user_has_exciting_move(void)
{
    int result = 0;
    int i;

    for (i = 0; i < 4; i++)
    {
        if (gContestMons[(*gContestResources->aiData).contestantId].moves[i])
        {
            if (Contest_GetMoveExcitement(gContestMons[(*gContestResources->aiData).contestantId].moves[i]) == 1)
            {
                result = 1;
                break;
            }
        }
    }

    (*gContestResources->aiData).scriptResult = result;
    gAIScriptPtr += 1;
}

static void ContestAICmd_if_user_has_exciting_move(void)
{
    ContestAICmd_check_user_has_exciting_move();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_if_user_doesnt_have_exciting_move(void)
{
    ContestAICmd_check_user_has_exciting_move();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_unk_85(void)
{
    int result = 0;
    int i;
    u16 arg = ((gAIScriptPtr + 1)[0] | ((gAIScriptPtr + 1)[1] << 8));

    for (i = 0; i < 4; i++)
    {
        u16 move = gContestMons[(*gContestResources->aiData).contestantId].moves[i];
        if (move == arg)
        {
            result = 1;
            break;
        }
    }

    (*gContestResources->aiData).scriptResult = result;
    gAIScriptPtr += 3;
}

static void ContestAICmd_unk_86(void)
{
    ContestAICmd_unk_85();

    if ((*gContestResources->aiData).scriptResult != 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}

static void ContestAICmd_if_effect_in_user_moveset(void)
{
    ContestAICmd_unk_85();

    if ((*gContestResources->aiData).scriptResult == 0)
        gAIScriptPtr = (u8*) ((gAIScriptPtr + 0)[0] | ((gAIScriptPtr + 0)[1] << 8) | ((gAIScriptPtr + 0)[2] << 16) | ((gAIScriptPtr + 0)[3] << 24));
    else
        gAIScriptPtr += 4;
}
