# 1 "src/link_rfu.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/link_rfu.c"
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
# 2 "src/link_rfu.c" 2
# 1 "include/alloc.h" 1
# 15 "include/alloc.h"
extern u8 gHeap[];

void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 3 "src/link_rfu.c" 2
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
# 4 "src/link_rfu.c" 2
# 1 "include/berry_blender.h" 1



extern u8 gInGameOpponentsNo;

void DoBerryBlending(void);
u16 GetBlenderArrowPosition(void);
void ShowBerryBlenderRecordWindow(void);
# 5 "src/link_rfu.c" 2
# 1 "include/decompress.h" 1





extern u8 gDecompressionBuffer[0x4000];

void LZDecompressWram(const u32 *src, void *dest);
void LZDecompressVram(const u32 *src, void *dest);

u16 LoadCompressedSpriteSheet(const struct CompressedSpriteSheet *src);
void LoadCompressedSpriteSheetOverrideBuffer(const struct CompressedSpriteSheet *src, void *buffer);
bool8 LoadCompressedSpriteSheetUsingHeap(const struct CompressedSpriteSheet* src);

void LoadCompressedSpritePalette(const struct CompressedSpritePalette *src);
void LoadCompressedSpritePaletteOverrideBuffer(const struct CompressedSpritePalette *a, void *buffer);
bool8 LoadCompressedSpritePaletteUsingHeap(const struct CompressedSpritePalette *src);

void DecompressPicFromTable(const struct CompressedSpriteSheet *src, void* buffer, s32 species);
void DecompressPicFromTable_2(const struct CompressedSpriteSheet *src, void* buffer, s32 species);
void DecompressPicFromTable_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void* buffer, s32 species);

void HandleLoadSpecialPokePic(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);
void HandleLoadSpecialPokePic_2(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);
void HandleLoadSpecialPokePic_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);

void LoadSpecialPokePic(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);
void LoadSpecialPokePic_2(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);
void LoadSpecialPokePic_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);

u32 GetDecompressedDataSize(const u32 *ptr);
# 6 "src/link_rfu.c" 2
# 1 "include/event_data.h" 1



# 1 "include/constants/flags.h" 1
# 5 "include/event_data.h" 2
# 1 "include/constants/vars.h" 1
# 6 "include/event_data.h" 2

void InitEventData(void);
void ClearTempFieldEventData(void);
void ClearDailyFlags(void);
void DisableNationalPokedex(void);
void EnableNationalPokedex(void);
bool32 IsNationalPokedexEnabled(void);
void DisableMysteryEvent(void);
void EnableMysteryEvent(void);
bool32 IsMysteryEventEnabled(void);
void DisableMysteryGift(void);
void EnableMysteryGift(void);
bool32 IsMysteryGiftEnabled(void);
void sub_809D4D8(void);
void sub_809D570(void);
void DisableResetRTC(void);
void EnableResetRTC(void);
bool32 CanResetRTC(void);
u16 *GetVarPointer(u16 id);
u16 VarGet(u16 id);
bool8 VarSet(u16 id, u16 value);
u8 VarGetEventObjectGraphicsId(u8 id);
u8 *GetFlagPointer(u16 id);
u8 FlagSet(u16 id);
u8 FlagClear(u16 id);
bool8 FlagGet(u16 id);

extern u16 gSpecialVar_0x8000;
extern u16 gSpecialVar_0x8001;
extern u16 gSpecialVar_0x8002;
extern u16 gSpecialVar_0x8003;
extern u16 gSpecialVar_0x8004;
extern u16 gSpecialVar_0x8005;
extern u16 gSpecialVar_0x8006;
extern u16 gSpecialVar_0x8007;
extern u16 gSpecialVar_0x8008;
extern u16 gSpecialVar_0x8009;
extern u16 gSpecialVar_0x800A;
extern u16 gSpecialVar_0x800B;
extern u16 gSpecialVar_Result;
extern u16 gSpecialVar_LastTalked;
extern u16 gSpecialVar_Facing;
extern u16 gSpecialVar_MonBoxId;
extern u16 gSpecialVar_MonBoxPos;
extern u16 gSpecialVar_Unused_0x8014;
# 7 "src/link_rfu.c" 2
# 1 "include/gpu_regs.h" 1
# 9 "include/gpu_regs.h"
void InitGpuRegManager(void);
void CopyBufferedValuesToGpuRegs(void);
void SetGpuReg(u8 regOffset, u16 value);
void SetGpuReg_ForcedBlank(u8 regOffset, u16 value);
u16 GetGpuReg(u8 regOffset);
void SetGpuRegBits(u8 regOffset, u16 mask);
void ClearGpuRegBits(u8 regOffset, u16 mask);
void EnableInterrupts(u16 mask);
void DisableInterrupts(u16 mask);
# 8 "src/link_rfu.c" 2
# 1 "include/librfu.h" 1



# 1 "include/main.h" 1



typedef void (*MainCallback)(void);
typedef void (*IntrCallback)(void);
typedef void (*IntrFunc)(void);

struct Main
{
              MainCallback callback1;
              MainCallback callback2;

              MainCallback savedCallback;

              IntrCallback vblankCallback;
              IntrCallback hblankCallback;
              IntrCallback vcountCallback;
              IntrCallback serialCallback;

              vu16 intrCheck;

              u32 vblankCounter1;
              u32 vblankCounter2;

              u16 heldKeysRaw;
              u16 newKeysRaw;
              u16 heldKeys;
              u16 newKeys;
              u16 newAndRepeatedKeys;
              u16 keyRepeatCounter;
              bool16 watchedKeysPressed;
              u16 watchedKeysMask;

              struct OamData oamBuffer[128];

              u8 state;

              u8 oamLoadDisabled:1;
              u8 inBattle:1;
              u8 field_439_x4:1;
};

extern const u8 gGameVersion;
extern const u8 gGameLanguage;
extern const u8 RomHeaderGameCode[4];
extern const u8 RomHeaderSoftwareVersion;

extern u16 gKeyRepeatStartDelay;
extern bool8 gLinkTransferringData;
extern struct Main gMain;
extern u16 gKeyRepeatContinueDelay;
extern bool8 gSoftResetDisabled;
extern IntrFunc gIntrTable[];
extern u8 gLinkVSyncDisabled;
extern u32 IntrMain_Buffer[];
extern s8 gPcmDmaCounter;

void AgbMain(void);
void SetMainCallback2(MainCallback callback);
void InitKeys(void);
void SetVBlankCallback(IntrCallback callback);
void SetHBlankCallback(IntrCallback callback);
void SetVCountCallback(IntrCallback callback);
void SetSerialCallback(IntrCallback callback);
void InitFlashTimer(void);
void SetTrainerHillVBlankCounter(u32 *var);
void ClearTrainerHillVBlankCounter(void);
void DoSoftReset(void);
void ClearPokemonCrySongs(void);
void RestoreSerialTimer3IntrHandlers(void);
void StartTimer1(void);
void SeedRngAndSetTrainerId(void);
u16 GetGeneratedTrainerIdLower(void);
void sub_819789C(void);
# 5 "include/librfu.h" 2

enum
{
    RFU_RESET = 0x10,
    RFU_LINK_STATUS,
    RFU_VERSION_STATUS,
    RFU_SYSTEM_STATUS,
    RFU_SLOT_STATUS,
    RFU_CONFIG_STATUS,
    RFU_GAME_CONFIG,
    RFU_SYSTEM_CONFIG,
    RFU_UNK18,
    RFU_SC_START,
    RFU_SC_POLLING,
    RFU_SC_END,
    RFU_SP_START,
    RFU_SP_POLLING,
    RFU_SP_END,
    RFU_CP_START,
    RFU_CP_POLLING,
    RFU_CP_END,
    RFU_UNK22,
    RFU_UNK23,
    RFU_DATA_TX,
    RFU_DATA_TX_AND_CHANGE,
    RFU_DATA_RX,
    RFU_MS_CHANGE,
    RFU_DATA_READY_AND_CHANGE,
    RFU_DISCONNECTED_AND_CHANGE,
    RFU_UNK2A,
    RFU_UNK2B,
    RFU_UNK2C,
    RFU_UNK2D,
    RFU_UNK2E,
    RFU_UNK2F,
    RFU_DISCONNECT,
    RFU_TEST_MODE,
    RFU_CPR_START,
    RFU_CPR_POLLING,
    RFU_CPR_END,
    RFU_UNK35,
    RFU_UNK36,
    RFU_RESUME_RETRANSMIT_AND_CHANGE,
    RFU_UNK38,
    RFU_UNK39,
    RFU_UNK3A,
    RFU_UNK3B,
    RFU_UNK3C,
    RFU_STOP_MODE,
};

struct RfuPacket8
{
    u8 data[0x74];
};

struct RfuPacket32
{
    u32 command;
    u32 data[0x1C];
};

union RfuPacket
{
    struct RfuPacket32 rfuPacket32;
    struct RfuPacket8 rfuPacket8;
};

struct UnkLinkRfuStruct_02022B14Substruct
{
    u16 unk_00_0:4;
    u16 unk_00_4:1;
    u16 unk_00_5:1;
    u16 unk_00_6:1;
    u16 unk_00_7:1;
    u16 unk_01_0:1;
    u16 unk_01_1:1;
    u16 unk_01_2:4;
    u16 unk_01_6:2;
    u8 playerTrainerId[2];
};

struct __attribute__((packed, aligned(2))) UnkLinkRfuStruct_02022B14
{
    struct UnkLinkRfuStruct_02022B14Substruct unk_00;
    u8 unk_04[4];
    u16 species:10;
    u16 type:6;
    u8 unk_0a_0:7;
    u8 unk_0a_7:1;
    u8 playerGender:1;
    u8 unk_0b_1:7;
    u8 unk_0c;
};

struct RfuStruct
{
    vs32 unk_0;
    u8 txParams;
    u8 unk_5;
    u8 activeCommand;
    u8 unk_7;
    u8 unk_8;
    u8 unk_9;
    u8 timerSelect;
    u8 unk_b;
    int timerState;
    vu8 timerActive;
    u8 unk_11;
    vu16 unk_12;
    vu8 msMode;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    void (*callbackM)();
    void (*callbackS)();
    u32 callbackID;
    union RfuPacket *txPacket;
    union RfuPacket *rxPacket;
    vu8 unk_2c;
    u8 padding[3];
};

struct RfuIntrStruct
{
    u8 rxPacketAlloc[0x74];
    u8 txPacketAlloc[0x74];
    u8 block1[0x960];
    u8 block2[0x30];
};

struct RfuUnk1
{
    u16 unk_0;
    u8 unk_2;
    u8 unk_3;
    u8 fill_4[14];
    u8 unk_12;
    u32 unk_14;
    u32 unk_18;
    struct RfuIntrStruct unk_1c;
};

struct RfuUnk2
{
    u16 unk_0;
    u16 unk_2;
    u8 fill_4[0x16];
    u8 unk_1a;
    u8 fill_1b[0x19];
    u16 unk_34;
    u16 unk_36;
    u8 fill_38[0x16];
    u8 unk_4e;
    u8 fill_4f[0x12];
    u8 unk_61;
    u8 fill_62[6];
    void *unk_68;
    void *unk_6c;
    u8 unk_70[0x70];
};

struct RfuUnk3
{
    u32 unk_0;
    u32 unk_4;
    u8 unk_8[0xD4];
    u32 unk_dc;
};

struct RfuUnk5Sub
{
    u16 unk_00;
    u8 unk_02;
    u16 unk_04;
    struct UnkLinkRfuStruct_02022B14 unk_06;
    u8 fill_13[1];
    u8 playerName[7 + 1];
};

struct RfuUnk5
{
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 filler_09[1];
    u8 unk_0a[4];
    u8 filler_0e[6];
    struct RfuUnk5Sub unk_14[4];
};

extern struct RfuStruct *gRfuState;

extern struct RfuUnk5 *gUnknown_03007890;
extern u32 *gUnknown_03007894;
extern struct RfuUnk3* gUnknown_03007898;
extern struct RfuUnk2* gUnknown_03007880[4];
extern struct RfuUnk1* gUnknown_03007870[4];
extern void* sub_82E53F4;
extern void rfu_STC_clearAPIVariables(void);

void STWI_init_all(struct RfuIntrStruct *interruptStruct, IntrFunc *interrupt, bool8 copyInterruptToRam);
void rfu_REQ_stopMode(void);
void rfu_waitREQComplete(void);
u32 rfu_REQBN_softReset_and_checkID(void);
void rfu_REQ_sendData(u8);
void rfu_setMSCCallback(void (*func)(u16));
void rfu_setREQCallback(void (*func)(u16, u16));
bool8 rfu_getMasterSlave(void);
void rfu_REQBN_watchLink(u16 a0, u8 *a1, u8 *a2, u8 *a3);
bool16 rfu_syncVBlank(void);
void rfu_REQ_reset(void);
void rfu_REQ_configSystem(u16, u8, u8);
void rfu_REQ_configGameData(u8, u16, struct UnkLinkRfuStruct_02022B14 *, u8 *);
void rfu_REQ_startSearchChild(void);
void rfu_REQ_pollSearchChild(void);
void rfu_REQ_endSearchChild(void);
void rfu_REQ_startSearchParent(void);
void rfu_REQ_pollSearchParent(void);
void rfu_REQ_endSearchParent(void);
void rfu_REQ_startConnectParent(u16);
void rfu_REQ_pollConnectParent(void);
void rfu_REQ_endConnectParent(void);
void rfu_REQ_CHILD_startConnectRecovery(u8);
void rfu_REQ_CHILD_pollConnectRecovery(void);
void rfu_REQ_CHILD_endConnectRecovery(void);
void rfu_REQ_changeMasterSlave(void);
void rfu_REQ_RFUStatus(void);
void rfu_getRFUStatus(u8 *status);
u8 *rfu_getSTWIRecvBuffer(void);
u8 rfu_NI_CHILD_setSendGameName(u8 a0, u8 a1);
void rfu_clearSlot(u8 a0, u8 a1);
void rfu_clearAllSlot(void);
bool16 rfu_CHILD_getConnectRecoveryStatus(u8 *status);
bool16 rfu_getConnectParentStatus(u8 *status, u8 *a1);
bool16 rfu_UNI_PARENT_getDRAC_ACK(u8 *a0);
void rfu_REQ_disconnect(u8 who);
void rfu_changeSendTarget(u8 a0, u8 who, u8 a2);
void rfu_NI_stopReceivingData(u8 who);
u16 rfu_initializeAPI(u32 *unk0, u16 unk1, IntrFunc *interrupt, bool8 copyInterruptToRam);
void rfu_setTimerInterrupt(u8 which, IntrFunc *intr);
void rfu_setRecvBuffer(u8 a0, u8 a1, void *a2, size_t a3);
bool16 rfu_UNI_setSendData(u8 flag, void *ptr, u8 size);
void rfu_REQ_recvData(void);
void rfu_UNI_readySendData(u8 a0);
void rfu_UNI_clearRecvNewDataFlag(u8 a0);
void rfu_REQ_PARENT_resumeRetransmitAndChange(void);
void rfu_NI_setSendData(u8, u8, const void *, u32);
# 9 "src/link_rfu.c" 2
# 1 "include/link.h" 1
# 66 "include/link.h"
struct LinkStatus
{
    u32 localId:2;
    u32 playerCount:3;
    u32 master:1;
    u32 connEstablished:1;
    u32 unused_7:1;
    u32 receivedNothing:1;
    u32 unused_9:7;
    u32 errors:7;
};






enum
{
    LINK_STATE_START0,
    LINK_STATE_START1,
    LINK_STATE_HANDSHAKE,
    LINK_STATE_INIT_TIMER,
    LINK_STATE_CONN_ESTABLISHED,
};

enum
{
    EXCHANGE_NOT_STARTED,
    EXCHANGE_COMPLETE,
    EXCHANGE_TIMED_OUT,
    EXCHANGE_IN_PROGRESS,
    EXCHANGE_STAT_4,
    EXCHANGE_STAT_5,
    EXCHANGE_STAT_6,
    EXCHANGE_STAT_7
};

enum
{
    QUEUE_FULL_NONE,
    QUEUE_FULL_SEND,
    QUEUE_FULL_RECV,
};

enum
{
    LAG_NONE,
    LAG_MASTER,
    LAG_SLAVE,
};

struct LinkPlayer
{
               u16 version;
               u16 lp_field_2;
               u32 trainerId;
               u8 name[11];
               u8 gender;
               u32 linkType;
               u16 id;
               u16 language;
};

struct LinkPlayerBlock
{
    char magic1[16];
    struct LinkPlayer linkPlayer;
    char magic2[16];
};



struct SendQueue
{
                u16 data[8][50];
                u8 pos;
                u8 count;
};

struct RecvQueue
{
    u16 data[4][8][50];
    u8 pos;
    u8 count;
};

struct Link
{
                u8 isMaster;
                u8 state;
                u8 localId;
                u8 playerCount;
                u16 tempRecvBuffer[4];
                bool8 receivedNothing;
                s8 serialIntrCounter;
                bool8 handshakeAsMaster;
                u8 link_field_F;


                bool8 hardwareError;
                bool8 badChecksum;
                u8 queueFull;
                u8 lag;

                u16 checksum;

                u8 sendCmdIndex;
                u8 recvCmdIndex;

                struct SendQueue sendQueue;
                struct RecvQueue recvQueue;
};

struct BlockRequest
{
    void * address;
    u32 size;
};

extern const struct BlockRequest sBlockRequestLookupTable[5];

extern struct Link gLink;
extern u16 gRecvCmds[5][8];
extern u8 gBlockSendBuffer[0x100];
extern u16 gLinkType;
extern u32 gLinkStatus;
extern u16 gBlockRecvBuffer[5][0x100 / 2];
extern u16 gSendCmd[8];
extern struct LinkPlayer gLinkPlayers[5];
extern u16 word_3002910[];
extern bool8 gReceivedRemoteLinkPlayers;
extern u32 gUnknown_020223C0;
extern bool8 gLinkVSyncDisabled;
extern u32 gLinkStatus;


bool8 IsWirelessAdapterConnected(void);
void Task_DestroySelf(u8 taskId);
void OpenLink(void);
void CloseLink(void);
u16 LinkMain2(const u16 *);
void sub_8007B14(void);
bool32 sub_8007B24(void);
void ClearLinkCallback(void);
void ClearLinkCallback_2(void);
u8 GetLinkPlayerCount(void);
void OpenLinkTimed(void);
u8 GetLinkPlayerDataExchangeStatusTimed(int lower, int upper);
bool8 IsLinkPlayerDataExchangeComplete(void);
u32 GetLinkPlayerTrainerId(u8);
void ResetLinkPlayers(void);
void sub_8007E24(void);
void sub_8007E4C(void);
u8 GetMultiplayerId(void);
u8 bitmask_all_link_players_but_self(void);
bool8 SendBlock(u8, const void *, u16);
u8 GetBlockReceivedStatus(void);
void ResetBlockReceivedFlags(void);
void ResetBlockReceivedFlag(u8);
u8 GetLinkPlayerCount_2(void);
bool8 IsLinkMaster(void);
void CB2_LinkError(void);
u8 GetSioMultiSI(void);
bool8 IsLinkConnectionEstablished(void);
bool8 HasLinkErrorOccurred(void);
void ResetSerial(void);
u32 LinkMain1(u8 *shouldAdvanceLinkState, u16 *sendCmd, u16 (*recvCmds)[8]);
void LinkVSync(void);
void Timer3Intr(void);
void SerialCB(void);
bool32 InUnionRoom(void);
void LoadWirelessStatusIndicatorSpriteGfx(void);
bool8 IsLinkTaskFinished(void);
void CreateWirelessStatusIndicatorSprite(u8, u8);
void sub_800ADF8(void);
void sub_800B488(void);
void CheckShouldAdvanceLinkState(void);
void sub_8011BD0(void);
u8 IsLinkMaster(void);
void sub_800AC34(void);
bool8 HandleLinkConnection(void);
void SetLinkDebugValues(u32 seed, u32 flags);
void sub_800A418(void);
void SetSuppressLinkErrorMessage(bool8 flag);
void sub_800B524(struct LinkPlayer *linkPlayer);
u8 GetSioMultiSI(void);
void sub_800AAF4(void);
void sub_800AF18(u32 status, u8 lastSendQueueCount, u8 lastRecvQueueCount, u8 unk_06);
void sub_800B348(void);
void sub_800B3A4(u32 who);
bool32 sub_800A07C(void);
void sub_800AB98(void);
void sub_800AA04(u8 a0);
void sub_800B4C0(void);
bool32 sub_800B504(void);

extern u16 gLinkPartnersHeldKeys[6];
extern u32 gLinkDebugSeed;
extern struct LinkPlayerBlock gLocalLinkPlayerBlock;
extern bool8 gLinkErrorOccurred;
extern u32 gLinkDebugFlags;
extern bool8 gRemoteLinkPlayersNotReceived[4];
extern u8 gBlockReceivedStatus[4];
extern u16 gLinkHeldKeys;
extern u32 gLinkStatus;
extern u8 gUnknown_030030E4;
extern u8 gUnknown_030030E8;
extern u8 gUnknown_030030EC[4];
extern u8 gUnknown_030030F0[4];
extern u16 gUnknown_030030F4;
extern u8 gSuppressLinkErrorMessage;
extern u8 gWirelessCommType;
extern bool8 gSavedLinkPlayerCount;
extern u8 gSavedMultiplayerId;
extern struct LinkTestBGInfo gLinkTestBGInfo;
extern void (*gLinkCallback)(void);
extern bool8 gShouldAdvanceLinkState;
extern u16 gLinkTestBlockChecksums[4];
extern u8 gBlockRequestType;
extern u8 gLastSendQueueCount;
extern u8 gLastRecvQueueCount;
extern u16 gLinkSavedIme;
extern u32 gFiller_03003074;
extern u32 gFiller_03003154;
extern u32 gFiller_03003158;
extern u32 gFiller_0300315c;
extern u32 gFiller_03004138;
extern u32 gFiller_0300413C;
extern u32 gFiller_03003080;
extern struct LinkPlayer gLocalLinkPlayer;

bool32 Link_AnyPartnersPlayingRubyOrSapphire(void);
bool32 sub_800A03C(void);
void SetLocalLinkPlayerId(u8);
u8 GetSavedPlayerCount(void);
void sub_8009FAC(void);
bool8 sub_800A4D8(u8 a0);
u8 sub_800A9D8(void);
u8 sub_800A0C8(s32, s32);
u8 sub_800A9A8(void);
void sub_800AD10(void);
void sub_800AB18(void);
void sub_8009F18(void);
bool8 sub_800AA60(void);
void sub_800ABF4(u16 a0);
bool32 IsSendingKeysToLink(void);
u32 GetLinkRecvQueueLength(void);
# 10 "src/link_rfu.c" 2
# 1 "include/link_rfu.h" 1



# 1 "include/librfu.h" 1
# 5 "include/link_rfu.h" 2
# 1 "include/link.h" 1
# 6 "include/link_rfu.h" 2



struct UnkLinkRfuStruct_02022B2C
{
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u8 unk_04;
    u16 unk_06;
    struct UnkLinkRfuStruct_02022B14 *unk_08;
    u8 *unk_0c;
    u8 unk_10;
    u8 unk_11;
    u16 unk_12;
    u16 unk_14;
};

struct UnkLinkRfuStruct_02022B44
{
    u8 fill_00[6];
    u16 unk_06;
    u8 fill_08[6];
    vu8 unk_0e;
    u8 unk_0f;
    u8 fill_10[0x54];
    u16 unk_64;
    u8 fill_66[0x1d];
    u8 unk_83;
    u8 fill_84[0x58];
};

struct UnkRfuStruct_1
{
                u8 unk_00;
                u8 unk_01;
                vu8 unk_02;
                vu8 unk_03;
                u8 unk_04;
                u8 unk_05;
                u8 unk_06;
                u8 unk_07;
                u8 unk_08;
                u8 unk_09;
                u8 unk_0a;
                u8 unk_0b;
                u8 unk_0c;
                u8 unk_0d;
                u8 unk_0e;
                u8 unk_0f;
                u8 unk_10;
                u8 unk_11;
                u8 unk_12;

                u16 unk_14;
                u16 unk_16;
                u16 unk_18;
                u16 unk_1a;
                u16 unk_1c;
                u16 unk_1e;
                const u16 *unk_20;
                u8 unk_24;
                u16 unk_26;
                u16 unk_28[4];
                u8 unk_30;

                u16 unk_32;
                u16 unk_34[4];
                const struct UnkLinkRfuStruct_02022B2C *unk_3c;
                void (*unk_40)(u8, u8);
                void (*unk_44)(u16);
                u8 filler_48[8];
                u32 unk_50[0x399];
                u8 filler_e64[12];
};

struct UnkRfuStruct_2_Sub_6c
{
               u16 unk_00;
               u16 unk_02;
               const u8 *unk_04;
               u32 unk_08;
               u32 unk_0c;
               u8 unk_10;
               u8 unk_11;
               u8 unk_12;
};

struct UnkRfuStruct_2_Sub_124
{
                u8 unk_00[32][70];
                vu8 unk_8c0;
                vu8 unk_8c1;
                vu8 unk_8c2;
                vu8 unk_8c3;
};

struct UnkRfuStruct_2_Sub_9e8
{
                u8 unk_00[40][14];
                vu8 unk_230;
                vu8 unk_231;
                vu8 unk_232;
                vu8 unk_233;
};

struct UnkRfuStruct_2_Sub_c1c
{
               u8 unk_00[2][14];
               vu8 unk_1c;
               vu8 unk_1d;
               vu8 unk_1e;
};

struct UnkRfuStruct_Sub_Unused
{
                u8 unk_00[2][256];
                vu8 unk_200;
                vu8 unk_201;
                vu8 unk_202;
                vu8 unk_203;
};

struct UnkRfuStruct_2
{
                void (*unk_00)(void);
                u16 unk_04;
                u8 filler_06[4];
                u16 unk_0a;
                u8 unk_0c;
                u8 playerCount;
                u8 unk_0e;
                u8 unk_0f;
                u16 unk_10;
                u16 unk_12;
                u8 unk_14[4][14];
                u8 unk_4c[14];
                u8 unk_5a;
                u8 unk_5b;
                u8 unk_5c[5];
                u8 unk_61[5];
                u8 unk_66;
                u8 unk_67;
                u8 filler_68[4];
                struct UnkRfuStruct_2_Sub_6c unk_6c;
                struct UnkRfuStruct_2_Sub_6c unk_80[5];
                u8 unk_e4[5];
                u8 unk_e9[5];
                vu8 unk_ee;
                u8 unk_ef;
                u8 unk_f0;
                u8 unk_f1;
                u16 unk_f2[6];
                u16 unk_fe;
                u16 unk_100;
                u8 unk_102;
                u8 filler_103[0x10A - 0x103];
                struct UnkLinkRfuStruct_02022B14 unk_10A;
    u8 filler_;
    u8 playerName[7 + 1];
                struct UnkRfuStruct_2_Sub_124 unk_124;
                struct UnkRfuStruct_2_Sub_9e8 unk_9e8;
                struct UnkRfuStruct_2_Sub_c1c unk_c1c;
                vu8 unk_c3c;
                u8 unk_c3d;
                vu8 unk_c3e;
                u8 unk_c3f[70];
                u8 unk_c85;
                u8 unk_c86;
                u8 unk_c87[5][7][2];
                u8 unk_ccd;
                u8 unk_cce;
                u8 unk_ccf;
                vu8 unk_cd0;
                u8 unk_cd1[4];
                u8 unk_cd5[4];
                u8 unk_cd9;
                u8 unk_cda;
                vu8 unk_cdb;
                vu8 unk_cdc;
                u8 unk_cdd;
                u8 unk_cde[4];
                u8 unk_ce2;
                u8 unk_ce3;
                u8 unk_ce4;
                u8 unk_ce5;
                u8 unk_ce6;
                u8 unk_ce7;
                u8 unk_ce8;
                u8 unk_ce9;
                u8 unk_cea[4];
                u8 unk_cee[4];
};

struct UnkRfuStruct_8010A14
{
    char unk_00[15];
    u8 unk_0f;
    u8 unk_10[4];
    struct LinkPlayer unk_14[5];
    u8 fill_a0[0x5c];
};



extern struct UnkRfuStruct_1 gUnknown_03004140;
extern struct UnkRfuStruct_2 gUnknown_03005000;
extern u8 gWirelessStatusIndicatorSpriteId;


void WipeTrainerNameRecords(void);
u32 sub_800BEC0(void);
void sub_800E700(void);
void sub_800EDD4(void);
void sub_800F6FC(u8 who);
void sub_800F728(u8 who);
bool32 IsSendingKeysToRfu(void);
void sub_800F804(void);
void sub_800F850(void);
u8 sub_800FCD8(void);
bool32 sub_800FE84(const u8 *src, size_t size);
void Rfu_set_zero(void);
u8 sub_80104F4(void);
u8 rfu_get_multiplayer_id(void);
bool8 sub_8010100(u8 a0);
bool8 sub_8010500(void);
bool8 Rfu_IsMaster(void);
void task_add_05_task_del_08FA224_when_no_RfuFunc(void);
void sub_8010434(void);
void sub_800E604(void);
void sub_800E174(void);
void sub_800E6D0(void);
bool32 sub_8010EC0(void);
bool32 sub_8010F1C(void);
bool32 sub_8011A80(void);
bool32 IsRfuRecvQueueEmpty(void);
u32 GetRfuRecvQueueLength(void);
void RfuVSync(void);
void sub_80111B0(bool32 a0);
u8 sub_8011A74(void);
struct UnkLinkRfuStruct_02022B14 *sub_800F7DC(void);
void sub_8011068(u8 a0);
void sub_8011170(u32 a0);
void sub_8011A64(u8 a0, u16 a1);
u8 sub_801048C(bool32 a0);
void sub_800DF90(struct UnkLinkRfuStruct_02022B14 *buff1, u8 *buff2);
void sub_8010F84(u8 a0, u32 a1, u32 a2);
void sub_8011C10(u32 a0);
bool32 sub_8012240(void);
void sub_800EF38(void);
bool32 sub_80105EC(void);
bool32 sub_801064C(u16 a0, const u8 *a1);
void sub_8010688(u8 a0, u16 a1, const u8 *a2);
u32 sub_8010714(u16 a0, const u8 *a1);
void sub_8011DC0(const u8 *a0, u16 a1);
bool8 sub_800EF1C(void);
bool32 sub_800EF58(bool32 a0);
void DestroyWirelessStatusIndicatorSprite(void);
void sub_801103C(void);
void sub_8011C5C(void);
void sub_80106D4(void);
void RecordMixTrainerNames(void);
void sub_800ED10(void);
void sub_800ED28(void);
void sub_8011090(u8 a0, u32 a1, u32 a2);
void sub_8011FC8(const u8 *src, u16 trainerId);
void sub_8010FA0(bool32 a0, bool32 a1);
void sub_8010F60(void);
void sub_8010FCC(u32 a0, u32 a1, u32 a2);
void sub_8011C84(void);
void sub_8012188(const u8 *name, struct UnkLinkRfuStruct_02022B14 *structPtr, u8 a2);
bool32 sub_8011B90(void);
void sub_800FE50(void *a0);
bool32 sub_800E540(u16 id, u8 *name);
void sub_8011DE0(u32 arg0);
u8 sub_801100C(s32 a0);
void sub_800EF7C(void);
bool8 sub_800DE7C(struct UnkLinkRfuStruct_02022B14 *buff1, u8 *buff2, u8 idx);
bool8 sub_800DF34(struct UnkLinkRfuStruct_02022B14 *buff1, u8 *buff2, u8 idx);
s32 sub_800E87C(u8 idx);
void sub_8011BA4(void);
void sub_8010198(void);
void sub_8011AC8(void);
void LinkRfu_FatalError(void);
bool32 sub_8011A9C(void);
void sub_80104B0(void);
void sub_8011A50(void);
void sub_80110B8(u32 a0);
# 11 "src/link_rfu.c" 2
# 1 "include/overworld.h" 1
# 27 "include/overworld.h"
struct InitialPlayerAvatarState
{
    u8 transitionFlags;
    u8 direction;
};

struct LinkPlayerEventObject
{
    u8 active;
    u8 linkPlayerId;
    u8 eventObjId;
    u8 movementMode;
};


extern struct WarpData gLastUsedWarp;
extern struct LinkPlayerEventObject gLinkPlayerEventObjects[4];

extern u16 *gBGTilemapBuffers1;
extern u16 *gBGTilemapBuffers2;
extern u16 *gBGTilemapBuffers3;
extern u16 gHeldKeyCodeToSend;
extern void (*gFieldCallback)(void);
extern bool8 (*gFieldCallback2)(void);
extern u8 gLocalLinkPlayerId;
extern u8 gFieldLinkPlayerCount;


extern const struct UCoords32 gDirectionToVectors[];

void DoWhiteOut(void);
void Overworld_ResetStateAfterFly(void);
void Overworld_ResetStateAfterTeleport(void);
void Overworld_ResetStateAfterDigEscRope(void);
void ResetGameStats(void);
void IncrementGameStat(u8 index);
u32 GetGameStat(u8 index);
void SetGameStat(u8 index, u32 value);
void ApplyNewEncryptionKeyToGameStats(u32 newKey);
void LoadEventObjTemplatesFromHeader(void);
void LoadSaveblockEventObjScripts(void);
void Overworld_SetEventObjTemplateCoords(u8 localId, s16 x, s16 y);
void Overworld_SetEventObjTemplateMovementType(u8 localId, u8 movementType);
const struct MapLayout *GetMapLayout(void);
void ApplyCurrentWarp(void);
struct MapHeader const *const Overworld_GetMapHeaderByGroupAndId(u16 mapGroup, u16 mapNum);
struct MapHeader const *const GetDestinationWarpMapHeader(void);
void WarpIntoMap(void);
void SetWarpDestination(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToMapWarp(s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarp(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarpWithCoords(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToDynamicWarp(u8 unused);
void SetWarpDestinationToHealLocation(u8 a1);
void SetWarpDestinationToLastHealLocation(void);
void SetLastHealLocationWarp(u8 healLocationId);
void UpdateEscapeWarp(s16 x, s16 y);
void SetEscapeWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToEscapeWarp(void);
void SetFixedDiveWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetFixedHoleWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToFixedHoleWarp(s16 x, s16 y);
void SetContinueGameWarpToHealLocation(u8 a1);
void SetContinueGameWarpToDynamicWarp(int unused);
const struct MapConnection *GetMapConnection(u8 dir);
bool8 SetDiveWarpEmerge(u16 x, u16 y);
bool8 SetDiveWarpDive(u16 x, u16 y);
void LoadMapFromCameraTransition(u8 mapGroup, u8 mapNum);
void ResetInitialPlayerAvatarState(void);
void StoreInitialPlayerAvatarState(void);
bool32 Overworld_IsBikingAllowed(void);
void SetDefaultFlashLevel(void);
void Overworld_SetFlashLevel(s32 flashLevel);
u8 Overworld_GetFlashLevel(void);
void SetCurrentMapLayout(u16 mapLayoutId);
void sub_8085540(u8 var);
u8 sub_808554C(void);
u16 GetLocationMusic(struct WarpData *warp);
u16 GetCurrLocationDefaultMusic(void);
u16 GetWarpDestinationMusic(void);
void Overworld_ResetMapMusic(void);
void Overworld_PlaySpecialMapMusic(void);
void Overworld_SetSavedMusic(u16 songNum);
void Overworld_ClearSavedMusic(void);
void Overworld_ChangeMusicToDefault(void);
void Overworld_ChangeMusicTo(u16 newMusic);
u8 GetMapMusicFadeoutSpeed(void);
void TryFadeOutOldMapMusic(void);
bool8 BGMusicStopped(void);
void Overworld_FadeOutMapMusic(void);
void UpdateAmbientCry(s16 *state, u16 *delayCounter);
u8 GetMapTypeByGroupAndId(s8 mapGroup, s8 mapNum);
u8 GetMapTypeByWarpData(struct WarpData *warp);
u8 GetCurrentMapType(void);
u8 GetLastUsedWarpMapType(void);
bool8 IsMapTypeOutdoors(u8 mapType);
bool8 Overworld_MapTypeAllowsTeleportAndFly(u8 mapType);
bool8 IsMapTypeIndoors(u8 mapType);
u8 GetSavedWarpRegionMapSectionId(void);
u8 GetCurrentRegionMapSectionId(void);
u8 GetCurrentMapBattleScene(void);
void CleanupOverworldWindowsAndTilemaps(void);
bool32 IsUpdateLinkStateCBActive(void);
void CB1_Overworld(void);
void CB2_OverworldBasic(void);
void CB2_Overworld(void);
void SetMainCallback1(void (*cb)(void));
void SetUnusedCallback(void *a0);
void CB2_NewGame(void);
void CB2_WhiteOut(void);
void CB2_LoadMap(void);
void sub_8086024(void);
void sub_8086074(void);
void CB2_ReturnToField(void);
void CB2_ReturnToFieldLocal(void);
void CB2_ReturnToFieldLink(void);
void CB2_ReturnToFieldFromMultiplayer(void);
void CB2_ReturnToFieldWithOpenMenu(void);
void CB2_ReturnToFieldContinueScript(void);
void CB2_ReturnToFieldContinueScriptPlayMapMusic(void);
void sub_80861E8(void);
void CB2_ContinueSavedGame(void);
void ResetAllMultiplayerState(void);
u32 sub_8087214(void);
bool32 sub_808727C(void);
u16 sub_8087288(void);
u16 sub_808729C(void);
u16 QueueExitLinkRoomKey(void);
u16 sub_80872C4(void);
bool32 sub_8087598(void);
bool32 sub_80875C8(void);
bool32 sub_8087634(void);
bool32 sub_808766C(void);
void ClearLinkPlayerEventObjects(void);
# 12 "src/link_rfu.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);





void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 13 "src/link_rfu.c" 2
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
# 14 "src/link_rfu.c" 2
# 1 "include/union_room.h" 1







struct UnkStruct_Shared
{
    struct UnkLinkRfuStruct_02022B14 field_0;
    u8 __attribute__((aligned(4))) playerName[7 + 1];
};

struct UnkStruct_x1C
{
    struct UnkStruct_Shared unk0;
    u8 unk18:1;
};

struct UnkStruct_x20
{
    struct UnkStruct_Shared unk;
    u16 field_18;
    u8 field_1A_0:2;
    u8 field_1A_1:1;
    u8 field_1B;
    u8 field_1D;
    u8 field_1E;
    u8 field_1F;
};

struct UnkStruct_Main0
{
    struct UnkStruct_x20 arr[8];
};

struct UnkStruct_Main4
{
    struct UnkStruct_x1C arr[5];
};

struct UnkStruct_Main8
{
    struct UnkStruct_x20 arr[5];
};

struct UnkStruct_Leader
{
    struct UnkStruct_Main0 *field_0;
    struct UnkStruct_Main4 *field_4;
    struct UnkStruct_Main8 *field_8;
    u8 state;
    u8 textState;
    u8 field_E;
    u8 listWindowId;
    u8 field_10;
    u8 field_11;
    u8 listTaskId;
    u8 field_13;
    u8 field_14;
    u8 field_15;
    u8 field_16;
    u8 field_17;
    u8 field_18;
    u8 field_19;
    u16 field_1A;
};

struct UnkStruct_Group
{
    struct UnkStruct_Main0 *field_0;
    struct UnkStruct_Main4 *field_4;
    u8 state;
    u8 textState;
    u8 field_A;
    u8 listWindowId;
    u8 field_C;
    u8 field_D;
    u8 listTaskId;
    u8 field_F;
    u8 field_10;
    u8 field_11;
    u8 field_12;
    u8 field_13;
    u8 field_14;
    u8 field_15;
};

struct UnkStruct_8019BA8
{
    u8 field_0;
    u8 field_1;
    s8 field_2;
    u8 field_3;
};

struct UnkStruct_URoom
{
    struct UnkStruct_Main0 *field_0;
    struct UnkStruct_Main4 *field_4;
    struct UnkStruct_Main0 *field_8;
    struct UnkStruct_Main4 *field_C;
    u16 field_10;
    u16 field_12;
    u8 state;
    u8 stateAfterPrint;
    u8 textState;
    u8 field_17;
    u8 field_18;
    u8 field_19;
    u8 field_1A;
    u8 field_1B;
    u8 field_1C;
    u8 field_1D;
    u8 field_1E;
    u8 field_1F;
    u8 field_20;
    u8 spriteIds[40];
    u8 field_49;
    u8 field_4A;
    u16 field_4C[6];
    u8 field_58[0x98 - 0x58];
    u16 field_98;
    u16 field_9A[3];
    struct UnkStruct_8019BA8 field_A0[8];
    u8 field_C0[12][15];
    u8 field_174[48];
    u8 field_1A4[200];
};

union UnkUnion_Main
{
    struct UnkStruct_Leader *leader;
    struct UnkStruct_Group *group;
    struct UnkStruct_URoom *uRoom;
};

struct TradeUnkStruct
{
    u16 field_0;
    u16 type;
    u32 playerPersonality;
    u8 field_8;
    u8 field_9;
    u16 playerSpecies;
    u16 playerLevel;
    u16 species;
    u16 level;
    u16 field_12;
    u32 personality;
};



extern u8 gUnknown_02022C2C;
extern union UnkUnion_Main gUnknown_02022C30;
extern struct UnkLinkRfuStruct_02022B14Substruct gUnknown_02022C38;

extern u16 gUnknown_02022C3C;
extern u8 gUnknown_02022C3E;



u8 sub_8013F78(void);
void nullsub_89(u8 taskId);
void var_800D_set_xB(void);
void MEvent_CreateTask_CardOrNewsWithFriend(u32 arg0);
void MEvent_CreateTask_CardOrNewsOverWireless(u32 arg0);
void MEvent_CreateTask_Leader(u32 arg0);
# 15 "src/link_rfu.c" 2
# 1 "include/string_util.h" 1



extern u8 gStringVar1[];
extern u8 gStringVar2[];
extern u8 gStringVar3[];
extern u8 gStringVar4[];

enum StringConvertMode
{
    STR_CONV_MODE_LEFT_ALIGN,
    STR_CONV_MODE_RIGHT_ALIGN,
    STR_CONV_MODE_LEADING_ZEROS
};

u8 *StringCopy10(u8 *dest, const u8 *src);
u8 *StringGetEnd10(u8 *str);
u8 *StringCopy7(u8 *dest, const u8 *src);
u8 *StringCopy(u8 *dest, const u8 *src);
u8 *StringAppend(u8 *dest, const u8 *src);
u8 *StringCopyN(u8 *dest, const u8 *src, u8 n);
u8 *StringAppendN(u8 *dest, const u8 *src, u8 n);
u16 StringLength(const u8 *str);
s32 StringCompare(const u8 *str1, const u8 *str2);
s32 StringCompareN(const u8 *str1, const u8 *str2, u32 n);
bool8 IsStringLengthAtLeast(const u8 *str, s32 n);
u8 *ConvertIntToDecimalStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertUIntToDecimalStringN(u8 *dest, u32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertIntToHexStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *StringExpandPlaceholders(u8 *dest, const u8 *src);
u8 *StringBraille(u8 *dest, const u8 *src);
const u8 *GetExpandedPlaceholder(u32 id);
u8 *StringFill(u8 *dest, u8 c, u16 n);
u8 *StringCopyPadded(u8 *dest, const u8 *src, u8 c, u16 n);
u8 *StringFillWithTerminator(u8 *dest, u16 n);
u8 *StringCopyN_Multibyte(u8 *dest, u8 *src, u32 n);
u32 StringLength_Multibyte(const u8 *str);
u8 *WriteColorChangeControlCode(u8 *dest, u32 colorType, u8 color);
bool32 IsStringJapanese(u8 *str);
bool32 sub_800924C(u8 *str, s32 n);
u8 GetExtCtrlCodeLength(u8 code);
s32 StringCompareWithoutExtCtrlCodes(const u8 *str1, const u8 *str2);
void ConvertInternationalString(u8 *s, u8 language);
void StripExtCtrlCodes(u8 *str);
# 16 "src/link_rfu.c" 2
# 1 "include/task.h" 1
# 9 "include/task.h"
typedef void (*TaskFunc)(u8 taskId);

struct Task
{
    TaskFunc func;
    bool8 isActive;
    u8 prev;
    u8 next;
    u8 priority;
    s16 data[16];
};

extern struct Task gTasks[];

void ResetTasks(void);
u8 CreateTask(TaskFunc func, u8 priority);
void DestroyTask(u8 taskId);
void RunTasks(void);
void TaskDummy(u8 taskId);
void SetTaskFuncWithFollowupFunc(u8 taskId, TaskFunc func, TaskFunc followupFunc);
void SwitchTaskToFollowupFunc(u8 taskId);
bool8 FuncIsActiveTask(TaskFunc func);
u8 FindTaskIdByFunc(TaskFunc func);
u8 GetTaskCount(void);
void SetWordTaskArg(u8 taskId, u8 dataElem, u32 value);
u32 GetWordTaskArg(u8 taskId, u8 dataElem);
# 17 "src/link_rfu.c" 2
# 1 "include/text.h" 1
# 123 "include/text.h"
enum
{
    FONTATTR_MAX_LETTER_WIDTH,
    FONTATTR_MAX_LETTER_HEIGHT,
    FONTATTR_LETTER_SPACING,
    FONTATTR_LINE_SPACING,
    FONTATTR_UNKNOWN,
    FONTATTR_COLOR_FOREGROUND,
    FONTATTR_COLOR_BACKGROUND,
    FONTATTR_COLOR_SHADOW
};

struct TextPrinterSubStruct
{
    u8 glyphId:4;
    bool8 hasPrintBeenSpedUp:1;
    u8 unk:3;
    u8 downArrowDelay:5;
    u8 downArrowYPosIdx:2;
    bool8 hasGlyphIdBeenSet:1;
    u8 autoScrollDelay;
};

struct TextPrinterTemplate
{
    const u8* currentChar;
    u8 windowId;
    u8 fontId;
    u8 x;
    u8 y;
    u8 currentX;
    u8 currentY;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

struct TextPrinter
{
    struct TextPrinterTemplate printerTemplate;

    void (*callback)(struct TextPrinterTemplate *, u16);

    union

    __attribute__((packed))

    {
        struct TextPrinterSubStruct sub;
        u8 fields[7];
    } subUnion;

    u8 active;
    u8 state;
    u8 textSpeed;
    u8 delayCounter;
    u8 scrollDistance;
    u8 minLetterSpacing;
    u8 japanese;
};

struct FontInfo
{
    u16 (*fontFunction)(struct TextPrinter *x);
    u8 maxLetterWidth;
    u8 maxLetterHeight;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

extern const struct FontInfo *gFonts;

struct GlyphWidthFunc
{
    u32 fontId;
    u32 (*func)(u16 glyphId, bool32 isJapanese);
};

struct KeypadIcon
{
    u16 tileOffset;
    u8 width;
    u8 height;
};

typedef struct {
    bool8 canABSpeedUpPrint:1;
    bool8 useAlternateDownArrow:1;
    bool8 autoScroll:1;
    bool8 forceMidTextSpeed:1;
} TextFlags;

struct Struct_03002F90
{
    u32 unk0[8];
    u32 unk20[8];
    u32 unk40[8];
    u32 unk60[8];
    u8 unk80;
    u8 unk81;
};

extern TextFlags gTextFlags;

extern u8 gUnknown_03002F84;
extern struct Struct_03002F90 gUnknown_03002F90;

void SetFontsPointer(const struct FontInfo *fonts);
void DeactivateAllTextPrinters(void);
u16 AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
bool16 AddTextPrinter(struct TextPrinterTemplate *template, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
void RunTextPrinters(void);
bool16 IsTextPrinterActive(u8 id);
u32 RenderFont(struct TextPrinter *textPrinter);
void GenerateFontHalfRowLookupTable(u8 fgColor, u8 bgColor, u8 shadowColor);
void SaveTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void RestoreTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void DecompressGlyphTile(const void *src_, void *dest_);
u8 GetLastTextColor(u8 colorType);
void CopyGlyphToWindow(struct TextPrinter *x);
void ClearTextSpan(struct TextPrinter *textPrinter, u32 width);
u8 GetMenuCursorDimensionByFont(u8, u8);

u16 Font0Func(struct TextPrinter *textPrinter);
u16 Font1Func(struct TextPrinter *textPrinter);
u16 Font2Func(struct TextPrinter *textPrinter);
u16 Font3Func(struct TextPrinter *textPrinter);
u16 Font4Func(struct TextPrinter *textPrinter);
u16 Font5Func(struct TextPrinter *textPrinter);
u16 Font7Func(struct TextPrinter *textPrinter);
u16 Font8Func(struct TextPrinter *textPrinter);

void TextPrinterInitDownArrowCounters(struct TextPrinter *textPrinter);
void TextPrinterDrawDownArrow(struct TextPrinter *textPrinter);
void TextPrinterClearDownArrow(struct TextPrinter *textPrinter);
bool8 TextPrinterWaitAutoMode(struct TextPrinter *textPrinter);
bool16 TextPrinterWaitWithDownArrow(struct TextPrinter *textPrinter);
bool16 TextPrinterWait(struct TextPrinter *textPrinter);
void DrawDownArrow(u8 windowId, u16 x, u16 y, u8 bgColor, bool8 drawArrow, u8 *counter, u8 *yCoordIndex);
u16 RenderText(struct TextPrinter *textPrinter);
u32 GetStringWidthFixedWidthFont(const u8 *str, u8 fontId, u8 letterSpacing);
u32 (*GetFontWidthFunc(u8 glyphId))(u16, bool32);
s32 GetStringWidth(u8 fontId, const u8 *str, s16 letterSpacing);
u8 RenderTextFont9(u8 *pixels, u8 fontId, u8 *str);
u8 DrawKeypadIcon(u8 windowId, u8 keypadIconId, u16 x, u16 y);
u8 GetKeypadIconTileOffset(u8 keypadIconId);
u8 GetKeypadIconWidth(u8 keypadIconId);
u8 GetKeypadIconHeight(u8 keypadIconId);
void SetDefaultFontsPointer(void);
u8 GetFontAttribute(u8 fontId, u8 attributeId);
u8 GetMenuCursorDimensionByFont(u8 fontId, u8 whichDimension);
void DecompressGlyphFont0(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont0(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont7(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont7(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont8(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont8(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont2(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont2(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont1(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont1(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont9(u16 glyphId);


u16 Font6Func(struct TextPrinter *textPrinter);
u32 GetGlyphWidthFont6(u16 glyphId, bool32 isJapanese);
# 18 "src/link_rfu.c" 2
# 1 "include/constants/species.h" 1
# 19 "src/link_rfu.c" 2
# 1 "include/save.h" 1



struct SaveSectionLocation
{
    void *data;
    u16 size;
};

struct SaveSection
{
    u8 data[0xFF4];
    u16 id;
    u16 checksum;
    u32 security;
    u32 counter;
};


struct UnkSaveSection
{
    u8 data[0xFF4];
    u32 security;
};

struct SaveSectionOffsets
{
    u16 toAdd;
    u16 size;
};
# 39 "include/save.h"
enum
{
    ENABLE,
    DISABLE,
    CHECK
};


enum
{
    SAVE_NORMAL,
    SAVE_LINK,

    SAVE_LINK2,
    SAVE_HALL_OF_FAME,
    SAVE_OVERWRITE_DIFFERENT_FILE,
    SAVE_HALL_OF_FAME_ERASE_BEFORE
};
# 65 "include/save.h"
extern u16 gLastWrittenSector;
extern u32 gLastSaveCounter;
extern u16 gLastKnownGoodSector;
extern u32 gDamagedSaveSectors;
extern u32 gSaveCounter;
extern struct SaveSection *gFastSaveSection;
extern u16 gUnknown_03006208;
extern u16 gSaveFileStatus;
extern void (*gGameContinueCallback)(void);
extern struct SaveSectionLocation gRamSaveSectionLocations[];
extern u16 gUnknown_03006294;

extern struct SaveSection gSaveDataBuffer;

void ClearSaveData(void);
void Save_ResetSaveCounters(void);
u8 HandleSavingData(u8 saveType);
u8 TrySavingData(u8 saveType);
bool8 sub_8153380(void);
bool8 sub_81533AC(void);
u8 sub_81533E0(void);
u8 sub_8153408(void);
u8 FullSaveGame(void);
bool8 CheckSaveFile(void);
u8 Save_LoadGameData(u8 a1);
u16 sub_815355C(void);
u8 sub_81534D0(u8);
u32 TryReadSpecialSaveSection(u8 sector, u8* dst);
u32 TryWriteSpecialSaveSection(u8 sector, u8* src);
void sub_8153688(u8 taskId);


void DoSaveFailedScreen(u8 saveType);
# 20 "src/link_rfu.c" 2
# 1 "include/mystery_gift.h" 1



extern bool8 gGiftIsFromEReader;

u16 GetMysteryGiftBaseBlock(void);
void c2_mystery_gift_e_reader_run(void);
void PrintMysteryGiftOrEReaderTopMenu(bool8 isJapanese, bool32 usePickOkCancel);
void MG_DrawCheckerboardPattern(u32 bg);
void MainCB_FreeAllBuffersAndReturnToInitTitleScreen(void);
bool32 MG_PrintTextOnWindow1AndWaitButton(u8 *textState, const u8 *str);
void AddTextPrinterToWindow1(const u8 *src);
void c2_ereader(void);
void c2_mystery_gift(void);
# 21 "src/link_rfu.c" 2

extern u16 gHeldKeyCodeToSend;

struct UnkRfuStruct_1 gUnknown_03004140;
struct UnkRfuStruct_2 gUnknown_03005000;

__attribute__((section(".bss"))) u8 gUnknown_03000D74;
__attribute__((aligned(4))) __attribute__((section(".bss"))) u8 gUnknown_03000D78[8];
__attribute__((section(".bss"))) u8 gUnknown_03000D80[16];
__attribute__((section(".bss"))) u16 gUnknown_03000D90[8];

__attribute__((section("ewram_data"))) u8 gWirelessStatusIndicatorSpriteId = 0;
__attribute__((section("ewram_data"))) __attribute__((aligned(4))) struct UnkLinkRfuStruct_02022B14 gUnknown_02022B14 = {};
__attribute__((section("ewram_data"))) __attribute__((aligned(2))) u8 gUnknown_02022B22[7 + 1] = {};
__attribute__((section("ewram_data"))) struct UnkLinkRfuStruct_02022B2C gUnknown_02022B2C = {};
__attribute__((section("ewram_data"))) struct UnkLinkRfuStruct_02022B44 gUnknown_02022B44 = {};


static void sub_800C000(void);
static void sub_800C7B4(u16 r8, u16 r6);
static void sub_800C744(u32 a0);
static void sub_800CEB0(u16 r6);
static void sub_800CF34(void);
static void sub_800D158(void);
static void sub_800D20C(void);
static void sub_800D268(void);
static u8 sub_800D294(void);
static void sub_800D30C(u8 a0, u8 a1);
static void sub_800D334(u8 a0);
static void sub_800D358(u8 a0);
static void sub_800D434(void);
static void sub_800D610(void);
void sub_800D630(void);
static bool8 sub_800DAC8(struct UnkRfuStruct_2_Sub_c1c *q1, u8 *q2);
static void sub_800EAB4(void);
static void sub_800EAFC(void);
void sub_800ED34(u16 unused);
static void sub_800EDBC(u16 unused);
static void sub_800F048(void);
static void sub_800F86C(u8 unused);
static void sub_800FCC4(struct UnkRfuStruct_2_Sub_6c *data);
void sub_800FD14(u16 command);
static void rfufunc_80F9F44(void);
static void sub_800FFB0(void);
static void rfufunc_80FA020(void);
bool32 sub_8010454(u32 a0);
static void sub_8010528(void);
void sub_8010750(void);
s32 sub_80107A0(void);
void sub_801084C(u8 taskId);
void sub_80109E8(u16 a0);
void sub_8010A70(void *a0);
void sub_8010AAC(u8 taskId);
void sub_8010D0C(u8 taskId);
void sub_80115EC(s32 a0);
u8 sub_8011CE4(const u8 *a0, u16 a1);
void sub_8011D6C(u32 a0);
void sub_8011E94(u32 a0, u32 a1);
bool8 sub_8012224(void);
void sub_801227C(void);
void sub_801209C(u8 taskId);
void sub_8011BF8(void);
void sub_8011BA4(void);



const u16 gWirelessLinkIconPalette[] = INCBIN_U16("graphics/interface/wireless_link_icon.gbapal");
const u32 gWirelessLinkIconPic[] = INCBIN_U32("graphics/interface/wireless_link_icon.4bpp.lz");
const u8 sWireless_ASCIItoRSETable[] = {
    0xff, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9a, 0x37,
    0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
    0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
    0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f,
    0x00, 0xab, 0xb5, 0xb6, 0xb1, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xb2, 0xf1, 0x00, 0xae, 0xad, 0xba,
    0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8,
    0xa9, 0xaa, 0x00, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f,
    0x00, 0xbb, 0xbc, 0xbd, 0xbe, 0xbf, 0xc0, 0xc1,
    0xc2, 0xc3, 0xc4, 0xc5, 0xc6, 0xc7, 0xc8, 0xc9,
    0xca, 0xcb, 0xcc, 0xcd, 0xce, 0xcf, 0xd0, 0xd1,
    0xd2, 0xd3, 0xd4, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6,
    0x00, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xdb,
    0xdc, 0xdd, 0xde, 0xdf, 0xe0, 0xe1, 0xe2, 0xe3,
    0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9, 0xea, 0xeb,
    0xec, 0xed, 0xee, 0x2d, 0x2f, 0x30, 0x31, 0x32,
    0x33, 0x34, 0x35, 0x36, 0x50, 0x00, 0x01, 0x02,
    0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a,
    0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12,
    0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a,
    0x1b, 0xad, 0xb3, 0xb4, 0x00, 0xaf, 0x7d, 0x7f,
    0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0xa0,
    0xae, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57,
    0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f,
    0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67,
    0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f,
    0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77,
    0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7e, 0xb0, 0xac,
    0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23,
    0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b,
    0x2c, 0x2e, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c,
    0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94
};
const u8 sWireless_RSEtoASCIITable[] = {
    0x20, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c,
    0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94,
    0x95, 0x96, 0x97, 0x98, 0x99, 0x9a, 0x9b, 0x9c,
    0x9d, 0x9e, 0x9f, 0xa0, 0xe0, 0xe1, 0xe2, 0xe3,
    0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9, 0xea, 0xeb,
    0xec, 0xed, 0xee, 0xef, 0xf0, 0x7b, 0xf1, 0x7c,
    0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x07,
    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
    0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
    0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f,
    0x84, 0xb1, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7,
    0xb8, 0xb9, 0xba, 0xbb, 0xbc, 0xbd, 0xbe, 0xbf,
    0xc0, 0xc1, 0xc2, 0xc3, 0xc4, 0xc5, 0xc6, 0xc7,
    0xc8, 0xc9, 0xca, 0xcb, 0xcc, 0xcd, 0xce, 0xcf,
    0xd0, 0xd1, 0xd2, 0xd3, 0xd4, 0xd5, 0xd6, 0xd7,
    0xd8, 0xd9, 0xda, 0xdb, 0xdc, 0xa6, 0xdd, 0xa7,
    0xa8, 0xa9, 0xaa, 0xab, 0xac, 0xad, 0xae, 0xf2,
    0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8, 0xf9, 0xfa,
    0xfb, 0xfc, 0xfd, 0xfe, 0xff, 0x01, 0x02, 0x03,
    0x04, 0x05, 0x06, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
    0xaf, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36,
    0x37, 0x38, 0x39, 0x21, 0xdf, 0xa1, 0xb0, 0xa5,
    0xde, 0x24, 0x2a, 0xa2, 0xa3, 0x22, 0x23, 0x20,
    0xa4, 0x20, 0x2f, 0x41, 0x42, 0x43, 0x44, 0x45,
    0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d,
    0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55,
    0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63,
    0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b,
    0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73,
    0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x20,
    0x20, 0x2b, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x20,
    0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x00
};
const struct OamData sWirelessStatusIndicatorOamData =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .bpp = 0,
    .shape = (((1 << 2) | (0)) & 0x03),
    .x = 0,
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
};
static const union AnimCmd sWirelessStatusIndicatorAnim0[] = {

    {.frame = {4, 5}},
    {.frame = {8, 5}},
    {.frame = {12, 5}},
    {.frame = {16, 10}},
    {.frame = {12, 5}},
    {.frame = {8, 5}},
    {.jump = {.type = -2, .target = 0}}
};
static const union AnimCmd sWirelessStatusIndicatorAnim1[] = {

    {.frame = {4, 5}},
    {.frame = {8, 5}},
    {.frame = {12, 10}},
    {.frame = {8, 5}},
    {.jump = {.type = -2, .target = 0}}
};
static const union AnimCmd sWirelessStatusIndicatorAnim2[] = {

    {.frame = {4, 5}},
    {.frame = {8, 5}},
    {.jump = {.type = -2, .target = 0}}
};
static const union AnimCmd sWirelessStatusIndicatorAnim3[] = {

    {.frame = {4, 10}},
    {.frame = {20, 10}},
    {.jump = {.type = -2, .target = 0}}
};
static const union AnimCmd sWirelessStatusIndicatorAnim4[] = {

    {.frame = {24, 10}},
    {.frame = {4, 10}},
    {.jump = {.type = -2, .target = 0}}
};
static const union AnimCmd *const sWirelessStatusIndicatorAnims[] = {
    sWirelessStatusIndicatorAnim0,
    sWirelessStatusIndicatorAnim1,
    sWirelessStatusIndicatorAnim2,
    sWirelessStatusIndicatorAnim3,
    sWirelessStatusIndicatorAnim4
};
const struct CompressedSpriteSheet sWirelessStatusIndicatorSpriteSheet = {
    gWirelessLinkIconPic, 0x0380, 0xD431
};
const struct SpritePalette sWirelessStatusIndicatorSpritePalette = {
    gWirelessLinkIconPalette, 0xD432
};
static const struct SpriteTemplate sWirelessStatusIndicatorSpriteTemplate = {
    0xD431,
    0xD432,
    &sWirelessStatusIndicatorOamData,
    sWirelessStatusIndicatorAnims,
    ((void *)0),
    gDummySpriteAffineAnimTable,
    SpriteCallbackDummy
};

const struct UnkLinkRfuStruct_02022B2C gUnknown_082ED608 = {
    0x04, 0x20, 0x00, 0x00, 0x02,
    &gUnknown_02022B14,
    gUnknown_02022B22,
    0x01, 0x00, 0x258, 0x12c
};
const u8 gUnknown_082ED620[] = {
    0, 3, 2, 1, 0
};
const u32 gUnknown_082ED628[] = {
    0x000000,
    0x000001,
    0x000003,
    0x000007,
    0x00000f,
    0x00001f,
    0x00003f,
    0x00007f,
    0x0000ff,
    0x0001ff,
    0x0003ff,
    0x0007ff,
    0x000fff,
    0x001fff,
    0x003fff,
    0x007fff,
    0x00ffff,
    0x01ffff,
    0x03ffff,
    0x07ffff,
    0x0fffff,
    0x1fffff,
    0x3fffff,
    0x7fffff,
    0xffffff
};
const u8 gUnknown_082ED68C[] = {
    0, 0, 1,
    1, 2, 2,
    2, 2, 3
};
const u8 gUnknown_082ED695[] = {
    0, 1, 1, 2,
    1, 2, 2, 3,
    1, 2, 2, 3,
    2, 3, 3, 4
};
const u8 gUnknown_082ED6A5[] = {
    0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0
};
const struct {
    u8 *buffer;
    u32 size;
} gUnknown_082ED6B8[] = {
    { gBlockSendBuffer, 200 },
    { gBlockSendBuffer, 200 },
    { gBlockSendBuffer, 100 },
    { gBlockSendBuffer, 220 },
    { gBlockSendBuffer, 40 }
};
const u16 gUnknown_082ED6E0[] = {
    0x0002, 0x7f7d, 0x0000, 0xFFFF
};

const char sUnref_082ED6E8[][15] = {
    "RFU WAIT",
    "RFU BOOT",
    "RFU ERROR",
    "RFU RESET",
    "RFU CONFIG",
    "RFU START",
    "RFU SC POLL",
    "RFU SP POLL",
    "RFU START",
    "RFU SEND ERR",
    "RFU CP POLL"
};
const char sUnref_082ED6E9[][16] = {
    "              ",
    "RECOVER START ",
    "DISSCONECT    ",
    "RECOVER SUUSES",
    "RECOVER FAILED"
};
const TaskFunc gUnknown_082ED7E0[] = {
    sub_801084C,
    sub_8010AAC,
    sub_8010D0C
};
const char gUnknown_082ED7EC[] = "PokemonSioInfo";
const char gUnknown_082ED7FC[] = "LINK LOSS DISCONNECT!";
const char gUnknown_082ED814[] = "LINK LOSS RECOVERY NOW";

__attribute__((aligned(4))) const char gUnknown_082ED82C[31] = {' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',0x00};
const char gUnknown_082ED84B[16] = {' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',0x00};
const char gUnknown_082ED85B[9] = {' ',' ',' ',' ',' ',' ',' ',' ',0x00};
__attribute__((aligned(4))) const char gUnknown_082ED864[2] = {' ',0x00};
const char gUnknown_082ED866[2] = {'*',0x00};
const char gUnknown_082ED868[8] = "NOWSLOT";
const char gUnknown_082ED870[12] = "           ";
const char gUnknown_082ED87C[12] = "CLOCK DRIFT";
const char gUnknown_082ED888[12] = "BUSY SEND  ";
const char gUnknown_082ED894[12] = "CMD REJECT ";
const char gUnknown_082ED8A0[12] = "CLOCK SLAVE";
const char gUnknown_082ED8A8[3][8] = {
    "CHILD ",
    "PARENT",
    "SEARCH"
};



u32 sub_800BEC0(void)
{
    u32 r4;

    r4 = rfu_REQBN_softReset_and_checkID();
    if (r4 == 0x8001)
    {
        gUnknown_03004140.unk_08 = 1;
    }
    if (gUnknown_03004140.unk_04 != 0x17 && gUnknown_03004140.unk_04 != 0x01)
    {
        gUnknown_03004140.unk_05 = 0;
        gUnknown_03004140.unk_04 = 0;
    }
    gUnknown_03004140.unk_07 = 0;
    gUnknown_03004140.unk_0d = 0;
    gUnknown_03004140.unk_01 = 0;
    gUnknown_03004140.unk_00 = 0;
    gUnknown_03004140.unk_06 = -1;
    sub_800D610();
    return r4;
}

void rfu_REQ_sendData_wrapper(u8 r2)
{
    u8 val;
    if (!gUnknown_03007890->unk_00)
    {
        val = gUnknown_03004140.unk_02;
        r2 = 0;
        if (val == 1)
        {
            r2 = 1;
        }
    }
    else
    {
        gUnknown_03004140.unk_03 = 0;
    }
    rfu_REQ_sendData(r2);
}

s32 sub_800BF4C(void (*func1)(u8, u8), void (*func2)(u16))
{
    if (func1 == ((void *)0))
    {
        return 4;
    }
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, &gUnknown_03004140, 0x00000000 | 0x01000000 | ((((size_t)&((struct UnkRfuStruct_1 *)0)->filler_48))/(16/8) & 0x1FFFFF)); };
    gUnknown_03004140.unk_06 = -1;
    gUnknown_03004140.unk_40 = func1;
    gUnknown_03004140.unk_44 = func2;
    rfu_setMSCCallback(sub_800CEB0);
    rfu_setREQCallback(sub_800C7B4);
    return 0;
}

void sub_800BFA0(void)
{
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, &gUnknown_03004140, 0x00000000 | 0x01000000 | ((((size_t)&((struct UnkRfuStruct_1 *)0)->unk_40))/(16/8) & 0x1FFFFF)); };
    gUnknown_03004140.unk_06 = -1;
}

void sub_800BFCC(const struct UnkLinkRfuStruct_02022B2C *unk0)
{
    sub_800C000();
    gUnknown_03004140.unk_04 = 1;
    gUnknown_03004140.unk_05 = 2;
    gUnknown_03004140.unk_3c = unk0;
    gUnknown_03004140.unk_09 = unk0->unk_11;
    gUnknown_03004140.unk_32 = unk0->unk_12;
    gUnknown_03004140.unk_18 = unk0->unk_14;
    if (unk0->unk_10)
    {
        gUnknown_03004140.unk_0b = 1;
    }
}

static void sub_800C000(void)
{
    u8 i;

    gUnknown_03004140.unk_05 = 0;
    gUnknown_03004140.unk_04 = 0;
    gUnknown_03004140.unk_06 = -1;
    gUnknown_03004140.unk_07 = 0;
    gUnknown_03004140.unk_10 = 0;
    gUnknown_03004140.unk_0c = 0;
    gUnknown_03004140.unk_24 = 0;
    gUnknown_03004140.unk_30 = 0;
    for (i = 0; i < 4; i++)
    {
        gUnknown_03004140.unk_28[i] = 0;
        gUnknown_03004140.unk_34[i] = 0;
    }
}

void sub_800C048(void)
{
    gUnknown_03004140.unk_04 = 0x15;
}

u8 sub_800C054(u8 r5, u16 r7, u16 r8, const u16 *r6)
{
    u8 i;
    const u16 *buffer;

    if (gUnknown_03004140.unk_04 != 0 && (gUnknown_03004140.unk_04 != 0x08 || r5 != 1))
    {
        gUnknown_03004140.unk_14 = 1;
        sub_800D30C(0xf3, 0x01);
        return 1;
    }
    if (!rfu_getMasterSlave())
    {
        gUnknown_03004140.unk_14 = 2;
        sub_800D30C(0xf3, 0x01);
        return 2;
    }
    for (i = 0, buffer = r6; i < 16; i++)
    {
        if (*buffer++ == 0xFFFF)
        {
            break;
        }
    }
    if (i == 16)
    {
        gUnknown_03004140.unk_14 = 4;
        sub_800D30C(0xf3, 0x01);
        return 4;
    }
    if (r5 > 1)
    {
        gUnknown_03004140.unk_07 = 1;
        r5 = 1;
        r7 = 0;
    }
    else
    {
        gUnknown_03004140.unk_07 = 0;
    }
    if (r5 != 0)
    {
        gUnknown_03004140.unk_04 = 5;
    }
    else
    {
        gUnknown_03004140.unk_04 = 9;
        if (gUnknown_03004140.unk_0b)
        {
            gUnknown_03004140.unk_0b = 2;
        }
    }
    gUnknown_03004140.unk_06 = r5;
    gUnknown_03004140.unk_1a = r7;
    gUnknown_03004140.unk_26 = r8;
    gUnknown_03004140.unk_20 = r6;
    return 0;
}

u8 sub_800C12C(u16 r6, u16 r8)
{
    u8 i;

    if (gUnknown_03004140.unk_04 != 0 && (gUnknown_03004140.unk_04 < 9 || gUnknown_03004140.unk_04 > 11))
    {
        gUnknown_03004140.unk_14 = 1;
        sub_800D30C(0xF3, 0x01);
        return 1;
    }
    if (!rfu_getMasterSlave())
    {
        gUnknown_03004140.unk_14 = 2;
        sub_800D30C(0xF3, 0x01);
        return 2;
    }
    for (i = 0; i < gUnknown_03007890->unk_08; i++)
    {
        if (gUnknown_03007890->unk_14[i].unk_00 == r6)
        {
            break;
        }
    }
    if (gUnknown_03007890->unk_08 == 0 || i == gUnknown_03007890->unk_08)
    {
        gUnknown_03004140.unk_14 = 3;
        sub_800D30C(0xF3, 0x01);
        return 3;
    }
    if (gUnknown_03004140.unk_04 == 0 || gUnknown_03004140.unk_04 == 9)
    {
        gUnknown_03004140.unk_04 = 12;
        gUnknown_03004140.unk_05 = 13;
    }
    else
    {
        gUnknown_03004140.unk_04 = 11;
        gUnknown_03004140.unk_05 = 12;
    }
    gUnknown_03004140.unk_1e = r6;
    gUnknown_03004140.unk_1a = r8;
    if (gUnknown_03004140.unk_07 != 0)
    {
        gUnknown_03004140.unk_07 = 7;
    }
    return 0;
}

void sub_800C210(u8 a0)
{
    u8 i;

    if (a0 & gUnknown_03004140.unk_30)
    {
        gUnknown_03004140.unk_30 &= ~a0;
        for (i = 0; i < 4; i++)
        {
            if ((a0 >> i) & 1)
            {
                gUnknown_03004140.unk_34[i] = 0;
            }
        }
        i = gUnknown_03007890->unk_03 & a0;
        if (i)
        {
            sub_800D334(i);
        }
        gUnknown_03004140.unk_14 = i;
        sub_800D30C(0x33, i);
    }
}

void sub_800C27C(bool8 a0)
{
    u8 r2;

    r2 = 0;
    gUnknown_03004140.unk_07 = 0;
    if (a0)
    {
        sub_800C000();
        gUnknown_03004140.unk_04 = 23;
    }
    else
    {
        switch (gUnknown_03004140.unk_04)
        {
            case 5:
                gUnknown_03004140.unk_04 = 8;
                gUnknown_03004140.unk_05 = 0;
                r2 = 0x13;
                break;
            case 6:
                gUnknown_03004140.unk_04 = 7;
                gUnknown_03004140.unk_05 = 8;
                break;
            case 7:
                gUnknown_03004140.unk_04 = 7;
                gUnknown_03004140.unk_05 = 8;
                break;
            case 8:
                break;
            case 9:
                gUnknown_03004140.unk_05 = 0;
                gUnknown_03004140.unk_04 = 0;
                r2 = 0x21;
                break;
            case 10:
                gUnknown_03004140.unk_04 = 11;
                gUnknown_03004140.unk_05 = 0;
                break;
            case 11:
                gUnknown_03004140.unk_04 = 11;
                gUnknown_03004140.unk_05 = 0;
                break;
            case 12:
                gUnknown_03004140.unk_05 = 0;
                gUnknown_03004140.unk_04 = 0;
                r2 = 0x23;
                break;
            case 13:
                gUnknown_03004140.unk_04 = 14;
                break;
            case 14:
                gUnknown_03004140.unk_04 = 14;
                break;
            case 15:
                break;
            case 16:
                gUnknown_03004140.unk_04 = gUnknown_03004140.unk_11;
                gUnknown_03004140.unk_05 = gUnknown_03004140.unk_12;
                sub_800D334(gUnknown_03007890->unk_03);
                gUnknown_03004140.unk_14 = gUnknown_03007890->unk_03;
                sub_800D30C(0x33, 0x01);
                return;
            case 17:
                gUnknown_03004140.unk_04 = 18;
                break;
            case 18:
                gUnknown_03004140.unk_04 = 18;
                break;
            default:
                gUnknown_03004140.unk_05 = 0;
                gUnknown_03004140.unk_04 = 0;
                r2 = 0x43;
                break;
        }
        if (gUnknown_03004140.unk_04 == 0)
        {
            sub_800D30C(r2, 0);
        }
    }
}

bool8 sub_800C36C(u16 a0)
{
    bool8 retVal;
    u8 i;
    u8 sp0;
    u8 sp1;
    u8 sp2;
    u8 flags;

    retVal = 0;
    rfu_REQBN_watchLink(a0, &sp0, &sp1, &sp2);
    if (sp0)
    {
        gUnknown_03004140.unk_14 = sp0;
        gUnknown_03004140.unk_16 = sp1;
        if (gUnknown_03004140.unk_09)
        {
            gUnknown_03004140.unk_0a = 1;
            if (gUnknown_03004140.unk_06 == 0 && sp1 == 0)
            {
                gUnknown_03004140.unk_0a = 4;
            }
            if (gUnknown_03004140.unk_0a == 1)
            {
                for (i = 0; i < 4; i++)
                {
                    if ((sp0 >> i) & 1)
                    {
                        gUnknown_03004140.unk_30 |= (1 << i);
                        gUnknown_03004140.unk_34[i] = gUnknown_03004140.unk_32;
                    }
                }
                sub_800D30C(0x31, 0x01);
            }
            else
            {
                gUnknown_03004140.unk_0a = 0;
                sub_800D334(sp0);
                retVal = 1;
                sub_800D30C(0x33, 0x01);
            }
        }
        else
        {
            sub_800D334(sp0);
            retVal = 1;
            sub_800D30C(0x30, 0x02);
        }
        sub_800D610();
    }
    if (gUnknown_03007890->unk_00 == 1)
    {
        if (sp2)
        {
            for (i = 0; i < 4; i++)
            {
                if ((gUnknown_03004140.unk_30 >> i) & 1 && (sp2 >> i) & 1)
                {
                    gUnknown_03004140.unk_34[i] = 0;
                }
            }
            gUnknown_03004140.unk_30 &= ~sp2;
            gUnknown_03004140.unk_14 = sp2;
            sub_800D30C(0x32, 0x01);
        }
        if (gUnknown_03004140.unk_30)
        {
            flags = 0;
            for (i = 0; i < 4; i++)
            {
                if ((gUnknown_03004140.unk_30 >> i) & 1 && gUnknown_03004140.unk_34[i] && --gUnknown_03004140.unk_34[i] == 0)
                {
                    gUnknown_03004140.unk_30 &= ~(1 << i);
                    flags |= (1 << i);
                }
            }
            if (flags)
            {
                sub_800D334(flags);
                retVal = 1;
                gUnknown_03004140.unk_14 = flags;
                sub_800D30C(0x33, 0x01);
            }
        }
        if (!gUnknown_03004140.unk_30)
        {
            gUnknown_03004140.unk_0a = 0;
        }
    }
    return retVal;
}

void rfu_syncVBlank_(void)
{
    if (rfu_syncVBlank())
    {
        sub_800D30C(0xF1, 0x00);
        sub_800D610();
    }
}

void sub_800C54C(u32 a0)
{
    u8 r2;

    if (gUnknown_03004140.unk_40 == ((void *)0) && gUnknown_03004140.unk_04 != 0)
    {
        gUnknown_03004140.unk_04 = 0;
    }
    else
    {
        if (gUnknown_03004140.unk_07 != 0)
        {
            sub_800C744(a0);
        }
        do
        {
            if (gUnknown_03004140.unk_04 != 0)
            {
                rfu_waitREQComplete();
                gUnknown_03004140.unk_0e = 1;
                switch (gUnknown_03004140.unk_04)
                {
                    case 23:
                        r2 = sub_800BEC0() == 0x8001 ? 0x44 : 0xFF;
                        gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                        sub_800D30C(r2, 0);
                        break;
                    case 1:
                        if (sub_800BEC0() == 0x8001)
                        {
                            gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05;
                            gUnknown_03004140.unk_05 = 3;
                        }
                        else
                        {
                            gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                            sub_800D30C(0xFF, 0);
                        }
                        break;
                    case 2:
                        rfu_REQ_reset();
                        break;
                    case 3:
                        rfu_REQ_configSystem(gUnknown_03004140.unk_3c->unk_02, gUnknown_03004140.unk_3c->unk_00, gUnknown_03004140.unk_3c->unk_01);
                        break;
                    case 4:
                        rfu_REQ_configGameData(gUnknown_03004140.unk_3c->unk_04, gUnknown_03004140.unk_3c->unk_06, gUnknown_03004140.unk_3c->unk_08, gUnknown_03004140.unk_3c->unk_0c);
                        break;
                    case 5:
                        rfu_REQ_startSearchChild();
                        break;
                    case 6:
                        rfu_REQ_pollSearchChild();
                        break;
                    case 7:
                        rfu_REQ_endSearchChild();
                        break;
                    case 8:
                        break;
                    case 9:
                        rfu_REQ_startSearchParent();
                        break;
                    case 10:
                        rfu_REQ_pollSearchParent();
                        break;
                    case 11:
                        rfu_REQ_endSearchParent();
                        break;
                    case 12:
                        rfu_REQ_startConnectParent(gUnknown_03004140.unk_1e);
                        break;
                    case 13:
                        rfu_REQ_pollConnectParent();
                        break;
                    case 14:
                        rfu_REQ_endConnectParent();
                        break;
                    case 15:
                        break;
                    case 16:
                        rfu_REQ_CHILD_startConnectRecovery(gUnknown_03007890->unk_03);
                        break;
                    case 17:
                        rfu_REQ_CHILD_pollConnectRecovery();
                        break;
                    case 18:
                        rfu_REQ_CHILD_endConnectRecovery();
                        break;
                    case 19:
                        rfu_REQ_changeMasterSlave();
                        break;
                    case 20:
                        break;
                    case 21:
                        rfu_REQ_stopMode();
                        break;
                    case 22:
                        break;
                }
                rfu_waitREQComplete();
                gUnknown_03004140.unk_0e = 0;
            }
        } while (gUnknown_03004140.unk_04 == 18 || gUnknown_03004140.unk_04 == 19);
        if (gUnknown_03007890->unk_00 != 1 || !sub_800C36C(0))
        {
            sub_800CF34();
            sub_800D158();
            sub_800D268();
            sub_800D434();
        }
    }
}

static void sub_800C744(u32 a0)
{
    if (gUnknown_03004140.unk_07 == 5)
    {
        gUnknown_03004140.unk_06 = 1;
        gUnknown_03004140.unk_04 = 5;
        gUnknown_03004140.unk_1a = gUnknown_03004140.unk_1c;
        if (gUnknown_03004140.unk_1a)
        {
            gUnknown_03004140.unk_07 = 6;
        }
        else
        {
            gUnknown_03004140.unk_07 = 1;
        }
    }
    if (gUnknown_03004140.unk_07 == 1)
    {
        gUnknown_03004140.unk_06 = 1;
        gUnknown_03004140.unk_04 = 5;
        gUnknown_03004140.unk_1a = a0 % 140;
        gUnknown_03004140.unk_1c = 140 - gUnknown_03004140.unk_1a;
        if (gUnknown_03004140.unk_1a)
        {
            gUnknown_03004140.unk_07 = 2;
        }
        else
        {
            gUnknown_03004140.unk_07 = 3;
        }
    }
    if (gUnknown_03004140.unk_07 == 3)
    {
        gUnknown_03004140.unk_06 = 0;
        gUnknown_03004140.unk_1a = 40;
        gUnknown_03004140.unk_07 = 4;
        gUnknown_03004140.unk_04 = 9;
    }
}

static void sub_800C7B4(u16 r8, u16 r6)
{
    u8 sp0;
    register u8 *stwiRecvBuffer asm("r0");
    u8 *tmp;
    u8 i;

    if (gUnknown_03004140.unk_0e != 0)
    {
        gUnknown_03004140.unk_0e = 0;
        switch (r8)
        {
            case 16:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05;
                    gUnknown_03004140.unk_05 = 4;
                }
                break;
            case 23:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05;
                    gUnknown_03004140.unk_05 = 0;
                }
                break;
            case 22:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                    sub_800D30C(0x00, 0x00);
                }
                break;
            case 25:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 6;
                }
                break;
            case 26:
                if (gUnknown_03004140.unk_1a && --gUnknown_03004140.unk_1a == 0)
                {
                    gUnknown_03004140.unk_04 = 7;
                    gUnknown_03004140.unk_05 = 8;
                }
                break;
            case 27:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05;
                    gUnknown_03004140.unk_05 = 0;
                    if (gUnknown_03004140.unk_07 == 0)
                    {
                        sub_800D30C(0x13, 0x00);
                    }
                }
                break;
            case 28:
                if (r6 == 0)
                {
                    if (gUnknown_03004140.unk_0b == 1 && gUnknown_03004140.unk_1a > 1)
                    {
                        gUnknown_03004140.unk_1a--;
                    }
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 10;
                }
                break;
            case 29:
                if (r6 == 0)
                {
                    sp0 = sub_800D294();
                    gUnknown_03004140.unk_14 = sp0;
                    if (sp0)
                    {
                        sub_800D30C(0x20, 0x01);
                    }
                    if (gUnknown_03004140.unk_0b && gUnknown_03004140.unk_1a != 1 && gUnknown_03007890->unk_08 == 4)
                    {
                        rfu_REQ_endSearchParent();
                        rfu_waitREQComplete();
                        gUnknown_03004140.unk_04 = 9;
                        gUnknown_03004140.unk_0b = 1;
                    }
                }
                if (gUnknown_03004140.unk_1a && --gUnknown_03004140.unk_1a == 0)
                {
                    gUnknown_03004140.unk_04 = 11;
                    gUnknown_03004140.unk_05 = 0;
                }
                break;
            case 30:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05;
                    if (gUnknown_03004140.unk_07 == 0)
                    {
                        if (gUnknown_03004140.unk_04 == 0)
                        {
                            sub_800D30C(0x21, 0x00);
                        }
                    }
                    else if (gUnknown_03004140.unk_07 != 7)
                    {
                        gUnknown_03004140.unk_04 = 5;
                        gUnknown_03004140.unk_07 = 5;
                    }
                }
                break;
            case 31:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 13;
                }
                break;
            case 32:
                if (r6 == 0 && !rfu_getConnectParentStatus(&sp0, &gUnknown_03004140.unk_10) && !sp0)
                {
                    gUnknown_03004140.unk_04 = 14;
                }
                if (gUnknown_03004140.unk_1a && --gUnknown_03004140.unk_1a == 0)
                {
                    gUnknown_03004140.unk_04 = 14;
                }
                break;
            case 33:
                if (r6 == 0 && !rfu_getConnectParentStatus(&sp0, &gUnknown_03004140.unk_10))
                {
                    if (!sp0)
                    {
                        gUnknown_03004140.unk_04 = 19;
                        gUnknown_03004140.unk_05 = 15;
                        gUnknown_03004140.unk_1e = 0x22;
                        gUnknown_03004140.unk_14 = gUnknown_03004140.unk_10;
                    }
                    else
                    {
                        gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                        gUnknown_03004140.unk_1e = 0x23;
                        gUnknown_03004140.unk_14 = sp0;
                        if (gUnknown_03004140.unk_07)
                        {
                            gUnknown_03004140.unk_07 = 3;
                            gUnknown_03004140.unk_04 = 9;
                        }
                    }
                    sub_800D30C(gUnknown_03004140.unk_1e, 0x01);
                    gUnknown_03004140.unk_1e = 0;
                }
                break;
            case 50:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_14 = gUnknown_03007890->unk_03;
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 17;
                    for (gUnknown_03004140.unk_10 = 0; gUnknown_03004140.unk_10 < 4; gUnknown_03004140.unk_10 ++)
                    {
                        if ((gUnknown_03007890->unk_03 >> gUnknown_03004140.unk_10) & 1)
                        {
                            break;
                        }
                    }
                }
                break;
            case 51:
                if (r6 == 0 && !rfu_CHILD_getConnectRecoveryStatus(&sp0) && sp0 < 2)
                {
                    gUnknown_03004140.unk_04 = 18;
                }
                if (gUnknown_03004140.unk_34[gUnknown_03004140.unk_10] && --gUnknown_03004140.unk_34[gUnknown_03004140.unk_10] == 0)
                {
                    gUnknown_03004140.unk_04 = 18;
                }
                break;
            case 52:
                if (r6 == 0 && !rfu_CHILD_getConnectRecoveryStatus(&sp0))
                {
                    if (!sp0)
                    {
                        gUnknown_03004140.unk_04 = 19;
                        gUnknown_03004140.unk_05 = 22;
                        gUnknown_03004140.unk_1e = 0x32;
                    }
                    else
                    {
                        gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                        sub_800D334(gUnknown_03007890->unk_03);
                        gUnknown_03004140.unk_1e = 0x33;
                    }
                    gUnknown_03004140.unk_34[gUnknown_03004140.unk_10] = 0;
                    gUnknown_03004140.unk_30 = 0;
                    gUnknown_03004140.unk_0a = 0;
                    sub_800D30C(gUnknown_03004140.unk_1e, 0x01);
                    gUnknown_03004140.unk_1e = 0;
                }
                break;
            case 39:
                if (r6 == 0)
                {
                    if (gUnknown_03004140.unk_05 == 22)
                    {
                        gUnknown_03004140.unk_04 = gUnknown_03004140.unk_11;
                        gUnknown_03004140.unk_05 = gUnknown_03004140.unk_12;
                        gUnknown_03004140.unk_02 = 1;
                        sub_800D30C(0x41, 0x00);
                    }
                    else if (gUnknown_03004140.unk_05 == 15)
                    {
                        gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05;
                        gUnknown_03004140.unk_02 = 1;
                        sub_800D30C(0x41, 0x00);
                        gUnknown_03004140.unk_24 |= 1 << gUnknown_03004140.unk_10;
                        gUnknown_03004140.unk_28[gUnknown_03004140.unk_10] = gUnknown_03004140.unk_26;
                        rfu_clearSlot(4, gUnknown_03004140.unk_10);
                        tmp = &sp0;
                        *tmp = rfu_NI_CHILD_setSendGameName(gUnknown_03004140.unk_10, 0x0e);
                        if (*tmp)
                        {
                            gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                            sub_800D610();
                            sub_800D334(gUnknown_03007890->unk_02 | gUnknown_03007890->unk_03);
                            gUnknown_03004140.unk_14 = sp0;
                            sub_800D30C(0x25, 0x01);
                        }
                    }
                }
                break;
            case 61:
                if (r6 == 0)
                {
                    gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                    sub_800D30C(0x42, 0x00);
                }
                break;
        }
        gUnknown_03004140.unk_0e = 1;
    }
    else if (r6 == 3 && gUnknown_03004140.unk_0f && (r8 == 0x24 || r8 == 0x26 || r8 == 0x27))
    {
        rfu_REQ_RFUStatus();
        rfu_waitREQComplete();
        rfu_getRFUStatus(&sp0);
        if (sp0 == 0 && gUnknown_03007890->unk_00 == 0)
        {
            stwiRecvBuffer = rfu_getSTWIRecvBuffer();
            stwiRecvBuffer[4] = gUnknown_03007890->unk_02;
            stwiRecvBuffer[5] = 1;
            sub_800C36C(0x29);
            r6 = 0;
        }
    }
    switch (r8)
    {
        case 48:
            if (r6 == 0)
            {
                stwiRecvBuffer = rfu_getSTWIRecvBuffer();
                gUnknown_03004140.unk_14 = stwiRecvBuffer[8];
                sub_800D358(gUnknown_03004140.unk_14);
                if (gUnknown_03004140.unk_30)
                {
                    gUnknown_03004140.unk_30 &= ~gUnknown_03004140.unk_14;
                    for (i = 0; i < 4; i++)
                    {
                        if ((gUnknown_03004140.unk_14 >> i) & 1)
                        {
                            gUnknown_03004140.unk_34[i] = 0;
                        }
                    }
                    if (gUnknown_03004140.unk_06 == 0)
                    {
                        gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                    }
                }
                sp0 = gUnknown_03004140.unk_00 & gUnknown_03004140.unk_14;
                for (i = 0; i < 4; i++)
                {
                    if ((sp0 >> i) & 1 && gUnknown_03004140.unk_01)
                    {
                        gUnknown_03004140.unk_01--;
                    }
                }
                gUnknown_03004140.unk_00 &= ~gUnknown_03004140.unk_14;
                if (gUnknown_03004140.unk_07)
                {
                    if (gUnknown_03007890->unk_00 == 0xFF)
                    {
                        if (gUnknown_03004140.unk_07 == 8)
                        {
                            gUnknown_03004140.unk_1a = gUnknown_03004140.unk_1c;
                            gUnknown_03004140.unk_07 = 6;
                            gUnknown_03004140.unk_04 = 6;
                        }
                        else if (gUnknown_03004140.unk_04 != 6 && gUnknown_03004140.unk_04 != 7)
                        {
                            gUnknown_03004140.unk_07 = 1;
                            gUnknown_03004140.unk_04 = 5;
                        }
                    }
                }
                if (gUnknown_03007890->unk_00 == 0xFF)
                {
                    if (gUnknown_03004140.unk_04 == 0)
                    {
                        gUnknown_03004140.unk_06 = -1;
                    }
                }
                if (gUnknown_03004140.unk_0e == 0)
                {
                    sub_800D30C(0x40, 0x01);
                }
            }
            break;
        case 38:
            sub_800D20C();
            if (gUnknown_03007890->unk_00 != 0xFF)
            {
                sub_800D30C(0x50, 0x00);
            }
            break;
        case 16:
        case 61:
            if (r6 == 0)
            {
                gUnknown_03004140.unk_0d = 0;
                gUnknown_03004140.unk_01 = 0;
                gUnknown_03004140.unk_00 = 0;;
                gUnknown_03004140.unk_06 = -1;
                sub_800D610();
                if (r8 == 61)
                {
                    sub_800BFA0();
                }
            }
            break;
    }
    if (r6 != 0)
    {
        if (r8 == 28 && r6 != 0 && gUnknown_03004140.unk_07 == 4)
        {
            gUnknown_03007890->unk_00 = 1;
            gUnknown_03007890->unk_02 = 15;
            sub_800D334(15);
            rfu_waitREQComplete();
            return;
        }
        else
        {
            gUnknown_03004140.unk_14 = r8;
            gUnknown_03004140.unk_16 = r6;
            if (gUnknown_03004140.unk_0e)
            {
                gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
            }
            sub_800D30C(0xf0, 0x02);
            sub_800D610();
        }
    }
    if (r8 == 0xFF)
    {
        sub_800D30C(0xf2, 0x00);
        sub_800D610();
    }
}

static void sub_800CEB0(u16 r6)
{
    u8 r7;
    u8 sp0;

    r7 = gUnknown_03004140.unk_0e;
    gUnknown_03004140.unk_0e = 0;
    gUnknown_03004140.unk_0f = 1;
    if (gUnknown_03007890->unk_00 == 0)
    {
        sub_800C36C(r6);
        if (gUnknown_03004140.unk_02 != 1)
        {
            sub_800D610();
            gUnknown_03004140.unk_0f = 0;
            gUnknown_03004140.unk_0e = r7;
            return;
        }
    }
    else
    {
        if (!rfu_UNI_PARENT_getDRAC_ACK(&sp0))
        {
            gUnknown_03004140.unk_03 |= sp0;
        }
    }
    if (gUnknown_03004140.unk_44 != ((void *)0))
    {
        gUnknown_03004140.unk_44(r6);
        rfu_waitREQComplete();
        if (gUnknown_03004140.unk_02 == 2)
        {
            sub_800D610();
        }
    }
    gUnknown_03004140.unk_0f = 0;
    gUnknown_03004140.unk_0e = r7;
}

static void sub_800CF34(void)
{
    u8 flags;
    u8 sp0;
    u8 i;
    u8 r5;
    u8 r4;
    const u16 *ptr;

    if (gUnknown_03004140.unk_04 == 5 || gUnknown_03004140.unk_04 == 6 || gUnknown_03004140.unk_04 == 7 || gUnknown_03004140.unk_04 == 8)
    {
        flags = ((gUnknown_03007890->unk_02 ^ gUnknown_03004140.unk_0c) & gUnknown_03007890->unk_02) & ~gUnknown_03007890->unk_07;
        gUnknown_03004140.unk_0c = gUnknown_03007890->unk_02;
        if (flags)
        {
            gUnknown_03004140.unk_14 = flags;
            sub_800D30C(0x10, 0x01);
        }
        sp0 = 0x00;
        for (i = 0; i < 4; i++)
        {
            r4 = 1 << i;
            r5 = 0x00;
            if (flags & r4)
            {
                gUnknown_03004140.unk_28[i] = gUnknown_03004140.unk_26;
                gUnknown_03004140.unk_24 |= r4;
            }
            else if (gUnknown_03004140.unk_24 & r4)
            {
                if (gUnknown_03007880[i]->unk_34 == 0x46)
                {
                    if (gUnknown_03007880[i]->unk_61 == 1)
                    {
                        r5 = 0x02;
                        for (ptr = gUnknown_03004140.unk_20; *ptr != 0xFFFF; ptr++)
                        {
                            if (gUnknown_03007890->unk_14[i].unk_04 == *ptr)
                            {
                                gUnknown_03004140.unk_00 |= r4;
                                gUnknown_03004140.unk_01++;
                                sp0 |= r4;
                                r5 |= 0x01;
                                break;
                            }
                        }
                        if (!(r5 & 0x01))
                        {
                            r5 |= 0x04;
                        }
                    }
                }
                else if (--gUnknown_03004140.unk_28[i] == 0)
                {
                    r5 = 0x06;
                }
                if (r5 & 0x02)
                {
                    gUnknown_03004140.unk_24 &= ~r4;
                    gUnknown_03004140.unk_28[i] = 0;
                    rfu_clearSlot(0x08, i);
                }
                if (r5 & 0x04)
                {
                    gUnknown_03004140.unk_0d |= r4;
                }
            }
        }
        if (sp0)
        {
            gUnknown_03004140.unk_14 = sp0;
            sub_800D30C(0x11, 0x01);
        }
        if (gUnknown_03004140.unk_0d)
        {
            r5 = 0x01;
            if (gUnknown_03007890->unk_06 && ((gUnknown_03004140.unk_03 & gUnknown_03004140.unk_00) != gUnknown_03004140.unk_00))
            {
                r5 = 0x00;
            }
            if (r5)
            {
                sub_800D334(gUnknown_03004140.unk_0d);
                gUnknown_03004140.unk_14 = gUnknown_03004140.unk_0d;
                gUnknown_03004140.unk_0d = 0;
                sub_800D30C(0x12, 0x01);
            }
        }
        if (gUnknown_03004140.unk_24 == 0 && gUnknown_03004140.unk_04 == 8)
        {
            if (gUnknown_03004140.unk_07 == 0)
            {
                gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
                sub_800D30C(0x14, 0x00);
            }
            else
            {
                if (gUnknown_03004140.unk_07 == 2)
                {
                    gUnknown_03004140.unk_07 = 3;
                    gUnknown_03004140.unk_04 = 9;
                }
                else
                {
                    gUnknown_03004140.unk_07 = 1;
                    gUnknown_03004140.unk_04 = 5;
                }
                if (gUnknown_03004140.unk_00)
                {
                    gUnknown_03004140.unk_1a = 0;
                    gUnknown_03004140.unk_07 = 8;
                    gUnknown_03004140.unk_04 = 5;
                }
            }
        }
    }
}

static void sub_800D158(void)
{
    u16 imeBak = (*(vu16 *)(0x4000000 + 0x208));
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    if (gUnknown_03004140.unk_04 == 15)
    {
        if (--gUnknown_03004140.unk_28[gUnknown_03004140.unk_10] == 0 || gUnknown_03007880[gUnknown_03004140.unk_10]->unk_0 == 0x27)
        {
            sub_800D630();
            gUnknown_03004140.unk_04 = 24;
            rfu_clearSlot(4, gUnknown_03004140.unk_10);
            gUnknown_03004140.unk_24 &= ~(1 << gUnknown_03004140.unk_10);
            gUnknown_03004140.unk_28[gUnknown_03004140.unk_10] = 0;
        }
    }
    (*(vu16 *)(0x4000000 + 0x208)) = imeBak;
    if (gUnknown_03004140.unk_04 == 24)
    {
        if (gUnknown_03004140.unk_02 == 1)
        {
            sub_800D630();
        }
        if (gUnknown_03004140.unk_02 == 0)
        {
            gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
            sub_800D334(gUnknown_03007890->unk_02 | gUnknown_03007890->unk_03);
            gUnknown_03004140.unk_14 = 0;
            sub_800D30C(0x25, 0x01);
        }
    }
}

static void sub_800D20C(void)
{
    if (gUnknown_03004140.unk_04 == 15 && gUnknown_03007880[gUnknown_03004140.unk_10]->unk_0 == 0x26)
    {
        gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
        rfu_clearSlot(4, gUnknown_03004140.unk_10);
        gUnknown_03004140.unk_24 &= ~(1 << gUnknown_03004140.unk_10);
        gUnknown_03004140.unk_28[gUnknown_03004140.unk_10] = 0;
        sub_800D30C(0x24, 0x00);
    }
}

static void sub_800D268(void)
{
    if (gUnknown_03004140.unk_06 == 0 && gUnknown_03004140.unk_0a == 1)
    {
        gUnknown_03004140.unk_11 = gUnknown_03004140.unk_04;
        gUnknown_03004140.unk_12 = gUnknown_03004140.unk_05;
        gUnknown_03004140.unk_04 = 16;
        gUnknown_03004140.unk_05 = 17;
        gUnknown_03004140.unk_0a = 2;
    }
}

static u8 sub_800D294(void)
{
    u8 i;
    const u16 *ptr;
    u8 flags = 0x00;

    for (i = 0; i < gUnknown_03007890->unk_08; i++)
    {
        for (ptr = gUnknown_03004140.unk_20; *ptr != 0xFFFF; ptr++)
        {
            if (gUnknown_03007890->unk_14[i].unk_04 == *ptr)
            {
                flags |= (1 << i);
            }
        }
    }
    return flags;
}

static void sub_800D30C(u8 a0, u8 a1)
{
    if (gUnknown_03004140.unk_40 != ((void *)0))
    {
        gUnknown_03004140.unk_40(a0, a1);
    }
    gUnknown_03004140.unk_14 = gUnknown_03004140.unk_16 = 0;
}

static void sub_800D334(u8 a0)
{
    u8 unk_0e_bak = gUnknown_03004140.unk_0e;
    gUnknown_03004140.unk_0e = 1;
    rfu_REQ_disconnect(a0);
    rfu_waitREQComplete();
    gUnknown_03004140.unk_0e = unk_0e_bak;
}

static void sub_800D358(u8 a0)
{
    u8 i;

    if (gUnknown_03007890->unk_04)
    {
        for (i = 0; i < 4; i++)
        {
            if (gUnknown_03007880[i]->unk_0 & 0x8000 && gUnknown_03007880[i]->unk_1a & a0)
            {
                rfu_changeSendTarget(0x20, i, gUnknown_03007880[i]->unk_1a & ~a0);
            }
        }
    }
    if (gUnknown_03007890->unk_05)
    {
        for (i = 0; i < 4; i++)
        {
            if (gUnknown_03007880[i]->unk_34 & 0x8000 && gUnknown_03007880[i]->unk_4e & a0)
            {
                rfu_NI_stopReceivingData(i);
            }
        }
    }
    if (gUnknown_03007890->unk_06)
    {
        gUnknown_03007890->unk_06 &= ~a0;
        for (i = 0; i < 4; i++)
        {
            if (gUnknown_03007870[i]->unk_0 == 0x8024 && a0 & gUnknown_03007870[i]->unk_3)
            {
                gUnknown_03007870[i]->unk_3 &= ~a0;
            }
        }
    }
}

static void sub_800D434(void)
{
    u8 i;
    u8 j;
    u8 flags;

    if (gUnknown_03004140.unk_18)
    {
        if (gUnknown_03007890->unk_04)
        {
            for (i = 0; i < 4; i ++)
            {
                if (gUnknown_03007880[i]->unk_0 & 0x8000)
                {
                    flags = 0;
                    for (j = 0; j < 4; j++)
                    {
                        if ((gUnknown_03007880[i]->unk_1a >> j) & 1 && gUnknown_03007880[j]->unk_2 > gUnknown_03004140.unk_18)
                        {
                            flags |= (1 << j);
                        }
                        if (flags)
                        {
                            rfu_changeSendTarget(0x20, i, flags ^ gUnknown_03007880[i]->unk_1a);
                        }
                    }
                }
            }
        }
        if (gUnknown_03007890->unk_05)
        {
            for (i = 0; i < 4; i++)
            {
                if (gUnknown_03007880[i]->unk_34 & 0x8000 && gUnknown_03007880[i]->unk_36 > gUnknown_03004140.unk_18)
                {
                    rfu_NI_stopReceivingData(i);
                }
            }
        }
    }
}

void sub_800D52C(void (*func)(u16))
{
    gUnknown_03004140.unk_44 = func;
    rfu_setMSCCallback(sub_800CEB0);
}

void sub_800D544(void (*func)(u8, u8))
{
    gUnknown_03004140.unk_40 = func;
}

u8 sub_800D550(u8 a0, u16 a1)
{
    u16 imeBak;
    if (gUnknown_03004140.unk_09 && a0 == 0 && gUnknown_03004140.unk_30)
    {
        return 5;
    }
    imeBak = (*(vu16 *)(0x4000000 + 0x208));
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    gUnknown_03004140.unk_09 = a0;
    gUnknown_03004140.unk_32 = a1;
    (*(vu16 *)(0x4000000 + 0x208)) = imeBak;
    return 0;
}

u8 sub_800D594(u16 a0)
{
    if (gUnknown_03007890->unk_04 | gUnknown_03007890->unk_05)
    {
        gUnknown_03004140.unk_14 = 6;
        sub_800D30C(0xf3, 0x01);
        return 6;
    }
    gUnknown_03004140.unk_18 = a0;
    return 0;
}

u8 sub_800D5D0(u8 a0)
{
    if (gUnknown_03004140.unk_04 == 9 || gUnknown_03004140.unk_04 == 10 || gUnknown_03004140.unk_04 == 11)
    {
        gUnknown_03004140.unk_14 = 7;
        sub_800D30C(0xf3, 0x01);
        return 7;
    }
    if (a0)
    {
        gUnknown_03004140.unk_0b = 1;
    }
    else
    {
        gUnknown_03004140.unk_0b = 0;
    }
    return 0;
}

static void sub_800D610(void)
{
    if (gUnknown_03004140.unk_02)
    {
        gUnknown_03004140.unk_02 = 0;
        sub_800D30C(0x45, 0x00);
    }
}

void sub_800D630(void)
{
    if (gUnknown_03004140.unk_02 == 0)
    {
        sub_800D30C(0x45, 0x00);
    }
    else if (gUnknown_03004140.unk_02 == 1)
    {
        gUnknown_03004140.unk_02 = 2;
    }
}

void sub_800D658(void)
{
    if (gUnknown_03004140.unk_07)
    {
        switch (gUnknown_03004140.unk_04)
        {
            case 5:
                gUnknown_03004140.unk_07 = 3;
                gUnknown_03004140.unk_04 = 9;
                break;
            case 6:
                gUnknown_03004140.unk_07 = 2;
                gUnknown_03004140.unk_1a = 1;
                break;
            case 7:
            case 8:
                gUnknown_03004140.unk_07 = 2;
                break;
            case 9:
            case 10:
                gUnknown_03004140.unk_1a = 40;
                break;
            case 11:
                gUnknown_03004140.unk_1a = 40;
                gUnknown_03004140.unk_04 = 10;
                break;
        }
    }
}



void sub_800D6C8(struct UnkRfuStruct_2_Sub_124 *ptr)
{
    s32 i;
    s32 j;

    for (i = 0; i < 32; i++)
    {
        for (j = 0; j < 70; j++)
        {
            ptr->unk_00[i][j] = 0;
        }
    }
    ptr->unk_8c1 = 0;
    ptr->unk_8c0 = 0;
    ptr->unk_8c2 = 0;
    ptr->unk_8c3 = 0;
}

void sub_800D724(struct UnkRfuStruct_2_Sub_9e8 *ptr)
{
    s32 i;
    s32 j;

    for (i = 0; i < 40; i++)
    {
        for (j = 0; j < 14; j++)
        {
            ptr->unk_00[i][j] = 0;
        }
    }
    ptr->unk_231 = 0;
    ptr->unk_230 = 0;
    ptr->unk_232 = 0;
    ptr->unk_233 = 0;
}

void sub_800D780(struct UnkRfuStruct_Sub_Unused *ptr)
{
    s32 i;
    s32 j;

    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 256; j++)
        {
            ptr->unk_00[i][j] = 0;
        }
    }
    ptr->unk_201 = 0;
    ptr->unk_200 = 0;
    ptr->unk_202 = 0;
    ptr->unk_203 = 0;
}

void sub_800D7D8(struct UnkRfuStruct_2_Sub_124 *q1, u8 *q2)
{
    s32 i;
    u16 imeBak;
    u8 count;

    if (q1->unk_8c2 < 32)
    {
        imeBak = (*(vu16 *)(0x4000000 + 0x208));
        (*(vu16 *)(0x4000000 + 0x208)) = 0;
        count = 0;
        for (i = 0; i < 70; i += 14)
        {
            if (q2[i] == 0 && q2[i + 1] == 0)
            {
                count++;
            }
        }
        if (count != 5)
        {
            for (i = 0; i < 70; i++)
            {
                q1->unk_00[q1->unk_8c0][i] = q2[i];
            }
            q1->unk_8c0++;
            q1->unk_8c0 %= 32;
            q1->unk_8c2++;
            for (i = 0; i < 70; i++)
            {
                q2[i] = 0;
            }
        }
        (*(vu16 *)(0x4000000 + 0x208)) = imeBak;
    }
    else
    {
        q1->unk_8c3 = 1;
    }
}

void sub_800D888(struct UnkRfuStruct_2_Sub_9e8 *q1, u8 *q2)
{
    s32 i;
    u16 imeBak;

    if (q1->unk_232 < 40)
    {
        imeBak = (*(vu16 *)(0x4000000 + 0x208));
        (*(vu16 *)(0x4000000 + 0x208)) = 0;
        for (i = 0; i < 14; i++)
        {
            if (q2[i] != 0)
            {
                break;
            }
        }
        if (i != 14)
        {
            for (i = 0; i < 14; i++)
            {
                q1->unk_00[q1->unk_230][i] = q2[i];
            }
            q1->unk_230++;
            q1->unk_230 %= 40;
            q1->unk_232++;
            for (i = 0; i < 14; i++)
            {
                q2[i] = 0;
            }
        }
        (*(vu16 *)(0x4000000 + 0x208)) = imeBak;
    }
    else
    {
        q1->unk_233 = 1;
    }
}

bool8 sub_800D934(struct UnkRfuStruct_2_Sub_124 *q1, u8 *q2)
{
    u16 imeBak;
    s32 i;

    imeBak = (*(vu16 *)(0x4000000 + 0x208));
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    if (q1->unk_8c0 == q1->unk_8c1 || q1->unk_8c3 != 0)
    {
        for (i = 0; i < 70; i++)
        {
            q2[i] = 0;
        }
        (*(vu16 *)(0x4000000 + 0x208)) = imeBak;
        return 0;
    }
    for (i = 0; i < 70; i++)
    {
        q2[i] = q1->unk_00[q1->unk_8c1][i];
    }
    q1->unk_8c1++;
    q1->unk_8c1 %= 32;
    q1->unk_8c2--;
    (*(vu16 *)(0x4000000 + 0x208)) = imeBak;
    return 1;
}

bool8 sub_800D9DC(struct UnkRfuStruct_2_Sub_9e8 *q1, u8 *q2)
{
    s32 i;
    u16 imeBak;

    if (q1->unk_230 == q1->unk_231 || q1->unk_233 != 0)
    {
        return 0;
    }
    imeBak = (*(vu16 *)(0x4000000 + 0x208));
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    for (i = 0; i < 14; i++)
    {
        q2[i] = q1->unk_00[q1->unk_231][i];
    }
    q1->unk_231++;
    q1->unk_231 %= 40;
    q1->unk_232--;
    (*(vu16 *)(0x4000000 + 0x208)) = imeBak;
    return 1;
}

void sub_800DA68(struct UnkRfuStruct_2_Sub_c1c *q1, const u8 *q2)
{
    s32 i;

    if (q2[1] == 0)
    {
        sub_800DAC8(q1, ((void *)0));
    }
    else
    {
        for (i = 0; i < 14; i++)
        {
            q1->unk_00[q1->unk_1c][i] = q2[i];
        }
        q1->unk_1c++;
        q1->unk_1c %= 2;
        if (q1->unk_1e < 2)
        {
            q1->unk_1e++;
        }
        else
        {
            q1->unk_1d = q1->unk_1c;
        }
    }
}

static bool8 sub_800DAC8(struct UnkRfuStruct_2_Sub_c1c *q1, u8 *q2)
{
    s32 i;

    if (q1->unk_1e == 0)
    {
        return 0;
    }
    if (q2 != ((void *)0))
    {
        for (i = 0; i < 14; i++)
        {
            q2[i] = q1->unk_00[q1->unk_1d][i];
        }
    }
    q1->unk_1d++;
    q1->unk_1d %= 2;
    q1->unk_1e--;
    return 1;
}

void sub_800DB18(struct UnkRfuStruct_Sub_Unused *q1, u8 *q2)
{
    s32 i;

    if (q1->unk_202 < 2)
    {
        for (i = 0; i < 256; i++)
        {
            q1->unk_00[q1->unk_200][i] = q2[i];
        }
        q1->unk_200++;
        q1->unk_200 %= 2;
        q1->unk_202++;
    }
    else
    {
        q1->unk_203 = 1;
    }
}

bool8 sub_800DB84(struct UnkRfuStruct_Sub_Unused *q1, u8 *q2)
{
    s32 i;

    if (q1->unk_200 == q1->unk_201 || q1->unk_203)
    {
        return 0;
    }
    for (i = 0; i < 256; i++)
    {
        q2[i] = q1->unk_00[q1->unk_201][i];
    }
    q1->unk_201++;
    q1->unk_201 %= 2;
    q1->unk_202--;
    return 1;
}

void sub_800DBF8(u8 *q1, u8 mode)
{
    s32 i;
    u8 rval;
    u16 r5 = 0;
    switch (mode)
    {
        case 0:
            for (i = 0; i < 200; i++)
            {
                q1[i] = i + 1;
                r5 += i + 1;
            }
            *((u16 *)(q1 + i)) = r5;
            break;
        case 1:
            for (i = 0; i < 100; i++)
            {
                q1[i] = i + 1;
                r5 += i + 1;
            }
            *((u16 *)(q1 + 200)) = r5;
            break;
        case 2:
            for (i = 0; i < 200; i++)
            {
                rval = Random();
                q1[i] = rval;
                r5 += rval;
            }
            *((u16 *)(q1 + i)) = r5;
            break;
        case 3:
            for (i = 0; i < 200; i++)
            {
                q1[i] = i + 1 + gUnknown_03000D74;
                r5 += (i + 1 + gUnknown_03000D74) & 0xFF;
            }
            *((u16 *)(q1 + i)) = r5;
            gUnknown_03000D74++;
            break;
    }
}



void PkmnStrToASCII(u8 *q1, const u8 *q2)
{
    s32 i;

    for (i = 0; q2[i] != 0xFF; i++)
    {
        q1[i] = sWireless_RSEtoASCIITable[q2[i]];
    }
    q1[i] = 0;
}

void ASCIIToPkmnStr(u8 *q1, const u8 *q2)
{
    s32 i;

    for (i = 0; q2[i] != 0; i++)
    {
        q1[i] = sWireless_ASCIItoRSETable[q2[i]];
    }
    q1[i] = 0xFF;
}
# 2078 "src/link_rfu.c"
__attribute__((naked)) u8 sub_800DD1C(u8 maxFlags)
{
    asm(".syntax unified\n" "\tpush {r4-r7,lr}\n" "\tlsls r0, 24\n" "\tlsrs r5, r0, 24\n" "\tmovs r6, 0\n" "\tldr r0, =gUnknown_03007890\n" "\tldr r4, [r0]\n" "\tldrb r2, [r4, 0x2]\n" "\tldrb r1, [r4]\n" "\tadds r7, r0, 0\n" "\tcmp r1, 0x1\n" "\tbne _0800DD72\n" "\tmovs r3, 0\n" "\tands r1, r2\n" "\tcmp r1, 0\n" "\tbeq _0800DD4E\n" "\tcmp r5, 0x1\n" "\tbne _0800DD48\n" "\tldrb r0, [r4, 0xA]\n" "\tb _0800DD8C\n" "\t.pool\n" "_0800DD48:\n" "\tadds r0, r6, 0x1\n" "\tlsls r0, 24\n" "\tlsrs r6, r0, 24\n" "_0800DD4E:\n" "\tlsrs r2, 1\n" "\tadds r0, r3, 0x1\n" "\tlsls r0, 24\n" "\tlsrs r3, r0, 24\n" "\tcmp r3, 0x3\n" "\tbhi _0800DD8A\n" "\tmovs r0, 0x1\n" "\tands r0, r2\n" "\tcmp r0, 0\n" "\tbeq _0800DD4E\n" "\tadds r0, r6, 0x1\n" "\tcmp r5, r0\n" "\tbne _0800DD48\n" "_0800DD68:\n" "\tldr r0, [r7]\n" "\tadds r0, 0xA\n" "\tadds r0, r3\n" "\tldrb r0, [r0]\n" "\tb _0800DD8C\n" "_0800DD72:\n" "\tmovs r3, 0\n" "\tmovs r1, 0x1\n" "_0800DD76:\n" "\tadds r0, r2, 0\n" "\tands r0, r1\n" "\tcmp r0, 0\n" "\tbne _0800DD68\n" "\tlsrs r2, 1\n" "\tadds r0, r3, 0x1\n" "\tlsls r0, 24\n" "\tlsrs r3, r0, 24\n" "\tcmp r3, 0x3\n" "\tbls _0800DD76\n" "_0800DD8A:\n" "\tmovs r0, 0\n" "_0800DD8C:\n" "\tpop {r4-r7}\n" "\tpop {r1}\n" "\tbx r1" "\n.syntax divided")
# 2143 "src/link_rfu.c"
                              ;
}


void sub_800DD94(struct UnkLinkRfuStruct_02022B14 *data, u8 r9, bool32 r2, s32 r3)
{
    s32 i;

    for (i = 0; i < 2; i++)
    {
        data->unk_00.playerTrainerId[i] = gSaveBlock2Ptr->playerTrainerId[i];
    }
    for (i = 0; i < 4; i++)
    {
        data->unk_04[i] = r3;
        r3 >>= 8;
    }
    data->playerGender = gSaveBlock2Ptr->playerGender;
    data->unk_0a_0 = r9;
    data->unk_0a_7 = r2;
    data->unk_00.unk_00_0 = 2;
    data->unk_00.unk_01_2 = 3;
    data->unk_00.unk_00_4 = 0;
    data->unk_00.unk_00_5 = 0;
    data->unk_00.unk_00_6 = 0;
    data->unk_00.unk_00_7 = FlagGet(((0x500 + 0x356 + 0xA) + 0x1F));
    data->unk_00.unk_01_0 = IsNationalPokedexEnabled();
    data->unk_00.unk_01_1 = FlagGet(((0x500 + 0x356 + 0xA) + 4));
}

bool8 sub_800DE7C(struct UnkLinkRfuStruct_02022B14 *buff1, u8 *buff2, u8 idx)
{
    bool8 retVal;

    if (gUnknown_03004140.unk_06 == 1)
    {
        retVal = 1;
        if (sub_8010454(gUnknown_03007890->unk_14[idx].unk_04) && ((gUnknown_03007890->unk_07 >> idx) & 1))
        {
            memcpy(buff1, &gUnknown_03007890->unk_14[idx].unk_06, 0xD);
            memcpy(buff2, gUnknown_03007890->unk_14[idx].playerName, 7 + 1);
        }
        else
        {
            memset(buff1, 0, 0xD);
            memset(buff2, 0, sizeof(gUnknown_03007890->unk_14[idx].playerName));
        }
    }
    else
    {
        retVal = 0;
        if (sub_8010454(gUnknown_03007890->unk_14[idx].unk_04))
        {
            memcpy(buff1, &gUnknown_03007890->unk_14[idx].unk_06, 0xD);
            memcpy(buff2, gUnknown_03007890->unk_14[idx].playerName, 7 + 1);
        }
        else
        {
            memset(buff1, 0, 0xD);
            memset(buff2, 0, 7 + 1);
        }
    }
    return retVal;
}

bool8 sub_800DF34(struct UnkLinkRfuStruct_02022B14 *buff1, u8 *buff2, u8 idx)
{
    bool8 retVal = 0;
    if (gUnknown_03007890->unk_14[idx].unk_04 == 0x7F7D)
    {
        memcpy(buff1, &gUnknown_03007890->unk_14[idx].unk_06, 0xD);
        memcpy(buff2, gUnknown_03007890->unk_14[idx].playerName, 8);
        retVal = 1;
    }
    else
    {
        memset(buff1, 0, 0xD);
        memset(buff2, 0, 8);
    }
    return retVal;
}

void sub_800DF90(struct UnkLinkRfuStruct_02022B14 *buff1, u8 *buff2)
{
    memcpy(buff1, &gUnknown_02022B14, 0xD);
    memcpy(buff2, gUnknown_02022B22, 8);
}

void CreateWirelessStatusIndicatorSprite(u8 x, u8 y)
{
    u8 sprId;

    if (x == 0 && y == 0)
    {
        x = 0xE7;
        y = 0x08;
    }
    if (gUnknown_03007890->unk_00 == 1)
    {
        sprId = CreateSprite(&sWirelessStatusIndicatorSpriteTemplate, x, y, 0);
        gSprites[sprId].data[7] = 0x1234;
        gSprites[sprId].data[6] = GetSpriteTileStartByTag(sWirelessStatusIndicatorSpriteSheet.tag);
        gSprites[sprId].invisible = 1;
        gWirelessStatusIndicatorSpriteId = sprId;
    }
    else
    {
        gWirelessStatusIndicatorSpriteId = CreateSprite(&sWirelessStatusIndicatorSpriteTemplate, x, y, 0);
        gSprites[gWirelessStatusIndicatorSpriteId].data[7] = 0x1234;
        gSprites[gWirelessStatusIndicatorSpriteId].data[6] = GetSpriteTileStartByTag(sWirelessStatusIndicatorSpriteSheet.tag);
        gSprites[gWirelessStatusIndicatorSpriteId].invisible = 1;
    }
}

void DestroyWirelessStatusIndicatorSprite(void)
{
    if (gSprites[gWirelessStatusIndicatorSpriteId].data[7] == 0x1234)
    {
        gSprites[gWirelessStatusIndicatorSpriteId].data[7] = 0;
        DestroySprite(&gSprites[gWirelessStatusIndicatorSpriteId]);
        gMain.oamBuffer[125] = gDummyOamData;
        CpuSet(&gDummyOamData, (struct OamData *)0x7000000 + 125, 0x00000000 | ((sizeof(struct OamData))/(16/8) & 0x1FFFFF));
    }
}

void LoadWirelessStatusIndicatorSpriteGfx(void)
{
    if (GetSpriteTileStartByTag(sWirelessStatusIndicatorSpriteSheet.tag) == 0xFFFF)
    {
        LoadCompressedSpriteSheet(&sWirelessStatusIndicatorSpriteSheet);
    }
    LoadSpritePalette(&sWirelessStatusIndicatorSpritePalette);
    gWirelessStatusIndicatorSpriteId = 0xFF;
}

u8 sub_800E124(void)
{
    u8 i;
    u8 flags = gUnknown_03007890->unk_02;
    for (i = 0; i < 4; i++)
    {
        if (flags & 1)
        {
            return gUnknown_03007890->unk_0a[i];
        }
        flags >>= 1;
    }
    return 0;
}

void sub_800E15C(struct Sprite *sprite, s32 signalStrengthAnimNum)
{
    if (sprite->data[2] != signalStrengthAnimNum)
    {
        sprite->data[2] = signalStrengthAnimNum;
        sprite->data[3] = 0;
        sprite->data[4] = 0;
    }
}

void sub_800E174(void)
{
    if (gWirelessStatusIndicatorSpriteId != 0xFF && gSprites[gWirelessStatusIndicatorSpriteId].data[7] == 0x1234)
    {
        struct Sprite *sprite = &gSprites[gWirelessStatusIndicatorSpriteId];
        u8 signalStrength = 255;
        u8 i = 0;
        if (gUnknown_03007890->unk_00 == 1)
        {
            for (i = 0; i < GetLinkPlayerCount() - 1; i++)
            {
                if (signalStrength >= sub_800DD1C(i + 1))
                {
                    signalStrength = sub_800DD1C(i + 1);
                }
            }
        }
        else
        {
            signalStrength = sub_800E124();
        }
        if (sub_8012224() == 1)
        {
            sprite->data[0] = 4;
        }
        else if (signalStrength < 25)
        {
            sprite->data[0] = 3;
        }
        else if (signalStrength >= 25 && signalStrength < 127)
        {
            sprite->data[0] = 2;
        }
        else if (signalStrength >= 127 && signalStrength < 229)
        {
            sprite->data[0] = 1;
        }
        else if (signalStrength >= 229)
        {
            sprite->data[0] = 0;
        }
        if (sprite->data[0] != sprite->data[1])
        {
            sub_800E15C(sprite, sprite->data[0]);
            sprite->data[1] = sprite->data[0];
        }
        if (sprite->anims[sprite->data[2]][sprite->data[4]].frame.duration < sprite->data[3])
        {
            sprite->data[4]++;
            sprite->data[3] = 0;
            if (sprite->anims[sprite->data[2]][sprite->data[4]].type == -2)
            {
                sprite->data[4] = 0;
            }
        }
        else
        {
            sprite->data[3]++;
        }
        gMain.oamBuffer[125] = sWirelessStatusIndicatorOamData;
        gMain.oamBuffer[125].x = sprite->pos1.x + sprite->centerToCornerVecX;
        gMain.oamBuffer[125].y = sprite->pos1.y + sprite->centerToCornerVecY;
        gMain.oamBuffer[125].paletteNum = sprite->oam.paletteNum;
        gMain.oamBuffer[125].tileNum = sprite->data[6] + sprite->anims[sprite->data[2]][sprite->data[4]].frame.imageValue;
        CpuSet(gMain.oamBuffer + 125, (struct OamData *)0x7000000 + 125, 0x00000000 | ((sizeof(struct OamData))/(16/8) & 0x1FFFFF));
        if (sub_8011A74() == 1)
        {
            DestroyWirelessStatusIndicatorSprite();
        }
    }
}

void CopyTrainerRecord(struct TrainerNameRecord *dest, u32 trainerId, const u8 *name)
{
    dest->trainerId = trainerId;
    StringCopy(dest->trainerName, name);
}

bool32 NameIsNotEmpty(const u8 *name)
{
    s32 i;

    for (i = 0; i < 7 + 1; i++)
    {
        if (name[i] != 0)
        {
            return 1;
        }
    }
    return 0;
}


void RecordMixTrainerNames(void)
{
    if (gWirelessCommType != 0)
    {
        s32 i;
        s32 j;
        s32 nextSpace;
        s32 connectedTrainerRecordIndices[5];
        struct TrainerNameRecord *newRecords = AllocZeroed((20) * (sizeof(struct TrainerNameRecord)));


        for (i = 0; i < GetLinkPlayerCount(); i++)
        {
            connectedTrainerRecordIndices[i] = -1;
            for (j = 0; j < 20; j++)
            {
                if ((u16)gLinkPlayers[i].trainerId == gSaveBlock1Ptr->trainerNameRecords[j].trainerId && StringCompare(gLinkPlayers[i].name, gSaveBlock1Ptr->trainerNameRecords[j].trainerName) == 0)
                {
                    connectedTrainerRecordIndices[i] = j;
                }
            }
        }


        nextSpace = 0;
        for (i = 0; i < GetLinkPlayerCount(); i++)
        {
            if (i != GetMultiplayerId() && gLinkPlayers[i].language != 1)
            {
                CopyTrainerRecord(&newRecords[nextSpace], (u16)gLinkPlayers[i].trainerId, gLinkPlayers[i].name);


                if (connectedTrainerRecordIndices[i] >= 0)
                {
                    memset(gSaveBlock1Ptr->trainerNameRecords[connectedTrainerRecordIndices[i]].trainerName, 0, 8);
                }
                nextSpace++;
            }
        }



        for (i = 0; i < 20; i++)
        {
            if (NameIsNotEmpty(gSaveBlock1Ptr->trainerNameRecords[i].trainerName))
            {
                CopyTrainerRecord(&newRecords[nextSpace], gSaveBlock1Ptr->trainerNameRecords[i].trainerId, gSaveBlock1Ptr->trainerNameRecords[i].trainerName);
                if (++nextSpace >= 20)
                {
                    break;
                }
            }
        }


        memcpy(gSaveBlock1Ptr->trainerNameRecords, newRecords, 20 * sizeof(struct TrainerNameRecord));
        Free(newRecords);
    }
}

bool32 sub_800E540(u16 id, u8 *name)
{
    s32 i;

    for (i = 0; i < 20; i++)
    {
        if (StringCompare(gSaveBlock1Ptr->trainerNameRecords[i].trainerName, name) == 0 && gSaveBlock1Ptr->trainerNameRecords[i].trainerId == id)
        {
            return 1;
        }
        if (!NameIsNotEmpty(gSaveBlock1Ptr->trainerNameRecords[i].trainerName))
        {
            return 0;
        }
    }
    return 0;
}

void WipeTrainerNameRecords(void)
{
    s32 i;

    for (i = 0; i < 20; i++)
    {
        gSaveBlock1Ptr->trainerNameRecords[i].trainerId = 0;
        { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gSaveBlock1Ptr->trainerNameRecords[i].trainerName, 0x00000000 | 0x01000000 | ((8)/(16/8) & 0x1FFFFF)); };
    }
}

void nullsub_5(const void *unused_0, u8 unused_1, u8 unused_2)
{

}

void nullsub_13(u16 unused_0, u8 unused_1, u8 unused_2, u8 unused_3)
{

}

void sub_800E604(void)
{
    s32 i;
    u8 unk_ee_bak = gUnknown_03005000.unk_ee;
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, &gUnknown_03005000, 0x00000000 | 0x01000000 | ((sizeof gUnknown_03005000)/(16/8) & 0x1FFFFF)); };
    gUnknown_03005000.unk_ee = unk_ee_bak;
    gUnknown_03005000.unk_0c = 0xFF;
    if (gUnknown_03005000.unk_ee != 4)
    {
        gUnknown_03005000.unk_ee = 0;
    }
    for (i = 0; i < 5; i++)
    {
        sub_800FCC4(gUnknown_03005000.unk_80 + i);
    }
    sub_800FCC4(&gUnknown_03005000.unk_6c);
    sub_800D6C8(&gUnknown_03005000.unk_124);
    sub_800D724(&gUnknown_03005000.unk_9e8);
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gSendCmd, 0x00000000 | 0x01000000 | ((sizeof gSendCmd)/(16/8) & 0x1FFFFF)); };
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gRecvCmds, 0x00000000 | 0x01000000 | ((sizeof gRecvCmds)/(16/8) & 0x1FFFFF)); };
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gLinkPlayers, 0x00000000 | 0x01000000 | ((sizeof gLinkPlayers)/(16/8) & 0x1FFFFF)); };
}

void sub_800E6D0(void)
{
    IntrFunc serialIntr = gIntrTable[1];
    IntrFunc timerIntr = gIntrTable[2];
    sub_800E700();
    rfu_REQ_stopMode();
    rfu_waitREQComplete();
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    gIntrTable[1] = serialIntr;
    gIntrTable[2] = timerIntr;
    (*(vu16 *)(0x4000000 + 0x208)) = (1 << 0);
}

void sub_800E700(void)
{
    if (!rfu_initializeAPI(gUnknown_03004140.unk_50, sizeof gUnknown_03004140.unk_50, gIntrTable + 1, 1))
    {
        gLinkType = 0;
        sub_800AAF4();
        sub_80111B0(0);
        sub_800E604();
        rfu_setTimerInterrupt(3, gIntrTable + 2);
    }
}

void sub_800E748(u8 taskId)
{
    sub_8010750();
    switch (gUnknown_03005000.unk_04)
    {
        case 0:
            sub_800BFCC(&gUnknown_02022B2C);
            gUnknown_03005000.unk_04 = 1;
            gTasks[taskId].data[1] = 1;
            break;
        case 1:
            break;
        case 2:
            sub_800C054(gUnknown_03005000.unk_0c, 0, 240, gUnknown_082ED6E0);
            gUnknown_03005000.unk_04 = 3;
            gTasks[taskId].data[1] = 6;
            break;
        case 3:
            break;
        case 4:
            sub_800C27C(0);
            gUnknown_03005000.unk_04 = 5;
            break;
        case 5:
            break;
        case 18:
            gUnknown_03005000.unk_cdb = 0;
            sub_800D52C(sub_800EDBC);
            sub_800EAB4();
            sub_800EAFC();
            gUnknown_03005000.unk_04 = 20;
            gTasks[taskId].data[1] = 8;
            CreateTask(sub_801084C, 5);
            DestroyTask(taskId);
            break;
    }
}

s32 sub_800E87C(u8 idx)
{
    return gUnknown_082ED6A5[idx];
}

void sub_800E88C(s32 r2, s32 r5)
{
    u8 i;
    u8 r4 = 1;
    s32 r1 = r2;
    s32 r6 = 0;
    if (r5 == -1)
    {
        for (i = 0; i < 4; r2 >>= 1, i++)
        {
            if (r2 & 1)
            {
                gUnknown_03005000.unk_cde[i] = r4;
                r4++;
            }
        }
    }
    else
    {
        for (i = 0; i < 4; r1 >>= 1, i++)
        {
            if (!(r1 & 1))
            {
                gUnknown_03005000.unk_cde[i] = 0;
            }
        }
        for (r4 = 4; r4 != 0; r4--)
        {
            for (i = 0; i < 4 && gUnknown_03005000.unk_cde[i] != r4; i++);
            if (i == 4)
            {
                r6 = r4;
            }
        }
        for (r5 &= ~r2, i = 0; i < 4; r5 >>= 1, i++)
        {
            if (r5 & 1)
            {
                gUnknown_03005000.unk_cde[i] = r6++;
            }
        }
    }
}

void sub_800E94C(u8 taskId)
{
    switch (gUnknown_03005000.unk_04)
    {
        case 0:
            sub_800BFCC(&gUnknown_082ED608);
            gUnknown_03005000.unk_04 = 1;
            gTasks[taskId].data[1] = 1;
            break;
        case 1:
            break;
        case 6:
            sub_800C054(gUnknown_03005000.unk_0c, 0, 0xf0, gUnknown_082ED6E0);
            gUnknown_03005000.unk_04 = 7;
            gTasks[taskId].data[1] = 7;
            break;
        case 7:
            break;
        case 9:
            gTasks[taskId].data[1] = 10;
            break;
        case 11:
            switch (sub_80107A0())
            {
                case 5:
                    gUnknown_03005000.unk_04 = 12;
                    break;
                case 6:
                case 9:
                    sub_800D630();
                    gUnknown_03005000.unk_ce4 = 2;
                    DestroyTask(taskId);
                    break;
            }
            break;
        case 12:
        {
            u8 r5 = 1 << gUnknown_03005000.unk_c3e;
            rfu_clearSlot(12, gUnknown_03005000.unk_c3e);
            rfu_setRecvBuffer(16, gUnknown_03005000.unk_c3e, gUnknown_03005000.unk_c3f, 70);
            rfu_UNI_setSendData(r5, gUnknown_03005000.unk_4c, 14);
            gTasks[taskId].data[1] = 8;
            DestroyTask(taskId);
            if (gUnknown_02022B44.unk_0f == 0)
            {
                sub_801227C();
                gUnknown_02022B44.unk_0f++;
            }
            CreateTask(sub_801084C, 5);
            break;
        }
    }
}

static void sub_800EAB4(void)
{
    u8 i;
    u8 r5 = gUnknown_03004140.unk_00;
    for (i = 0; i < 4; i++)
    {
        if (r5 & 1)
        {
            rfu_setRecvBuffer(16, i, gUnknown_03005000.unk_14[i], 14);
            rfu_clearSlot(3, i);
        }
        r5 >>= 1;
    }
}

static void sub_800EAFC(void)
{
    u8 r5 = gUnknown_03004140.unk_00;
    rfu_UNI_setSendData(r5, gUnknown_03005000.unk_c87, 70);
    gUnknown_03005000.unk_cda = sub_800E87C(r5);
    gUnknown_03005000.unk_ce2 = r5;
    sub_800E88C(r5, -1);
    gUnknown_03005000.unk_0c = 1;
}

void sub_800EB44(u8 taskId)
{
    if (sub_800F7DC()->unk_0a_0 == 0x54 && sub_8011A74() == 4)
    {
        rfu_REQ_disconnect(gUnknown_03004140.unk_00);
        rfu_waitREQComplete();
        sub_8011A64(0, 0);
    }
    switch (gUnknown_03005000.unk_04)
    {
        case 0:
            sub_800BFCC(&gUnknown_02022B2C);
            gUnknown_03005000.unk_04 = 1;
            gTasks[taskId].data[1] = 1;
            break;
        case 1:
            break;
        case 17:
            sub_800C054(2, 0, 240, gUnknown_082ED6E0);
            sub_800D52C(sub_800ED34);
            gUnknown_03005000.unk_04 = 18;
            break;
        case 18:
            break;
        case 13:
            if (rfu_UNI_setSendData(1 << gUnknown_03005000.unk_c3e, gUnknown_03005000.unk_4c, 14) == 0)
            {
                gUnknown_03005000.unk_0c = 0;
                DestroyTask(taskId);
                if (gTasks[taskId].data[7])
                {
                    CreateTask(sub_8010D0C, 1);
                }
                else
                {
                    CreateTask(sub_801084C, 5);
                }
            }
            break;
        case 14:
            sub_800C27C(0);
            gUnknown_03005000.unk_04 = 15;
            break;
        case 15:
            break;
        case 16:
            gUnknown_03005000.unk_cdb = 0;
            sub_800D52C(sub_800EDBC);
            sub_8011068(1);
            sub_800EAB4();
            sub_800EAFC();
            gUnknown_03005000.unk_04 = 20;
            gTasks[taskId].data[1] = 8;
            gUnknown_03005000.unk_0c = 1;
            CreateTask(sub_801084C, 5);
            gUnknown_03005000.unk_ce8 = 1;
            DestroyTask(taskId);
            break;
    }
}

void sub_800ED10(void)
{
    sub_800C054(1, 0, 240, gUnknown_082ED6E0);
}

void sub_800ED28(void)
{
    sub_800C27C(0);
}

void sub_800ED34(u16 unused)
{
    s32 i;

    for (i = 0; i < 14; i++)
    {
        gUnknown_03005000.unk_4c[i] = 0;
    }
    rfu_REQ_recvData();
    rfu_waitREQComplete();
    if (gUnknown_03007870[gUnknown_03005000.unk_c3e]->unk_12)
    {
        gUnknown_03005000.unk_cd0++;
        sub_800D7D8(&gUnknown_03005000.unk_124, gUnknown_03005000.unk_c3f);
        gUnknown_02022B44.unk_06++;
        sub_800F048();
        rfu_UNI_readySendData(gUnknown_03005000.unk_c3e);
        rfu_UNI_clearRecvNewDataFlag(gUnknown_03005000.unk_c3e);
    }
    rfu_REQ_sendData_wrapper(1);
}

static void sub_800EDBC(u16 unused)
{
    gUnknown_03005000.unk_cdb = 1;
}

void sub_800EDD4(void)
{
    u8 i;

    sub_800C048();
    if (gUnknown_03005000.unk_0c == 1)
    {
        if (FuncIsActiveTask(sub_800E748) == 1)
        {
            DestroyTask(gUnknown_03005000.unk_67);
            sub_800E604();
        }
    }
    else if (gUnknown_03005000.unk_0c == 0)
    {
        if (FuncIsActiveTask(sub_800E94C) == 1)
        {
            DestroyTask(gUnknown_03005000.unk_67);
            sub_800E604();
        }
    }
    else if (gUnknown_03005000.unk_0c == 2)
    {
        if (FuncIsActiveTask(sub_800EB44) == 1)
        {
            DestroyTask(gUnknown_03005000.unk_67);
            sub_800E604();
        }
    }
    for (i = 0; i < 3; i++)
    {
        if (FuncIsActiveTask(gUnknown_082ED7E0[i]) == 1)
        {
            DestroyTask(FindTaskIdByFunc(gUnknown_082ED7E0[i]));
        }
    }
}

void sub_800EE78(void)
{
    gUnknown_03005000.unk_67 = CreateTask(sub_800E748, 1);
}

bool8 sub_800EE94(void)
{
    if (gUnknown_03005000.unk_04 == 7 && gUnknown_03005000.unk_ccd)
    {
        return 1;
    }
    return 0;
}

bool32 sub_800EEBC(void)
{
    if (gUnknown_03005000.unk_04 == 7 && !sub_800C12C(gUnknown_03007890->unk_14[gUnknown_03005000.unk_c3d].unk_00, 240))
    {
        gUnknown_03005000.unk_04 = 9;
        return 1;
    }
    return 0;
}

void sub_800EF00(void)
{
    gUnknown_03005000.unk_67 = CreateTask(sub_800E94C, 1);
}

bool8 sub_800EF1C(void)
{
    if (gUnknown_03004140.unk_00)
    {
        return 1;
    }
    return 0;
}

void sub_800EF38(void)
{
    gUnknown_03005000.unk_04 = 4;
    gUnknown_03005000.unk_ce7 = gUnknown_03004140.unk_00;
}

bool32 sub_800EF58(bool32 a0)
{
    if (gUnknown_03005000.unk_04 == 17 || a0)
    {
        gUnknown_03005000.unk_04 = 18;
        return 1;
    }
    return 0;
}

void sub_800EF7C(void)
{
    gUnknown_03005000.unk_04 = 14;
}

void sub_800EF88(u8 a0)
{
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if (a0 & 1)
        {
            rfu_UNI_readySendData(i);
            break;
        }
        a0 >>= 1;
    }
}

void sub_800EFB0(void)
{
    s32 i, j;

    for (i = 0; i < 5; i++)
    {
        struct UnkRfuStruct_2 *ptr = &gUnknown_03005000;
        for (j = 0; j < 7; j++)
        {
            ptr->unk_c87[i][j][1] = gRecvCmds[i][j] >> 8;
            ptr->unk_c87[i][j][0] = gRecvCmds[i][j];
        }
    }
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gRecvCmds, 0x00000000 | 0x01000000 | ((sizeof gRecvCmds)/(16/8) & 0x1FFFFF)); };
}

void sub_800F014(void)
{
    s32 i;
    for (i = 0; i < 7; i++)
    {
        gRecvCmds[0][i] = gSendCmd[i];
    }
    for (i = 0; i < 7; i++)
    {
        gSendCmd[i] = 0;
    }
}

static void sub_800F048(void)
{
    if (gUnknown_03005000.unk_c3c)
    {
        u8 r2 = sub_800DAC8(&gUnknown_03005000.unk_c1c, gUnknown_03005000.unk_4c);
        if (gUnknown_03005000.unk_c1c.unk_1e == 0)
        {
            gUnknown_03005000.unk_c3c = 0;
        }
        if (r2)
        {
            return;
        }
    }
    if (gUnknown_03005000.unk_c3c == 0)
    {
        sub_800D9DC(&gUnknown_03005000.unk_9e8, gUnknown_03005000.unk_4c);
        sub_800DA68(&gUnknown_03005000.unk_c1c, gUnknown_03005000.unk_4c);
    }
}

bool32 IsRfuRecvQueueEmpty(void)
{
    s32 i;
    s32 j;

    if (gUnknown_03007890->unk_06 == 0)
    {
        return 0;
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 7; j++)
        {
            if (gRecvCmds[i][j] != 0)
            {
                return 0;
            }
        }
    }
    return 1;
}

bool32 sub_800F0F8(void)
{
    if (gUnknown_03005000.unk_04 < 20)
    {
        rfu_REQ_recvData();
        rfu_waitREQComplete();
        rfu_REQ_sendData_wrapper(0);
    }
    else
    {
        gUnknown_03005000.unk_cdb = 0;
        if ((gUnknown_03005000.unk_ce2 & gUnknown_03007890->unk_02) == gUnknown_03005000.unk_ce2 && (gUnknown_03005000.unk_ce2 & gUnknown_03007890->unk_02))
        {
            if (!gUnknown_03005000.unk_cdc)
            {
                if (gUnknown_03005000.unk_ce3)
                {
                    sub_8011D6C(gUnknown_03005000.unk_ce3);
                    gUnknown_03005000.unk_ce3 = 0;
                    if (gUnknown_03005000.unk_ce4 == 1)
                    {
                        sub_8011A64(2, 0x8000);
                        sub_8011170(0x8000);
                        return 0;
                    }
                    if (!gUnknown_03004140.unk_00)
                    {
                        sub_800EDD4();
                        gReceivedRemoteLinkPlayers = 0;
                        return 0;
                    }
                }
                sub_800EFB0();
                rfu_UNI_readySendData(gUnknown_03005000.unk_cda);
                rfu_REQ_sendData_wrapper(1);
            }
            else
            {
                rfu_REQ_PARENT_resumeRetransmitAndChange();
            }
            gUnknown_03005000.unk_0e = 1;
        }
    }
    return 0;
}

bool32 sub_800F1E0(void)
{
    u16 i;
    u16 flags;
    u8 r0;
    u16 j;
    u8 retval;

    if (gUnknown_03005000.unk_04 >= 20 && gUnknown_03005000.unk_0e == 1)
    {
        rfu_waitREQComplete();
        while (gUnknown_03005000.unk_cdb == 0)
        {
            if (gUnknown_03005000.unk_ee != 0)
            {
                return 0;
            }
        }
        rfu_REQ_recvData();
        rfu_waitREQComplete();
        if ((gUnknown_03004140.unk_03 & gUnknown_03005000.unk_ce2) == gUnknown_03005000.unk_ce2)
        {
            gUnknown_03005000.unk_cdc = 0;
            gUnknown_02022B44.unk_06++;
            flags = gUnknown_03004140.unk_00;
            for (i = 0; i < 4; i++)
            {
                if (flags & 1)
                {
                    if (gUnknown_03005000.unk_14[i][1])
                    {
                        if (gUnknown_03005000.unk_cee[i] != 0xFF && (gUnknown_03005000.unk_14[i][0] >> 5) != ((gUnknown_03005000.unk_cee[i] + 1) & 7))
                        {
                            if (++gUnknown_03005000.unk_cea[i] > 4)
                                sub_8011170(0x8100);
                        }
                        else
                        {
                            gUnknown_03005000.unk_cee[i] = gUnknown_03005000.unk_14[i][0] / 32;
                            gUnknown_03005000.unk_cea[i] = 0;
                            gUnknown_03005000.unk_14[i][0] &= 0x1f;
                            r0 = gUnknown_03005000.unk_cde[i];
                            for (j = 0; j < 7; j++)
                            {
                                gRecvCmds[r0][j] = (gUnknown_03005000.unk_14[i][(j << 1) + 1] << 8) | gUnknown_03005000.unk_14[i][(j << 1) + 0];
                                gUnknown_03005000.unk_14[i][(j << 1) + 1] = 0;
                                gUnknown_03005000.unk_14[i][(j << 1) + 0] = 0;
                            }
                        }
                    }
                    rfu_UNI_clearRecvNewDataFlag(i);
                }
                flags >>= 1;
            }
            sub_800F014();
            sub_800F86C(0);
            sub_8010528();
            if (gUnknown_03005000.unk_ce5 && !gUnknown_03005000.unk_cd9)
            {
                gUnknown_02022B44.unk_0e = 0;
                rfu_clearSlot(3, gUnknown_03005000.unk_cda);
                for (i = 0; i < 4; i++)
                {
                    if ((gUnknown_03005000.unk_ce5 >> i) & 1)
                    {
                        rfu_setRecvBuffer(0x10, i, gUnknown_03005000.unk_14[i], 14);
                    }
                }
                sub_800E88C(gUnknown_03005000.unk_ce2, gUnknown_03005000.unk_ce2 | gUnknown_03005000.unk_ce5);
                gUnknown_03005000.unk_ce9 = gUnknown_03005000.unk_ce5;
                gUnknown_03005000.unk_ce2 |= gUnknown_03005000.unk_ce5;
                gUnknown_03005000.unk_ce5 = 0;
                rfu_UNI_setSendData(gUnknown_03005000.unk_ce2, gUnknown_03005000.unk_c87, 70);
                gUnknown_03005000.unk_cda = sub_800E87C(gUnknown_03005000.unk_ce2);
                CreateTask(sub_8010AAC, 0);
            }
        }
        else
        {
            gUnknown_03005000.unk_cdc = 1;
            gUnknown_03005000.unk_0e = 0;
        }
        gUnknown_03005000.unk_0e = 0;
    }
    retval = gUnknown_03005000.unk_cdc;
    return gUnknown_03007890->unk_06 ? retval & 1 : 0;
}

void sub_800F498(u16 *a0, u8 *a1)
{
    s32 i;

    if (a0[0])
    {
        a0[0] |= (gUnknown_03005000.unk_102 << 5);
        gUnknown_03005000.unk_102 = (gUnknown_03005000.unk_102 + 1) & 7;
        for (i = 0; i < 7; i++)
        {
            a1[2 * i + 1] = a0[i] >> 8;
            a1[2 * i + 0] = a0[i];
        }
    }
    else
    {
        for (i = 0; i < 14; i++)
            a1[i] = 0;
    }
}

bool32 sub_800F4F0(void)
{
    u8 i;
    u8 j;
    u8 sp00[5 * (2 * (8 - 1))];
    u8 sp48[2 * (8 - 1)];
    u8 switchval;

    sub_800D934(&gUnknown_03005000.unk_124, sp00);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8 - 1; j++)
        {
            gRecvCmds[i][j] = (sp00[i * 14 + (j << 1) + 1] << 8) | sp00[i * 14 + (j << 1) + 0];
        }
    }
    sub_800F86C(0);
    if (gUnknown_03004140.unk_02 == 0 && gUnknown_03005000.unk_ce4)
    {
        rfu_REQ_disconnect(gUnknown_03007890->unk_02 | gUnknown_03007890->unk_03);
        rfu_waitREQComplete();
        switchval = sub_8011A74();
        if (switchval != 1 && switchval != 6 && switchval != 9)
            sub_8011A64(2, 0x9000);
        rfu_clearAllSlot();
        gReceivedRemoteLinkPlayers = 0;
        gUnknown_03005000.unk_00 = 0;
        if (gUnknown_03005000.unk_ce4 == 1)
        {
            sub_8011A64(2, 0x9000);
            sub_8011170(0x9000);
        }
        gUnknown_03004140.unk_04 = gUnknown_03004140.unk_05 = 0;
        gUnknown_03005000.unk_ce4 = 0;
    }
    if (gUnknown_03005000.unk_cd0)
    {
        gUnknown_03005000.unk_cd0--;
        sub_8010528();
        sub_800F498(gSendCmd, sp48);
        sub_800D888(&gUnknown_03005000.unk_9e8, sp48);
        for (i = 0; i < 8 - 1; i++)
            gSendCmd[i] = 0;
    }
    return IsRfuRecvQueueEmpty();
}

void sub_800F638(u8 unused, u32 flags)
{
    s32 i, j;

    const u8 *r10 = gUnknown_03005000.unk_6c.unk_04;
    for (i = 0; i < gUnknown_03005000.unk_6c.unk_02; i++)
    {
        if (!(flags & 1))
        {
            gUnknown_03000D90[0] = (~0x76ff) | i;
            for (j = 0; j < 7; j++)
            {
                gUnknown_03000D90[j + 1] = (r10[12 * i + (j << 1) + 1] << 8) | r10[12 * i + (j << 1) + 0];
            }
            for (j = 0; j < 7; j++)
            {
                gUnknown_03000D80[2 * j + 1] = gUnknown_03000D90[j] >> 8;
                gUnknown_03000D80[2 * j + 0] = gUnknown_03000D90[j];

                j++;j--;
            }
            sub_800D888(&gUnknown_03005000.unk_9e8, gUnknown_03000D80);
            gUnknown_03005000.unk_6c.unk_0c |= (1 << i);
        }
        flags >>= 1;
    }
}

void sub_800F6FC(u8 a0)
{
    if (gUnknown_03005000.unk_0c == 1 && a0)
        gUnknown_03005000.unk_61[a0] = 1;
    else
        gUnknown_03005000.unk_5c[a0] = 1;
}

void sub_800F728(u8 a0)
{
    gUnknown_03005000.unk_5c[a0] = 0;
    gUnknown_03005000.unk_80[a0].unk_12 = 0;
}

u8 sub_800F74C(const u8 *a0)
{
    u8 i;

    if (gUnknown_03005000.unk_0c == 1)
        return 0;
    for (i = 0; i < 4; i++)
    {
        gUnknown_03005000.unk_cde[i] = a0[i];
    }
    return a0[gUnknown_03005000.unk_c3e];
}

void rfu_func_080F97B8(void)
{
    if (gReceivedRemoteLinkPlayers
        && gHeldKeyCodeToSend != 0x00
        && gLinkTransferringData != 1)
    {
        gUnknown_03000D78[0]++;
        gHeldKeyCodeToSend |= (gUnknown_03000D78[0] << 8);
        sub_800FD14(0xbe00);
    }
}

struct UnkLinkRfuStruct_02022B14 *sub_800F7DC(void)
{
    return &gUnknown_02022B14;
}

bool32 IsSendingKeysToRfu(void)
{
    return gUnknown_03005000.unk_00 == rfu_func_080F97B8;
}

void sub_800F804(void)
{
    gUnknown_03005000.unk_00 = rfu_func_080F97B8;
}

void Rfu_set_zero(void)
{
    gUnknown_03005000.unk_00 = ((void *)0);
}

void sub_800F820(void)
{
    sub_800FD14(0x4400);
    if (GetMultiplayerId() == 0)
        gSendCmd[6] = GetBlenderArrowPosition();
    gUnknown_020223C0++;
}

void sub_800F850(void)
{
    if (gUnknown_03005000.unk_00 == ((void *)0))
        gUnknown_03005000.unk_00 = sub_800F820;
}

static void sub_800F86C(u8 unused)
{
    u16 i;
    u16 j;

    for (i = 0; i < 5; i++)
    {
        switch (gRecvCmds[i][0] & 0xff00)
        {
        case 0x7800:
            if (gUnknown_03005000.unk_0c == 0 && gReceivedRemoteLinkPlayers != 0)
                return;

        case 0x7700:
            if (gUnknown_03007890->unk_00 == 0)
            {
                gUnknown_03005000.playerCount = gRecvCmds[i][1];
                gUnknown_03005000.unk_cce = sub_800F74C((u8 *)(gRecvCmds[i] + 2));
            }
            break;
        case 0x8800:
            if (gUnknown_03005000.unk_80[i].unk_12 == 0)
            {
                gUnknown_03005000.unk_80[i].unk_00 = 0;
                gUnknown_03005000.unk_80[i].unk_02 = gRecvCmds[i][1];
                gUnknown_03005000.unk_80[i].unk_11 = gRecvCmds[i][2];
                gUnknown_03005000.unk_80[i].unk_08 = 0;
                gUnknown_03005000.unk_80[i].unk_12 = 1;
                gUnknown_03005000.unk_5c[i] = 0;
            }
            break;
        case 0x8900:
            if (gUnknown_03005000.unk_80[i].unk_12 == 1)
            {
                gUnknown_03005000.unk_80[i].unk_00 = gRecvCmds[i][0] & 0xff;
                gUnknown_03005000.unk_80[i].unk_08 |= (1 << gUnknown_03005000.unk_80[i].unk_00);
                for (j = 0; j < 6; j++)
                    gBlockRecvBuffer[i][gUnknown_03005000.unk_80[i].unk_00 * 6 + j] = gRecvCmds[i][j + 1];
                if (gUnknown_03005000.unk_80[i].unk_08 == gUnknown_082ED628[gUnknown_03005000.unk_80[i].unk_02])
                {
                    gUnknown_03005000.unk_80[i].unk_12 = 2;
                    sub_800F6FC(i);
                    if (sub_800F7DC()->unk_0a_0 == 0x45 && gReceivedRemoteLinkPlayers != 0 && gUnknown_03005000.unk_0c == 0)
                        sub_8010A70(gBlockRecvBuffer);
                }
            }
            break;
        case 0xa100:
            sub_800FE84(gUnknown_082ED6B8[gRecvCmds[i][1]].buffer, (u16)gUnknown_082ED6B8[gRecvCmds[i][1]].size);
            break;
        case 0x5f00:
            gUnknown_03005000.unk_e4[i] = 1;
            break;
        case 0x6600:
            if (gUnknown_03005000.unk_100 == gRecvCmds[i][1])
                gUnknown_03005000.unk_e9[i] = 1;
            break;
        case 0xed00:
            if (gUnknown_03005000.unk_0c == 0)
            {
                if (gReceivedRemoteLinkPlayers != 0)
                {
                    if (gRecvCmds[i][1] & gUnknown_03007890->unk_02)
                    {
                        gReceivedRemoteLinkPlayers = 0;
                        sub_800D630();
                        gUnknown_03005000.unk_ce4 = gRecvCmds[i][2];
                    }
                    gUnknown_03005000.playerCount = gRecvCmds[i][3];
                    sub_80109E8(gRecvCmds[i][1]);
                }
            }
            else
            {
                sub_800FD14(0xee00);
                gSendCmd[1] = gRecvCmds[i][1];
                gSendCmd[2] = gRecvCmds[i][2];
                gSendCmd[3] = gRecvCmds[i][3];
            }
            break;
        case 0xee00:
            if (gUnknown_03005000.unk_0c == 1)
            {
                gUnknown_03005000.unk_ce3 |= gRecvCmds[i][1];
                gUnknown_03005000.unk_ce4 = gRecvCmds[i][2];
                sub_80109E8(gRecvCmds[i][1]);
            }
            break;
        case 0x4400:
        case 0xbe00:
            gLinkPartnersHeldKeys[i] = gRecvCmds[i][1];
            break;
        }
        if (gUnknown_03005000.unk_0c == 1 && gUnknown_03005000.unk_61[i])
        {
            if (gUnknown_03005000.unk_61[i] == 4)
            {
                gUnknown_03005000.unk_5c[i] = 1;
                gUnknown_03005000.unk_61[i] = 0;
            }
            else
                gUnknown_03005000.unk_61[i]++;
        }
    }
}

bool8 sub_800FC60(void)
{
    s32 i;

    for (i = 0; i < 5; i++)
    {
        if (gUnknown_03005000.unk_80[i].unk_12)
            return 0;
    }
    return 1;
}

bool8 sub_800FC88(void)
{
    s32 i;

    for (i = 0; i < gUnknown_03005000.playerCount; i++)
    {
        if (gUnknown_03005000.unk_80[i].unk_12 != 2 || gUnknown_03005000.unk_5c[i] != 1)
            return 0;
    }
    return 1;
}

static void sub_800FCC4(struct UnkRfuStruct_2_Sub_6c *data)
{
    data->unk_00 = 0;
    data->unk_02 = 0;
    data->unk_04 = ((void *)0);
    data->unk_08 = 0;
    data->unk_10 = 0;
    data->unk_11 = 0;
    data->unk_12 = 0;
}

u8 sub_800FCD8(void)
{
    u8 flags = 0;
    s32 i;

    for (i = 0; i < 5; i++)
    {
        if (gUnknown_03005000.unk_80[i].unk_12 == 2 && gUnknown_03005000.unk_5c[i] == 1)
        {
            flags |= (1 << i);
        }
    }
    return flags;
}

void sub_800FD14(u16 command)
{
    u8 i;
    u8 *buff;
    u8 tmp;

    gSendCmd[0] = command;
    switch (command)
    {
    case 0x8800:
        gSendCmd[1] = gUnknown_03005000.unk_6c.unk_02;
        gSendCmd[2] = gUnknown_03005000.unk_6c.unk_11 + 0x80;
        break;
    case 0xa100:
        if (sub_800FC60())
            gSendCmd[1] = gUnknown_03005000.unk_5a;
        break;
    case 0x7700:
    case 0x7800:
        tmp = gUnknown_03005000.unk_ce2 ^ gUnknown_03005000.unk_ce3;
        gUnknown_03005000.playerCount = gUnknown_082ED695[tmp] + 1;
        gSendCmd[1] = gUnknown_03005000.playerCount;
        buff = (u8 *)(gSendCmd + 2);
        for (i = 0; i < 4; i++)
            buff[i] = gUnknown_03005000.unk_cde[i];
        break;
    case 0x6600:
    case 0x5f00:
        gSendCmd[1] = gUnknown_03005000.unk_100;
        break;
    case 0x4400:
        gSendCmd[0] = command;
        gSendCmd[1] = gMain.heldKeys;
        break;
    case 0x2f00:
        for (i = 0; i < 6; i++)
            gSendCmd[1 + i] = gUnknown_03005000.unk_f2[i];
        break;
    case 0xbe00:
        gSendCmd[1] = gHeldKeyCodeToSend;
        break;
    case 0xee00:
        break;
    case 0xed00:
        break;
    }
}

void sub_800FE50(void *a0)
{
    if (gSendCmd[0] == 0 && !sub_8011A80())
    {
        memcpy(gUnknown_03005000.unk_f2, a0, sizeof(gUnknown_03005000.unk_f2));
        sub_800FD14(0x2f00);
    }
}

bool32 sub_800FE84(const u8 *src, size_t size)
{
    bool8 r4;
    if (gUnknown_03005000.unk_00 != ((void *)0))
        return 0;
    if (gSendCmd[0] != 0)
        return 0;
    if (gUnknown_03005000.unk_6c.unk_10 != 0)
    {
        gUnknown_02022B44.unk_83++;
        return 0;
    }
    r4 = (size % 12) != 0;
    gUnknown_03005000.unk_6c.unk_11 = GetMultiplayerId();
    gUnknown_03005000.unk_6c.unk_10 = 1;
    gUnknown_03005000.unk_6c.unk_02 = (size / 12) + r4;
    gUnknown_03005000.unk_6c.unk_00 = 0;
    if (size > 0x100)
        gUnknown_03005000.unk_6c.unk_04 = src;
    else
    {
        if (src != gBlockSendBuffer)
            memcpy(gBlockSendBuffer, src, size);
        gUnknown_03005000.unk_6c.unk_04 = gBlockSendBuffer;
    }
    sub_800FD14(0x8800);
    gUnknown_03005000.unk_00 = rfufunc_80F9F44;
    gUnknown_03005000.unk_5b = 0;
    return 1;
}

static void rfufunc_80F9F44(void)
{
    if (gSendCmd[0] == 0)
    {
        sub_800FD14(0x8800);
        if (gUnknown_03005000.unk_0c == 1)
        {
            if (++gUnknown_03005000.unk_5b > 2)
                gUnknown_03005000.unk_00 = sub_800FFB0;
        }
        else
        {
            if ((gRecvCmds[GetMultiplayerId()][0] & 0xff00) == 0x8800)
                gUnknown_03005000.unk_00 = sub_800FFB0;
        }
    }
}

static void sub_800FFB0(void)
{
    s32 i;
    const u8 *src = gUnknown_03005000.unk_6c.unk_04;
    gSendCmd[0] = 0x8900 | gUnknown_03005000.unk_6c.unk_00;
    for (i = 0; i < 7; i++)
        gSendCmd[i + 1] = (src[(i << 1) + gUnknown_03005000.unk_6c.unk_00 * 12 + 1] << 8) | src[(i << 1) + gUnknown_03005000.unk_6c.unk_00 * 12 + 0];
    gUnknown_03005000.unk_6c.unk_00++;
    if (gUnknown_03005000.unk_6c.unk_02 <= gUnknown_03005000.unk_6c.unk_00)
    {
        gUnknown_03005000.unk_6c.unk_10 = 0;
        gUnknown_03005000.unk_00 = rfufunc_80FA020;
    }
}

static void rfufunc_80FA020(void)
{
    const u8 *src = gUnknown_03005000.unk_6c.unk_04;
    u8 mpId = GetMultiplayerId();
    s32 i;
    if (gUnknown_03005000.unk_0c == 0)
    {
        gSendCmd[0] = (~0x76ff) | (gUnknown_03005000.unk_6c.unk_02 - 1);
        for (i = 0; i < 7; i++)
            gSendCmd[i + 1] = (src[(i << 1) + (gUnknown_03005000.unk_6c.unk_02 - 1) * 12 + 1] << 8) | src[(i << 1) + (gUnknown_03005000.unk_6c.unk_02 - 1) * 12 + 0];
        if ((u8)gRecvCmds[mpId][0] == gUnknown_03005000.unk_6c.unk_02 - 1)
        {
            if (gUnknown_03005000.unk_80[mpId].unk_08 != gUnknown_082ED628[gUnknown_03005000.unk_80[mpId].unk_02])
            {
                sub_800F638(mpId, gUnknown_03005000.unk_80[mpId].unk_08);
                gUnknown_02022B44.unk_64++;
            }
            else
                gUnknown_03005000.unk_00 = ((void *)0);
        }
    }
    else
        gUnknown_03005000.unk_00 = ((void *)0);
}

bool8 sub_8010100(u8 a0)
{
    gUnknown_03005000.unk_5a = a0;
    sub_800FD14(0xa100);
    return 1;
}

void sub_801011C(void)
{
    rfu_clearAllSlot();
    sub_800C048();
    gReceivedRemoteLinkPlayers = 0;
    gUnknown_03005000.unk_ef = 1;
    gUnknown_03005000.unk_00 = ((void *)0);
}

void sub_8010148(void)
{
    rfu_REQ_disconnect(gUnknown_03007890->unk_02 | gUnknown_03007890->unk_03);
    rfu_waitREQComplete();
    sub_801011C();
}

void sub_8010168(void)
{
    if (gUnknown_03005000.unk_0c == 0)
    {
        sub_800D630();
        gUnknown_03005000.unk_ce4 = 2;
    }
    else
        gUnknown_03005000.unk_00 = sub_8010148;
}

void LinkRfu_FatalError(void)
{
    sub_800D630();
    gUnknown_03005000.unk_ce4 = 1;
    gUnknown_03005000.unk_ce3 = gUnknown_03007890->unk_02 | gUnknown_03007890->unk_03;
}

void sub_80101CC(void)
{
    s32 i;
    u8 playerCount = gUnknown_03005000.playerCount;
    s32 count = 0;

    for (i = 0; i < 5; i++)
    {
        if (gUnknown_03005000.unk_e4[i])
            count++;
    }
    if (count == playerCount)
    {
        gBattleTypeFlags &= ~0x0020;
        if (gUnknown_03005000.unk_0c == 0)
        {
            gUnknown_03005000.unk_ee = 3;
            sub_8010168();
        }
        else
            gUnknown_03005000.unk_00 = sub_8010168;
    }
}

void sub_801022C(void)
{
    if (gSendCmd[0] == 0 && gUnknown_03005000.unk_ce8 == 0)
    {
        sub_800FD14(0x5f00);
        gUnknown_03005000.unk_00 = sub_80101CC;
    }
}

void sub_8010264(u8 taskId)
{
    if (gUnknown_03005000.unk_00 == ((void *)0))
    {
        gUnknown_03005000.unk_cd9 = 1;
        gUnknown_03005000.unk_00 = sub_801022C;
        DestroyTask(taskId);
    }
}

void task_add_05_task_del_08FA224_when_no_RfuFunc(void)
{
    if (!FuncIsActiveTask(sub_8010264))
        CreateTask(sub_8010264, 5);
}

void sub_80102B8(void)
{
    u8 playerCount;
    u8 i;

    if (GetMultiplayerId() != 0)
    {
        u8 r4 = gUnknown_03005000.unk_124.unk_8c2;
        if (r4 == 0 && gUnknown_03005000.unk_fe > 0x3c)
        {
            sub_800FD14(0x6600);
            gUnknown_03005000.unk_fe = r4;
        }
    }
    playerCount = GetLinkPlayerCount();
    for (i = 0; i < playerCount; i++)
    {
        if (gUnknown_03005000.unk_e9[i] == 0)
            break;
    }
    if (i == playerCount)
    {
        for (i = 0; i < 5; i++)
            gUnknown_03005000.unk_e9[i] = 0;
        gUnknown_03005000.unk_100++;
        gUnknown_03005000.unk_00 = ((void *)0);
    }
    gUnknown_03005000.unk_fe++;
}

void sub_8010358(void)
{
    if (gUnknown_03005000.unk_124.unk_8c2 == 0 && gSendCmd[0] == 0)
    {
        sub_800FD14(0x6600);
        gUnknown_03005000.unk_00 = sub_80102B8;
    }
}

void sub_8010390(void)
{
    u8 i;
    u8 playerCount;

    if (GetMultiplayerId() != 0)
    {
        if (gUnknown_03005000.unk_124.unk_8c2 == 0 && gSendCmd[0] == 0)
        {
            sub_800FD14(0x6600);
            gUnknown_03005000.unk_00 = sub_80102B8;
        }
    }
    else
    {
        playerCount = GetLinkPlayerCount();
        for (i = 1; i < playerCount; i++)
        {
            if (gUnknown_03005000.unk_e9[i] == 0)
                break;
        }
        if (i == playerCount)
        {
            if (gUnknown_03005000.unk_124.unk_8c2 == 0 && gSendCmd[0] == 0)
            {
                sub_800FD14(0x6600);
                gUnknown_03005000.unk_00 = sub_8010358;
            }
        }
    }
}

void sub_8010434(void)
{
    if (gUnknown_03005000.unk_00 == ((void *)0))
    {
        gUnknown_03005000.unk_00 = sub_8010390;
        gUnknown_03005000.unk_fe = 0;
    }
}

bool32 sub_8010454(u32 a0)
{
    s32 i;
    for (i = 0; gUnknown_082ED6E0[i] != a0; i++)
    {
        if (gUnknown_082ED6E0[i] == 0xFFFF)
            return 0;
    }
    return 1;
}

u8 sub_801048C(bool32 a0)
{
    if (a0 == 0)
        return sub_800D550(0, 0);
    sub_800D550(1, 0x258);
    return 0;
}

void sub_80104B0(void)
{
    gUnknown_03005000.unk_cd9 = 1;
    sub_800C27C(0);
}

u8 rfu_get_multiplayer_id(void)
{
    if (gUnknown_03005000.unk_0c == 1)
        return 0;
    return gUnknown_03005000.unk_cce;
}

u8 sub_80104F4(void)
{
    return gUnknown_03005000.playerCount;
}

bool8 sub_8010500(void)
{
    if (gUnknown_03005000.unk_f1 == 2)
        return 0;
    return gUnknown_03005000.unk_00 ? 0 : 1;
}

static void sub_8010528(void)
{
    if (gUnknown_03005000.unk_00)
        gUnknown_03005000.unk_00();
}

bool8 sub_8010540(void)
{
    s32 i;
    bool8 retval = 0;
    for (i = 0; i < 4; i++)
    {
        if (gUnknown_03005000.unk_cd1[i] < 5 || gUnknown_03005000.unk_cd1[i] > 6)
        {
            if (gUnknown_03007880[i]->unk_34 == 0x46 || gUnknown_03007880[i]->unk_34 == 0x48)
            {
                if (gUnknown_03005000.unk_cd5[i] == 8)
                {
                    gUnknown_03005000.unk_cd1[i] = 9;
                    gUnknown_03005000.unk_cd5[i] = 10;
                    rfu_clearSlot(8, i);
                    rfu_NI_setSendData(1 << i, 8, gUnknown_03005000.unk_cd1 + i, 1);
                    retval = 1;
                }

            }
            else if (gUnknown_03007880[gUnknown_03005000.unk_c3e]->unk_34 == 0x47)
                rfu_clearSlot(8, i);
            {

            }
        }
    }
    return retval;
}

bool32 sub_80105EC(void)
{
    u8 flags = 0;
    s32 i;
    for (i = 0; i < 4; i++)
    {
        if (gUnknown_03005000.unk_cd5[i] == 11)
        {
            flags |= (1 << i);
            gUnknown_03005000.unk_cd5[i] = 0;
        }
    }
    if (flags)
    {
        rfu_REQ_disconnect(flags);
        rfu_waitREQComplete();
    }
    for (i = 0; i < 4; i++)
    {
        if (gUnknown_03005000.unk_cd5[i] == 10 || gUnknown_03005000.unk_cd5[i] == 11)
            return 1;
    }
    return 0;
}

bool32 sub_801064C(u16 a0, const u8 *a1)
{
    u8 r1 = sub_8011CE4(a1, a0);
    if (r1 == 0xFF)
        return 1;
    if (gUnknown_03005000.unk_cd1[r1] == 9)
        return 1;
    return 0;
}

void sub_8010688(u8 a0, u16 a1, const u8 *a2)
{
    u8 r4 = sub_8011CE4(a2, a1);
    gUnknown_03005000.unk_cd1[r4] = a0;
    rfu_clearSlot(4, r4);
    rfu_NI_setSendData(1 << r4, 8, gUnknown_03005000.unk_cd1 + r4, 1);
}

void sub_80106D4(void)
{
    gUnknown_03005000.unk_c85 = 8;
    rfu_clearSlot(4, gUnknown_03005000.unk_c3e);
    rfu_NI_setSendData(1 << gUnknown_03005000.unk_c3e, 8, &gUnknown_03005000.unk_c85, 1);
}

u32 sub_8010714(u16 a0, const u8 *a1)
{
    u8 r0 = sub_8011CE4(a1, a0);
    if (r0 == 0xFF)
        return 2;
    if (gUnknown_03007880[r0]->unk_0 == 0)
        return 1;
    return 0;
}

void sub_8010750(void)
{
    s32 i;

    sub_8010540();
    for (i = 0; i < 4; i++)
    {
        if (gUnknown_03007880[i]->unk_0 == 0x26 || gUnknown_03007880[i]->unk_0 == 0x27)
        {
            if (gUnknown_03005000.unk_cd5[i] == 10)
                gUnknown_03005000.unk_cd5[i] = 11;
            rfu_clearSlot(4, i);
        }
    }
}

s32 sub_80107A0(void)
{
    s32 retval = 0;
    if (gUnknown_03005000.unk_c85 == 8)
    {
        if (gUnknown_03007880[gUnknown_03005000.unk_c3e]->unk_0 == 0x26 || gUnknown_03007880[gUnknown_03005000.unk_c3e]->unk_0 == 0x27)
            rfu_clearSlot(4, gUnknown_03005000.unk_c3e);
    }
    if (gUnknown_03007880[gUnknown_03005000.unk_c3e]->unk_34 == 0x46 || gUnknown_03007880[gUnknown_03005000.unk_c3e]->unk_34 == 0x48)
    {
        rfu_clearSlot(8, gUnknown_03005000.unk_c3e);
        sub_8011A64(gUnknown_03005000.unk_c86, 0);
        retval = gUnknown_03005000.unk_c86;
    }
    else if (gUnknown_03007880[gUnknown_03005000.unk_c3e]->unk_34 == 0x47)
    {
        rfu_clearSlot(8, gUnknown_03005000.unk_c3e);
        retval = 6;
    }
    return retval;
}

void sub_801084C(u8 taskId)
{
    s32 i;

    if (gUnknown_03005000.unk_f1 == 1 || gUnknown_03005000.unk_f1 == 2)
    {
        gUnknown_03005000.unk_ce8 = 0;
        DestroyTask(taskId);
    }
    switch (gTasks[taskId].data[0])
    {
        case 0:
            if (sub_800FC60())
            {
                ResetBlockReceivedFlags();
                sub_800B348();
                gTasks[taskId].data[0]++;
            }
            break;
        case 1:
            if (gUnknown_03005000.unk_0c == 1)
            {
                if (gReceivedRemoteLinkPlayers)
                    sub_800FD14(0x7800);
                else
                    sub_800FD14(0x7700);
                gTasks[taskId].data[0] = 101;
            }
            else
                gTasks[taskId].data[0] = 2;
            break;
        case 101:
            if (gSendCmd[0] == 0)
                gTasks[taskId].data[0] = 2;
            break;
        case 2:
            if (gUnknown_03005000.playerCount)
                gTasks[taskId].data[0]++;
            break;
        case 3:
            if (gUnknown_03005000.unk_0c == 1)
            {
                if (sub_800FC60())
                {
                    gUnknown_03005000.unk_5a = 0;
                    sub_800FD14(0xa100);
                    gTasks[taskId].data[0]++;
                }
            }
            else
                gTasks[taskId].data[0]++;
            break;
        case 4:
            if (sub_800FC88())
                gTasks[taskId].data[0]++;
            break;
        case 5:
            for (i = 0; i < gUnknown_03005000.playerCount; i++)
            {
                sub_800B3A4(i);
                sub_800F728(i);
            }
            gTasks[taskId].data[0]++;
            break;
        case 6:
            DestroyTask(taskId);
            gReceivedRemoteLinkPlayers = 1;
            gUnknown_03005000.unk_ce8 = 0;
            sub_800D550(1, 0x258);
            if (gUnknown_03005000.unk_ce6)
            {
                for (i = 0; i < 4; i++)
                {
                    if ((gUnknown_03005000.unk_ce6 >> i) & 1)
                    {
                        gUnknown_03005000.unk_ce5 = 1 << i;
                        gUnknown_03005000.unk_ce6 ^= (1 << i);
                    }
                }
            }
            break;
    }
}

void sub_80109E8(u16 a0)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if ((a0 >> i) & 1)
            gUnknown_03005000.unk_cde[i] = 0;
    }
}

void sub_8010A14(const struct UnkRfuStruct_8010A14 *a0)
{
    s32 i;
    gUnknown_03005000.playerCount = a0->unk_0f;
    for (i = 0; i < 4; i++)
        gUnknown_03005000.unk_cde[i] = a0->unk_10[i];
    for (i = 0; i < 5; i++)
    {
        gLinkPlayers[i] = a0->unk_14[i];
        sub_800B524(gLinkPlayers + i);
    }
}

void sub_8010A70(void *a0)
{
    if (strcmp(gUnknown_082ED7EC, a0) == 0)
    {
        sub_8010A14(a0);
        { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, a0, 0x00000000 | 0x01000000 | ((sizeof(struct UnkRfuStruct_8010A14))/(16/8) & 0x1FFFFF)); };
        ResetBlockReceivedFlag(0);
    }
}

void sub_8010AAC(u8 taskId)
{
    s32 i;
    struct LinkPlayerBlock *r2;
    struct UnkRfuStruct_8010A14 *r5;
    u8 r4 = gUnknown_03005000.unk_cde[gUnknown_082ED68C[gUnknown_03005000.unk_ce9]];
    if (gUnknown_03005000.unk_f1 == 1 || gUnknown_03005000.unk_f1 == 2)
    {
        gUnknown_03005000.unk_ce8 = 0;
        DestroyTask(taskId);
    }
    switch (gTasks[taskId].data[0])
    {
        case 0:
            if (gSendCmd[0] == 0)
            {
                ResetBlockReceivedFlag(r4);
                sub_800FD14(0x7800);
                gTasks[taskId].data[0]++;
            }
            break;
        case 1:
            if (gSendCmd[0] == 0)
                gTasks[taskId].data[0]++;
            break;
        case 2:
            if ((GetBlockReceivedStatus() >> r4) & 1)
            {
                ResetBlockReceivedFlag(r4);
                r2 = (struct LinkPlayerBlock *)gBlockRecvBuffer[r4];
                gLinkPlayers[r4] = r2->linkPlayer;
                sub_800B524(gLinkPlayers + r4);
                gTasks[taskId].data[0]++;
            }
            break;
        case 3:
            r5 = (struct UnkRfuStruct_8010A14 *)gBlockSendBuffer;
            memcpy(r5->unk_00, gUnknown_082ED7EC, sizeof gUnknown_082ED7EC);
            r5->unk_0f = gUnknown_03005000.playerCount;
            for (i = 0; i < 4; i++)
                r5->unk_10[i] = gUnknown_03005000.unk_cde[i];
            memcpy(r5->unk_14, gLinkPlayers, sizeof gLinkPlayers);
            gTasks[taskId].data[0]++;

        case 4:
            r5 = (struct UnkRfuStruct_8010A14 *)gBlockSendBuffer;
            r5->unk_0f = gUnknown_03005000.playerCount;
            for (i = 0; i < 4; i++)
                r5->unk_10[i] = gUnknown_03005000.unk_cde[i];
            memcpy(r5->unk_14, gLinkPlayers, sizeof gLinkPlayers);
            if (SendBlock(0, gBlockSendBuffer, 0xa0))
                gTasks[taskId].data[0]++;
            break;
        case 5:
            if (IsLinkTaskFinished() && GetBlockReceivedStatus() & 1)
            {
                { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gBlockRecvBuffer, 0x00000000 | 0x01000000 | ((sizeof(struct UnkRfuStruct_8010A14))/(16/8) & 0x1FFFFF)); };
                ResetBlockReceivedFlag(0);
                gUnknown_03005000.unk_ce8 = 0;
                if (gUnknown_03005000.unk_ce6)
                {
                    for (i = 0; i < 4; i++)
                    {
                        if ((gUnknown_03005000.unk_ce6 >> i) & 1)
                        {
                            gUnknown_03005000.unk_ce5 = 1 << i;
                            gUnknown_03005000.unk_ce6 ^= (1 << i);
                            gUnknown_03005000.unk_ce8 = 1;
                            break;
                        }
                    }
                }
                DestroyTask(taskId);
            }
            break;
    }
}

void sub_8010D0C(u8 taskId)
{
    if (gUnknown_03005000.unk_f1 == 1 || gUnknown_03005000.unk_f1 == 2)
        DestroyTask(taskId);
    switch (gTasks[taskId].data[0])
    {
        case 0:
            if (gUnknown_03005000.playerCount)
            {
                sub_800B348();
                SendBlock(0, gBlockSendBuffer, sizeof(struct LinkPlayerBlock));
                gTasks[taskId].data[0]++;
            }
            break;
        case 1:
            if (IsLinkTaskFinished())
                gTasks[taskId].data[0]++;
            break;
        case 2:
            if (GetBlockReceivedStatus() & 1)
            {
                sub_8010A14((const struct UnkRfuStruct_8010A14 *)gBlockRecvBuffer);
                ResetBlockReceivedFlag(0);
                gReceivedRemoteLinkPlayers = 1;
                DestroyTask(taskId);
            }
            break;
    }
}

void sub_8010DB4(void)
{
    if (gUnknown_03005000.unk_ee == 1 && gUnknown_03004140.unk_02 == 0)
    {
        if (gMain.callback2 == c2_mystery_gift_e_reader_run || gUnknown_03004140.unk_3c->unk_04)
            gWirelessCommType = 2;
        SetMainCallback2(CB2_LinkError);
        gMain.savedCallback = CB2_LinkError;
        sub_800AF18((gUnknown_03005000.unk_0a << 16) | (gUnknown_03005000.unk_10 << 8) | gUnknown_03005000.unk_12, gUnknown_03005000.unk_124.unk_8c2, gUnknown_03005000.unk_9e8.unk_232, sub_8011A74() == 2);
        gUnknown_03005000.unk_ee = 2;
        CloseLink();
    }
    else if (gUnknown_03005000.unk_9e8.unk_233 == 1 || gUnknown_03005000.unk_124.unk_8c3 == 1)
    {
        if (gUnknown_03004140.unk_02)
            sub_800D630();
        sub_8011A64(1, 0x7000);
        sub_8011170(0x7000);
    }
}

void rfu_REQ_recvData_then_sendData(void)
{
    if (gUnknown_03004140.unk_06 == 1)
    {
        rfu_REQ_recvData();
        rfu_waitREQComplete();
        rfu_REQ_sendData_wrapper(0);
    }
}

bool32 sub_8010EC0(void)
{
    bool32 retval = 0;
    gUnknown_03005000.unk_ccd = 0;
    sub_800C54C(Random2());
    if (gUnknown_03005000.unk_ef == 0)
    {
        switch (gUnknown_03005000.unk_0c)
        {
            case 1:
                sub_800F0F8();
                break;
            case 0:
                retval = sub_800F4F0();
                break;
            case 2:
                rfu_REQ_recvData_then_sendData();
                break;
        }
    }
    return retval;
}

bool32 sub_8010F1C(void)
{
    bool32 retval = 0;
    if (gUnknown_03005000.unk_ef == 0)
    {
        if (gUnknown_03005000.unk_0c == 1)
            retval = sub_800F1E0();
        sub_8010DB4();
    }
    return retval;
}

void sub_8010F48(void)
{
    StringCopy(gUnknown_02022B22, gSaveBlock2Ptr->playerName);
}

void sub_8010F60(void)
{
    memset(&gUnknown_02022B14, 0, 0xD);
    sub_800DD94(&gUnknown_02022B14, 0, 0, 0);
}

void sub_8010F84(u8 a0, u32 a1, u32 a2)
{
    sub_800DD94(&gUnknown_02022B14, a0, a2, a1);
}

void sub_8010FA0(bool32 a0, bool32 a1)
{
    gUnknown_02022B14.unk_00.unk_00_4 = a0;
    gUnknown_02022B14.unk_00.unk_00_5 = a1;
}

void sub_8010FCC(u32 a0, u32 a1, u32 a2)
{
    gUnknown_02022B14.type = a0;
    gUnknown_02022B14.species = a1;
    gUnknown_02022B14.unk_0b_1 = a2;
}

u8 sub_801100C(s32 a0)
{
    u8 retval = 0x80;
    retval |= (gLinkPlayers[a0].gender << 3);
    retval |= (gLinkPlayers[a0].trainerId & 7);
    return retval;
}

void sub_801103C(void)
{
    struct UnkLinkRfuStruct_02022B14 *r5 = &gUnknown_02022B14;
    s32 i;

    for (i = 1; i < GetLinkPlayerCount(); i++)
        r5->unk_04[i - 1] = sub_801100C(i);
}

void sub_8011068(u8 a0)
{
    gUnknown_02022B14.unk_0a_7 = a0;
    rfu_REQ_configGameData(0, 2, &gUnknown_02022B14, gUnknown_02022B22);
}

void sub_8011090(u8 a0, u32 a1, u32 a2)
{
    if (a0)
        sub_8010F84(a0, a1, a2);
    rfu_REQ_configGameData(0, 2, &gUnknown_02022B14, gUnknown_02022B22);
}

void sub_80110B8(u32 a0)
{
    s32 i;
    u32 r5;
    u32 r7;
    s32 r8;

    if (sub_800F7DC()->unk_0a_0 == 0x45)
    {
        r5 = 0;
        r7 = 0;
        r8 = gUnknown_03005000.unk_ce2 ^ gUnknown_03005000.unk_ce3;
        for (i = 0; i < 4; i++)
        {
            if ((r8 >> i) & 1)
            {
                r7 |= ((0x80 | ((gLinkPlayers[gUnknown_03005000.unk_cde[i]].gender & 1) << 3) | (gLinkPlayers[gUnknown_03005000.unk_cde[i]].trainerId & 7)) << (r5 << 3));
                r5++;
                if (r5 == a0 - 1)
                    break;
            }
        }
        sub_8011090(0x45, r7, 0);
    }
}

void sub_8011170(u32 a0)
{
    if (gUnknown_03005000.unk_ee == 0)
    {
        gUnknown_03005000.unk_10 = gUnknown_03004140.unk_14;
        gUnknown_03005000.unk_12 = gUnknown_03004140.unk_16;
        gUnknown_03005000.unk_0a = a0;
        gUnknown_03005000.unk_ee = 1;
    }
}

void sub_80111A0(void)
{
    gUnknown_03005000.unk_ee = 0;
}

void sub_80111B0(bool32 a0)
{
    if (!a0)
        gUnknown_03005000.unk_ee = 0;
    else
        gUnknown_03005000.unk_ee = 4;
}

void sub_80111DC(void)
{
    sub_8011E94(gUnknown_03004140.unk_00, 1);
    gUnknown_03005000.unk_00 = ((void *)0);
}

void sub_80111FC(void)
{
    gUnknown_03005000.unk_00 = sub_80111DC;
}

void sub_801120C(u8 a0, u8 unused1)
{
    u8 i;
    u8 r6 = 0;
    switch (a0)
    {
    case 0x00:
        gUnknown_03005000.unk_04 = 2;
        break;
    case 0x10:
        break;
    case 0x11:
        sub_80115EC(gUnknown_03004140.unk_14);
        for (i = 0; i < 4; i++)
        {
            if ((gUnknown_03004140.unk_14 >> i) & 1)
            {
                struct UnkLinkRfuStruct_02022B14 *structPtr = &gUnknown_03007890->unk_14[i].unk_06;
                if (structPtr->unk_0a_0 == sub_800F7DC()->unk_0a_0)
                {
                    gUnknown_03005000.unk_cd1[i] = 0;
                    gUnknown_03005000.unk_cd5[i] = 0;
                    rfu_setRecvBuffer(0x20, i, gUnknown_03005000.unk_cd5 + i, 1);
                }
                else
                {
                    r6 |= (1 << i);
                }
            }
        }
        if (r6)
        {
            rfu_REQ_disconnect(r6);
            rfu_waitREQComplete();
        }
        break;
    case 0x12:
        break;
    case 0x13:
        break;
    case 0x14:
        if (gUnknown_03005000.unk_ce7 != gUnknown_03004140.unk_00)
        {
            rfu_REQ_disconnect(gUnknown_03005000.unk_ce7 ^ gUnknown_03004140.unk_00);
            rfu_waitREQComplete();
        }
        gUnknown_03005000.unk_04 = 0x11;
        break;
    case 0x31:
        gUnknown_03005000.unk_f0 = 1;
        break;
    case 0x32:
        gUnknown_03005000.unk_f0 = 3;
        break;
    case 0x30:
    case 0x33:
        gUnknown_03005000.unk_f0 = 4;
        gUnknown_03005000.unk_ce2 &= ~gUnknown_03004140.unk_14;
        if (gReceivedRemoteLinkPlayers == 1)
        {
            if (gUnknown_03005000.unk_ce2 == 0)
                sub_8011170(a0);
            else
                sub_80111FC();
        }
        sub_8011A64(2, a0);
        break;
    case 0x34:
        break;
    case 0x42 ... 0x44:
        break;
    case 0xf3:
        sub_8011A64(1, a0);
        sub_8011170(a0);
        gUnknown_03005000.unk_ef = 1;
        break;
    case 0xf0 ... 0xf2:
    case 0xff:
        sub_8011170(a0);
        sub_8011A64(1, a0);
        gUnknown_03005000.unk_cdb = 1;
        break;
    }
}

void sub_8011404(u8 a0, u8 unused1)
{
    switch (a0)
    {
    case 0x00:
        gUnknown_03005000.unk_04 = 6;
        break;
    case 0x20:
        gUnknown_03005000.unk_ccd = gUnknown_03004140.unk_14;
        break;
    case 0x21:
        break;
    case 0x22:
        gUnknown_03005000.unk_c3e = gUnknown_03004140.unk_14;
        break;
    case 0x23:
        sub_8011A64(2, a0);
        break;
    case 0x24:
        gUnknown_03005000.unk_04 = 11;
        gUnknown_03005000.unk_c85 = 0;
        gUnknown_03005000.unk_c86 = 0;
        rfu_setRecvBuffer(0x20, gUnknown_03005000.unk_c3e, &gUnknown_03005000.unk_c86, 1);
        rfu_setRecvBuffer(0x10, gUnknown_03005000.unk_c3e, gUnknown_03005000.unk_c3f, 70);
        break;
    case 0x25:
        sub_8011A64(2, 0x25);
        break;
    case 0x30:
        gUnknown_03005000.unk_f0 = 2;
        if (gUnknown_03005000.unk_c86 == 6)
            break;
    case 0x33:
        if (gUnknown_03005000.unk_f0 != 2)
            gUnknown_03005000.unk_f0 = 4;
        if (gUnknown_03005000.unk_c86 != 9)
            sub_8011A64(2, a0);
        nullsub_5(gUnknown_082ED7FC, 5, 5);
        if (gReceivedRemoteLinkPlayers == 1)
            sub_8011170(a0);
        break;
    case 0x31:
        gUnknown_03005000.unk_f0 = 1;
        nullsub_5(gUnknown_082ED814, 5, 5);
        break;
    case 0x32:
        gUnknown_03005000.unk_f0 = 3;
        gUnknown_03005000.unk_c3c = 1;
        break;
    case 0x34:
        break;
    case 0x42 ... 0x44:
        break;
    case 0xF3:
        sub_8011A64(1, a0);
        sub_8011170(a0);
        gUnknown_03005000.unk_ef = 1;
        break;
    case 0xF0 ... 0xF2:
    case 0xFF:
        sub_8011A64(1, a0);
        sub_8011170(a0);
        gUnknown_03005000.unk_cdb = 1;
        break;
    }
}

void sub_80115EC(s32 a0)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if ((a0 >> i) & 1)
        {
            gUnknown_03005000.unk_cea[i] = 0;
            gUnknown_03005000.unk_cee[i] = 0xFF;
        }
    }
}

u8 sub_8011628(s32 a0)
{
    u8 ret = 0;
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if ((a0 >> i) & 1)
        {
            struct UnkLinkRfuStruct_02022B14 *structPtr = &gUnknown_03007890->unk_14[i].unk_06;
            if (structPtr->unk_0a_0 == 0x45)
                ret |= (1 << i);
        }
    }

    return ret;
}

void sub_8011674(u8 a0, u8 unused1)
{
    u8 r1;

    switch (a0)
    {
    case 0x00:
        gUnknown_03005000.unk_04 = 0x11;
        break;
    case 0x10:
        sub_8011A64(4, 0);
        break;
    case 0x11:
        if (sub_800F7DC()->unk_0a_0 == 0x45 && gUnknown_03005000.unk_cd9 == 0)
        {
            u8 idx = sub_8011628(gUnknown_03004140.unk_14);
            if (idx != 0)
            {
                r1 = 1 << sub_800E87C(idx);
                if (gUnknown_03005000.unk_ce6 == 0 && gUnknown_03005000.unk_ce8 == 0)
                {
                    gUnknown_03005000.unk_ce5 = r1;
                    gUnknown_03005000.unk_ce6 |= (r1 ^ idx);
                    gUnknown_03005000.unk_ce8 = 1;
                }
                else
                {
                    gUnknown_03005000.unk_ce6 |= idx;
                }
            }
            if (idx != gUnknown_03004140.unk_14)
            {
                gUnknown_03005000.unk_ce3 |= (idx ^ gUnknown_03004140.unk_14);
                gUnknown_03005000.unk_ce4 = 2;
            }
        }
        else if (sub_800F7DC()->unk_0a_0 == 0x54)
        {
            rfu_REQ_disconnect(gUnknown_03004140.unk_00);
            rfu_waitREQComplete();
        }
        sub_80115EC(gUnknown_03004140.unk_14);
        break;
    case 0x12:
        break;
    case 0x13:
        break;
    case 0x14:
        if (sub_800F7DC()->unk_0a_0 != 0x45 && gUnknown_03004140.unk_01 > 1)
        {
            r1 = 1 << sub_800E87C(gUnknown_03004140.unk_14);
            rfu_REQ_disconnect(gUnknown_03004140.unk_00 ^ r1);
            rfu_waitREQComplete();
        }
        if (gUnknown_03005000.unk_04 == 0xF)
            gUnknown_03005000.unk_04 = 0x10;
        break;
        break;
    case 0x20:
        gUnknown_03005000.unk_ccd = gUnknown_03004140.unk_14;
        break;
    case 0x21:
        break;
    case 0x22:
        gUnknown_03005000.unk_c3e = gUnknown_03004140.unk_14;
        break;
    case 0x23:
        gUnknown_03005000.unk_04 = 0x12;
        if (gUnknown_03005000.unk_ccf < 2)
        {
            gUnknown_03005000.unk_ccf++;
            CreateTask(sub_801209C, 2);
        }
        else
        {
            sub_8011A64(2, a0);
        }
        break;
    case 0x24:
        gUnknown_03005000.unk_04 = 0xD;
        sub_8011A64(3, 0);
        rfu_setRecvBuffer(0x10, gUnknown_03005000.unk_c3e, gUnknown_03005000.unk_c3f, 70);
        break;
    case 0x25:
        sub_8011A64(2, a0);
        break;
    case 0x31:
        if (gUnknown_03004140.unk_00 & gUnknown_03004140.unk_14)
            gUnknown_03005000.unk_f0 = 1;
        break;
    case 0x32:
        gUnknown_03005000.unk_f0 = 3;
        if (gUnknown_03007890->unk_00 == 0)
            gUnknown_03005000.unk_c3c = 1;
        break;
    case 0x30:
        gUnknown_03005000.unk_f0 = 2;
    case 0x33:
        if (gUnknown_03005000.unk_f0 != 2)
            gUnknown_03005000.unk_f0 = 4;
        if (gUnknown_03005000.unk_0c == 1)
        {
            if (gReceivedRemoteLinkPlayers == 1)
            {
                gUnknown_03005000.unk_ce2 &= ~(gUnknown_03004140.unk_14);
                if (gUnknown_03005000.unk_ce2 == 0)
                    sub_8011170(a0);
                else
                    sub_80111FC();
            }
        }
        else if (gUnknown_03005000.unk_ce4 != 2 && gReceivedRemoteLinkPlayers == 1)
        {
            sub_8011170(a0);
            sub_800C27C(0);
        }

        if (gUnknown_03007890->unk_00 == 0xFF && gUnknown_03004140.unk_07 == 0 && FuncIsActiveTask(sub_800EB44) == 1)
            gUnknown_03005000.unk_04 = 0x11;

        sub_8011A64(2, a0);
        break;
    case 0x40:
        gUnknown_03005000.unk_ce3 = 0;
        break;
    case 0x42 ... 0x44:
        break;
    case 0xF3:
        sub_8011A64(1, a0);
        sub_8011170(a0);
        gUnknown_03005000.unk_ef = 1;
        break;
    case 0xF0 ... 0xF2:
    case 0xFF:
        sub_8011170(a0);
        sub_8011A64(1, a0);
        gUnknown_03005000.unk_cdb = 0;
        break;
    }
}

void sub_8011A50(void)
{
    gUnknown_03005000.unk_ce4 = 2;
}

void sub_8011A64(u8 a0, u16 a1)
{
    gUnknown_03005000.unk_f1 = a0;
    gUnknown_03005000.unk_0a = a1;
}

u8 sub_8011A74(void)
{
    return gUnknown_03005000.unk_f1;
}

bool32 sub_8011A80(void)
{
    u32 var = sub_8011A74() - 1;
    if (var < 2)
        return 1;
    else
        return 0;
}

bool32 sub_8011A9C(void)
{
    return gUnknown_03005000.unk_ce8;
}

bool8 Rfu_IsMaster(void)
{
    return gUnknown_03005000.unk_0c;
}

void RfuVSync(void)
{
    rfu_syncVBlank_();
}

void sub_8011AC8(void)
{
    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, gRecvCmds, 0x04000000 | 0x01000000 | ((sizeof(gRecvCmds))/(32/8) & 0x1FFFFF)); };
}

void sub_8011AE8(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

void sub_8011AFC(void)
{
    s32 i;

    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetTasks();
    ResetPaletteFade();
    SetVBlankCallback(sub_8011AE8);
    if (IsWirelessAdapterConnected())
    {
        gLinkType = 0x1111;
        sub_800B488();
        OpenLink();
        SeedRng(gMain.vblankCounter2);
        for (i = 0; i < 4; i++)
            gSaveBlock2Ptr->playerTrainerId[i] = Random() % 256;

        SetGpuReg(0x0, 0x1000 | 0x0100 | 0x0400 | 0x0040);
        RunTasks();
        AnimateSprites();
        BuildOamBuffer();
        UpdatePaletteFade();
        sub_8011BA4();
        SetMainCallback2(sub_8011BF8);
    }
}

bool32 sub_8011B90(void)
{
    return FuncIsActiveTask(sub_800EB44);
}

void sub_8011BA4(void)
{
    if (!FuncIsActiveTask(nullsub_89))
        gUnknown_03005000.unk_66 = CreateTask(nullsub_89, 0);
}

void sub_8011BD0(void)
{
     if (FuncIsActiveTask(nullsub_89) == 1)
        DestroyTask(gUnknown_03005000.unk_66);
}

void sub_8011BF8(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

void sub_8011C10(u32 a0)
{
    gUnknown_03005000.unk_0c = 1;
    sub_8010F48();
    sub_800BF4C(sub_801120C, ((void *)0));
    gUnknown_02022B2C = gUnknown_082ED608;
    gUnknown_02022B2C.unk_02 = gUnknown_082ED620[a0 - 1];
    sub_800EE78();
}

void sub_8011C5C(void)
{
    gUnknown_03005000.unk_0c = 0;
    sub_8010F48();
    sub_800BF4C(sub_8011404, sub_800ED34);
    sub_800EF00();
}

void sub_8011C84(void)
{
    gUnknown_03005000.unk_0c = 2;
    sub_8010F48();
    sub_800BF4C(sub_8011674, ((void *)0));
    gUnknown_02022B2C = gUnknown_082ED608;
    gUnknown_02022B2C.unk_11 = 0;
    gUnknown_02022B2C.unk_12 = 0x258;
    gUnknown_03005000.unk_67 = CreateTask(sub_800EB44, 1);
}

static u16 ReadU16(const void *ptr)
{
    const u8 *ptr_ = ptr;
    return (ptr_[1] << 8) | (ptr_[0]);
}

u8 sub_8011CE4(const u8 *a0, u16 a1)
{
    u8 i;
    u8 ret = 0xFF;

    for (i = 0; i < 4; i++)
    {
        u16 trainerId = ReadU16(gUnknown_03007890->unk_14[i].unk_06.unk_00.playerTrainerId);
        if (sub_8010454(gUnknown_03007890->unk_14[i].unk_04)
            && !StringCompare(a0, gUnknown_03007890->unk_14[i].playerName)
            && a1 == trainerId)
        {
            ret = i;
            if (gUnknown_03007890->unk_14[i].unk_02 != 0xFF)
                break;
        }
    }

    return ret;
}

void sub_8011D6C(u32 a0)
{
    rfu_REQ_disconnect(a0);
    rfu_waitREQComplete();
    gUnknown_03005000.unk_ce2 &= ~(a0);
    rfu_clearSlot(1, gUnknown_03005000.unk_cda);
    rfu_UNI_setSendData(gUnknown_03005000.unk_ce2, gUnknown_03005000.unk_c87, 70);
    gUnknown_03005000.unk_cda = sub_800E87C(gUnknown_03005000.unk_ce2);
}

void sub_8011DC0(const u8 *ptr, u16 a1)
{
    u8 var = sub_8011CE4(ptr, a1);
    if (var != 0xFF)
        sub_8011D6C(1 << var);
}

void sub_8011DE0(u32 a0)
{
    if (a0 != 0)
    {
        s32 i;
        u8 var = 0;

        for (i = 0; i < 4; i++)
        {
            if (gUnknown_03005000.unk_cde[i] == a0 && (gUnknown_03005000.unk_ce2 >> i) & 1)
                var |= 1 << i;
        }
        if (var)
            sub_8011E94(var, 2);
    }
}

void sub_8011E2C(u8 taskId)
{
    if (gSendCmd[0] == 0 && gUnknown_03005000.unk_ce8 == 0)
    {
        sub_800FD14(0xED00);
        gSendCmd[1] = gTasks[taskId].data[0];
        gSendCmd[2] = gTasks[taskId].data[1];
        gUnknown_03005000.playerCount -= gUnknown_082ED695[gTasks[taskId].data[0]];
        gSendCmd[3] = gUnknown_03005000.playerCount;
        DestroyTask(taskId);
    }
}

void sub_8011E94(u32 a0, u32 a1)
{
    u8 taskId = FindTaskIdByFunc(sub_8011E2C);
    if (taskId == 0xFF)
    {
        taskId = CreateTask(sub_8011E2C, 5);
        gTasks[taskId].data[0] = a0;
    }
    else
    {
        gTasks[taskId].data[0] |= a0;
    }

    gTasks[taskId].data[1] = a1;
}

void sub_8011EF4(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (sub_800EE94())
    {
        u8 id = sub_8011CE4((u8*)data, ReadU16(&data[8]));
        if (id != 0xFF)
        {
            if (gUnknown_03007890->unk_14[id].unk_02 != 0xFF)
            {
                gUnknown_03005000.unk_c3d = id;
                if (sub_800EEBC())
                    DestroyTask(taskId);
            }
            else if (sub_800F7DC()->unk_0a_0 == 0x15 || sub_800F7DC()->unk_0a_0 == 0x16)
            {
                data[15]++;
            }
            else
            {
                sub_8011A64(2, 0x7000);
                DestroyTask(taskId);
            }
        }
        else
        {
            data[15]++;
            gUnknown_03005000.unk_c3d = id;
        }
    }
    else
    {
        data[15]++;
    }

    if (data[15] > 240)
    {
        sub_8011A64(2, 0x7000);
        DestroyTask(taskId);
    }
}

void sub_8011FC8(const u8 *src, u16 trainerId)
{
    u8 taskId;
    s16 *data;

    gUnknown_03005000.unk_f1 = 0;
    taskId = CreateTask(sub_8011EF4, 3);
    data = gTasks[taskId].data;
    StringCopy((u8*)(data), src);
    data[8] = trainerId;
}

bool32 sub_801200C(s16 a1, struct UnkLinkRfuStruct_02022B14 *structPtr)
{
    if (sub_800F7DC()->unk_0a_0 == 0x45)
    {
        if (structPtr->unk_0a_0 != 0x45)
            return 1;
    }
    else if (structPtr->unk_0a_0 != 0x40)
    {
        return 1;
    }
    else if (a1 == 0x44)
    {
        struct UnkLinkRfuStruct_02022B14 *structPtr2 = &gUnknown_03005000.unk_10A;
        if (structPtr2->species == 412)
        {
            if (structPtr->species == structPtr2->species)
                return 0;
            else
                return 1;
        }
        else if (structPtr->species != structPtr2->species
                 || structPtr->unk_0b_1 != structPtr2->unk_0b_1
                 || structPtr->type != structPtr2->type)
        {
            return 1;
        }
    }

    return 0;
}

void sub_801209C(u8 taskId)
{
    if (gUnknown_03005000.unk_f1 == 4)
        DestroyTask(taskId);

    if (++gTasks[taskId].data[0] > 300)
    {
        sub_8011A64(2, 0x7000);
        DestroyTask(taskId);
    }

    if (gUnknown_03005000.unk_ccd != 0 && gUnknown_03004140.unk_06 == 0)
    {
        u16 trainerId = ReadU16(gUnknown_03005000.unk_10A.unk_00.playerTrainerId);
        u8 id = sub_8011CE4(gUnknown_03005000.playerName, trainerId);
        if (id != 0xFF)
        {
            if (!sub_801200C(gTasks[taskId].data[1], &gUnknown_03007890->unk_14[id].unk_06))
            {
                if (gUnknown_03007890->unk_14[id].unk_02 != 0xFF && !sub_800C12C(gUnknown_03007890->unk_14[id].unk_00, 0x5A))
                {
                    gUnknown_03005000.unk_04 = 0xA;
                    DestroyTask(taskId);
                }
            }
            else
            {
                sub_8011A64(2, 0x7000);
                DestroyTask(taskId);
            }
        }
    }
}

void sub_8012188(const u8 *name, struct UnkLinkRfuStruct_02022B14 *structPtr, u8 a2)
{
    u8 taskId, taskId2;

    gUnknown_03005000.unk_ccf = 0;
    gUnknown_03005000.unk_f1 = 0;
    StringCopy(gUnknown_03005000.playerName, name);
    memcpy(&gUnknown_03005000.unk_10A, structPtr, 0xD);
    sub_800D658();
    taskId = CreateTask(sub_801209C, 2);
    gTasks[taskId].data[1] = a2;
    taskId2 = FindTaskIdByFunc(sub_800EB44);
    if (a2 == 0x45)
    {
        if (taskId2 != 0xFF)
            gTasks[taskId2].data[7] = 1;
    }
    else
    {
        if (taskId2 != 0xFF)
            gTasks[taskId2].data[7] = 0;
    }
}

bool8 sub_8012224(void)
{
    if (gUnknown_03005000.unk_f0 == 1)
        return 1;
    else
        return 0;
}

bool32 sub_8012240(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if ((gUnknown_03004140.unk_00 >> i) & 1 && gUnknown_03005000.unk_cd1[i] == 0)
            return 0;
    }

    return 1;
}

void sub_801227C(void)
{
    s32 i;

    for (i = 0; i < 20; i++)
        nullsub_5(gUnknown_082ED82C, 0, i);
}

void sub_801229C(void)
{
    s32 i, j;

    nullsub_13(GetBlockReceivedStatus(), 0x1C, 0x13, 2);
    nullsub_13(gUnknown_03007890->unk_02, 0x14, 1, 1);
    nullsub_13(gUnknown_03007890->unk_03, 0x17, 1, 1);
    if (gUnknown_03005000.unk_0c == 1)
    {
        for (i = 0; i < 4; i++)
        {
            if ((gUnknown_03007890->unk_07 >> i) & 1)
            {
                nullsub_13(gUnknown_03007890->unk_14[i].unk_04, 1, i + 3, 4);
                nullsub_5((void*) &gUnknown_03007890->unk_14[i].unk_06, 6, i + 3);
                nullsub_5(gUnknown_03007890->unk_14[i].playerName, 0x16, i + 3);
            }
        }
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 14; j++)
            {
                nullsub_13(gUnknown_03005000.unk_14[i][j], j * 2, i + 11, 2);
            }
        }
        nullsub_5(gUnknown_082ED868, 1, 0xF);
    }
    else if (gUnknown_03007890->unk_02 != 0 && gUnknown_03007890->unk_07 != 0)
    {
        for (i = 0; i < 4; i++)
        {
            nullsub_13(0, 1, i + 3, 4);
            nullsub_5(gUnknown_082ED84B, 6, i + 3);
            nullsub_5(gUnknown_082ED85B, 0x16, i + 3);
        }
        nullsub_13(gUnknown_03007890->unk_14[gUnknown_03005000.unk_c3e].unk_04, 1, 3, 4);
        nullsub_5((void*) &gUnknown_03007890->unk_14[gUnknown_03005000.unk_c3e].unk_06, 6, 3);
        nullsub_5(gUnknown_03007890->unk_14[gUnknown_03005000.unk_c3e].playerName, 0x16, 3);
    }
    else
    {
        for (i = 0; i < gUnknown_03007890->unk_08; i++)
        {
            if (gUnknown_03007890->unk_14[i].unk_02 != 0xFF)
            {
                nullsub_13(gUnknown_03007890->unk_14[i].unk_04, 1, i + 3, 4);
                nullsub_13(gUnknown_03007890->unk_14[i].unk_00, 6, i + 3, 4);
                nullsub_5(gUnknown_03007890->unk_14[i].playerName, 0x16, i + 3);
            }
        }
        for (; i < 4; i++)
        {
            nullsub_13(0, 1, i + 3, 4);
            nullsub_5(gUnknown_082ED84B, 6, i + 3);
            nullsub_5(gUnknown_082ED85B, 0x16, i + 3);
        }
    }
}

u32 sub_80124C0(void)
{
    return gUnknown_03005000.unk_9e8.unk_232;
}

u32 GetRfuRecvQueueLength(void)
{
    return gUnknown_03005000.unk_124.unk_8c2;
}
