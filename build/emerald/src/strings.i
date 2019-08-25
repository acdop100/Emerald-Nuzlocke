# 1 "src/strings.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/strings.c"
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
# 2 "src/strings.c" 2
# 1 "include/strings.h" 1



extern const u8 gText_FromSpace[];

extern const u8 gText_Lv50[];
extern const u8 gText_OpenLevel[];

extern const u8 gText_Mom[];
extern const u8 gText_Dad[];

extern const u8 gText_GetsAPokeBlockQuestion[];
extern const u8 gText_WontEatAnymore[];
extern const u8 gText_WasEnhanced[];
extern const u8 gText_NothingChanged[];
extern const u8 gText_NatureSlash[];

extern const u8 gText_Cool[];
extern const u8 gText_Beauty[];
extern const u8 gText_Cute[];
extern const u8 gText_Smart[];
extern const u8 gText_Tough[];

extern const u8 gText_Normal[];
extern const u8 gText_Super[];
extern const u8 gText_Hyper[];
extern const u8 gText_Master[];

extern const u8 gText_Cool2[];
extern const u8 gText_Beauty2[];
extern const u8 gText_Cute2[];
extern const u8 gText_Smart2[];
extern const u8 gText_Tough2[];

extern const u8 gText_Items[];
extern const u8 gText_Key_Items[];
extern const u8 gText_Poke_Balls[];
extern const u8 gText_TMs_Hms[];
extern const u8 gText_Berries2[];

extern const u8 gText_Single2[];
extern const u8 gText_Double2[];
extern const u8 gText_Multi[];
extern const u8 gText_MultiLink[];

extern const u8 gText_Single[];
extern const u8 gText_Double[];

extern const u8 gText_Spicy[];
extern const u8 gText_Dry[];
extern const u8 gText_Sweet[];
extern const u8 gText_Bitter[];
extern const u8 gText_Sour[];

extern const u8 gText_StowCase[];
extern const u8 gText_LvVar1[];

extern const u8 gText_Spicy2[];
extern const u8 gText_Dry2[];
extern const u8 gText_Sweet2[];
extern const u8 gText_Bitter2[];
extern const u8 gText_Sour2[];

extern const u8 gText_Excellent[];
extern const u8 gText_VeryGood[];
extern const u8 gText_Good[];
extern const u8 gText_SoSo[];
extern const u8 gText_Bad[];
extern const u8 gText_TheWorst[];

extern const u8 gText_Slots[];
extern const u8 gText_Roulette[];
extern const u8 gText_Jackpot[];

extern const u8 gText_First[];
extern const u8 gText_Second[];
extern const u8 gText_Third[];

extern const u8 gText_NoDecorations[];
extern const u8 gText_NoDecorationsInUse[];

extern const u8 gText_Exit[];
extern const u8 gText_Cancel[];

extern const u8 gText_ThrowAwayVar1[];
extern const u8 gText_Var1ThrownAway[];

extern const u8 gText_Color161Shadow161[];
extern const u8 gText_GoBackPrevMenu[];
extern const u8 gText_CantPlaceInRoom[];
extern const u8 gText_NoMoreDecorations[];
extern const u8 gText_NoMoreDecorations2[];
extern const u8 gText_InUseAlready[];
extern const u8 gText_CancelDecorating[];
extern const u8 gText_PlaceItHere[];
extern const u8 gText_CantBePlacedHere[];
extern const u8 gText_DecorationReturnedToPC[];
extern const u8 gText_StopPuttingAwayDecorations[];
extern const u8 gText_ReturnDecorationToPC[];
extern const u8 gText_NoDecorationHere[];
extern const u8 gText_DecorationWillBeDiscarded[];
extern const u8 gText_CantThrowAwayInUse[];
extern const u8 gText_DecorationThrownAway[];

extern const u8 gText_PokeBalls[];
extern const u8 gText_Berries[];
extern const u8 gText_Berry[];

extern const u8 gText_Desk[];
extern const u8 gText_Chair[];
extern const u8 gText_Plant[];
extern const u8 gText_Ornament[];
extern const u8 gText_Mat[];
extern const u8 gText_Poster[];

extern const u8 gText_PutOutSelectedDecorItem[];
extern const u8 gText_StoreChosenDecorInPC[];
extern const u8 gText_ThrowAwayUnwantedDecors[];
extern const u8 gText_Doll[];
extern const u8 gText_Cushion[];
extern const u8 gText_Decorate[];
extern const u8 gText_PutAway[];
extern const u8 gText_Toss2[];
extern const u8 gText_Hoenn[];
extern const u8 gText_Ferry[];
extern const u8 gText_SecretBase[];
extern const u8 gText_Hideout[];
extern const u8 gText_FlyToWhere[];
extern const u8 gText_PokemonLeague[];
extern const u8 gText_PokemonCenter[];
extern const u8 gText_ApostropheSBase[];
extern const u8 gText_NoRegistry[];
extern const u8 gText_OkayToDeleteFromRegistry[];
extern const u8 gText_RegisteredDataDeleted[];
extern const u8 gText_DelRegist[];
extern const u8 gText_CommErrorEllipsis[];
extern const u8 gText_MoveCloserToLinkPartner[];
extern const u8 gText_CommErrorCheckConnections[];
extern const u8 gText_ABtnTitleScreen[];
extern const u8 gText_ABtnRegistrationCounter[];
extern const u8 gText_MixingRecords[];
extern const u8 gText_RecordMixingComplete[];
extern const u8 gText_EmptyString2[];
extern const u8 gText_Confirm3[];
extern const u8 gText_Cancel4[];
extern const u8 gText_IsThisTheCorrectTime[];
extern const u8 gText_PkmnFainted3[];
extern const u8 gText_Coins[];
extern const u8 gText_Silver[];
extern const u8 gText_Gold[];

extern const u8 gText_Var1AteTheVar2[];
extern const u8 gText_Var1HappilyAteVar2[];
extern const u8 gText_Var1DisdainfullyAteVar2[];

extern const u8 gText_RedPokeblock[];
extern const u8 gText_BluePokeblock[];
extern const u8 gText_PinkPokeblock[];
extern const u8 gText_GreenPokeblock[];
extern const u8 gText_YellowPokeblock[];
extern const u8 gText_PurplePokeblock[];
extern const u8 gText_IndigoPokeblock[];
extern const u8 gText_BrownPokeblock[];
extern const u8 gText_LiteBluePokeblock[];
extern const u8 gText_OlivePokeblock[];
extern const u8 gText_GrayPokeblock[];
extern const u8 gText_BlackPokeblock[];
extern const u8 gText_WhitePokeblock[];
extern const u8 gText_GoldPokeblock[];

extern const u8 gMenuText_Use[];
extern const u8 gMenuText_Toss[];
extern const u8 gMenuText_Give[];
extern const u8 gMenuText_Give2[];
extern const u8 gMenuText_Register[];
extern const u8 gMenuText_Check[];
extern const u8 gMenuText_Walk[];
extern const u8 gMenuText_Deselect[];
extern const u8 gMenuText_CheckTag[];
extern const u8 gMenuText_Confirm[];
extern const u8 gMenuText_Show[];
extern const u8 gMenuText_Give2[];

extern const u8 gText_WithdrawPokemon[];
extern const u8 gText_WithdrawMonDescription[];
extern const u8 gText_DepositPokemon[];
extern const u8 gText_DepositMonDescription[];
extern const u8 gText_MovePokemon[];
extern const u8 gText_MoveMonDescription[];
extern const u8 gText_MoveItems[];
extern const u8 gText_MoveItemsDescription[];
extern const u8 gText_SeeYa[];
extern const u8 gText_SeeYaDescription[];

extern const u8 gText_EggNickname[];
extern const u8 gText_Pokemon[];
extern const u8 gText_InParty[];
extern const u8 gText_InGameClockUsable[];


extern const u8 gText_Day[];
extern const u8 gText_Colon3[];
extern const u8 gText_Confirm2[];
extern const u8 gText_PresentTime[];
extern const u8 gText_PreviousTime[];
extern const u8 gText_ResetRTCConfirmCancel[];
extern const u8 gText_NoSaveFileCantSetTime[];
extern const u8 gText_PleaseResetTime[];
extern const u8 gText_ClockHasBeenReset[];
extern const u8 gText_SaveCompleted[];
extern const u8 gText_SaveFailed[];


extern const u8 gText_MenuPokedex[];
extern const u8 gText_MenuPokemon[];
extern const u8 gText_MenuBag[];
extern const u8 gText_MenuPokenav[];
extern const u8 gText_MenuPlayer[];
extern const u8 gText_MenuSave[];
extern const u8 gText_MenuOption[];
extern const u8 gText_MenuExit[];
extern const u8 gText_MenuRetire[];
extern const u8 gText_MenuRest[];
extern const u8 gText_Floor1[];
extern const u8 gText_Floor2[];
extern const u8 gText_Floor3[];
extern const u8 gText_Floor4[];
extern const u8 gText_Floor5[];
extern const u8 gText_Floor6[];
extern const u8 gText_Floor7[];
extern const u8 gText_Peak[];
extern const u8 gText_SafariBallStock[];
extern const u8 gText_BattlePyramidFloor[];

extern const u8 gText_MenuOptionPokedex[];
extern const u8 gText_MenuOptionPokemon[];
extern const u8 gText_MenuOptionBag[];
extern const u8 gText_MenuOptionPokenav[];
extern const u8 gText_MenuOptionSave[];
extern const u8 gText_MenuOptionOption[];
extern const u8 gText_MenuOptionExit[];


extern const u8 gText_ConfirmSave[];
extern const u8 gText_DifferentSaveFile[];
extern const u8 gText_AlreadySavedFile[];
extern const u8 gText_SavingDontTurnOff[];
extern const u8 gText_PlayerSavedGame[];
extern const u8 gText_SaveError[];
extern const u8 gText_SavingDontTurnOffPower[];
extern const u8 gText_SavingPlayer[];
extern const u8 gText_SavingBadges[];
extern const u8 gText_SavingPokedex[];
extern const u8 gText_SavingTime[];


extern const u8 gText_BattlePyramidConfirmRest[];
extern const u8 gText_BattlePyramidConfirmRetire[];


extern const u8 gText_TextSpeedSlow[];
extern const u8 gText_TextSpeedMid[];
extern const u8 gText_TextSpeedFast[];
extern const u8 gText_BattleSceneOn[];
extern const u8 gText_BattleSceneOff[];
extern const u8 gText_BattleStyleShift[];
extern const u8 gText_BattleStyleSet[];
extern const u8 gText_SoundMono[];
extern const u8 gText_SoundStereo[];
extern const u8 gText_FrameTypeNumber[];
extern const u8 gText_FrameType[];
extern const u8 gText_ButtonTypeNormal[];
extern const u8 gText_ButtonTypeLR[];
extern const u8 gText_ButtonTypeLEqualsA[];
extern const u8 gText_Option[];
extern const u8 gText_OptionMenu[];
extern const u8 gText_TextSpeed[];
extern const u8 gText_BattleScene[];
extern const u8 gText_BattleStyle[];
extern const u8 gText_Sound[];
extern const u8 gText_Frame[];
extern const u8 gText_OptionMenuCancel[];
extern const u8 gText_ButtonMode[];

extern const u8 gText_MaleSymbol[];
extern const u8 gText_FemaleSymbol[];

extern const u8 gText_SelectorArrow3[];
extern const u8 gText_YesNo[];


extern const u8 gText_SaveFileErased[];
extern const u8 gText_SaveFileCorrupted[];
extern const u8 gJPText_No1MSubCircuit[];
extern const u8 gText_BatteryRunDry[];
extern const u8 gText_MainMenuNewGame[];
extern const u8 gText_MainMenuOption[];
extern const u8 gText_MainMenuContinue[];
extern const u8 gText_MainMenuMysteryGift2[];
extern const u8 gText_MainMenuMysteryEvents[];
extern const u8 gText_MainMenuMysteryGift[];
extern const u8 gText_WirelessNotConnected[];
extern const u8 gText_MysteryGiftCantUse[];
extern const u8 gText_MysteryEventsCantUse[];
extern const u8 gText_Birch_Welcome[];
extern const u8 gText_ThisIsAPokemon[];
extern const u8 gText_Birch_MainSpeech[];
extern const u8 gText_Birch_AndYouAre[];
extern const u8 gText_Birch_BoyOrGirl[];
extern const u8 gText_Birch_WhatsYourName[];
extern const u8 gText_Birch_SoItsPlayer[];
extern const u8 gText_Birch_YourePlayer[];
extern const u8 gText_Birch_AreYouReady[];
extern const u8 gText_ContinueMenuPlayer[];
extern const u8 gText_ContinueMenuTime[];
extern const u8 gText_ContinueMenuPokedex[];
extern const u8 gText_ContinueMenuBadges[];
extern const u8 gText_BirchBoy[];
extern const u8 gText_BirchGirl[];
extern const u8 gText_DefaultNameStu[];
extern const u8 gText_DefaultNameMilton[];
extern const u8 gText_DefaultNameTom[];
extern const u8 gText_DefaultNameKenny[];
extern const u8 gText_DefaultNameReid[];
extern const u8 gText_DefaultNameJude[];
extern const u8 gText_DefaultNameJaxson[];
extern const u8 gText_DefaultNameEaston[];
extern const u8 gText_DefaultNameWalker[];
extern const u8 gText_DefaultNameTeru[];
extern const u8 gText_DefaultNameJohnny[];
extern const u8 gText_DefaultNameBrett[];
extern const u8 gText_DefaultNameSeth[];
extern const u8 gText_DefaultNameTerry[];
extern const u8 gText_DefaultNameCasey[];
extern const u8 gText_DefaultNameDarren[];
extern const u8 gText_DefaultNameLandon[];
extern const u8 gText_DefaultNameCollin[];
extern const u8 gText_DefaultNameStanley[];
extern const u8 gText_DefaultNameQuincy[];
extern const u8 gText_DefaultNameKimmy[];
extern const u8 gText_DefaultNameTiara[];
extern const u8 gText_DefaultNameBella[];
extern const u8 gText_DefaultNameJayla[];
extern const u8 gText_DefaultNameAllie[];
extern const u8 gText_DefaultNameLianna[];
extern const u8 gText_DefaultNameSara[];
extern const u8 gText_DefaultNameMonica[];
extern const u8 gText_DefaultNameCamila[];
extern const u8 gText_DefaultNameAubree[];
extern const u8 gText_DefaultNameRuthie[];
extern const u8 gText_DefaultNameHazel[];
extern const u8 gText_DefaultNameNadine[];
extern const u8 gText_DefaultNameTanja[];
extern const u8 gText_DefaultNameYasmin[];
extern const u8 gText_DefaultNameNicola[];
extern const u8 gText_DefaultNameLillie[];
extern const u8 gText_DefaultNameTerra[];
extern const u8 gText_DefaultNameLucy[];
extern const u8 gText_DefaultNameHalie[];


extern const u8 gText_EventSafelyLoaded[];
extern const u8 gText_LoadErrorEndingSession[];
extern const u8 gText_PressAToLoadEvent[];
extern const u8 gText_LoadingEvent[];
extern const u8 gText_DontRemoveCableTurnOff[];
extern const u8 gText_LinkStandby2[];


extern const u8 gBerryFirmnessString_VerySoft[];
extern const u8 gBerryFirmnessString_Soft[];
extern const u8 gBerryFirmnessString_Hard[];
extern const u8 gBerryFirmnessString_VeryHard[];
extern const u8 gBerryFirmnessString_SuperHard[];
extern const u8 gText_BerryTag[];
extern const u8 gText_UnkF908Var1Var2[];
extern const u8 gText_SizeSlash[];
extern const u8 gText_Var1DotVar2[];
extern const u8 gText_ThreeMarks[];
extern const u8 gText_FirmSlash[];


extern const u8 gText_CloseBag[];
extern const u8 gText_ClearTo11Var1Clear5Var2[];
extern const u8 gText_UnkF908Var1Clear7Var2[];
extern const u8 gText_xVar1[];
extern const u8 gText_ReturnToVar1[];
extern const u8 gText_SelectorArrow2[];
extern const u8 gText_MoveVar1Where[];
extern const u8 gText_Var1IsSelected[];
extern const u8 gText_TossHowManyVar1s[];
extern const u8 gText_ConfirmTossItems[];
extern const u8 gText_ThrewAwayVar2Var1s[];
extern const u8 gText_CantWriteMail[];
extern const u8 gText_NoPokemon[];
extern const u8 gText_Var1CantBeHeld[];
extern const u8 gText_Var1CantBeHeldHere[];
extern const u8 gText_CantBuyKeyItem[];
extern const u8 gText_HowManyToSell[];
extern const u8 gText_ICanPayVar1[];
extern const u8 gText_TurnedOverVar1ForVar2[];
extern const u8 gText_DepositHowManyVar1[];
extern const u8 gText_CantStoreImportantItems[];
extern const u8 gText_DepositedVar2Var1s[];
extern const u8 gText_NoRoomForItems[];
extern const u8 gText_ThreeDashes[];


extern const u8 gText_PkmnHPRestoredByVar2[];
extern const u8 gText_CantBeUsedOnPkmn[];
extern const u8 gText_CancelParticipation[];
extern const u8 gText_PkmnWasGivenItem[];
extern const u8 gText_ReceivedItemFromPkmn[];
extern const u8 gText_SwitchPkmnItem[];
extern const u8 gText_SwitchedPkmnItem[];
extern const u8 gText_BagFullCouldNotRemoveItem[];
extern const u8 gText_PkmnCantParticipate[];
extern const u8 gText_PkmnNotHolding[];
extern const u8 gText_ThrowAwayItem[];
extern const u8 gText_ItemThrownAway[];
extern const u8 gText_SendMailToPC[];
extern const u8 gText_MailSentToPC[];
extern const u8 gText_PCMailboxFull[];
extern const u8 gText_MailMessageWillBeLost[];
extern const u8 gText_MailTakenFromPkmn[];
extern const u8 gText_NoMoreThanVar1Pkmn[];
extern const u8 gText_PkmnCantBeTradedNow[];
extern const u8 gText_EggCantBeTradedNow[];
extern const u8 gText_OnlyPkmnForBattle[];
extern const u8 gJPText_PutVar1IntoSpinner[];
extern const u8 gText_PauseUntilPress[];
extern const u8 gText_CantUseUntilNewBadge[];
extern const u8 gText_ReturnToHealingSpot[];
extern const u8 gText_EscapeFromHere[];
extern const u8 gText_PkmnCuredOfPoison[];
extern const u8 gText_PkmnWokeUp2[];
extern const u8 gText_PkmnBurnHealed[];
extern const u8 gText_PkmnThawedOut[];
extern const u8 gText_PkmnCuredOfParalysis[];
extern const u8 gText_PkmnGotOverInfatuation[];
extern const u8 gText_PkmnBecameHealthy[];
extern const u8 gText_HP3[];
extern const u8 gText_SpAtk3[];
extern const u8 gText_SpDef3[];
extern const u8 gText_PkmnBaseVar2StatIncreased[];
extern const u8 gText_MovesPPIncreased[];
extern const u8 gText_PPWasRestored[];
extern const u8 gText_WontHaveEffect[];
extern const u8 gText_PkmnSnappedOutOfConfusion[];
extern const u8 gText_PkmnFriendlyBaseVar2Fell[];
extern const u8 gText_PkmnFriendlyBaseVar2CantFall[];
extern const u8 gText_PkmnAdoresBaseVar2Fell[];
extern const u8 gText_PkmnAlreadyKnows[];
extern const u8 gText_PkmnCantLearnMove[];
extern const u8 gText_PkmnNeedsToReplaceMove[];
extern const u8 gText_PkmnLearnedMove3[];
extern const u8 gText_WhichMoveToForget[];
extern const u8 gText_12PoofForgotMove[];
extern const u8 gText_StopLearningMove2[];
extern const u8 gText_MoveNotLearned[];
extern const u8 gText_PkmnElevatedToLvVar2[];
extern const u8 gText_RemoveMailBeforeItem[];
extern const u8 gText_PkmnHoldingItemCantHoldMail[];
extern const u8 gText_MailTransferredFromMailbox[];
extern const u8 gText_CancelBattle[];
extern const u8 gText_ReturnToWaitingRoom[];
extern const u8 gText_CancelChallenge[];
extern const u8 gText_CantSwitchWithAlly[];
extern const u8 gText_PkmnHasNoEnergy[];
extern const u8 gText_EggCantBattle[];
extern const u8 gText_PkmnAlreadySelected[];
extern const u8 gText_PkmnAlreadyInBattle[];
extern const u8 gText_PkmnCantSwitchOut[];
extern const u8 gUnknown_085EEA46[];
extern const u8 gUnknown_085EEA4E[];
extern const u8 gUnknown_085EEA55[];
extern const u8 gUnknown_085EEA63[];
extern const u8 gUnknown_085EEA6B[];
extern const u8 gUnknown_085EEA5D[];
extern const u8 gText_Dash[];
extern const u8 gText_UnkCtrlF904[];


extern const u8 gText_CryOf[];
extern const u8 gText_SizeComparedTo[];
extern const u8 gText_PokedexRegistration[];
extern const u8 gText_UnkCtrlF908Clear01[];
extern const u8 gText_5MarksPokemon[];
extern const u8 gText_UnkHeight[];
extern const u8 gText_UnkWeight[];
extern const u8 gText_HTHeight[];
extern const u8 gText_WTWeight[];
extern const u8 gText_SearchingPleaseWait[];
extern const u8 gText_SearchCompleted[];
extern const u8 gUnknown_085E8785[];
extern const u8 gText_SelectorArrow[];


extern const u8 gBirchDexRatingText_LessThan10[];
extern const u8 gBirchDexRatingText_LessThan20[];
extern const u8 gBirchDexRatingText_LessThan30[];
extern const u8 gBirchDexRatingText_LessThan40[];
extern const u8 gBirchDexRatingText_LessThan50[];
extern const u8 gBirchDexRatingText_LessThan60[];
extern const u8 gBirchDexRatingText_LessThan70[];
extern const u8 gBirchDexRatingText_LessThan80[];
extern const u8 gBirchDexRatingText_LessThan90[];
extern const u8 gBirchDexRatingText_LessThan100[];
extern const u8 gBirchDexRatingText_LessThan110[];
extern const u8 gBirchDexRatingText_LessThan120[];
extern const u8 gBirchDexRatingText_LessThan130[];
extern const u8 gBirchDexRatingText_LessThan140[];
extern const u8 gBirchDexRatingText_LessThan150[];
extern const u8 gBirchDexRatingText_LessThan160[];
extern const u8 gBirchDexRatingText_LessThan170[];
extern const u8 gBirchDexRatingText_LessThan180[];
extern const u8 gBirchDexRatingText_LessThan190[];
extern const u8 gBirchDexRatingText_LessThan200[];
extern const u8 gBirchDexRatingText_DexCompleted[];


extern const u8 gText_WhatWouldYouLike[];
extern const u8 gText_NoMailHere[];

extern const u8 gText_TakeOutItemsFromPC[];
extern const u8 gText_StoreItemsInPC[];
extern const u8 gText_ThrowAwayItemsInPC[];
extern const u8 gText_GoBackPrevMenu[];

extern const u8 gText_ItemStorage[];
extern const u8 gText_Mailbox[];
extern const u8 gText_Decoration[];
extern const u8 gText_TurnOff[];

extern const u8 gText_WithdrawItem[];
extern const u8 gText_DepositItem[];
extern const u8 gText_TossItem[];
extern const u8 gText_Cancel[];

extern const u8 gText_Read[];
extern const u8 gText_MoveToBag[];
extern const u8 gText_Give2[];
extern const u8 gText_Cancel2[];

extern const u8 gText_NoItems[];
extern const u8 gText_WhatToDoWithVar1sMail[];
extern const u8 gText_MessageWillBeLost[];
extern const u8 gText_BagIsFull[];

extern const u8 gText_MailToBagMessageErased[];
extern const u8 gText_GoBackPrevMenu[];
extern const u8 gText_WithdrawHowManyItems[];
extern const u8 gText_WithdrawXItems[];
extern const u8 gText_TossHowManyVar1s[];
extern const u8 gText_ThrewAwayVar2Var1s[];
extern const u8 gText_NoRoomInBag[];
extern const u8 gText_TooImportantToToss[];
extern const u8 gText_ConfirmTossItems[];
extern const u8 gText_MoveVar1Where[];

extern const u8 gText_ColorLightShadowDarkGrey[];
extern const u8 gText_ColorBlue[];
extern const u8 gText_Friend[];
extern const u8 gText_Tristan[];
extern const u8 gText_Philip[];
extern const u8 gText_Dennis[];
extern const u8 gText_Roberto[];
extern const u8 gText_FiveMarks[];

extern const u8 gText_TotalRecordWLD[];
extern const u8 gText_PlayersBattleResults[];
extern const u8 gText_WinLoseDraw[];
extern const u8 gText_ColorTransparent[];
extern const u8 gText_Slash[];

extern const u8 gText_99TimesPlus[];
extern const u8 gText_1MinutePlus[];
extern const u8 gText_SpaceSeconds[];
extern const u8 gText_SpaceTimes[];

extern const u8 gText_BigGuy[];
extern const u8 gText_BigGirl[];
extern const u8 gText_Son[];
extern const u8 gText_Daughter[];

extern const u8 gText_1F[];
extern const u8 gText_2F[];
extern const u8 gText_3F[];
extern const u8 gText_4F[];
extern const u8 gText_5F[];
extern const u8 gText_6F[];
extern const u8 gText_7F[];
extern const u8 gText_8F[];
extern const u8 gText_9F[];
extern const u8 gText_10F[];
extern const u8 gText_11F[];
extern const u8 gText_B1F[];
extern const u8 gText_B2F[];
extern const u8 gText_B3F[];
extern const u8 gText_B4F[];
extern const u8 gText_Rooftop[];
extern const u8 gText_ElevatorNowOn[];

extern const u8 gText_Exit[];

extern const u8 gText_BlueFlute[];
extern const u8 gText_YellowFlute[];
extern const u8 gText_RedFlute[];
extern const u8 gText_WhiteFlute[];
extern const u8 gText_BlackFlute[];
extern const u8 gText_PrettyChair[];
extern const u8 gText_PrettyDesk[];
extern const u8 gText_Exit[];

extern const u8 gText_0Pts[];
extern const u8 gText_10Pts[];
extern const u8 gText_20Pts[];
extern const u8 gText_30Pts[];
extern const u8 gText_40Pts[];
extern const u8 gText_50Pts[];
extern const u8 gText_60Pts[];
extern const u8 gText_70Pts[];
extern const u8 gText_80Pts[];
extern const u8 gText_90Pts[];
extern const u8 gText_100Pts[];
extern const u8 gText_QuestionMark[];

extern const u8 gText_KissPoster16BP[];
extern const u8 gText_KissCushion32BP[];
extern const u8 gText_SmoochumDoll32BP[];
extern const u8 gText_TogepiDoll48BP[];
extern const u8 gText_MeowthDoll48BP[];
extern const u8 gText_ClefairyDoll48BP[];
extern const u8 gText_DittoDoll48BP[];
extern const u8 gText_CyndaquilDoll80BP[];
extern const u8 gText_ChikoritaDoll80BP[];
extern const u8 gText_TotodileDoll80BP[];
extern const u8 gText_Exit[];

extern const u8 gText_LaprasDoll128BP[];
extern const u8 gText_SnorlaxDoll128BP[];
extern const u8 gText_VenusaurDoll256BP[];
extern const u8 gText_CharizardDoll256BP[];
extern const u8 gText_BlastoiseDoll256BP[];
extern const u8 gText_Exit[];

extern const u8 gText_Protein1BP[];
extern const u8 gText_Calcium1BP[];
extern const u8 gText_Iron1BP[];
extern const u8 gText_Zinc1BP[];
extern const u8 gText_Carbos1BP[];
extern const u8 gText_HpUp1BP[];
extern const u8 gText_Exit[];

extern const u8 gText_Leftovers48BP[];
extern const u8 gText_WhiteHerb48BP[];
extern const u8 gText_QuickClaw48BP[];
extern const u8 gText_MentalHerb48BP[];
extern const u8 gText_BrightPowder64BP[];
extern const u8 gText_ChoiceBand64BP[];
extern const u8 gText_KingsRock64BP[];
extern const u8 gText_FocusBand64BP[];
extern const u8 gText_ScopeLens64BP[];
extern const u8 gText_Exit[];

extern const u8 gText_EnergyPowder50[];
extern const u8 gText_EnergyRoot80[];
extern const u8 gText_HealPowder50[];
extern const u8 gText_RevivalHerb300[];
extern const u8 gText_Protein1000[];
extern const u8 gText_Iron1000[];
extern const u8 gText_Carbos1000[];
extern const u8 gText_Calcium1000[];
extern const u8 gText_Zinc1000[];
extern const u8 gText_HPUp1000[];
extern const u8 gText_PPUp3000[];
extern const u8 gText_Exit[];

extern const u8 gText_BattleTower2[];
extern const u8 gText_BattleDome[];
extern const u8 gText_BattlePalace[];
extern const u8 gText_BattleArena[];
extern const u8 gText_BattleFactory[];
extern const u8 gText_BattlePike[];
extern const u8 gText_BattlePyramid[];
extern const u8 gText_RankingHall[];
extern const u8 gText_ExchangeService[];
extern const u8 gText_Exit[];

extern const u8 gText_Softboiled16BP[];
extern const u8 gText_SeismicToss24BP[];
extern const u8 gText_DreamEater24BP[];
extern const u8 gText_MegaPunch24BP[];
extern const u8 gText_MegaKick48BP[];
extern const u8 gText_BodySlam48BP[];
extern const u8 gText_RockSlide48BP[];
extern const u8 gText_Counter48BP[];
extern const u8 gText_ThunderWave48BP[];
extern const u8 gText_SwordsDance48BP[];
extern const u8 gText_Exit[];

extern const u8 gText_DefenseCurl16BP[];
extern const u8 gText_Snore24BP[];
extern const u8 gText_MudSlap24BP[];
extern const u8 gText_Swift24BP[];
extern const u8 gText_IcyWind24BP[];
extern const u8 gText_Endure48BP[];
extern const u8 gText_PsychUp48BP[];
extern const u8 gText_IcePunch48BP[];
extern const u8 gText_ThunderPunch48BP[];
extern const u8 gText_FirePunch48BP[];
extern const u8 gText_Exit[];

extern const u8 gText_SlateportCity[];
extern const u8 gText_BattleFrontier[];
extern const u8 gText_SouthernIsland[];
extern const u8 gText_NavelRock[];
extern const u8 gText_BirthIsland[];
extern const u8 gText_FarawayIsland[];
extern const u8 gText_Exit[];

extern const u8 gText_BattleTrainers[];
extern const u8 gText_BattleBasics[];
extern const u8 gText_PokemonNature[];
extern const u8 gText_PokemonMoves[];
extern const u8 gText_Underpowered[];
extern const u8 gText_WhenInDanger[];
extern const u8 gText_Exit[];

extern const u8 BattleFrontier_Lounge2_Text_260971[];
extern const u8 BattleFrontier_Lounge2_Text_260A1E[];
extern const u8 BattleFrontier_Lounge2_Text_260AE7[];
extern const u8 BattleFrontier_Lounge2_Text_2619AC[];
extern const u8 BattleFrontier_Lounge2_Text_261A91[];
extern const u8 BattleFrontier_Lounge2_Text_261B0C[];
extern const u8 BattleFrontier_Lounge2_Text_261B95[];
extern const u8 BattleFrontier_Lounge2_Text_261B95[];
extern const u8 BattleFrontier_Lounge2_Text_261B95[];
extern const u8 BattleFrontier_Lounge2_Text_261C1A[];
extern const u8 BattleFrontier_Lounge2_Text_261C1A[];
extern const u8 BattleFrontier_Lounge2_Text_261C1A[];
extern const u8 BattleFrontier_Lounge2_Text_260BC4[];
extern const u8 BattleFrontier_Lounge2_Text_260C6D[];
extern const u8 BattleFrontier_Lounge2_Text_260D3A[];
extern const u8 BattleFrontier_Lounge2_Text_260E1E[];
extern const u8 BattleFrontier_Lounge2_Text_260EC7[];
extern const u8 BattleFrontier_Lounge2_Text_260F74[];
extern const u8 BattleFrontier_Lounge2_Text_2614E6[];
extern const u8 BattleFrontier_Lounge2_Text_261591[];
extern const u8 BattleFrontier_Lounge2_Text_26166F[];
extern const u8 BattleFrontier_Lounge2_Text_261282[];
extern const u8 BattleFrontier_Lounge2_Text_261329[];
extern const u8 BattleFrontier_Lounge2_Text_261403[];
extern const u8 BattleFrontier_Lounge2_Text_261026[];
extern const u8 BattleFrontier_Lounge2_Text_2610CC[];
extern const u8 BattleFrontier_Lounge2_Text_261194[];
extern const u8 BattleFrontier_Lounge2_Text_26174D[];
extern const u8 BattleFrontier_Lounge2_Text_2617F9[];
extern const u8 BattleFrontier_Lounge2_Text_2618C4[];

extern const u8 BattleFrontier_Lounge5_Text_26468D[];
extern const u8 BattleFrontier_Lounge5_Text_2646E5[];
extern const u8 BattleFrontier_Lounge5_Text_264741[];
extern const u8 BattleFrontier_Lounge5_Text_2647A4[];
extern const u8 BattleFrontier_Lounge5_Text_2647FC[];
extern const u8 BattleFrontier_Lounge5_Text_264858[];
extern const u8 BattleFrontier_Lounge5_Text_2648BE[];
extern const u8 BattleFrontier_Lounge5_Text_264916[];
extern const u8 BattleFrontier_Lounge5_Text_264972[];
extern const u8 BattleFrontier_Lounge5_Text_2649D5[];
extern const u8 BattleFrontier_Lounge5_Text_264A3F[];
extern const u8 BattleFrontier_Lounge5_Text_264A9B[];
extern const u8 BattleFrontier_Lounge5_Text_264AF3[];
extern const u8 BattleFrontier_Lounge5_Text_264B5D[];
extern const u8 BattleFrontier_Lounge5_Text_2648BE[];
extern const u8 BattleFrontier_Lounge5_Text_264BC3[];
extern const u8 BattleFrontier_Lounge5_Text_264C36[];
extern const u8 BattleFrontier_Lounge5_Text_2648BE[];
extern const u8 BattleFrontier_Lounge5_Text_264C95[];
extern const u8 BattleFrontier_Lounge5_Text_264D01[];
extern const u8 BattleFrontier_Lounge5_Text_264D6B[];
extern const u8 BattleFrontier_Lounge5_Text_264DD7[];
extern const u8 BattleFrontier_Lounge5_Text_264E33[];
extern const u8 BattleFrontier_Lounge5_Text_264E8F[];
extern const u8 BattleFrontier_Lounge5_Text_2648BE[];

extern const u8 BattleFrontier_Lounge3_Text_262261[];
extern const u8 BattleFrontier_Lounge3_Text_26230D[];
extern const u8 BattleFrontier_Lounge3_Text_2623B9[];
extern const u8 BattleFrontier_Lounge3_Text_262464[];
extern const u8 BattleFrontier_Lounge3_Text_26250E[];
extern const u8 BattleFrontier_Lounge3_Text_2625B8[];
extern const u8 BattleFrontier_Lounge3_Text_26266A[];
extern const u8 BattleFrontier_Lounge3_Text_26271C[];
extern const u8 BattleFrontier_Lounge3_Text_2627C9[];
extern const u8 BattleFrontier_Lounge3_Text_262876[];
extern const u8 BattleFrontier_Lounge3_Text_26291A[];
extern const u8 BattleFrontier_Lounge3_Text_2629BC[];

extern const u8 BattleFrontier_Lounge3_Text_262C04[];
extern const u8 BattleFrontier_Lounge3_Text_262C90[];
extern const u8 BattleFrontier_Lounge3_Text_262D1C[];
extern const u8 BattleFrontier_Lounge3_Text_262DA7[];
extern const u8 BattleFrontier_Lounge3_Text_262E34[];
extern const u8 BattleFrontier_Lounge3_Text_262EC1[];
extern const u8 BattleFrontier_Lounge3_Text_262F56[];
extern const u8 BattleFrontier_Lounge3_Text_262FEB[];
extern const u8 BattleFrontier_Lounge3_Text_263078[];
extern const u8 BattleFrontier_Lounge3_Text_263105[];
extern const u8 BattleFrontier_Lounge3_Text_26318C[];
extern const u8 BattleFrontier_Lounge3_Text_263211[];

extern const u8 gText_BP[];

extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2601AA[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2601D0[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_260201[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26022F[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26025B[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_260287[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2602B5[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2602E0[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26030F[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26033E[];

extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26036C[];

extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_260397[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2603BE[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2603E6[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26040E[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_260436[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26045C[];

extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26047A[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2604AC[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2604D8[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_26050F[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_260542[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_260575[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2605A8[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_2605E2[];
extern const u8 BattleFrontier_BattlePointExchangeServiceCorner_Text_260613[];

extern const u8 BattleFrontier_Lounge7_Text_265E30[];
extern const u8 BattleFrontier_Lounge7_Text_265E5B[];
extern const u8 BattleFrontier_Lounge7_Text_265E8A[];
extern const u8 BattleFrontier_Lounge7_Text_265EC0[];
extern const u8 BattleFrontier_Lounge7_Text_265EED[];
extern const u8 BattleFrontier_Lounge7_Text_265F1C[];
extern const u8 BattleFrontier_Lounge7_Text_265F47[];
extern const u8 BattleFrontier_Lounge7_Text_265F77[];
extern const u8 BattleFrontier_Lounge7_Text_265FAA[];
extern const u8 BattleFrontier_Lounge7_Text_265FDD[];

extern const u8 BattleFrontier_Lounge7_Text_26600A[];
extern const u8 BattleFrontier_Lounge7_Text_26603E[];
extern const u8 BattleFrontier_Lounge7_Text_266070[];
extern const u8 BattleFrontier_Lounge7_Text_2660A6[];
extern const u8 BattleFrontier_Lounge7_Text_2660D0[];
extern const u8 BattleFrontier_Lounge7_Text_2660FF[];
extern const u8 BattleFrontier_Lounge7_Text_26612D[];
extern const u8 BattleFrontier_Lounge7_Text_26615F[];
extern const u8 BattleFrontier_Lounge7_Text_266185[];
extern const u8 BattleFrontier_Lounge7_Text_2661B5[];

extern const u8 gText_YourPartnerHasRetired[];

extern const u8 gText_Wallace[];
extern const u8 gText_Steven[];
extern const u8 gText_Brawly[];
extern const u8 gText_Winona[];
extern const u8 gText_Phoebe[];
extern const u8 gText_Glacia[];

extern const u8 gText_MoveRelearnerPkmnLearnedMove[];
extern const u8 gText_MoveRelearnerPkmnTryingToLearnMove[];
extern const u8 gText_MoveRelearnerWhichMoveToForget[];
extern const u8 gText_MoveRelearnerStopTryingToTeachMove[];
extern const u8 gText_MoveRelearnerAndPoof[];
extern const u8 gText_MoveRelearnerPkmnForgotMoveAndLearnedNew[];
extern const u8 gText_TeachWhichMoveToPkmn[];
extern const u8 gText_MoveRelearnerGiveUp[];
extern const u8 gText_MoveRelearnerTeachMoveConfirm[];
extern const u8 gText_MoveRelearnerBattleMoves[];
extern const u8 gText_MoveRelearnerPP[];
extern const u8 gText_MoveRelearnerPower[];
extern const u8 gText_MoveRelearnerAccuracy[];
extern const u8 gText_MoveRelearnerContestMovesTitle[];
extern const u8 gText_MoveRelearnerAppeal[];
extern const u8 gText_MoveRelearnerJam[];

extern const u8 gText_Kira[];
extern const u8 gText_Amy[];
extern const u8 gText_John[];
extern const u8 gText_Roy[];
extern const u8 gText_Gabby[];
extern const u8 gText_Anna[];

extern const u8 gText_DadsAdvice[];
extern const u8 gText_CantDismountBike[];
extern const u8 gText_ItemFinderNothing[];
extern const u8 gText_ItemFinderNearby[];
extern const u8 gText_ItemFinderOnTop[];
extern const u8 gText_CoinCase[];
extern const u8 gText_PowderQty[];
extern const u8 gText_BootedUpHM[];
extern const u8 gText_BootedUpTM[];
extern const u8 gText_TMHMContainedVar1[];
extern const u8 gText_PlayerUsedVar2[];
extern const u8 gText_RepelEffectsLingered[];
extern const u8 gText_UsedVar2WildLured[];
extern const u8 gText_UsedVar2WildRepelled[];
extern const u8 gText_BoxFull[];
extern const u8 gText_WontHaveEffect[];

extern const u8 gText_LevelSymbol[];
extern const u8 gText_PkmnInfo[];
extern const u8 gText_PkmnSkills[];
extern const u8 gText_BattleMoves[];
extern const u8 gText_ContestMoves[];
extern const u8 gText_HMMovesCantBeForgotten2[];
extern const u8 gText_Info[];
extern const u8 gText_Switch[];
extern const u8 gText_RentalPkmn[];
extern const u8 gText_TypeSlash[];
extern const u8 gText_HP4[];
extern const u8 gText_Attack3[];
extern const u8 gText_Defense3[];
extern const u8 gText_SpAtk4[];
extern const u8 gText_SpDef4[];
extern const u8 gText_Speed2[];
extern const u8 gText_ExpPoints[];
extern const u8 gText_NextLv[];
extern const u8 gText_Status[];
extern const u8 gText_Power[];
extern const u8 gText_Accuracy2[];
extern const u8 gText_Appeal[];
extern const u8 gText_Jam[];
extern const u8 gText_OTSlash[];
extern const u8 gText_UnkCtrlF907F908[];
extern const u8 gText_XNature[];
extern const u8 gText_XNatureHatchedAtYZ[];
extern const u8 gText_XNatureHatchedSomewhereAt[];
extern const u8 gText_XNatureMetAtYZ[];
extern const u8 gText_XNatureMetSomewhereAt[];
extern const u8 gText_XNatureFatefulEncounter[];
extern const u8 gText_XNatureProbablyMetAt[];
extern const u8 gText_XNatureObtainedInTrade[];
extern const u8 gText_EmptyString5[];
extern const u8 gText_EggWillTakeALongTime[];
extern const u8 gText_EggAboutToHatch[];
extern const u8 gText_EggWillHatchSoon[];
extern const u8 gText_EggWillTakeSomeTime[];
extern const u8 gText_PeculiarEggNicePlace[];
extern const u8 gText_PeculiarEggTrade[];
extern const u8 gText_EggFromTraveler[];
extern const u8 gText_EggFromHotSprings[];
extern const u8 gText_OddEggFoundByCouple[];
extern const u8 gText_None[];
extern const u8 gText_RibbonsVar1[];
extern const u8 gText_OneDash[];
extern const u8 gText_TwoDashes[];

extern const u8 *const gReturnToXStringsTable2[];

extern const u8 gText_XPLink[];
extern const u8 gText_ConfirmLinkWhenPlayersReady[];
extern const u8 gText_ConfirmStartLinkWithXPlayers[];
extern const u8 gText_AwaitingLinkup[];
extern const u8 gText_PleaseWaitForLink[];
extern const u8 gText_BronzeCard[];
extern const u8 gText_CopperCard[];
extern const u8 gText_SilverCard[];
extern const u8 gText_GoldCard[];

extern const u8 gText_CanIHelpWithAnythingElse[];
extern const u8 gText_AnythingElseICanHelp[];
extern const u8 gText_QuitShopping[];
extern const u8 gText_PokedollarVar1[];
extern const u8 gText_YouDontHaveMoney[];
extern const u8 gText_Var1CertainlyHowMany2[];
extern const u8 gText_Var1CertainlyHowMany[];
extern const u8 gText_Var1IsItThatllBeVar2[];
extern const u8 gText_YouWantedVar1ThatllBeVar2[];
extern const u8 gText_InBagVar1[];
extern const u8 gText_Var1AndYouWantedVar2[];
extern const u8 gText_HereYouGoThankYou[];
extern const u8 gText_NoMoreRoomForThis[];
extern const u8 gText_ThankYouIllSendItHome[];
extern const u8 gText_ThanksIllSendItHome[];
extern const u8 gText_SpaceForVar1Full[];
extern const u8 gText_ThrowInPremierBall[];
extern const u8 gText_ShopBuy[];
extern const u8 gText_ShopSell[];
extern const u8 gText_ShopQuit[];

extern const u8 gText_OhABite[];
extern const u8 gText_PokemonOnHook[];
extern const u8 gText_NotEvenANibble[];
extern const u8 gText_ItGotAway[];

extern const u8 gText_HallOfFame[];
extern const u8 gText_LogOff[];
extern const u8 gText_LanettesPC[];
extern const u8 gText_SomeonesPC[];
extern const u8 gText_PlayersPC[];
extern const u8 gText_WhichPCShouldBeAccessed[];

extern const u8 gText_PokenavMatchCall_Strategy[];
extern const u8 gText_PokenavMatchCall_TrainerPokemon[];
extern const u8 gText_PokenavMatchCall_SelfIntroduction[];
extern const u8 gText_Pokenav_ClearButtonList[];
extern const u8 gText_PokenavMap_ZoomedOutButtons[];
extern const u8 gText_PokenavMap_ZoomedInButtons[];
extern const u8 gText_PokenavCondition_MonListButtons[];
extern const u8 gText_PokenavCondition_MonStatusButtons[];
extern const u8 gText_PokenavCondition_MarkingButtons[];
extern const u8 gText_PokenavMatchCall_TrainerListButtons[];
extern const u8 gText_PokenavMatchCall_CallMenuButtons[];
extern const u8 gText_PokenavMatchCall_CheckTrainerButtons[];
extern const u8 gText_PokenavRibbons_MonListButtons[];
extern const u8 gText_PokenavRibbons_RibbonListButtons[];
extern const u8 gText_PokenavRibbons_RibbonCheckButtons[];
extern const u8 gText_Number2[];

extern const u8 gUnknown_085EAD37[];
extern const u8 gUnknown_085EAD41[];
extern const u8 gUnknown_085EAD67[];
extern const u8 gUnknown_085EAD6D[];
extern const u8 gUnknown_085EAD72[];
extern const u8 gUnknown_085EAD84[];
extern const u8 gUnknown_085EAD96[];
extern const u8 gUnknown_085EADA4[];
extern const u8 gUnknown_085EADB5[];
extern const u8 gUnknown_085EADC4[];
extern const u8 gUnknown_085EADD5[];
extern const u8 gUnknown_085EADE7[];
extern const u8 gUnknown_085EADF9[];
extern const u8 gUnknown_085EAE04[];
extern const u8 gUnknown_085EAE12[];
extern const u8 gUnknown_085EAE1B[];
extern const u8 gUnknown_085EAE27[];
extern const u8 gUnknown_085EAE2C[];
extern const u8 gUnknown_085EAE31[];
extern const u8 gUnknown_085EAE35[];
extern const u8 gUnknown_085EAE39[];
extern const u8 gUnknown_085EAE3D[];
extern const u8 gUnknown_085EAE41[];
extern const u8 gUnknown_085EAD5F[];
extern const u8 gUnknown_085EAE53[];
extern const u8 gUnknown_085EAE5A[];
extern const u8 gText_Yes[];
extern const u8 gText_No[];
extern const u8 gUnknown_085EAEA2[];
extern const u8 gUnknown_085EAEAC[];
extern const u8 gUnknown_0827ECBC[];
extern const u8 gUnknown_0827ECC3[];
extern const u8 gUnknown_0827ECCD[];
extern const u8 gUnknown_0827ECD5[];
extern const u8 gUnknown_0827ECDD[];
extern const u8 gUnknown_0827ECE3[];
extern const u8 gUnknown_0827ECEB[];
extern const u8 gUnknown_0827ECF2[];
extern const u8 gUnknown_0827ECF8[];
extern const u8 gUnknown_0827ED00[];
extern const u8 gUnknown_0827ED06[];
extern const u8 gUnknown_0827ED10[];
extern const u8 gUnknown_0827ED18[];
extern const u8 gUnknown_0827ED22[];
extern const u8 gUnknown_0827ED2C[];
extern const u8 gUnknown_0827ED36[];
extern const u8 gUnknown_0827ED40[];
extern const u8 gUnknown_0827ED46[];
extern const u8 gUnknown_0827ED4F[];
extern const u8 gUnknown_0827ED59[];
extern const u8 gUnknown_0827ED65[];
extern const u8 gUnknown_0827ED70[];
extern const u8 gUnknown_0827ED74[];
extern const u8 gUnknown_0827ED78[];
extern const u8 gUnknown_0827ED80[];
extern const u8 gUnknown_0827ED95[];
extern const u8 gUnknown_0827EDAA[];
extern const u8 gUnknown_0827EDB5[];
extern const u8 gUnknown_0827EDBA[];
extern const u8 gUnknown_0827EDC1[];
extern const u8 gUnknown_0827EDC9[];
extern const u8 gUnknown_0827EDD5[];
extern const u8 gUnknown_0827EDE4[];
extern const u8 gUnknown_0827EDF0[];
extern const u8 gUnknown_0827EDF5[];
extern const u8 gUnknown_0827EDF7[];
extern const u8 gUnknown_0827EDF9[];
extern const u8 gUnknown_0827EDFB[];
extern const u8 gUnknown_0827EDFD[];
extern const u8 gUnknown_0827EDFF[];
extern const u8 gUnknown_0827EE01[];
extern const u8 gUnknown_0827EE03[];
extern const u8 gUnknown_0827EE05[];
extern const u8 gUnknown_0827EE07[];
extern const u8 gUnknown_0827EE09[];


extern const u8 gUnknown_085E87A5[];
extern const u8 gUnknown_085E87D6[];
extern const u8 gUnknown_085E87EF[];
extern const u8 gUnknown_085E8806[];
extern const u8 gUnknown_085E881F[];
extern const u8 gUnknown_085E8840[];
extern const u8 gUnknown_085E887C[];
extern const u8 gUnknown_085E88A6[];
extern const u8 gUnknown_085E88C8[];
extern const u8 gText_DexHoennTitle[];
extern const u8 gText_DexNatTitle[];
extern const u8 gText_DexSortNumericalTitle[];
extern const u8 gText_DexSortAtoZTitle[];
extern const u8 gText_DexSortHeaviestTitle[];
extern const u8 gText_DexSortLightestTitle[];
extern const u8 gText_DexSortTallestTitle[];
extern const u8 gText_DexSortSmallestTitle[];
extern const u8 gText_DexSearchAlphaABC[];
extern const u8 gText_DexSearchAlphaDEF[];
extern const u8 gText_DexSearchAlphaGHI[];
extern const u8 gText_DexSearchAlphaJKL[];
extern const u8 gText_DexSearchAlphaMNO[];
extern const u8 gText_DexSearchAlphaPQR[];
extern const u8 gText_DexSearchAlphaSTU[];
extern const u8 gText_DexSearchAlphaVWX[];
extern const u8 gText_DexSearchAlphaYZ[];
extern const u8 gText_DexSearchColorRed[];
extern const u8 gText_DexSearchColorBlue[];
extern const u8 gText_DexSearchColorYellow[];
extern const u8 gText_DexSearchColorGreen[];
extern const u8 gText_DexSearchColorBlack[];
extern const u8 gText_DexSearchColorBrown[];
extern const u8 gText_DexSearchColorPurple[];
extern const u8 gText_DexSearchColorGray[];
extern const u8 gText_DexSearchColorWhite[];
extern const u8 gText_DexSearchColorPink[];
extern const u8 gText_DexHoennDescription[];
extern const u8 gText_DexNatDescription[];
extern const u8 gText_DexSortNumericalDescription[];
extern const u8 gText_DexSortAtoZDescription[];
extern const u8 gText_DexSortHeaviestDescription[];
extern const u8 gText_DexSortLightestDescription[];
extern const u8 gText_DexSortTallestDescription[];
extern const u8 gText_DexSortSmallestDescription[];
extern const u8 gText_DexEmptyString[];
extern const u8 gText_DexSearchDontSpecify[];
extern const u8 gText_DexSearchTypeNone[];

extern const u8 gUnknown_085EAEC3[];
extern const u8 gUnknown_085EAED6[];
extern const u8 gUnknown_085EAEE6[];
extern const u8 gUnknown_085EAEF6[];
extern const u8 gUnknown_085EAF02[];
extern const u8 gUnknown_085EAF0E[];
extern const u8 gUnknown_085EAF1B[];
extern const u8 gUnknown_085EAF24[];
extern const u8 gUnknown_085EAF2F[];
extern const u8 gUnknown_085EAF34[];
extern const u8 gUnknown_085EAF3E[];
extern const u8 gUnknown_085EAF4B[];
extern const u8 gUnknown_085EAF58[];
extern const u8 gUnknown_085EAF65[];
extern const u8 gUnknown_085EAF70[];
extern const u8 gUnknown_085EAF7D[];
extern const u8 gUnknown_085EAF87[];
extern const u8 gUnknown_085EAF93[];
extern const u8 gUnknown_085EAF9F[];
extern const u8 gUnknown_085EAFAB[];
extern const u8 gUnknown_085EAFB6[];
extern const u8 gUnknown_085EAFCF[];
extern const u8 gUnknown_085EAFE8[];
extern const u8 gUnknown_085EB089[];
extern const u8 gUnknown_085EB09C[];
extern const u8 gUnknown_085EB0AF[];
extern const u8 gUnknown_085EB0C2[];
extern const u8 gUnknown_085EB0D5[];
extern const u8 gUnknown_085EB002[];
extern const u8 gUnknown_085EB017[];
extern const u8 gUnknown_085EB02A[];
extern const u8 gUnknown_085EB034[];
extern const u8 gText_LilycoveCity[];
extern const u8 gUnknown_085EB07E[];
extern const u8 gUnknown_085EB084[];
extern const u8 gUnknown_085EB040[];
extern const u8 gUnknown_085EB04A[];
extern const u8 gUnknown_085EB057[];
extern const u8 gUnknown_085EB062[];
extern const u8 gText_Opponent[];
extern const u8 gText_Tourney_Tree[];
extern const u8 gText_ReadyToStart[];
extern const u8 gUnknown_085EB5BC[];
extern const u8 gUnknown_085EB5C3[];
extern const u8 gUnknown_085EB5C8[];
extern const u8 gUnknown_085EB29A[];
extern const u8 gUnknown_085EB2A3[];
extern const u8 gUnknown_085EB372[];
extern const u8 gUnknown_085EB37F[];
extern const u8 gUnknown_085EB389[];
extern const u8 gUnknown_085EAE6E[];
extern const u8 gUnknown_085EAE7C[];
extern const u8 gUnknown_085EAE8A[];
extern const u8 gUnknown_085EAD6D[];
extern const u8 gUnknown_085EB397[];
extern const u8 gUnknown_085EB3A4[];
extern const u8 gUnknown_085EB3B1[];
extern const u8 gUnknown_085EB3D4[];
extern const u8 gUnknown_085EB3C6[];
extern const u8 gText_NormalRank[];
extern const u8 gText_SuperRank[];
extern const u8 gText_HyperRank[];
extern const u8 gText_MasterRank[];
extern const u8 gText_BattleBag[];
extern const u8 gText_HeldItem[];
extern const u8 gText_LinkContest[];
extern const u8 gText_AboutE_Mode[];
extern const u8 gText_AboutG_Mode[];
extern const u8 gText_E_Mode[];
extern const u8 gText_G_Mode[];
extern const u8 gUnknown_085EB278[];
extern const u8 gUnknown_085EB28A[];
extern const u8 gUnknown_085EB290[];
extern const u8 gUnknown_085EB295[];
extern const u8 gUnknown_085EB2E4[];
extern const u8 gUnknown_085EB2F0[];
extern const u8 gUnknown_085EB2FC[];
extern const u8 gUnknown_085EB3DF[];
extern const u8 gUnknown_085EB3EA[];
extern const u8 gUnknown_085EB3F1[];
extern const u8 gUnknown_085EB3FC[];
extern const u8 gUnknown_085EB40A[];
extern const u8 gUnknown_085EB415[];
extern const u8 gUnknown_085EB41D[];
extern const u8 gUnknown_085EB424[];
extern const u8 gUnknown_085EB45C[];
extern const u8 gUnknown_085EB469[];
extern const u8 gUnknown_085EB475[];
extern const u8 gUnknown_085EB482[];
extern const u8 gUnknown_085EB42F[];
extern const u8 gUnknown_085EB43A[];
extern const u8 gUnknown_085EB444[];
extern const u8 gUnknown_085EB451[];
extern const u8 gUnknown_085EB48E[];
extern const u8 gUnknown_085EB496[];
extern const u8 gUnknown_085EB4A3[];
extern const u8 gUnknown_085EB4AD[];
extern const u8 gUnknown_085EB4B9[];
extern const u8 gUnknown_085EB4C7[];
extern const u8 gUnknown_085EB4D4[];
extern const u8 gUnknown_085EB4E0[];
extern const u8 gUnknown_085EB532[];
extern const u8 gUnknown_085EB543[];
extern const u8 gUnknown_085EB555[];
extern const u8 gUnknown_085EB563[];
extern const u8 gUnknown_085EB56E[];
extern const u8 gUnknown_085EB57E[];
extern const u8 gUnknown_085EB589[];
extern const u8 gUnknown_085EB5B6[];
extern const u8 gUnknown_085EE14B[];
extern const u8 gUnknown_085EE14F[];
extern const u8 gUnknown_085EB2FF[];
extern const u8 gUnknown_085EB310[];
extern const u8 gUnknown_085EB317[];
extern const u8 gUnknown_085EB31F[];
extern const u8 gText_CaveOfOrigin[];
extern const u8 gText_MtPyre[];
extern const u8 gText_SkyPillar[];
extern const u8 gText_DontRemember[];
extern const u8 gUnknown_085EB597[];
extern const u8 gText_NormalTagMatch[];
extern const u8 gText_VarietyTagMatch[];
extern const u8 gText_UniqueTagMatch[];
extern const u8 gText_ExpertTagMatch[];
extern const u8 gText_TimeBoard[];
extern const u8 gText_TimeCleared[];
extern const u8 gText_XMinYDotZSec[];
extern const u8 gText_TrainerHill1F[];
extern const u8 gText_TrainerHill2F[];
extern const u8 gText_TrainerHill3F[];
extern const u8 gText_TrainerHill4F[];

extern const u8 OldaleTown_PokemonCenter_2F_Text_277F1B[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_277F5A[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_277F96[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27889C[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27879F[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_2787D5[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_278831[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27889C[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27879F[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_2787D5[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_2787FC[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27889C[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27879F[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_2787D5[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_278831[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_2787FC[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27889C[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_277F1B[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_277F5A[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27889C[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27879F[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_2787D5[];
extern const u8 OldaleTown_PokemonCenter_2F_Text_27889C[];


extern const u8 gText_WinStreak[];
extern const u8 gText_Record[];
extern const u8 gText_Current[];
extern const u8 gText_RoomsCleared[];
extern const u8 gText_Prev[];
extern const u8 gText_SingleBattleRoomResults[];
extern const u8 gText_DoubleBattleRoomResults[];
extern const u8 gText_MultiBattleRoomResults[];
extern const u8 gText_LinkMultiBattleRoomResults[];
extern const u8 gText_Lv502[];
extern const u8 gText_OpenLv[];
extern const u8 gText_RentalSwap[];
extern const u8 gText_ClearStreak[];
extern const u8 gText_Total[];
extern const u8 gText_Championships[];
extern const u8 gText_SingleBattleTourneyResults[];
extern const u8 gText_DoubleBattleTourneyResults[];
extern const u8 gText_SingleBattleHallResults[];
extern const u8 gText_DoubleBattleHallResults[];
extern const u8 gText_BattleChoiceResults[];
extern const u8 gText_TimesCleared[];
extern const u8 gText_KOsInARow[];
extern const u8 gText_SetKOTourneyResults[];
extern const u8 gText_TimesVar1[];
extern const u8 gText_BattleSwapSingleResults[];
extern const u8 gText_BattleSwapDoubleResults[];
extern const u8 gText_FloorsCleared[];
extern const u8 gText_BattleQuestResults[];
extern const u8 gText_LinkContestResults[];
extern const u8 gText_4th[];
extern const u8 gText_3rd[];
extern const u8 gText_2nd[];
extern const u8 gText_1st[];
extern const u8 gText_SpaceAndSpace[];
extern const u8 gText_CommaSpace[];
extern const u8 gText_NewLine[];
extern const u8 gText_ScrollTextUp[];
extern const u8 gText_Space[];
extern const u8 gText_Space2[];
extern const u8 gText_Are[];
extern const u8 gText_Are2[];
extern const u8 gText_123Dot[][3];


extern const u8 gUnknown_085ED164[];
extern const u8 gUnknown_085ED170[];
extern const u8 gUnknown_085ED17C[];
extern const u8 gUnknown_085ED188[];
extern const u8 gUnknown_085ED190[];

extern const u8 gText_RecordsLv50[];
extern const u8 gText_RecordsOpenLevel[];
extern const u8 gText_FrontierFacilityWinStreak[];
extern const u8 gText_FrontierFacilityClearStreak[];
extern const u8 gText_FrontierFacilityRoomsCleared[];
extern const u8 gText_FrontierFacilityKOsStreak[];
extern const u8 gText_FrontierFacilityFloorsCleared[];

extern const u8 gText_082C843F[];
extern const u8 gText_082C848B[];
extern const u8 gText_082C8628[];
extern const u8 gText_082C85B4[];
extern const u8 gText_082C8512[];
extern const u8 gText_082C859D[];
extern const u8 gText_082C86C3[];
extern const u8 gText_082C8458[];
extern const u8 gText_082C84C1[];
extern const u8 gText_082C8662[];
extern const u8 gText_082C85E3[];
extern const u8 gText_082C853B[];
extern const u8 gText_082C85A4[];
extern const u8 gText_082C86FE[];
extern const u8 gText_082C846C[];
extern const u8 gText_082C84D0[];
extern const u8 gText_082C8682[];
extern const u8 gText_082C85F5[];
extern const u8 gText_082C8561[];
extern const u8 gText_082C85A9[];
extern const u8 gText_082C8739[];
extern const u8 gText_082C8480[];
extern const u8 gText_082C84F7[];
extern const u8 gText_082C86B3[];
extern const u8 gText_082C8611[];
extern const u8 gText_082C8589[];
extern const u8 gText_082C85AE[];
extern const u8 gText_082C877B[];


extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2479CE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248297[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2444D6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24459B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2448CD[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24529A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245CAC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245E20[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245FC6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247749[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2453B4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2476ED[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246864[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247F3F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2484AC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248661[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2486FF[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2469B4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246D9E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244A23[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246662[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248321[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244F4F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247B16[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2465B5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2481E1[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247E7E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244549[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246244[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2468A7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2468FE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245A5F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24626E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244383[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246BE9[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2462E4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246F7B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247268[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244643[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247EE9[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246D3F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247AA1[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246D6A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245D4B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247348[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24522F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24617D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244989[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2470FD[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247C4E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24754A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247C8C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248467[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2474AF[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245BBD[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24503D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248AC0[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24614A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244E5B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245F2B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248553[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246741[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245656[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2480AB[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248725[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244939[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2471FB[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247291[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24589C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247B3E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248614[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2448F5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2445C5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247B62[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24777A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2455EC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248031[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244AA9[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245464[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2484E7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247313[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247470[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244D82[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246529[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247238[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247A18[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24597F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247DFE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247FB7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246E64[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247655[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244E7E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245535[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246FCC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2482DC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24808D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246AF7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24864E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247991[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246605[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248B4C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2448A7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245C05[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2456F5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246020[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24670A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24694B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2471C7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248C5B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246449[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2452EF[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245B91[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245F87[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246831[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247854[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244D07[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246051[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2486C6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248401[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2450E6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248671[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2454D6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24662A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246EB6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244FD3[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247484[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2460D5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24622A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244DC6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2485E5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248BB4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246DD3[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244B52[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24896F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247629[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2454A3[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2459BE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244413[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248C90[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2446B4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244C18[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24610D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24838D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24633C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24758B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2458CE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246E1A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247EA1[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248369[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245DC7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247D97[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2483C1[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248892[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2488D8[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247889[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24895F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2449E6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248781[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246F21[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24707D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24818E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24568A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248A10[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246791[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246571[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246A4E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248431[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2462AA[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246B3F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2473C6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2473FB[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245CE6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2445E8[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2487C9[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245D60[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24795F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245B79[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247B9B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246B2B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24451E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247807[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24636B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247DC7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246002[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247838[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248151[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24718D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2481A9[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247942[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244D36[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246D2D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248751[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247D07[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246B6B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244F98[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246BB2[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24705B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248BEE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24716C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2489BD[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245D07[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247724[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248908[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244618[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24468F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244C6E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246E39[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24856A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24894B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24824F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245C66[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246C22[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2467C4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245406[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24737A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2474EC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247FE9[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247C23[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2480DC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24857D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248B39[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245E41[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245E78[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247D4E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24615D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248517[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245087[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2463C5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247AE3[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245EEC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24885B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2470B2[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248B22[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2467E6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24833D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248C2E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248221[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245196[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245740[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24480C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246A22[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24555F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24712A[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247A76[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247CB2[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2457D9[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248128[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24631F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246CE9[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2482B1[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244DFE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247013[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24790D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24581F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247A51[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24479E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2461C7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244ECA[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2466E6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2477CE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245C2D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2487F7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2489E7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2478DD[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248477[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244CD6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2466B4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24805E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247E3E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245923[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248829[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2461F5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24751D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2475BC[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245013[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2475D5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246C35[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246686[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247438[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245D8D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247EB5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246F4C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2450C0[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245DF0[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24755C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24474D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2444EF[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246082[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2464EE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2467FF[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244EF4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247BE7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245EBD[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24697C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246A85[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245F58[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245851[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248A72[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2459F7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2443E7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245B3E[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248CCF[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24444B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245C7F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246C6C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2472C7[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_245AB4[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24769B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248A40[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244BD2[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246760[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246CB3[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247FA3[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_247F6D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248D04[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2463FF[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246EEE[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244B93[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2446E5[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2469F1[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_2451BD[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_244AD6[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24738F[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_248AEB[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246478[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24760D[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24658C[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24692B[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_246ACF[];
extern const u8 BattleFrontier_BattleTowerMultiBattleRoom_Text_24649D[];


extern const u8 gBattleDomeOpponentPotentialText1[];
extern const u8 gBattleDomeOpponentPotentialText2[];
extern const u8 gBattleDomeOpponentPotentialText3[];
extern const u8 gBattleDomeOpponentPotentialText4[];
extern const u8 gBattleDomeOpponentPotentialText5[];
extern const u8 gBattleDomeOpponentPotentialText6[];
extern const u8 gBattleDomeOpponentPotentialText7[];
extern const u8 gBattleDomeOpponentPotentialText8[];
extern const u8 gBattleDomeOpponentPotentialText9[];
extern const u8 gBattleDomeOpponentPotentialText10[];
extern const u8 gBattleDomeOpponentPotentialText11[];
extern const u8 gBattleDomeOpponentPotentialText12[];
extern const u8 gBattleDomeOpponentPotentialText13[];
extern const u8 gBattleDomeOpponentPotentialText14[];
extern const u8 gBattleDomeOpponentPotentialText15[];
extern const u8 gBattleDomeOpponentPotentialText16[];
extern const u8 gBattleDomeOpponentPotentialText17[];
extern const u8 gBattleDomeOpponentStyleText1[];
extern const u8 gBattleDomeOpponentStyleText2[];
extern const u8 gBattleDomeOpponentStyleText3[];
extern const u8 gBattleDomeOpponentStyleText4[];
extern const u8 gBattleDomeOpponentStyleText5[];
extern const u8 gBattleDomeOpponentStyleText6[];
extern const u8 gBattleDomeOpponentStyleText7[];
extern const u8 gBattleDomeOpponentStyleText8[];
extern const u8 gBattleDomeOpponentStyleText9[];
extern const u8 gBattleDomeOpponentStyleText10[];
extern const u8 gBattleDomeOpponentStyleText11[];
extern const u8 gBattleDomeOpponentStyleText12[];
extern const u8 gBattleDomeOpponentStyleText13[];
extern const u8 gBattleDomeOpponentStyleText14[];
extern const u8 gBattleDomeOpponentStyleText15[];
extern const u8 gBattleDomeOpponentStyleText16[];
extern const u8 gBattleDomeOpponentStyleText17[];
extern const u8 gBattleDomeOpponentStyleText18[];
extern const u8 gBattleDomeOpponentStyleText19[];
extern const u8 gBattleDomeOpponentStyleText20[];
extern const u8 gBattleDomeOpponentStyleText21[];
extern const u8 gBattleDomeOpponentStyleText22[];
extern const u8 gBattleDomeOpponentStyleText23[];
extern const u8 gBattleDomeOpponentStyleText24[];
extern const u8 gBattleDomeOpponentStyleText25[];
extern const u8 gBattleDomeOpponentStyleText26[];
extern const u8 gBattleDomeOpponentStyleText27[];
extern const u8 gBattleDomeOpponentStyleText28[];
extern const u8 gBattleDomeOpponentStyleTextUnused1[];
extern const u8 gBattleDomeOpponentStyleTextUnused2[];
extern const u8 gBattleDomeOpponentStyleTextUnused3[];
extern const u8 gBattleDomeOpponentStyleTextUnused4[];
extern const u8 gBattleDomeOpponentStatsText1[];
extern const u8 gBattleDomeOpponentStatsText2[];
extern const u8 gBattleDomeOpponentStatsText3[];
extern const u8 gBattleDomeOpponentStatsText4[];
extern const u8 gBattleDomeOpponentStatsText5[];
extern const u8 gBattleDomeOpponentStatsText6[];
extern const u8 gBattleDomeOpponentStatsText7[];
extern const u8 gBattleDomeOpponentStatsText8[];
extern const u8 gBattleDomeOpponentStatsText9[];
extern const u8 gBattleDomeOpponentStatsText10[];
extern const u8 gBattleDomeOpponentStatsText11[];
extern const u8 gBattleDomeOpponentStatsText12[];
extern const u8 gBattleDomeOpponentStatsText13[];
extern const u8 gBattleDomeOpponentStatsText14[];
extern const u8 gBattleDomeOpponentStatsText15[];
extern const u8 gBattleDomeOpponentStatsText16[];
extern const u8 gBattleDomeOpponentStatsText17[];
extern const u8 gBattleDomeOpponentStatsText18[];
extern const u8 gBattleDomeOpponentStatsText19[];
extern const u8 gBattleDomeOpponentStatsText20[];
extern const u8 gBattleDomeOpponentStatsText21[];
extern const u8 gBattleDomeOpponentStatsText22[];
extern const u8 gBattleDomeOpponentStatsText23[];
extern const u8 gBattleDomeOpponentStatsText24[];
extern const u8 gBattleDomeOpponentStatsText25[];
extern const u8 gBattleDomeOpponentStatsText26[];
extern const u8 gBattleDomeOpponentStatsText27[];
extern const u8 gBattleDomeOpponentStatsText28[];
extern const u8 gBattleDomeOpponentStatsText29[];
extern const u8 gBattleDomeOpponentStatsText30[];
extern const u8 gBattleDomeOpponentStatsText31[];
extern const u8 gBattleDomeOpponentStatsText32[];
extern const u8 gBattleDomeOpponentStatsText33[];
extern const u8 gBattleDomeOpponentStatsText34[];
extern const u8 gBattleDomeOpponentStatsText35[];
extern const u8 gBattleDomeOpponentStatsText36[];
extern const u8 gBattleDomeOpponentStatsText37[];
extern const u8 gBattleDomeOpponentStatsText38[];
extern const u8 gBattleDomeOpponentStatsText39[];
extern const u8 gBattleDomeOpponentStatsText40[];
extern const u8 gBattleDomeOpponentStatsText41[];
extern const u8 gBattleDomeOpponentStatsText42[];
extern const u8 gBattleDomeOpponentStatsText43[];
extern const u8 gBattleDomeMatchNumberText1[];
extern const u8 gBattleDomeMatchNumberText2[];
extern const u8 gBattleDomeMatchNumberText3[];
extern const u8 gBattleDomeMatchNumberText4[];
extern const u8 gBattleDomeMatchNumberText5[];
extern const u8 gBattleDomeMatchNumberText6[];
extern const u8 gBattleDomeMatchNumberText7[];
extern const u8 gBattleDomeMatchNumberText8[];
extern const u8 gBattleDomeMatchNumberText9[];
extern const u8 gBattleDomeMatchNumberText10[];
extern const u8 gBattleDomeMatchNumberText11[];
extern const u8 gBattleDomeMatchNumberText12[];
extern const u8 gBattleDomeMatchNumberText13[];
extern const u8 gBattleDomeMatchNumberText14[];
extern const u8 gBattleDomeMatchNumberText15[];
extern const u8 gBattleDomeWinText1[];
extern const u8 gBattleDomeWinText2[];
extern const u8 gBattleDomeWinText3[];
extern const u8 gBattleDomeWinText4[];
extern const u8 gBattleDomeWinText5[];
extern const u8 gBattleDomeWinText6[];
extern const u8 gBattleDomeWinText7[];


extern const u8 BattlePyramid_ExitHintUp_Text1[];
extern const u8 BattlePyramid_ExitHintLeft_Text1[];
extern const u8 BattlePyramid_ExitHintRight_Text1[];
extern const u8 BattlePyramid_ExitHintDown_Text1[];
extern const u8 BattlePyramid_ZeroItemsRemaining_Text1[];
extern const u8 BattlePyramid_OneItemRemaining_Text1[];
extern const u8 BattlePyramid_TwoItemsRemaining_Text1[];
extern const u8 BattlePyramid_ThreeItemsRemaining_Text1[];
extern const u8 BattlePyramid_FourItemsRemaining_Text1[];
extern const u8 BattlePyramid_FiveItemsRemaining_Text1[];
extern const u8 BattlePyramid_SixItemsRemaining_Text1[];
extern const u8 BattlePyramid_SevenItemsRemaining_Text1[];
extern const u8 BattlePyramid_EightItemsRemaining_Text1[];
extern const u8 BattlePyramid_ZeroTrainersRemaining_Text1[];
extern const u8 BattlePyramid_OneTrainersRemaining_Text1[];
extern const u8 BattlePyramid_TwoTrainersRemaining_Text1[];
extern const u8 BattlePyramid_ThreeTrainersRemaining_Text1[];
extern const u8 BattlePyramid_FourTrainersRemaining_Text1[];
extern const u8 BattlePyramid_FiveTrainersRemaining_Text1[];
extern const u8 BattlePyramid_SixTrainersRemaining_Text1[];
extern const u8 BattlePyramid_SevenTrainersRemaining_Text1[];
extern const u8 BattlePyramid_ExitHintUp_Text2[];
extern const u8 BattlePyramid_ExitHintLeft_Text2[];
extern const u8 BattlePyramid_ExitHintRight_Text2[];
extern const u8 BattlePyramid_ExitHintDown_Text2[];
extern const u8 BattlePyramid_ZeroItemsRemaining_Text2[];
extern const u8 BattlePyramid_OneItemRemaining_Text2[];
extern const u8 BattlePyramid_TwoItemsRemaining_Text2[];
extern const u8 BattlePyramid_ThreeItemsRemaining_Text2[];
extern const u8 BattlePyramid_FourItemsRemaining_Text2[];
extern const u8 BattlePyramid_FiveItemsRemaining_Text2[];
extern const u8 BattlePyramid_SixItemsRemaining_Text2[];
extern const u8 BattlePyramid_SevenItemsRemaining_Text2[];
extern const u8 BattlePyramid_EightItemsRemaining_Text2[];
extern const u8 BattlePyramid_ZeroTrainersRemaining_Text2[];
extern const u8 BattlePyramid_OneTrainersRemaining_Text2[];
extern const u8 BattlePyramid_TwoTrainersRemaining_Text2[];
extern const u8 BattlePyramid_ThreeTrainersRemaining_Text2[];
extern const u8 BattlePyramid_FourTrainersRemaining_Text2[];
extern const u8 BattlePyramid_FiveTrainersRemaining_Text2[];
extern const u8 BattlePyramid_SixTrainersRemaining_Text2[];
extern const u8 BattlePyramid_SevenTrainersRemaining_Text2[];
extern const u8 BattlePyramid_ExitHintUp_Text3[];
extern const u8 BattlePyramid_ExitHintLeft_Text3[];
extern const u8 BattlePyramid_ExitHintRight_Text3[];
extern const u8 BattlePyramid_ExitHintDown_Text3[];
extern const u8 BattlePyramid_ZeroItemsRemaining_Text3[];
extern const u8 BattlePyramid_OneItemRemaining_Text3[];
extern const u8 BattlePyramid_TwoItemsRemaining_Text3[];
extern const u8 BattlePyramid_ThreeItemsRemaining_Text3[];
extern const u8 BattlePyramid_FourItemsRemaining_Text3[];
extern const u8 BattlePyramid_FiveItemsRemaining_Text3[];
extern const u8 BattlePyramid_SixItemsRemaining_Text3[];
extern const u8 BattlePyramid_SevenItemsRemaining_Text3[];
extern const u8 BattlePyramid_EightItemsRemaining_Text3[];
extern const u8 BattlePyramid_ZeroTrainersRemaining_Text3[];
extern const u8 BattlePyramid_OneTrainersRemaining_Text3[];
extern const u8 BattlePyramid_TwoTrainersRemaining_Text3[];
extern const u8 BattlePyramid_ThreeTrainersRemaining_Text3[];
extern const u8 BattlePyramid_FourTrainersRemaining_Text3[];
extern const u8 BattlePyramid_FiveTrainersRemaining_Text3[];
extern const u8 BattlePyramid_SixTrainersRemaining_Text3[];
extern const u8 BattlePyramid_SevenTrainersRemaining_Text3[];
extern const u8 BattlePyramid_ExitHintUp_Text4[];
extern const u8 BattlePyramid_ExitHintLeft_Text4[];
extern const u8 BattlePyramid_ExitHintRight_Text4[];
extern const u8 BattlePyramid_ExitHintDown_Text4[];
extern const u8 BattlePyramid_ZeroItemsRemaining_Text4[];
extern const u8 BattlePyramid_OneItemRemaining_Text4[];
extern const u8 BattlePyramid_TwoItemsRemaining_Text4[];
extern const u8 BattlePyramid_ThreeItemsRemaining_Text4[];
extern const u8 BattlePyramid_FourItemsRemaining_Text4[];
extern const u8 BattlePyramid_FiveItemsRemaining_Text4[];
extern const u8 BattlePyramid_SixItemsRemaining_Text4[];
extern const u8 BattlePyramid_SevenItemsRemaining_Text4[];
extern const u8 BattlePyramid_EightItemsRemaining_Text4[];
extern const u8 BattlePyramid_ZeroTrainersRemaining_Text4[];
extern const u8 BattlePyramid_OneTrainersRemaining_Text4[];
extern const u8 BattlePyramid_TwoTrainersRemaining_Text4[];
extern const u8 BattlePyramid_ThreeTrainersRemaining_Text4[];
extern const u8 BattlePyramid_FourTrainersRemaining_Text4[];
extern const u8 BattlePyramid_FiveTrainersRemaining_Text4[];
extern const u8 BattlePyramid_SixTrainersRemaining_Text4[];
extern const u8 BattlePyramid_SevenTrainersRemaining_Text4[];
extern const u8 BattlePyramid_ExitHintUp_Text5[];
extern const u8 BattlePyramid_ExitHintLeft_Text5[];
extern const u8 BattlePyramid_ExitHintRight_Text5[];
extern const u8 BattlePyramid_ExitHintDown_Text5[];
extern const u8 BattlePyramid_ZeroItemsRemaining_Text5[];
extern const u8 BattlePyramid_OneItemRemaining_Text5[];
extern const u8 BattlePyramid_TwoItemsRemaining_Text5[];
extern const u8 BattlePyramid_ThreeItemsRemaining_Text5[];
extern const u8 BattlePyramid_FourItemsRemaining_Text5[];
extern const u8 BattlePyramid_FiveItemsRemaining_Text5[];
extern const u8 BattlePyramid_SixItemsRemaining_Text5[];
extern const u8 BattlePyramid_SevenItemsRemaining_Text5[];
extern const u8 BattlePyramid_EightItemsRemaining_Text5[];
extern const u8 BattlePyramid_ZeroTrainersRemaining_Text5[];
extern const u8 BattlePyramid_OneTrainersRemaining_Text5[];
extern const u8 BattlePyramid_TwoTrainersRemaining_Text5[];
extern const u8 BattlePyramid_ThreeTrainersRemaining_Text5[];
extern const u8 BattlePyramid_FourTrainersRemaining_Text5[];
extern const u8 BattlePyramid_FiveTrainersRemaining_Text5[];
extern const u8 BattlePyramid_SixTrainersRemaining_Text5[];
extern const u8 BattlePyramid_SevenTrainersRemaining_Text5[];
extern const u8 BattlePyramid_ExitHintUp_Text6[];
extern const u8 BattlePyramid_ExitHintLeft_Text6[];
extern const u8 BattlePyramid_ExitHintRight_Text6[];
extern const u8 BattlePyramid_ExitHintDown_Text6[];
extern const u8 BattlePyramid_ZeroItemsRemaining_Text6[];
extern const u8 BattlePyramid_OneItemRemaining_Text6[];
extern const u8 BattlePyramid_TwoItemsRemaining_Text6[];
extern const u8 BattlePyramid_ThreeItemsRemaining_Text6[];
extern const u8 BattlePyramid_FourItemsRemaining_Text6[];
extern const u8 BattlePyramid_FiveItemsRemaining_Text6[];
extern const u8 BattlePyramid_SixItemsRemaining_Text6[];
extern const u8 BattlePyramid_SevenItemsRemaining_Text6[];
extern const u8 BattlePyramid_EightItemsRemaining_Text6[];
extern const u8 BattlePyramid_ZeroTrainersRemaining_Text6[];
extern const u8 BattlePyramid_OneTrainersRemaining_Text6[];
extern const u8 BattlePyramid_TwoTrainersRemaining_Text6[];
extern const u8 BattlePyramid_ThreeTrainersRemaining_Text6[];
extern const u8 BattlePyramid_FourTrainersRemaining_Text6[];
extern const u8 BattlePyramid_FiveTrainersRemaining_Text6[];
extern const u8 BattlePyramid_SixTrainersRemaining_Text6[];
extern const u8 BattlePyramid_SevenTrainersRemaining_Text6[];




extern const u8 gText_ExitFromBox[];
extern const u8 gText_WhatDoYouWantToDo[];
extern const u8 gText_PleasePickATheme[];
extern const u8 gText_PickTheWallpaper[];
extern const u8 gText_PkmnIsSelected[];
extern const u8 gText_JumpToWhichBox[];
extern const u8 gText_DepositInWhichBox[];
extern const u8 gText_PkmnWasDeposited[];
extern const u8 gText_BoxIsFull2[];
extern const u8 gText_ReleaseThisPokemon[];
extern const u8 gText_PkmnWasReleased[];
extern const u8 gText_ByeByePkmn[];
extern const u8 gText_MarkYourPkmn[];
extern const u8 gText_ThatsYourLastPkmn[];
extern const u8 gText_YourPartysFull[];
extern const u8 gText_YoureHoldingAPkmn[];
extern const u8 gText_WhichOneWillYouTake[];
extern const u8 gText_YouCantReleaseAnEgg[];
extern const u8 gText_ContinueBoxOperations[];
extern const u8 gText_PkmnCameBack[];
extern const u8 gText_WasItWorriedAboutYou[];
extern const u8 gText_FourEllipsesExclamation[];
extern const u8 gText_PleaseRemoveTheMail[];
extern const u8 gText_GiveToAPkmn[];
extern const u8 gText_PlacedItemInBag[];
extern const u8 gText_BagIsFull2[];
extern const u8 gText_PutItemInBag[];
extern const u8 gText_ItemIsNowHeld[];
extern const u8 gText_ChangedToNewItem[];
extern const u8 gText_MailCantBeStored[];
extern const u8 gPCText_Cancel[];
extern const u8 gPCText_Store[];
extern const u8 gPCText_Withdraw[];
extern const u8 gPCText_Move[];
extern const u8 gPCText_Shift[];
extern const u8 gPCText_Place[];
extern const u8 gPCText_Summary[];
extern const u8 gPCText_Release[];
extern const u8 gPCText_Mark[];
extern const u8 gPCText_Jump[];
extern const u8 gPCText_Wallpaper[];
extern const u8 gPCText_Name[];
extern const u8 gPCText_Take[];
extern const u8 gPCText_Give[];
extern const u8 gPCText_Give[];
extern const u8 gPCText_Switch[];
extern const u8 gPCText_Bag[];
extern const u8 gPCText_Info[];
extern const u8 gPCText_Scenery1[];
extern const u8 gPCText_Scenery2[];
extern const u8 gPCText_Scenery3[];
extern const u8 gPCText_Etcetera[];
extern const u8 gPCText_Friends[];
extern const u8 gPCText_Forest[];
extern const u8 gPCText_City[];
extern const u8 gPCText_Desert[];
extern const u8 gPCText_Savanna[];
extern const u8 gPCText_Crag[];
extern const u8 gPCText_Volcano[];
extern const u8 gPCText_Snow[];
extern const u8 gPCText_Cave[];
extern const u8 gPCText_Beach[];
extern const u8 gPCText_Seafloor[];
extern const u8 gPCText_River[];
extern const u8 gPCText_Sky[];
extern const u8 gPCText_PolkaDot[];
extern const u8 gPCText_Pokecenter[];
extern const u8 gPCText_Machine[];
extern const u8 gPCText_Simple[];
extern const u8 gText_PartyFull[];
extern const u8 gText_Box[];
extern const u8 gText_JustOnePkmn[];


extern const u8 gText_LinkStandby3[];
extern const u8 gText_BattleRecordCouldntBeSaved[];
extern const u8 gText_Poison[];
extern const u8 gText_Sleep[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Burn[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];


extern const u8 gText_PkmnBoxSomeonesPCFull[];
extern const u8 gText_PkmnBoxLanettesPCFull[];
extern const u8 gText_PkmnTransferredSomeonesPC[];
extern const u8 gText_PkmnTransferredLanettesPC[];


extern const u8 gText_LeagueChamp[];
extern const u8 gText_HOFNumber[];
extern const u8 gText_PickNextCancel[];
extern const u8 gText_PickCancel[];
extern const u8 gText_UnkCtrlF800Exit[];
extern const u8 gText_HOFCorrupted[];
extern const u8 gText_WelcomeToHOF[];
extern const u8 gText_Number[];
extern const u8 gText_Level[];
extern const u8 gText_IDNumber[];
extern const u8 gText_Name[];
extern const u8 gText_MainMenuTime[];


extern const u8 gText_MaleSymbol4[];
extern const u8 gText_FemaleSymbol4[];
extern const u8 gText_GenderlessSymbol[];
extern const u8 gText_NewLine2[];
extern const u8 gText_Exit4[];
extern const u8 gText_Lv[];
extern const u8 gExpandedPlaceholder_Empty[];
extern const u8 gText_Exit[];
extern const u8 gDaycareText_GetAlongVeryWell[];
extern const u8 gDaycareText_GetAlong[];
extern const u8 gDaycareText_DontLikeOther[];
extern const u8 gDaycareText_PlayOther[];


extern const u8 gText_ChoosePokemon[];
extern const u8 gText_ChoosePokemonCancel[];
extern const u8 gText_ChoosePokemonConfirm[];
extern const u8 gText_MoveToWhere[];
extern const u8 gText_TeachWhichPokemon[];
extern const u8 gText_UseOnWhichPokemon[];
extern const u8 gText_GiveToWhichPokemon[];
extern const u8 gText_NothingToCut[];
extern const u8 gText_CantSurfHere[];
extern const u8 gText_AlreadySurfing[];
extern const u8 gText_CurrentIsTooFast[];
extern const u8 gText_EnjoyCycling[];
extern const u8 gText_InUseAlready_PM[];
extern const u8 gText_CantUseHere[];
extern const u8 gText_NoPokemonForBattle[];
extern const u8 gText_ChoosePokemon2[];
extern const u8 gText_NotEnoughHp[];
extern const u8 gText_PokemonAreNeeded[];
extern const u8 gText_PokemonCantBeSame[];
extern const u8 gText_NoIdenticalHoldItems[];
extern const u8 gText_DoWhatWithPokemon[];
extern const u8 gText_RestoreWhichMove[];
extern const u8 gText_BoostPp[];
extern const u8 gText_DoWhatWithItem[];
extern const u8 gText_DoWhatWithMail[];
extern const u8 gText_AlreadyHoldingOne[];
extern const u8 gText_NoUse[];
extern const u8 gText_Able[];
extern const u8 gText_First_PM[];
extern const u8 gText_Second_PM[];
extern const u8 gText_Third_PM[];
extern const u8 gText_Fourth[];
extern const u8 gText_Able2[];
extern const u8 gText_NotAble[];
extern const u8 gText_Able3[];
extern const u8 gText_NotAble2[];
extern const u8 gText_Learned[];
extern const u8 gText_Have[];
extern const u8 gText_DontHave[];
extern const u8 gText_Take[];
extern const u8 gText_Mail[];
extern const u8 gText_Take2[];
extern const u8 gText_Read2[];
extern const u8 gText_Cancel2[];
extern const u8 gText_Shift[];
extern const u8 gText_SendOut[];
extern const u8 gText_Enter[];
extern const u8 gText_NoEntry[];
extern const u8 gText_Store[];
extern const u8 gText_Register[];
extern const u8 gText_Trade4[];
extern const u8 gText_Summary5[];
extern const u8 gText_Switch2[];
extern const u8 gText_Item[];
extern const u8 gText_NotPkmnOtherTrainerWants[];
extern const u8 gText_ThatIsntAnEgg[];
extern const u8 gText_PkmnCantBeTradedNow[];
extern const u8 gText_OtherTrainersPkmnCantBeTraded[];
extern const u8 gText_EggCantBeTradedNow[];
extern const u8 gText_OtherTrainerCantAcceptPkmn[];
extern const u8 gText_CantTradeWithTrainer[];


extern const u8 gText_XWillBeSentToY[];
extern const u8 gText_ByeByeVar1[];
extern const u8 gText_XSentOverY[];
extern const u8 gText_TakeGoodCareOfX[];
extern const u8 gText_CommunicationStandby5[];


extern const u8 gUnknown_082A5B89[];


extern const u8 MatchCall_WildBattleText1[];
extern const u8 MatchCall_WildBattleText2[];
extern const u8 MatchCall_WildBattleText3[];
extern const u8 MatchCall_WildBattleText4[];
extern const u8 MatchCall_WildBattleText5[];
extern const u8 MatchCall_WildBattleText6[];
extern const u8 MatchCall_WildBattleText7[];
extern const u8 MatchCall_WildBattleText8[];
extern const u8 MatchCall_WildBattleText9[];
extern const u8 MatchCall_WildBattleText10[];
extern const u8 MatchCall_WildBattleText11[];
extern const u8 MatchCall_WildBattleText12[];
extern const u8 MatchCall_WildBattleText13[];
extern const u8 MatchCall_WildBattleText14[];
extern const u8 MatchCall_WildBattleText15[];
extern const u8 MatchCall_NegativeBattleText1[];
extern const u8 MatchCall_NegativeBattleText2[];
extern const u8 MatchCall_NegativeBattleText3[];
extern const u8 MatchCall_NegativeBattleText4[];
extern const u8 MatchCall_NegativeBattleText5[];
extern const u8 MatchCall_NegativeBattleText6[];
extern const u8 MatchCall_NegativeBattleText7[];
extern const u8 MatchCall_NegativeBattleText8[];
extern const u8 MatchCall_NegativeBattleText9[];
extern const u8 MatchCall_NegativeBattleText10[];
extern const u8 MatchCall_NegativeBattleText11[];
extern const u8 MatchCall_NegativeBattleText12[];
extern const u8 MatchCall_NegativeBattleText13[];
extern const u8 MatchCall_NegativeBattleText14[];
extern const u8 MatchCall_PositiveBattleText1[];
extern const u8 MatchCall_PositiveBattleText2[];
extern const u8 MatchCall_PositiveBattleText3[];
extern const u8 MatchCall_PositiveBattleText4[];
extern const u8 MatchCall_PositiveBattleText5[];
extern const u8 MatchCall_PositiveBattleText6[];
extern const u8 MatchCall_PositiveBattleText7[];
extern const u8 MatchCall_PositiveBattleText8[];
extern const u8 MatchCall_PositiveBattleText9[];
extern const u8 MatchCall_PositiveBattleText10[];
extern const u8 MatchCall_PositiveBattleText11[];
extern const u8 MatchCall_PositiveBattleText12[];
extern const u8 MatchCall_PositiveBattleText13[];
extern const u8 MatchCall_PositiveBattleText14[];
extern const u8 MatchCall_SameRouteBattleRequestText1[];
extern const u8 MatchCall_SameRouteBattleRequestText2[];
extern const u8 MatchCall_SameRouteBattleRequestText3[];
extern const u8 MatchCall_SameRouteBattleRequestText4[];
extern const u8 MatchCall_SameRouteBattleRequestText5[];
extern const u8 MatchCall_SameRouteBattleRequestText6[];
extern const u8 MatchCall_SameRouteBattleRequestText7[];
extern const u8 MatchCall_SameRouteBattleRequestText8[];
extern const u8 MatchCall_SameRouteBattleRequestText9[];
extern const u8 MatchCall_SameRouteBattleRequestText10[];
extern const u8 MatchCall_SameRouteBattleRequestText11[];
extern const u8 MatchCall_SameRouteBattleRequestText12[];
extern const u8 MatchCall_SameRouteBattleRequestText13[];
extern const u8 MatchCall_SameRouteBattleRequestText14[];
extern const u8 MatchCall_DifferentRouteBattleRequestText1[];
extern const u8 MatchCall_DifferentRouteBattleRequestText2[];
extern const u8 MatchCall_DifferentRouteBattleRequestText3[];
extern const u8 MatchCall_DifferentRouteBattleRequestText4[];
extern const u8 MatchCall_DifferentRouteBattleRequestText5[];
extern const u8 MatchCall_DifferentRouteBattleRequestText6[];
extern const u8 MatchCall_DifferentRouteBattleRequestText7[];
extern const u8 MatchCall_DifferentRouteBattleRequestText8[];
extern const u8 MatchCall_DifferentRouteBattleRequestText9[];
extern const u8 MatchCall_DifferentRouteBattleRequestText10[];
extern const u8 MatchCall_DifferentRouteBattleRequestText11[];
extern const u8 MatchCall_DifferentRouteBattleRequestText12[];
extern const u8 MatchCall_DifferentRouteBattleRequestText13[];
extern const u8 MatchCall_DifferentRouteBattleRequestText14[];
extern const u8 MatchCall_PersonalizedText1[];
extern const u8 MatchCall_PersonalizedText2[];
extern const u8 MatchCall_PersonalizedText3[];
extern const u8 MatchCall_PersonalizedText4[];
extern const u8 MatchCall_PersonalizedText5[];
extern const u8 MatchCall_PersonalizedText6[];
extern const u8 MatchCall_PersonalizedText7[];
extern const u8 MatchCall_PersonalizedText8[];
extern const u8 MatchCall_PersonalizedText9[];
extern const u8 MatchCall_PersonalizedText10[];
extern const u8 MatchCall_PersonalizedText11[];
extern const u8 MatchCall_PersonalizedText12[];
extern const u8 MatchCall_PersonalizedText13[];
extern const u8 MatchCall_PersonalizedText14[];
extern const u8 MatchCall_PersonalizedText15[];
extern const u8 MatchCall_PersonalizedText16[];
extern const u8 MatchCall_PersonalizedText17[];
extern const u8 MatchCall_PersonalizedText18[];
extern const u8 MatchCall_PersonalizedText19[];
extern const u8 MatchCall_PersonalizedText20[];
extern const u8 MatchCall_PersonalizedText21[];
extern const u8 MatchCall_PersonalizedText22[];
extern const u8 MatchCall_PersonalizedText23[];
extern const u8 MatchCall_PersonalizedText24[];
extern const u8 MatchCall_PersonalizedText25[];
extern const u8 MatchCall_PersonalizedText26[];
extern const u8 MatchCall_PersonalizedText27[];
extern const u8 MatchCall_PersonalizedText28[];
extern const u8 MatchCall_PersonalizedText29[];
extern const u8 MatchCall_PersonalizedText30[];
extern const u8 MatchCall_PersonalizedText31[];
extern const u8 MatchCall_PersonalizedText32[];
extern const u8 MatchCall_PersonalizedText33[];
extern const u8 MatchCall_PersonalizedText34[];
extern const u8 MatchCall_PersonalizedText35[];
extern const u8 MatchCall_PersonalizedText36[];
extern const u8 MatchCall_PersonalizedText37[];
extern const u8 MatchCall_PersonalizedText38[];
extern const u8 MatchCall_PersonalizedText39[];
extern const u8 MatchCall_PersonalizedText40[];
extern const u8 MatchCall_PersonalizedText41[];
extern const u8 MatchCall_PersonalizedText42[];
extern const u8 MatchCall_PersonalizedText43[];
extern const u8 MatchCall_PersonalizedText44[];
extern const u8 MatchCall_PersonalizedText45[];
extern const u8 MatchCall_PersonalizedText46[];
extern const u8 MatchCall_PersonalizedText47[];
extern const u8 MatchCall_PersonalizedText48[];
extern const u8 MatchCall_PersonalizedText49[];
extern const u8 MatchCall_PersonalizedText50[];
extern const u8 MatchCall_PersonalizedText51[];
extern const u8 MatchCall_PersonalizedText52[];
extern const u8 MatchCall_PersonalizedText53[];
extern const u8 MatchCall_PersonalizedText54[];
extern const u8 MatchCall_PersonalizedText55[];
extern const u8 MatchCall_PersonalizedText56[];
extern const u8 MatchCall_PersonalizedText57[];
extern const u8 MatchCall_PersonalizedText58[];
extern const u8 MatchCall_PersonalizedText59[];
extern const u8 MatchCall_PersonalizedText60[];
extern const u8 MatchCall_PersonalizedText61[];
extern const u8 MatchCall_PersonalizedText62[];
extern const u8 MatchCall_PersonalizedText63[];
extern const u8 MatchCall_PersonalizedText64[];
extern const u8 MatchCall_BattleFrontierStreakText1[];
extern const u8 MatchCall_BattleFrontierStreakText2[];
extern const u8 MatchCall_BattleFrontierStreakText3[];
extern const u8 MatchCall_BattleFrontierStreakText4[];
extern const u8 MatchCall_BattleFrontierStreakText5[];
extern const u8 MatchCall_BattleFrontierStreakText6[];
extern const u8 MatchCall_BattleFrontierStreakText7[];
extern const u8 MatchCall_BattleFrontierStreakText8[];
extern const u8 MatchCall_BattleFrontierStreakText9[];
extern const u8 MatchCall_BattleFrontierStreakText10[];
extern const u8 MatchCall_BattleFrontierStreakText11[];
extern const u8 MatchCall_BattleFrontierStreakText12[];
extern const u8 MatchCall_BattleFrontierStreakText13[];
extern const u8 MatchCall_BattleFrontierStreakText14[];
extern const u8 MatchCall_BattleFrontierRecordStreakText1[];
extern const u8 MatchCall_BattleFrontierRecordStreakText2[];
extern const u8 MatchCall_BattleFrontierRecordStreakText3[];
extern const u8 MatchCall_BattleFrontierRecordStreakText4[];
extern const u8 MatchCall_BattleFrontierRecordStreakText5[];
extern const u8 MatchCall_BattleFrontierRecordStreakText6[];
extern const u8 MatchCall_BattleFrontierRecordStreakText7[];
extern const u8 MatchCall_BattleFrontierRecordStreakText8[];
extern const u8 MatchCall_BattleFrontierRecordStreakText9[];
extern const u8 MatchCall_BattleFrontierRecordStreakText10[];
extern const u8 MatchCall_BattleFrontierRecordStreakText11[];
extern const u8 MatchCall_BattleFrontierRecordStreakText12[];
extern const u8 MatchCall_BattleFrontierRecordStreakText13[];
extern const u8 MatchCall_BattleFrontierRecordStreakText14[];
extern const u8 MatchCall_BattleDomeText1[];
extern const u8 MatchCall_BattleDomeText2[];
extern const u8 MatchCall_BattleDomeText3[];
extern const u8 MatchCall_BattleDomeText4[];
extern const u8 MatchCall_BattleDomeText5[];
extern const u8 MatchCall_BattleDomeText6[];
extern const u8 MatchCall_BattleDomeText7[];
extern const u8 MatchCall_BattleDomeText8[];
extern const u8 MatchCall_BattleDomeText9[];
extern const u8 MatchCall_BattleDomeText10[];
extern const u8 MatchCall_BattleDomeText11[];
extern const u8 MatchCall_BattleDomeText12[];
extern const u8 MatchCall_BattleDomeText13[];
extern const u8 MatchCall_BattleDomeText14[];
extern const u8 MatchCall_BattlePikeText1[];
extern const u8 MatchCall_BattlePikeText2[];
extern const u8 MatchCall_BattlePikeText3[];
extern const u8 MatchCall_BattlePikeText4[];
extern const u8 MatchCall_BattlePikeText5[];
extern const u8 MatchCall_BattlePikeText6[];
extern const u8 MatchCall_BattlePikeText7[];
extern const u8 MatchCall_BattlePikeText8[];
extern const u8 MatchCall_BattlePikeText9[];
extern const u8 MatchCall_BattlePikeText10[];
extern const u8 MatchCall_BattlePikeText11[];
extern const u8 MatchCall_BattlePikeText12[];
extern const u8 MatchCall_BattlePikeText13[];
extern const u8 MatchCall_BattlePikeText14[];
extern const u8 MatchCall_BattlePyramidText1[];
extern const u8 MatchCall_BattlePyramidText2[];
extern const u8 MatchCall_BattlePyramidText3[];
extern const u8 MatchCall_BattlePyramidText4[];
extern const u8 MatchCall_BattlePyramidText5[];
extern const u8 MatchCall_BattlePyramidText6[];
extern const u8 MatchCall_BattlePyramidText7[];
extern const u8 MatchCall_BattlePyramidText8[];
extern const u8 MatchCall_BattlePyramidText9[];
extern const u8 MatchCall_BattlePyramidText10[];
extern const u8 MatchCall_BattlePyramidText11[];
extern const u8 MatchCall_BattlePyramidText12[];
extern const u8 MatchCall_BattlePyramidText13[];
extern const u8 MatchCall_BattlePyramidText14[];


extern const u8 gText_ColorDarkGrey[];
extern const u8 gText_CommunicationStandby[];
extern const u8 gText_AnnouncingResults[];
extern const u8 gText_PreliminaryResults[];
extern const u8 gText_Round2Results[];
extern const u8 gText_Var1sVar2Won[];


extern const u8 gText_LinkCableBattles[];
extern const u8 gText_LinkBattles[];
extern const u8 gText_WaitingTrainerFinishReading[];
extern const u8 gText_TrainerCardName[];
extern const u8 gText_TrainerCardIDNo[];
extern const u8 gText_TrainerCardMoney[];
extern const u8 gText_PokedollarVar1[];
extern const u8 gText_EmptyString6[];
extern const u8 gText_TrainerCardPokedex[];
extern const u8 gText_TrainerCardTime[];
extern const u8 gText_Colon2[];
extern const u8 gText_Var1sTrainerCard[];
extern const u8 gText_HallOfFameDebut[];
extern const u8 gText_WinsLosses[];
extern const u8 gText_PokemonTrades[];
extern const u8 gText_BerryCrush[];
extern const u8 gText_UnionTradesAndBattles[];
extern const u8 gText_Var1DarkGreyShadowLightGrey[];
extern const u8 gText_PokeblocksWithFriends[];
extern const u8 gText_WonContestsWFriends[];
extern const u8 gText_WSlashStraightSlash[];
extern const u8 gText_Var1DarkLightGreyBP[];
extern const u8 gText_BattleTower[];
extern const u8 gText_BattlePtsWon[];


extern const u8 gText_SymbolsEarned[];
extern const u8 gText_BattleRecord[];
extern const u8 gText_BattlePoints[];
extern const u8 gUnknown_085EDA96[];
extern const u8 gUnknown_085ED932[];
extern const u8 gUnknown_085ED94D[];
extern const u8 gUnknown_085ED961[];
extern const u8 gUnknown_085ED977[];
extern const u8 gUnknown_085ED993[];
extern const u8 gUnknown_085ED9AF[];
extern const u8 gUnknown_085ED9C7[];
extern const u8 gUnknown_085ED9E5[];
extern const u8 gUnknown_085EDA02[];
extern const u8 gUnknown_085EDA21[];
extern const u8 gUnknown_085EDA3C[];
extern const u8 gUnknown_085EDA5E[];
extern const u8 gUnknown_085EDA78[];
extern const u8 gUnknown_085ED931[];
extern const u8 gUnknown_085EDAB1[];
extern const u8 gUnknown_085EDB0F[];
extern const u8 gUnknown_085EDABE[];
extern const u8 gUnknown_085EDB4E[];
extern const u8 gUnknown_085EDACA[];
extern const u8 gUnknown_085EDB8B[];
extern const u8 gUnknown_085EDAD8[];
extern const u8 gUnknown_085EDBC2[];
extern const u8 gUnknown_085EDAE5[];
extern const u8 gUnknown_085EDC00[];
extern const u8 gUnknown_085EDAF4[];
extern const u8 gUnknown_085EDC45[];
extern const u8 gUnknown_085EDB00[];
extern const u8 gUnknown_085EDC84[];


extern const u8 gText_StopGivingPkmnMail[];
extern const u8 gText_LikeToQuitQuiz[];
extern const u8 gText_ChallengeQuestionMark[];
extern const u8 gText_QuitEditing[];
extern const u8 gText_AllTextBeingEditedWill[];
extern const u8 gText_BeDeletedThatOkay[];
extern const u8 gText_Lady[];
extern const u8 gText_F700sQuiz[];
extern const u8 gText_CreateAQuiz[];
extern const u8 gText_SelectTheAnswer[];
extern const u8 gText_OriginalSongWillBeUsed[];
extern const u8 gText_LyricsCantBeDeleted[];
extern const u8 gText_CombineTwoWordsOrPhrases3[];
extern const u8 gText_OnlyOnePhrase[];
extern const u8 gText_YouCannotQuitHere[];
extern const u8 gText_SectionMustBeCompleted[];
extern const u8 gText_ThreeQuestionMarks[];
extern const u8 gText_Profile[];
extern const u8 gText_CombineFourWordsOrPhrases[];
extern const u8 gText_AndMakeYourProfile[];
extern const u8 gText_YourProfile[];
extern const u8 gText_IsAsShownOkay[];
extern const u8 gText_AtTheBattlesStart[];
extern const u8 gText_CombineSixWordsOrPhrases[];
extern const u8 gText_AndMakeAMessage[];
extern const u8 gText_YourFeelingAtTheBattlesStart[];
extern const u8 gText_UponWinningABattle[];
extern const u8 gText_WhatYouSayIfYouWin[];
extern const u8 gText_UponLosingABattle[];
extern const u8 gText_WhatYouSayIfYouLose[];
extern const u8 gText_CombineNineWordsOrPhrases[];
extern const u8 gText_AndMakeAMessage2[];
extern const u8 gText_TheMailMessage[];
extern const u8 gText_Interview[];
extern const u8 gText_LetsReplyToTheInterview[];
extern const u8 gText_TheAnswer[];
extern const u8 gText_TheBardsSong[];
extern const u8 gText_ChangeJustOneWordOrPhrase[];
extern const u8 gText_AndImproveTheBardsSong[];
extern const u8 gText_TheBardsSong2[];
extern const u8 gText_FindWordsThatDescribeYour[];
extern const u8 gText_FeelingsRightNow[];
extern const u8 gText_WhatsHipAndHappening[];
extern const u8 gText_CombineTwoWordsOrPhrases[];
extern const u8 gText_AndMakeATrendySaying[];
extern const u8 gText_TheTrendySaying[];
extern const u8 gText_AfterYouHaveReadTheQuiz[];
extern const u8 gText_QuestionPressTheAButton[];
extern const u8 gText_TheQuizAnswerIs[];
extern const u8 gText_OutOfTheListedChoices[];
extern const u8 gText_SelectTheAnswerToTheQuiz[];
extern const u8 gText_TheAnswerColon[];
extern const u8 gText_AndCreateAQuiz[];
extern const u8 gText_IsThisQuizOK[];
extern const u8 gText_PickAWordOrPhraseAnd[];
extern const u8 gText_SetTheQuizAnswer[];
extern const u8 gText_ApprenticesPhrase[];
extern const u8 gText_FindWordsWhichFit[];
extern const u8 gText_TheTrainersImage[];
extern const u8 gText_ApprenticePhrase[];
extern const u8 gText_GoodSaying[];
extern const u8 gText_CombineTwoWordsOrPhrases2[];
extern const u8 gText_ToTeachHerAGoodSaying[];
extern const u8 gText_FansQuestion[];
extern const u8 gText_TheImage[];
extern const u8 gText_Questionnaire[];
extern const u8 gText_AndFillOutTheQuestionnaire[];
extern const u8 gText_DelAll[];
extern const u8 gText_Cancel5[];
extern const u8 gText_Ok2[];
extern const u8 gText_Quiz[];
extern const u8 gText_Answer[];
extern const u8 gEasyChatGroupName_Pokemon[];
extern const u8 gEasyChatGroupName_Trainer[];
extern const u8 gEasyChatGroupName_Status[];
extern const u8 gEasyChatGroupName_Battle[];
extern const u8 gEasyChatGroupName_Greetings[];
extern const u8 gEasyChatGroupName_People[];
extern const u8 gEasyChatGroupName_Voices[];
extern const u8 gEasyChatGroupName_Speech[];
extern const u8 gEasyChatGroupName_Endings[];
extern const u8 gEasyChatGroupName_Feelings[];
extern const u8 gEasyChatGroupName_Conditions[];
extern const u8 gEasyChatGroupName_Actions[];
extern const u8 gEasyChatGroupName_Lifestyle[];
extern const u8 gEasyChatGroupName_Hobbies[];
extern const u8 gEasyChatGroupName_Time[];
extern const u8 gEasyChatGroupName_Misc[];
extern const u8 gEasyChatGroupName_Adjectives[];
extern const u8 gEasyChatGroupName_Events[];
extern const u8 gEasyChatGroupName_Move1[];
extern const u8 gEasyChatGroupName_Move2[];
extern const u8 gEasyChatGroupName_TrendySaying[];
extern const u8 gEasyChatGroupName_Pokemon2[];

extern const u8 gUnknown_862B810[];
extern const u8 gUnknown_862B832[];
extern const u8 gUnknown_862B84B[];
extern const u8 gUnknown_862B86C[];
extern const u8 gUnknown_0862B88D[];
extern const u8 gUnknown_0862B8AE[];
extern const u8 gUnknown_0862B8CF[];
extern const u8 gUnknown_0862B8F0[];
extern const u8 gUnknown_0862B911[];
extern const u8 gUnknown_0862B932[];
extern const u8 gUnknown_0862B953[];
extern const u8 gUnknown_0862B974[];
extern const u8 gUnknown_0862B995[];
extern const u8 gUnknown_0862B9AE[];
extern const u8 gUnknown_0862B9C7[];
extern const u8 gUnknown_0862B9E0[];
extern const u8 gUnknown_0862B9F9[];
extern const u8 gUnknown_0862B9FF[];
extern const u8 gUnknown_0862BA05[];
extern const u8 gUnknown_0862BA0B[];
extern const u8 gUnknown_0862BA11[];
extern const u8 gUnknown_0862BA17[];
extern const u8 gUnknown_0862BA1D[];
extern const u8 gUnknown_0862BA23[];
extern const u8 gUnknown_0862BA29[];
extern const u8 gUnknown_0862BA2F[];
extern const u8 gUnknown_0862BA35[];
extern const u8 gUnknown_0862BA3B[];
extern const u8 gUnknown_0862BA41[];
extern const u8 gUnknown_0862BA47[];
extern const u8 gUnknown_0862BA4D[];
extern const u8 gUnknown_0862BA53[];
extern const u8 gUnknown_0862BA59[];
extern const u8 gUnknown_0862BA5F[];
extern const u8 gUnknown_0862BA65[];
extern const u8 gUnknown_0862BA6B[];
extern const u8 gUnknown_0862BA79[];
extern const u8 gUnknown_0862BA84[];
extern const u8 gUnknown_0862BA8F[];
extern const u8 gUnknown_0862BA9A[];
extern const u8 gUnknown_0862BAA3[];
extern const u8 gUnknown_0862BAAE[];
extern const u8 gUnknown_0862BAB9[];
extern const u8 gUnknown_0862BAC4[];
extern const u8 gUnknown_0862BACF[];
extern const u8 gUnknown_0862BADA[];


extern const u8 gUnknown_085EDFD6[];
extern const u8 gUnknown_085EDFF5[];
extern const u8 gUnknown_085EE014[];
extern const u8 gUnknown_085EE035[];
extern const u8 gUnknown_085EE05C[];
extern const u8 gUnknown_085EE06B[];
extern const u8 gUnknown_085EE080[];
extern const u8 gUnknown_085EE097[];
extern const u8 gUnknown_085EE0A3[];
extern const u8 gUnknown_085EE0BF[];
extern const u8 gUnknown_085EE0DC[];
extern const u8 gUnknown_085EE0FA[];
extern const u8 gUnknown_085EE107[];
extern const u8 gUnknown_085EE120[];
extern const u8 gUnknown_085EE12D[];
extern const u8 gUnknown_085EE14B[];
extern const u8 gUnknown_085EE14F[];
extern const u8 gUnknown_085EE154[];


extern const u8 gText_Powder[];


extern const u8 gText_F700JoinedChat[];
extern const u8 gText_F700LeftChat[];
extern const u8 gText_Hello[];
extern const u8 gText_Pokemon2[];
extern const u8 gText_Trade[];
extern const u8 gText_Battle[];
extern const u8 gText_Lets[];
extern const u8 gText_Ok[];
extern const u8 gText_Sorry[];
extern const u8 gText_YayUnkF9F9[];
extern const u8 gText_ThankYou[];
extern const u8 gText_ByeBye[];


extern const u8 gText_MysteryGift[];
extern const u8 gText_PickOKCancel[];
extern const u8 gText_PickOKExit[];
extern const u8 gJPText_MysteryGift[];
extern const u8 gJPText_DecideStop[];
extern const u8 gText_WonderCards[];
extern const u8 gText_WonderNews[];
extern const u8 gText_Exit3[];
extern const u8 gText_WirelessCommunication[];
extern const u8 gText_Friend2[];
extern const u8 gText_Cancel2[];
extern const u8 gText_Receive[];
extern const u8 gText_Send[];
extern const u8 gText_Toss[];
extern const u8 gText_VarietyOfEventsImportedWireless[];
extern const u8 gText_WonderCardsInPossession[];
extern const u8 gText_ReadNewsThatArrived[];
extern const u8 gText_ReturnToTitle[];
extern const u8 gText_WhatToDoWithCards[];
extern const u8 gText_WhatToDoWithNews[];
extern const u8 gText_IfThrowAwayCardEventWontHappen[];
extern const u8 gText_OkayToDiscardNews[];
extern const u8 gText_WonderNewsThrownAway[];
extern const u8 gText_WonderCardThrownAway[];
extern const u8 gText_DataWillBeSaved[];
extern const u8 gText_SaveCompletedPressA[];
extern const u8 gText_NothingSentOver[];
extern const u8 gText_RecordUploadedViaWireless[];
extern const u8 gText_WonderCardReceivedFrom[];
extern const u8 gText_WonderCardReceived[];
extern const u8 gText_WonderNewsReceivedFrom[];
extern const u8 gText_WonderNewsReceived[];
extern const u8 gText_NewStampReceived[];
extern const u8 gText_AlreadyHadCard[];
extern const u8 gText_AlreadyHadStamp[];
extern const u8 gText_AlreadyHadNews[];
extern const u8 gText_NoMoreRoomForStamps[];
extern const u8 gText_CommunicationCanceled[];
extern const u8 gText_CantAcceptNewsFromTrainer[];
extern const u8 gText_CantAcceptCardFromTrainer[];
extern const u8 gText_CommunicationError[];
extern const u8 gText_NewTrainerReceived[];
extern const u8 gText_RecordUploadedViaWireless[];
extern const u8 gText_WonderCardSentTo[];
extern const u8 gText_WonderNewsSentTo[];
extern const u8 gText_StampSentTo[];
extern const u8 gText_OtherTrainerHasCard[];
extern const u8 gText_OtherTrainerHasStamp[];
extern const u8 gText_OtherTrainerHasNews[];
extern const u8 gText_NoMoreRoomForStamps[];
extern const u8 gText_OtherTrainerCanceled[];
extern const u8 gText_GiftSentTo[];
extern const u8 gText_CantSendGiftToTrainer[];
extern const u8 gText_DontHaveCardNewOneInput[];
extern const u8 gText_DontHaveNewsNewOneInput[];
extern const u8 gText_WhereShouldCardBeAccessed[];
extern const u8 gText_WhereShouldNewsBeAccessed[];
extern const u8 gText_Communicating[];
extern const u8 gText_ThrowAwayWonderCard[];
extern const u8 gText_HaventReceivedCardsGift[];
extern const u8 gText_CommunicationCompleted[];
extern const u8 gText_HaventReceivedGiftOkayToDiscard[];
extern const u8 gText_SendingWonderCard[];
extern const u8 gText_SendingWonderNews[];
extern const u8 gText_WirelessCommStatus[];
extern const u8 gText_PeopleTrading[];
extern const u8 gText_PeopleBattling[];
extern const u8 gText_PeopleInUnionRoom[];
extern const u8 gText_PeopleCommunicating[];
extern const u8 gText_CommStandbyAwaitingOtherPlayer[];
extern const u8 gText_RefusedBattle[];
extern const u8 gText_BattleWasRefused[];
extern const u8 gText_QuitChatting[];
extern const u8 gText_RegisterTextWhere[];
extern const u8 gText_RegisterTextHere[];
extern const u8 gText_InputText[];
extern const u8 gText_ExitingChat[];
extern const u8 gText_LeaderLeftEndingChat[];
extern const u8 gText_RegisteredTextChanged[];
extern const u8 gText_AlreadySavedFile_Unused[];
extern const u8 gText_SavingDontTurnOff_Unused[];
extern const u8 gText_PlayerSavedGame_Unused[];
extern const u8 gText_IfLeaderLeavesChatEnds[];
extern const u8 gText_Upper[];
extern const u8 gText_Lower[];
extern const u8 gText_Symbols[];
extern const u8 gText_Register2[];
extern const u8 gText_Exit2[];


extern const u8 gText_BerryPickingRecords[];
extern const u8 gText_BerriesPicked[];
extern const u8 gText_BerriesInRowFivePlayers[];
extern const u8 gText_BestScore[];
extern const u8 gText_1Colon[];
extern const u8 gText_2Colon[];
extern const u8 gText_3Colon[];
extern const u8 gText_4Colon[];
extern const u8 gText_5Colon[];
extern const u8 gText_SpacePoints[];
extern const u8 gText_10P30P50P50P[];
extern const u8 gText_AnnouncingPrizes[];
extern const u8 gText_AnnouncingRankings[];
extern const u8 gText_FirstPlacePrize[];
extern const u8 gText_CantHoldAnyMore[];
extern const u8 gText_FilledStorageSpace[];
extern const u8 gText_BerryPickingResults[];
extern const u8 gText_WantToPlayAgain[];
extern const u8 gText_CommunicationStandby3[];
extern const u8 gText_SomeoneDroppedOut[];


extern const u8 gText_WantToPlayAgain2[];
extern const u8 gText_SomeoneDroppedOut2[];
extern const u8 gText_CommunicationStandby4[];
extern const u8 gText_AwesomeWonF701F700[];
extern const u8 gText_FilledStorageSpace2[];
extern const u8 gText_CantHoldMore[];
extern const u8 gText_SpacePoints2[];
extern const u8 gText_SpaceTimes3[];
extern const u8 gText_PkmnJumpRecords[];
extern const u8 gText_JumpsInARow[];
extern const u8 gText_BestScore2[];
extern const u8 gText_ExcellentsInARow[];


extern const u8 gText_ContestLady_Handsome[];
extern const u8 gText_ContestLady_Vinny[];
extern const u8 gText_ContestLady_Moreme[];
extern const u8 gText_ContestLady_Ironhard[];
extern const u8 gText_ContestLady_Muscle[];
extern const u8 gText_ContestLady_Coolness[];
extern const u8 gText_ContestLady_Beauty[];
extern const u8 gText_ContestLady_Cuteness[];
extern const u8 gText_ContestLady_Smartness[];
extern const u8 gText_ContestLady_Toughness[];
extern const u8 gText_QuizLady_Lady[];
extern const u8 gText_FavorLady_Slippery[];
extern const u8 gText_FavorLady_Roundish[];
extern const u8 gText_FavorLady_Whamish[];
extern const u8 gText_FavorLady_Shiny[];
extern const u8 gText_FavorLady_Sticky[];
extern const u8 gText_FavorLady_Pointy[];

extern const u8 gText_CoolnessContest[];
extern const u8 gText_BeautyContest[];
extern const u8 gText_CutenessContest[];
extern const u8 gText_SmartnessContest[];
extern const u8 gText_ToughnessContest[];


extern const u8 gText_CallCantBeMadeHere[];
extern const u8 gText_NumberRegistered[];
extern const u8 gText_NumberOfBattles[];
extern const u8 gText_Unknown[];
extern const u8 gText_TrainerCloseBy[];


extern const u8 gUnknown_085EBCC5[];
extern const u8 gUnknown_085EBCE8[];
extern const u8 gUnknown_085EBD01[];
extern const u8 gUnknown_085EBD1C[];
extern const u8 gUnknown_085EBD34[];
extern const u8 gUnknown_085EBD83[];
extern const u8 gUnknown_085EBDA2[];
extern const u8 gUnknown_085EBDBF[];
extern const u8 gUnknown_085EBDDB[];
extern const u8 gUnknown_085EBDEE[];
extern const u8 gUnknown_085EBE06[];
extern const u8 gUnknown_085EBE19[];
extern const u8 gUnknown_085EBE2D[];
extern const u8 gUnknown_085EBE41[];
extern const u8 gText_NoRibbonWinners[];


extern const u8 gUnknown_085EC017[];
extern const u8 gUnknown_085EC01C[];
extern const u8 gUnknown_085EC022[];


extern const u8 gText_NumberF700[];


extern const u8 gText_RibbonsF700[];


extern const u8 gText_Coolness[];
extern const u8 gText_Toughness[];
extern const u8 gText_Smartness[];
extern const u8 gText_Cuteness[];
extern const u8 gText_Beauty3[];
# 3 "src/strings.c" 2

__attribute__((aligned(4)))
const u8 gExpandedPlaceholder_Empty[] = _("");
const u8 gExpandedPlaceholder_Kun[] = _("");
const u8 gExpandedPlaceholder_Chan[] = _("");
const u8 gExpandedPlaceholder_Sapphire[] = _("SAPPHIRE");
const u8 gExpandedPlaceholder_Ruby[] = _("RUBY");
const u8 gExpandedPlaceholder_Emerald[] = _("EMERALD");
const u8 gExpandedPlaceholder_Aqua[] = _("AQUA");
const u8 gExpandedPlaceholder_Magma[] = _("MAGMA");
const u8 gExpandedPlaceholder_Archie[] = _("ARCHIE");
const u8 gExpandedPlaceholder_Maxie[] = _("MAXIE");
const u8 gExpandedPlaceholder_Kyogre[] = _("KYOGRE");
const u8 gExpandedPlaceholder_Groudon[] = _("GROUDON");
const u8 gExpandedPlaceholder_Brendan[] = _("BRENDAN");
const u8 gExpandedPlaceholder_May[] = _("MAY");
const u8 gText_EggNickname[] = _("EGG");
const u8 gText_Pokemon[] = _("POKéMON");
const u8 gProfBirchMatchCallName[] = _("PROF. BIRCH");
const u8 gText_MainMenuNewGame[] = _("NEW GAME");
const u8 gText_MainMenuContinue[] = _("CONTINUE");
const u8 gText_MainMenuOption[] = _("OPTION");
const u8 gText_MainMenuMysteryGift[] = _("MYSTERY GIFT");
const u8 gText_MainMenuMysteryGift2[] = _("MYSTERY GIFT");
const u8 gText_MainMenuMysteryEvents[] = _("MYSTERY EVENTS");
const u8 gText_WirelessNotConnected[] = _("The Wireless Adapter is not\nconnected.");
const u8 gText_MysteryGiftCantUse[] = _("MYSTERY GIFT can't be used while\nthe Wireless Adapter is attached.");
const u8 gText_MysteryEventsCantUse[] = _("MYSTERY EVENTS can't be used while\nthe Wireless Adapter is attached.");
const u8 gUnknown_085E836D[] = _("Updating save file using external\ndata. Please wait.");
const u8 gUnknown_085E83A2[] = _("The save file has been updated.");
const u8 gText_SaveFileCorrupted[] = _("The save file is corrupted. The\nprevious save file will be loaded.");
const u8 gText_SaveFileErased[] = _("The save file has been erased\ndue to corruption or damage.");
const u8 gJPText_No1MSubCircuit[] = _("1Mサブきばんが ささっていません！");
const u8 gText_BatteryRunDry[] = _("The internal battery has run dry.\nThe game can be played.\pHowever, clock-based events will\nno longer occur.");
const u8 gUnknown_085E84BF[] = _("PLAYER");
const u8 gUnknown_085E84C6[] = _("POKéDEX");
const u8 gText_MainMenuTime[] = _("TIME");
const u8 gUnknown_085E84D3[] = _("BADGES");
const u8 gUnknown_085E84DA[] = _("A Button");
const u8 gUnknown_085E84E3[] = _("B Button");
const u8 gUnknown_085E84EC[] = _("R Button");
const u8 gUnknown_085E84F5[] = _("L Button");
const u8 gUnknown_085E84FE[] = _("START");
const u8 gUnknown_085E8504[] = _("SELECT");
const u8 gUnknown_085E850B[] = _("+ Control Pad");
const u8 gUnknown_085E8519[] = _("L Button  R Button");
const u8 gUnknown_085E852C[] = _("CONTROLS");
__attribute__((aligned(4))) const u8 gUnknown_085E8538[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}OK");
__attribute__((aligned(4))) const u8 gUnknown_085E8544[] = _("{A_BUTTON}NEXT");
__attribute__((aligned(4))) const u8 gUnknown_085E854C[] = _("{A_BUTTON}NEXT {B_BUTTON}BACK");
__attribute__((aligned(4))) const u8 gText_PickNextCancel[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}NEXT {B_BUTTON}CANCEL");
__attribute__((aligned(4))) const u8 gText_PickCancel[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}{B_BUTTON}CANCEL");
__attribute__((aligned(4))) const u8 gText_UnkCtrlF800Exit[] = _("{A_BUTTON}EXIT");
const u8 gText_BirchBoy[] = _("BOY");
const u8 gText_BirchGirl[] = _("GIRL");
const u8 gText_DefaultNameStu[] = _("STU");
const u8 gText_DefaultNameMilton[] = _("MILTON");
const u8 gText_DefaultNameTom[] = _("TOM");
const u8 gText_DefaultNameKenny[] = _("KENNY");
const u8 gText_DefaultNameReid[] = _("REID");
const u8 gText_DefaultNameJude[] = _("JUDE");
const u8 gText_DefaultNameJaxson[] = _("JAXSON");
const u8 gText_DefaultNameEaston[] = _("EASTON");
const u8 gText_DefaultNameWalker[] = _("WALKER");
const u8 gText_DefaultNameTeru[] = _("TERU");
const u8 gText_DefaultNameJohnny[] = _("JOHNNY");
const u8 gText_DefaultNameBrett[] = _("BRETT");
const u8 gText_DefaultNameSeth[] = _("SETH");
const u8 gText_DefaultNameTerry[] = _("TERRY");
const u8 gText_DefaultNameCasey[] = _("CASEY");
const u8 gText_DefaultNameDarren[] = _("DARREN");
const u8 gText_DefaultNameLandon[] = _("LANDON");
const u8 gText_DefaultNameCollin[] = _("COLLIN");
const u8 gText_DefaultNameStanley[] = _("STANLEY");
const u8 gText_DefaultNameQuincy[] = _("QUINCY");
const u8 gText_DefaultNameKimmy[] = _("KIMMY");
const u8 gText_DefaultNameTiara[] = _("TIARA");
const u8 gText_DefaultNameBella[] = _("BELLA");
const u8 gText_DefaultNameJayla[] = _("JAYLA");
const u8 gText_DefaultNameAllie[] = _("ALLIE");
const u8 gText_DefaultNameLianna[] = _("LIANNA");
const u8 gText_DefaultNameSara[] = _("SARA");
const u8 gText_DefaultNameMonica[] = _("MONICA");
const u8 gText_DefaultNameCamila[] = _("CAMILA");
const u8 gText_DefaultNameAubree[] = _("AUBREE");
const u8 gText_DefaultNameRuthie[] = _("RUTHIE");
const u8 gText_DefaultNameHazel[] = _("HAZEL");
const u8 gText_DefaultNameNadine[] = _("NADINE");
const u8 gText_DefaultNameTanja[] = _("TANJA");
const u8 gText_DefaultNameYasmin[] = _("YASMIN");
const u8 gText_DefaultNameNicola[] = _("NICOLA");
const u8 gText_DefaultNameLillie[] = _("LILLIE");
const u8 gText_DefaultNameTerra[] = _("TERRA");
const u8 gText_DefaultNameLucy[] = _("LUCY");
const u8 gText_DefaultNameHalie[] = _("HALIE");
const u8 gText_ThisIsAPokemon[] = _("This is what we call a “POKéMON.”{PAUSE 96}\p");
const u8 gText_5MarksPokemon[] = _("????? POKéMON");
const u8 gText_UnkHeight[] = _("{CLEAR_TO 0x0C}??'??”");
const u8 gText_UnkWeight[] = _("????.? lbs.");
const u8 gUnknown_085E86DC[] = _("                       POKéMON");
const u8 gUnknown_085E86FB[] = _("{CLEAR_TO 0x0C}    '    ”");
const u8 gUnknown_085E8709[] = _("        .   lbs.");
const u8 gUnknown_085E871A[] = _("");
const u8 gText_CryOf[] = _("CRY OF");
const u8 gUnknown_085E8722[] = _("");
const u8 gText_SizeComparedTo[] = _("SIZE COMPARED TO ");
const u8 gText_PokedexRegistration[] = _("POKéDEX registration completed.");
const u8 gText_HTHeight[] = _("HT");
const u8 gText_WTWeight[] = _("WT");
const u8 gText_SearchingPleaseWait[] = _("Searching…\nPlease wait.");
const u8 gText_SearchCompleted[] = _("Search completed.");
const u8 gUnknown_085E8785[] = _("No matching POKéMON were found.");
const u8 gUnknown_085E87A5[] = _("Search for POKéMON based on\nselected parameters.");
const u8 gUnknown_085E87D6[] = _("Switch POKéDEX listings.");
const u8 gUnknown_085E87EF[] = _("Return to the POKéDEX.");
const u8 gUnknown_085E8806[] = _("Select the POKéDEX mode.");
const u8 gUnknown_085E881F[] = _("Select the POKéDEX listing mode.");
const u8 gUnknown_085E8840[] = _("List by the first letter in the name.\nSpotted POKéMON only.");
const u8 gUnknown_085E887C[] = _("List by body color.\nSpotted POKéMON only.");
const u8 gUnknown_085E88A6[] = _("List by type.\nOwned POKéMON only.");
const u8 gUnknown_085E88C8[] = _("Execute search/switch.");
const u8 gText_DexHoennTitle[] = _("HOENN DEX");
const u8 gText_DexNatTitle[] = _("NATIONAL DEX");
const u8 gText_DexSortNumericalTitle[] = _("NUMERICAL MODE");
const u8 gText_DexSortAtoZTitle[] = _("A TO Z MODE");
const u8 gText_DexSortHeaviestTitle[] = _("HEAVIEST MODE");
const u8 gText_DexSortLightestTitle[] = _("LIGHTEST MODE");
const u8 gText_DexSortTallestTitle[] = _("TALLEST MODE");
const u8 gText_DexSortSmallestTitle[] = _("SMALLEST MODE");
const u8 gText_DexSearchAlphaABC[] = _("ABC");
const u8 gText_DexSearchAlphaDEF[] = _("DEF");
const u8 gText_DexSearchAlphaGHI[] = _("GHI");
const u8 gText_DexSearchAlphaJKL[] = _("JKL");
const u8 gText_DexSearchAlphaMNO[] = _("MNO");
const u8 gText_DexSearchAlphaPQR[] = _("PQR");
const u8 gText_DexSearchAlphaSTU[] = _("STU");
const u8 gText_DexSearchAlphaVWX[] = _("VWX");
const u8 gText_DexSearchAlphaYZ[] = _("YZ");
const u8 gText_DexSearchColorRed[] = _("RED");
const u8 gText_DexSearchColorBlue[] = _("BLUE");
const u8 gText_DexSearchColorYellow[] = _("YELLOW");
const u8 gText_DexSearchColorGreen[] = _("GREEN");
const u8 gText_DexSearchColorBlack[] = _("BLACK");
const u8 gText_DexSearchColorBrown[] = _("BROWN");
const u8 gText_DexSearchColorPurple[] = _("PURPLE");
const u8 gText_DexSearchColorGray[] = _("GRAY");
const u8 gText_DexSearchColorWhite[] = _("WHITE");
const u8 gText_DexSearchColorPink[] = _("PINK");
const u8 gText_DexHoennDescription[] = _("HOENN region's POKéDEX");
const u8 gText_DexNatDescription[] = _("National edition POKéDEX");
const u8 gText_DexSortNumericalDescription[] = _("POKéMON are listed according to their\nnumber.");
const u8 gText_DexSortAtoZDescription[] = _("Spotted and owned POKéMON are listed\nalphabetically.");
const u8 gText_DexSortHeaviestDescription[] = _("Owned POKéMON are listed from the\nheaviest to the lightest.");
const u8 gText_DexSortLightestDescription[] = _("Owned POKéMON are listed from the\nlightest to the heaviest.");
const u8 gText_DexSortTallestDescription[] = _("Owned POKéMON are listed from the\ntallest to the smallest.");
const u8 gText_DexSortSmallestDescription[] = _("Owned POKéMON are listed from the\nsmallest to the tallest.");
const u8 gText_DexEmptyString[] = _("");
const u8 gText_DexSearchDontSpecify[] = _("DON'T SPECIFY.");
const u8 gText_DexSearchTypeNone[] = _("NONE");
const u8 gText_SelectorArrow[] = _("▶");
const u8 gUnknown_085E8B3C[] = _(" ");
const u8 gText_WelcomeToHOF[] = _("Welcome to the HALL OF FAME!");
const u8 gText_HOFDexRating[] = _("Spotted POKéMON: {STR_VAR_1}!\nOwned POKéMON: {STR_VAR_2}!\pPROF. BIRCH's POKéDEX rating!\pPROF. BIRCH: Let's see…\p");
const u8 gText_HOFDexSaving[] = _("SAVING…\nDON'T TURN OFF THE POWER.");
const u8 gText_HOFCorrupted[] = _("The HALL OF FAME data is corrupted.");
const u8 gText_HOFNumber[] = _("HALL OF FAME No. {STR_VAR_1}");
const u8 gText_LeagueChamp[] = _("LEAGUE CHAMPION!\nCONGRATULATIONS!");
const u8 gText_Number[] = _("No. ");
const u8 gText_Level[] = _("Lv. ");
const u8 gUnknown_085E8C40[] = _("IDNo. /");
const u8 gText_Name[] = _("NAME");
const u8 gText_IDNumber[] = _("IDNo.");
const u8 gText_BirchInTrouble[] = _("PROF. BIRCH is in trouble!\nRelease a POKéMON and rescue him!");
const u8 gText_ConfirmStarterChoice[] = _("Do you choose this POKéMON?");
const u8 gUnknown_085E8CAC[] = _("POKéMON");
const u8 gText_FlyToWhere[] = _("FLY to where?");
const u8 gMenuText_Use[] = _("USE");
const u8 gMenuText_Toss[] = _("TOSS");
const u8 gMenuText_Register[] = _("REGISTER");
const u8 gMenuText_Give[] = _("GIVE");
const u8 gMenuText_CheckTag[] = _("CHECK TAG");
const u8 gMenuText_Confirm[] = _("CONFIRM");
const u8 gMenuText_Walk[] = _("WALK");
const u8 gText_Cancel[] = _("CANCEL");
const u8 gText_Cancel2[] = _("CANCEL");
const u8 gMenuText_Show[] = _("SHOW");
const u8 gText_EmptyString2[] = _("");
const u8 gUnknown_085E8D04[] = _("CANCEL");
const u8 gText_Item[] = _("ITEM");
const u8 gText_Mail[] = _("MAIL");
const u8 gText_Take[] = _("TAKE");
const u8 gText_Store[] = _("STORE");
const u8 gMenuText_Check[] = _("CHECK");
const u8 gText_None[] = _("NONE");
const u8 gMenuText_Deselect[] = _("DESELECT");
const u8 gText_ThreeMarks[] = _("???");
const u8 gText_FiveMarks[] = _("?????");
const u8 gText_Slash[] = _("/");
const u8 gText_OneDash[] = _("-");
const u8 gText_TwoDashes[] = _("--");
const u8 gText_ThreeDashes[] = _("---");
const u8 gText_MaleSymbol[] = _("♂");
const u8 gText_FemaleSymbol[] = _("♀");
const u8 gText_LevelSymbol[] = _("{LV}");
const u8 gText_UnkCtrlF908Clear01[] = _("{NO}{CLEAR 0x01}");
const u8 gUnknown_085E8D55[] = _("+");
const u8 gUnknown_085E8D57[] = _("{RIGHT_ARROW}");
const u8 gText_UnkCtrlF907F908[] = _("{ID}{NO}");
const u8 gText_Space[] = _(" ");
const u8 gText_SelectorArrow2[] = _("▶");
const u8 gText_GoBackPrevMenu[] = _("Go back to the\nprevious menu.");
const u8 gText_WhatWouldYouLike[] = _("What would you like to do?");
const u8 gMenuText_Give2[] = _("GIVE");
const u8 gText_xVar1[] = _("×{STR_VAR_1}");
const u8 gUnknown_085E8DA4[] = _(" BERRY");
const u8 gText_Coins[] = _("{STR_VAR_1} COINS");
const u8 gText_CloseBag[] = _("CLOSE BAG");
const u8 gText_Var1IsSelected[] = _("{STR_VAR_1} is\nselected.");
const u8 gText_CantWriteMail[] = _("You can't write\nMAIL here.");
const u8 gText_NoPokemon[] = _("There is no\nPOKéMON.");
const u8 gText_MoveVar1Where[] = _("Move the\n{STR_VAR_1}\nwhere?");
const u8 gText_Var1CantBeHeld[] = _("The {STR_VAR_1} can't be held.");
const u8 gText_Var1CantBeHeldHere[] = _("The {STR_VAR_1} can't be held\nhere.");
const u8 gText_DepositHowManyVar1[] = _("Deposit how many\n{STR_VAR_1}(s)?");
const u8 gText_DepositedVar2Var1s[] = _("Deposited {STR_VAR_2}\n{STR_VAR_1}(s).");
const u8 gText_NoRoomForItems[] = _("There's no room to\nstore items.");
const u8 gText_CantStoreImportantItems[] = _("Important items\ncan't be stored in\nthe PC!");
const u8 gText_TooImportantToToss[] = _("That's much too\nimportant to toss\nout!");
const u8 gText_TossHowManyVar1s[] = _("Toss out how many\n{STR_VAR_1}(s)?");
const u8 gText_ThrewAwayVar2Var1s[] = _("Threw away {STR_VAR_2}\n{STR_VAR_1}(s).");
const u8 gText_ConfirmTossItems[] = _("Is it okay to\nthrow away {STR_VAR_2}\n{STR_VAR_1}(s)?");
const u8 gText_DadsAdvice[] = _("DAD's advice…\n{PLAYER}, there's a time and place for\leverything!{PAUSE_UNTIL_PRESS}");
const u8 gText_CantDismountBike[] = _("You can't dismount your BIKE here.{PAUSE_UNTIL_PRESS}");
const u8 gText_ItemFinderNearby[] = _("Huh?\nThe ITEMFINDER's responding!\pThere's an item buried around here!{PAUSE_UNTIL_PRESS}");
const u8 gText_ItemFinderOnTop[] = _("Oh!\nThe ITEMFINDER's shaking wildly!{PAUSE_UNTIL_PRESS}");
const u8 gText_ItemFinderNothing[] = _("… … … …Nope!\nThere's no response.{PAUSE_UNTIL_PRESS}");
const u8 gText_CoinCase[] = _("Your COINS:\n{STR_VAR_1}{PAUSE_UNTIL_PRESS}");
const u8 gText_BootedUpTM[] = _("Booted up a TM.");
const u8 gText_BootedUpHM[] = _("Booted up an HM.");
const u8 gText_TMHMContainedVar1[] = _("It contained\n{STR_VAR_1}.\pTeach {STR_VAR_1}\nto a POKéMON?");
const u8 gText_PlayerUsedVar2[] = _("{PLAYER} used the\n{STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_RepelEffectsLingered[] = _("But the effects of a REPEL\nlingered from earlier.{PAUSE_UNTIL_PRESS}");
const u8 gText_UsedVar2WildLured[] = _("{PLAYER} used the\n{STR_VAR_2}.\pWild POKéMON will be lured.{PAUSE_UNTIL_PRESS}");
const u8 gText_UsedVar2WildRepelled[] = _("{PLAYER} used the\n{STR_VAR_2}.\pWild POKéMON will be repelled.{PAUSE_UNTIL_PRESS}");
const u8 gText_BoxFull[] = _("The BOX is full.{PAUSE_UNTIL_PRESS}");
const u8 gText_PowderQty[] = _("POWDER QTY: {STR_VAR_1}{PAUSE_UNTIL_PRESS}");
const u8 gText_TheField[] = _("the field");
const u8 gText_TheBattle[] = _("the battle");
const u8 gText_ThePokemonList[] = _("the POKéMON LIST");
const u8 gText_TheShop[] = _("the shop");
const u8 gText_ThePC[] = _("the PC");

const u8 *const gReturnToXStringsTable[] =
{
    gText_TheField,
    gText_TheBattle,
    gText_ThePokemonList,
    gText_TheShop,
    gText_TheField,
    gText_TheField,
    gText_ThePC,
    gText_TheField,
    gText_TheField,
    gText_TheField,
    gText_TheBattle,
    gText_ThePC
};

const u8 *const gReturnToXStringsTable2[] =
{
    gText_TheField,
    gText_TheBattle,
    gText_ThePokemonList,
    gText_TheField
};

const u8 gText_ReturnToVar1[] = _("Return to\n{STR_VAR_1}.");
const u8 gText_ItemsPocket[] = _("ITEMS");
const u8 gText_PokeBallsPocket[] = _("POKé BALLS");
const u8 gText_TMHMPocket[] = _("TMs & HMs");
const u8 gText_BerriesPocket[] = _("BERRIES");
const u8 gText_KeyItemsPocket[] = _("KEY ITEMS");

const u8 *const gPocketNamesStringsTable[] =
{
    gText_ItemsPocket,
    gText_PokeBallsPocket,
    gText_TMHMPocket,
    gText_BerriesPocket,
    gText_KeyItemsPocket
};

const u8 gText_UnkF908Var1Clear7Var2[] = _("{NO}{STR_VAR_1}{CLEAR 0x07}{STR_VAR_2}");
const u8 gText_ClearTo11Var1Clear5Var2[] = _("{CLEAR_TO 0x11}{STR_VAR_1}{CLEAR 0x05}{STR_VAR_2}");
const u8 gText_SizeSlash[] = _("SIZE /");
const u8 gText_FirmSlash[] = _("FIRM /");
const u8 gText_Var1DotVar2[] = _("{STR_VAR_1}.{STR_VAR_2}”");


const u8 gBerryFirmnessString_VerySoft[] = _("Very soft");
const u8 gBerryFirmnessString_Soft[] = _("Soft");
const u8 gBerryFirmnessString_Hard[] = _("Hard");
const u8 gBerryFirmnessString_VeryHard[] = _("Very hard");
const u8 gBerryFirmnessString_SuperHard[] = _("Super hard");

const u8 gText_UnkF908Var1Var2[] = _("{NO}{STR_VAR_1} {STR_VAR_2}");
const u8 gText_BerryTag[] = _("BERRY TAG");
const u8 gText_RedPokeblock[] = _("RED {POKEBLOCK}");
const u8 gText_BluePokeblock[] = _("BLUE {POKEBLOCK}");
const u8 gText_PinkPokeblock[] = _("PINK {POKEBLOCK}");
const u8 gText_GreenPokeblock[] = _("GREEN {POKEBLOCK}");
const u8 gText_YellowPokeblock[] = _("YELLOW {POKEBLOCK}");
const u8 gText_PurplePokeblock[] = _("PURPLE {POKEBLOCK}");
const u8 gText_IndigoPokeblock[] = _("INDIGO {POKEBLOCK}");
const u8 gText_BrownPokeblock[] = _("BROWN {POKEBLOCK}");
const u8 gText_LiteBluePokeblock[] = _("LITEBLUE {POKEBLOCK}");
const u8 gText_OlivePokeblock[] = _("OLIVE {POKEBLOCK}");
const u8 gText_GrayPokeblock[] = _("GRAY {POKEBLOCK}");
const u8 gText_BlackPokeblock[] = _("BLACK {POKEBLOCK}");
const u8 gText_WhitePokeblock[] = _("WHITE {POKEBLOCK}");
const u8 gText_GoldPokeblock[] = _("GOLD {POKEBLOCK}");
const u8 gText_Spicy[] = _("SPICY");
const u8 gText_Dry[] = _("DRY");
const u8 gText_Sweet[] = _("SWEET");
const u8 gText_Bitter[] = _("BITTER");
const u8 gText_Sour[] = _("SOUR");
const u8 gUnknown_085E9339[] = _("TASTY");
const u8 gUnknown_085E933F[] = _("FEEL");
const u8 gText_StowCase[] = _("Stow CASE.");
const u8 gText_LvVar1[] = _("{LV}{STR_VAR_1}");
const u8 gText_ThrowAwayVar1[] = _("Throw away this\n{STR_VAR_1}?");
const u8 gText_Var1ThrownAway[] = _("The {STR_VAR_1}\nwas thrown away.");
const u8 gText_Var1AteTheVar2[] = _("{STR_VAR_1} ate the\n{STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_Var1HappilyAteVar2[] = _("{STR_VAR_1} happily ate the\n{STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_Var1DisdainfullyAteVar2[] = _("{STR_VAR_1} disdainfully ate the\n{STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_ShopBuy[] = _("BUY");
const u8 gText_ShopSell[] = _("SELL");
const u8 gText_ShopQuit[] = _("QUIT");
const u8 gText_InBagVar1[] = _("IN BAG: {STR_VAR_1}");
const u8 gText_QuitShopping[] = _("Quit shopping.");
const u8 gText_Var1CertainlyHowMany[] = _("{STR_VAR_1}? Certainly.\nHow many would you like?");
const u8 gText_Var1CertainlyHowMany2[] = _("{STR_VAR_1}? Certainly.\nHow many would you like?");
const u8 gText_Var1AndYouWantedVar2[] = _("{STR_VAR_1}? And you wanted {STR_VAR_2}?\nThat will be ¥{STR_VAR_3}.");
const u8 gText_Var1IsItThatllBeVar2[] = _("{STR_VAR_1}, is it?\nThat'll be ¥{STR_VAR_2}. Do you want it?");
const u8 gText_YouWantedVar1ThatllBeVar2[] = _("You wanted {STR_VAR_1}?\nThat'll be ¥{STR_VAR_2}. Will that be okay?");
const u8 gText_HereYouGoThankYou[] = _("Here you go!\nThank you very much.");
const u8 gText_ThankYouIllSendItHome[] = _("Thank you!\nI'll send it to your home PC.");
const u8 gText_ThanksIllSendItHome[] = _("Thanks!\nI'll send it to your PC at home.");
const u8 gText_YouDontHaveMoney[] = _("You don't have enough money.{PAUSE_UNTIL_PRESS}");
const u8 gText_NoMoreRoomForThis[] = _("You have no more room for this\nitem.{PAUSE_UNTIL_PRESS}");
const u8 gText_SpaceForVar1Full[] = _("The space for {STR_VAR_1} is full.{PAUSE_UNTIL_PRESS}");
const u8 gText_AnythingElseICanHelp[] = _("Is there anything else I can help\nyou with?");
const u8 gText_CanIHelpWithAnythingElse[] = _("Can I help you with anything else?");
const u8 gText_ThrowInPremierBall[] = _("I'll throw in a PREMIER BALL, too.{PAUSE_UNTIL_PRESS}");
const u8 gText_CantBuyKeyItem[] = _("{STR_VAR_2}? Oh, no.\nI can't buy that.{PAUSE_UNTIL_PRESS}");
const u8 gText_HowManyToSell[] = _("{STR_VAR_2}?\nHow many would you like to sell?");
const u8 gText_ICanPayVar1[] = _("I can pay ¥{STR_VAR_1}.\nWould that be okay?");
const u8 gText_TurnedOverVar1ForVar2[] = _("Turned over the {STR_VAR_2}\nand received ¥{STR_VAR_1}.");
const u8 gText_PokedollarVar1[] = _("¥{STR_VAR_1}");
const u8 gText_Shift[] = _("SHIFT");
const u8 gText_SendOut[] = _("SEND OUT");
const u8 gText_Switch2[] = _("SWITCH");
const u8 gText_Summary5[] = _("SUMMARY");
const u8 gUnknown_085E96BE[] = _("MOVES");
const u8 gText_Enter[] = _("ENTER");
const u8 gText_NoEntry[] = _("NO ENTRY");
const u8 gText_Take2[] = _("TAKE");
const u8 gText_Read2[] = _("READ");
const u8 gText_Trade4[] = _("TRADE");
const u8 gText_HP3[] = _("HP");
const u8 gText_SpAtk3[] = _("SP. ATK");
const u8 gText_SpDef3[] = _("SP. DEF");
const u8 gText_WontHaveEffect[] = _("It won't have any effect.{PAUSE_UNTIL_PRESS}");
const u8 gText_CantBeUsedOnPkmn[] = _("This can't be used on\nthat POKéMON.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnCantSwitchOut[] = _("{STR_VAR_1} can't be switched\nout!{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnAlreadyInBattle[] = _("{STR_VAR_1} is already\nin battle!{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnAlreadySelected[] = _("{STR_VAR_1} has already been\nselected.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnHasNoEnergy[] = _("{STR_VAR_1} has no energy\nleft to battle!{PAUSE_UNTIL_PRESS}");
const u8 gText_CantSwitchWithAlly[] = _("You can't switch {STR_VAR_1}'s\nPOKéMON with one of yours!{PAUSE_UNTIL_PRESS}");
const u8 gText_EggCantBattle[] = _("An EGG can't battle!{PAUSE_UNTIL_PRESS}");
const u8 gText_CantUseUntilNewBadge[] = _("This can't be used until a new\nBADGE is obtained.{PAUSE_UNTIL_PRESS}");
const u8 gText_NoMoreThanVar1Pkmn[] = _("No more than {STR_VAR_1} POKéMON\nmay enter.{PAUSE_UNTIL_PRESS}");
const u8 gText_SendMailToPC[] = _("Send the removed MAIL to\nyour PC?");
const u8 gText_MailSentToPC[] = _("The MAIL was sent to your PC.{PAUSE_UNTIL_PRESS}");
const u8 gText_PCMailboxFull[] = _("Your PC's MAILBOX is full.{PAUSE_UNTIL_PRESS}");
const u8 gText_MailMessageWillBeLost[] = _("If the MAIL is removed, the\nmessage will be lost. Okay?");
const u8 gText_RemoveMailBeforeItem[] = _("MAIL must be removed before\nholding an item.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnWasGivenItem[] = _("{STR_VAR_1} was given the\n{STR_VAR_2} to hold.{PAUSE_UNTIL_PRESS}");
const u8 gText_SwitchPkmnItem[] = _("{STR_VAR_1} is already holding\none {STR_VAR_2}.\pWould you like to switch the\ntwo items?");
const u8 gText_PkmnNotHolding[] = _("{STR_VAR_1} isn't holding\nanything.{PAUSE_UNTIL_PRESS}");
const u8 gText_ReceivedItemFromPkmn[] = _("Received the {STR_VAR_2}\nfrom {STR_VAR_1}.{PAUSE_UNTIL_PRESS}");
const u8 gText_MailTakenFromPkmn[] = _("MAIL was taken from the\nPOKéMON.{PAUSE_UNTIL_PRESS}");
const u8 gText_SwitchedPkmnItem[] = _("The {STR_VAR_2} was taken and\nreplaced with the {STR_VAR_1}.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnHoldingItemCantHoldMail[] = _("This POKéMON is holding an\nitem. It cannot hold MAIL.{PAUSE_UNTIL_PRESS}");
const u8 gText_MailTransferredFromMailbox[] = _("MAIL was transferred from\nthe MAILBOX.{PAUSE_UNTIL_PRESS}");
const u8 gText_BagFullCouldNotRemoveItem[] = _("The BAG is full. The POKéMON's\nitem could not be removed.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnLearnedMove3[] = _("{STR_VAR_1} learned\n{STR_VAR_2}!");
const u8 gText_PkmnCantLearnMove[] = _("{STR_VAR_1} and {STR_VAR_2}\nare not compatible.\p{STR_VAR_2} can't be\nlearned.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnNeedsToReplaceMove[] = _("{STR_VAR_1} wants to learn the\nmove {STR_VAR_2}.\pHowever, {STR_VAR_1} already\nknows four moves.\pShould a move be deleted and\nreplaced with {STR_VAR_2}?");
const u8 gText_StopLearningMove2[] = _("Stop trying to teach\n{STR_VAR_2}?");
const u8 gText_MoveNotLearned[] = _("{STR_VAR_1} did not learn the\nmove {STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_WhichMoveToForget[] = _("Which move should be forgotten?{PAUSE_UNTIL_PRESS}");
const u8 gText_12PoofForgotMove[] = _("1, {PAUSE 15}2, and{PAUSE 15}… {PAUSE 15}… {PAUSE 15}… {PAUSE 15}{PLAY_SE 0x0038}Poof!\p{STR_VAR_1} forgot how to\nuse {STR_VAR_2}.\pAnd…{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnAlreadyKnows[] = _("{STR_VAR_1} already knows\n{STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnHPRestoredByVar2[] = _("{STR_VAR_1}'s HP was restored\nby {STR_VAR_2} point(s).{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnCuredOfPoison[] = _("{STR_VAR_1} was cured of its\npoisoning.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnCuredOfParalysis[] = _("{STR_VAR_1} was cured of\nparalysis.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnWokeUp2[] = _("{STR_VAR_1} woke up.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnBurnHealed[] = _("{STR_VAR_1}'s burn was healed.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnThawedOut[] = _("{STR_VAR_1} was thawed out.{PAUSE_UNTIL_PRESS}");
const u8 gText_PPWasRestored[] = _("PP was restored.{PAUSE_UNTIL_PRESS}");
const u8 gUnknown_085E9CCA[] = _("{STR_VAR_1} regained health.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnBecameHealthy[] = _("{STR_VAR_1} became healthy.{PAUSE_UNTIL_PRESS}");
const u8 gText_MovesPPIncreased[] = _("{STR_VAR_1}'s PP increased.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnElevatedToLvVar2[] = _("{STR_VAR_1} was elevated to\nLv. {STR_VAR_2}.");
const u8 gText_PkmnBaseVar2StatIncreased[] = _("{STR_VAR_1}'s base {STR_VAR_2}\nstat was raised.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnFriendlyBaseVar2Fell[] = _("{STR_VAR_1} turned friendly.\nThe base {STR_VAR_2} fell!{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnAdoresBaseVar2Fell[] = _("{STR_VAR_1} adores you!\nThe base {STR_VAR_2} fell!{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnFriendlyBaseVar2CantFall[] = _("{STR_VAR_1} turned friendly.\nThe base {STR_VAR_2} can't fall!{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnSnappedOutOfConfusion[] = _("{STR_VAR_1} snapped out of its\nconfusion.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnGotOverInfatuation[] = _("{STR_VAR_1} got over its\ninfatuation.{PAUSE_UNTIL_PRESS}");
const u8 gText_ThrowAwayItem[] = _("Throw away this\n{STR_VAR_1}?");
const u8 gText_ItemThrownAway[] = _("The {STR_VAR_1}\nwas thrown away.{PAUSE_UNTIL_PRESS}");
const u8 gUnknown_085E9E2E[] = _("Teach which POKéMON?");
const u8 gText_ChoosePokemon[] = _("Choose a POKéMON.");
const u8 gText_MoveToWhere[] = _("Move to where?");
const u8 gText_TeachWhichPokemon[] = _("Teach which POKéMON?");
const u8 gText_UseOnWhichPokemon[] = _("Use on which POKéMON?");
const u8 gText_GiveToWhichPokemon[] = _("Give to which POKéMON?");
const u8 gText_DoWhatWithPokemon[] = _("Do what with this {PKMN}?");
const u8 gText_NothingToCut[] = _("There's nothing to CUT.");
const u8 gText_CantSurfHere[] = _("You can't SURF here.");
const u8 gText_AlreadySurfing[] = _("You're already SURFING.");
const u8 gText_CantUseHere[] = _("Can't use that here.");
const u8 gText_RestoreWhichMove[] = _("Restore which move?");
const u8 gText_BoostPp[] = _("Boost PP of which move?");
const u8 gText_DoWhatWithItem[] = _("Do what with an item?");
const u8 gText_NoPokemonForBattle[] = _("No POKéMON for battle!");
const u8 gText_ChoosePokemon2[] = _("Choose a POKéMON.");
const u8 gText_NotEnoughHp[] = _("Not enough HP…");
const u8 gText_PokemonAreNeeded[] = _("{STR_VAR_1} POKéMON are needed.");
const u8 gText_PokemonCantBeSame[] = _("POKéMON can't be the same.");
const u8 gText_NoIdenticalHoldItems[] = _("No identical hold items.");
const u8 gText_CurrentIsTooFast[] = _("The current is much too fast!");
const u8 gText_DoWhatWithMail[] = _("Do what with the MAIL?");
const u8 gText_ChoosePokemonCancel[] = _("Choose POKéMON or CANCEL.");
const u8 gText_ChoosePokemonConfirm[] = _("Choose POKéMON and confirm.");
const u8 gText_EnjoyCycling[] = _("Let's enjoy cycling!");
const u8 gText_InUseAlready_PM[] = _("This is in use already.");
const u8 gText_AlreadyHoldingOne[] = _("{STR_VAR_1} is already holding\none {STR_VAR_2}.");
const u8 gText_NoUse[] = _("No use.");
const u8 gText_Able[] = _("ABLE");
const u8 gText_First_PM[] = _("FIRST");
const u8 gText_Second_PM[] = _("SECOND");
const u8 gText_Third_PM[] = _("THIRD");
const u8 gText_Able2[] = _("ABLE");
const u8 gText_NotAble[] = _("NOT ABLE");
const u8 gText_Able3[] = _("ABLE!");
const u8 gText_NotAble2[] = _("NOT ABLE!");
const u8 gText_Learned[] = _("LEARNED");
const u8 gText_Have[] = _("HAVE");
const u8 gText_DontHave[] = _("DON'T HAVE");
const u8 gText_Fourth[] = _("FOURTH");
const u8 gText_PkmnCantParticipate[] = _("That POKéMON can't participate.{PAUSE_UNTIL_PRESS}");
const u8 gText_CancelParticipation[] = _("Cancel participation?");
const u8 gText_CancelBattle[] = _("Cancel the battle?");
const u8 gText_ReturnToWaitingRoom[] = _("Return to the WAITING ROOM?");
const u8 gText_CancelChallenge[] = _("Cancel the challenge?");
const u8 gText_EscapeFromHere[] = _("Want to escape from here and return\nto {STR_VAR_1}?");
const u8 gText_ReturnToHealingSpot[] = _("Want to return to the healing spot\nused last in {STR_VAR_1}?");
const u8 gText_PauseUntilPress[] = _("{PAUSE_UNTIL_PRESS}");
const u8 gJPText_PutVar1IntoSpinner[] = _("{STR_VAR_1}を ぐるぐるこうかんに\nだして よろしいですか？");
__attribute__((aligned(4))) const u8 gText_OnlyPkmnForBattle[] = _("That's your only\nPOKéMON for battle.");
__attribute__((aligned(4))) const u8 gText_PkmnCantBeTradedNow[] = _("That POKéMON can't be traded\nnow.");
__attribute__((aligned(4))) const u8 gText_EggCantBeTradedNow[] = _("An EGG can't be traded now.");
__attribute__((aligned(4))) const u8 gText_OtherTrainersPkmnCantBeTraded[] = _("The other TRAINER's POKéMON\ncan't be traded now.");
__attribute__((aligned(4))) const u8 gText_OtherTrainerCantAcceptPkmn[] = _("The other TRAINER can't accept\nthat POKéMON now.");
__attribute__((aligned(4))) const u8 gText_CantTradeWithTrainer[] = _("You can't trade with that\nTRAINER now.");
__attribute__((aligned(4))) const u8 gText_NotPkmnOtherTrainerWants[] = _("That isn't the type of POKéMON\nthat the other TRAINER wants.");
__attribute__((aligned(4))) const u8 gText_ThatIsntAnEgg[] = _("That isn't an EGG.");
const u8 gText_Register[] = _("REGISTER");
const u8 gText_Attack3[] = _("ATTACK");
const u8 gText_Defense3[] = _("DEFENSE");
const u8 gText_SpAtk4[] = _("SP. ATK");
const u8 gText_SpDef4[] = _("SP. DEF");
const u8 gText_Speed2[] = _("SPEED");
const u8 gText_HP4[] = _("HP");
const u8 gUnknown_085EA364[] = _("");
const u8 gText_OTSlash[] = _("OT/");
const u8 gText_RentalPkmn[] = _("RENTAL POKéMON");
const u8 gText_TypeSlash[] = _("TYPE/");
const u8 gText_Power[] = _("POWER");
const u8 gText_Accuracy2[] = _("ACCURACY");
const u8 gText_Appeal[] = _("APPEAL");
const u8 gText_Jam[] = _("JAM");
const u8 gText_Status[] = _("STATUS");
const u8 gText_ExpPoints[] = _("EXP. POINTS");
const u8 gText_NextLv[] = _("NEXT LV.");
const u8 gText_RibbonsVar1[] = _("RIBBONS: {STR_VAR_1}");
const u8 gText_EmptyString5[] = _("");
const u8 gUnknown_085EA3C1[] = _("EVENTS");
const u8 gText_Switch[] = _("SWITCH");
const u8 gText_PkmnInfo[] = _("POKéMON INFO");
const u8 gText_PkmnSkills[] = _("POKéMON SKILLS");
const u8 gText_BattleMoves[] = _("BATTLE MOVES");
const u8 gText_ContestMoves[] = _("C0NTEST MOVES");
const u8 gText_Info[] = _("INFO");
const u8 gText_EggWillTakeALongTime[] = _("It looks like this EGG will\ntake a long time to hatch.");
const u8 gText_EggWillTakeSomeTime[] = _("What will hatch from this?\nIt will take some time.");
const u8 gText_EggWillHatchSoon[] = _("It moves occasionally.\nIt should hatch soon.");
const u8 gText_EggAboutToHatch[] = _("It's making sounds.\nIt's about to hatch!");
const u8 gText_HMMovesCantBeForgotten2[] = _("HM moves can't be\nforgotten now.");
const u8 gText_XNatureMetAtYZ[] = _("{SPECIAL_F7 0x00}{SPECIAL_F7 0x02}{SPECIAL_F7 0x01}{SPECIAL_F7 0x05} nature,\nmet at {LV_2}{SPECIAL_F7 0x00}{SPECIAL_F7 0x03}{SPECIAL_F7 0x01},\n{SPECIAL_F7 0x00}{SPECIAL_F7 0x04}{SPECIAL_F7 0x01}.");
const u8 gText_XNatureHatchedAtYZ[] = _("{SPECIAL_F7 0x00}{SPECIAL_F7 0x02}{SPECIAL_F7 0x01}{SPECIAL_F7 0x05} nature,\nhatched at {LV_2}{SPECIAL_F7 0x00}{SPECIAL_F7 0x03}{SPECIAL_F7 0x01},\n{SPECIAL_F7 0x00}{SPECIAL_F7 0x04}{SPECIAL_F7 0x01}.");
const u8 gText_XNatureObtainedInTrade[] = _("{SPECIAL_F7 0x00}{SPECIAL_F7 0x02}{SPECIAL_F7 0x01}{SPECIAL_F7 0x05} nature,\nobtained in a trade.");
const u8 gText_XNatureFatefulEncounter[] = _("{SPECIAL_F7 0x00}{SPECIAL_F7 0x02}{SPECIAL_F7 0x01}{SPECIAL_F7 0x05} nature,\nobtained in a fateful\nencounter at {LV_2}{SPECIAL_F7 0x00}{SPECIAL_F7 0x03}{SPECIAL_F7 0x01}.");
const u8 gText_XNatureProbablyMetAt[] = _("{SPECIAL_F7 0x00}{SPECIAL_F7 0x02}{SPECIAL_F7 0x01}{SPECIAL_F7 0x05} nature,\nprobably met at {LV_2}{SPECIAL_F7 0x00}{SPECIAL_F7 0x03}{SPECIAL_F7 0x01},\n{SPECIAL_F7 0x00}{SPECIAL_F7 0x04}{SPECIAL_F7 0x01}.");
const u8 gText_XNature[] = _("{SPECIAL_F7 0x00}{SPECIAL_F7 0x02}{SPECIAL_F7 0x01}{SPECIAL_F7 0x05} nature");
const u8 gText_XNatureMetSomewhereAt[] = _("{SPECIAL_F7 0x00}{SPECIAL_F7 0x02}{SPECIAL_F7 0x01}{SPECIAL_F7 0x05} nature,\nmet somewhere at {LV_2}{SPECIAL_F7 0x00}{SPECIAL_F7 0x03}{SPECIAL_F7 0x01}.");
const u8 gText_XNatureHatchedSomewhereAt[] = _("{SPECIAL_F7 0x00}{SPECIAL_F7 0x02}{SPECIAL_F7 0x01}{SPECIAL_F7 0x05} nature,\nhatched somewhere at {LV_2}{SPECIAL_F7 0x00}{SPECIAL_F7 0x03}{SPECIAL_F7 0x01}.");
const u8 gText_OddEggFoundByCouple[] = _("An odd POKéMON EGG found\nby the DAY CARE couple.");
const u8 gText_PeculiarEggNicePlace[] = _("A peculiar POKéMON EGG\nobtained at the nice place.");
const u8 gText_PeculiarEggTrade[] = _("A peculiar POKéMON EGG\nobtained in a trade.");
const u8 gText_EggFromHotSprings[] = _("A POKéMON EGG obtained\nat the hot springs.");
const u8 gText_EggFromTraveler[] = _("An odd POKéMON EGG\nobtained from a traveler.");
const u8 gText_ApostropheSBase[] = _("'s BASE");
const u8 gText_OkayToDeleteFromRegistry[] = _("Is it okay to delete {STR_VAR_1}\nfrom the REGISTRY?");
const u8 gText_RegisteredDataDeleted[] = _("The registered data was deleted.{PAUSE_UNTIL_PRESS}");
const u8 gText_NoRegistry[] = _("There is no REGISTRY.{PAUSE_UNTIL_PRESS}");
const u8 gText_DelRegist[] = _("DEL REGIST.");
const u8 gUnknown_085EA7A9[] = _("{STR_VAR_3}{STR_VAR_1}/{STR_VAR_2}");
const u8 gText_Decorate[] = _("DECORATE");
const u8 gText_PutAway[] = _("PUT AWAY");
const u8 gText_Toss2[] = _("TOSS");
const u8 gText_Color161Shadow161[] = _("{COLOR 161}{SHADOW 161}");
const u8 gText_PutOutSelectedDecorItem[] = _("Put out the selected decoration item.");
const u8 gText_StoreChosenDecorInPC[] = _("Store the chosen decoration in the PC.");
const u8 gText_ThrowAwayUnwantedDecors[] = _("Throw away unwanted decorations.");
const u8 gText_NoDecorations[] = _("There are no decorations.{PAUSE_UNTIL_PRESS}");
const u8 gText_Desk[] = _("DESK");
const u8 gText_Chair[] = _("CHAIR");
const u8 gText_Plant[] = _("PLANT");
const u8 gText_Ornament[] = _("ORNAMENT");
const u8 gText_Mat[] = _("MAT");
const u8 gText_Poster[] = _("POSTER");
const u8 gText_Doll[] = _("DOLL");
const u8 gText_Cushion[] = _("CUSHION");
const u8 gText_Gold[] = _("GOLD");
const u8 gText_Silver[] = _("SILVER");
const u8 gText_PlaceItHere[] = _("Place it here?");
const u8 gText_CantBePlacedHere[] = _("It can't be placed here.");
const u8 gText_CancelDecorating[] = _("Cancel decorating?");
const u8 gText_InUseAlready[] = _("This is in use already.");
const u8 gText_NoMoreDecorations[] = _("No more decorations can be placed.\nThe most that can be placed are {STR_VAR_1}.");
const u8 gText_NoMoreDecorations2[] = _("No more decorations can be placed.\nThe most that can be placed are {STR_VAR_1}.");
const u8 gUnknown_085EA978[] = _("This can't be placed here.\nIt must be on a DESK, etc.");
const u8 gText_CantPlaceInRoom[] = _("This decoration can't be placed in\nyour own room.");
const u8 gText_CantThrowAwayInUse[] = _("This decoration is in use.\nIt can't be thrown away.");
const u8 gText_DecorationWillBeDiscarded[] = _("This {STR_VAR_1} will be discarded.\nIs that okay?");
const u8 gText_DecorationThrownAway[] = _("The decoration item was thrown away.");
const u8 gText_StopPuttingAwayDecorations[] = _("Stop putting away decorations?");
const u8 gText_NoDecorationHere[] = _("There is no decoration item here.");
const u8 gText_ReturnDecorationToPC[] = _("Return this decoration to the PC?");
const u8 gText_DecorationReturnedToPC[] = _("The decoration was returned to the PC.");
const u8 gText_NoDecorationsInUse[] = _("There are no decorations in use.{PAUSE_UNTIL_PRESS}");
const u8 gText_Tristan[] = _("TRISTAN");
const u8 gText_Philip[] = _("PHILIP");
const u8 gText_Dennis[] = _("DENNIS");
const u8 gText_Roberto[] = _("ROBERTO");
const u8 gText_TurnOff[] = _("TURN OFF");
const u8 gText_Decoration[] = _("DECORATION");
const u8 gText_ItemStorage[] = _("ITEM STORAGE");
const u8 gText_Mailbox[] = _("MAILBOX");
const u8 gText_DepositItem[] = _("DEPOSIT ITEM");
const u8 gText_WithdrawItem[] = _("WITHDRAW ITEM");
const u8 gText_TossItem[] = _("TOSS ITEM");
const u8 gText_StoreItemsInPC[] = _("Store items in the PC.");
const u8 gText_TakeOutItemsFromPC[] = _("Take out items from the PC.");
const u8 gText_ThrowAwayItemsInPC[] = _("Throw away items stored in the PC.");
const u8 gText_NoItems[] = _("There are no items.{PAUSE_UNTIL_PRESS}");
const u8 gText_NoRoomInBag[] = _("There is no more\nroom in the BAG.");
const u8 gText_WithdrawHowManyItems[] = _("Withdraw how many\n{STR_VAR_1}(s)?");
const u8 gText_WithdrawXItems[] = _("Withdrew {STR_VAR_2}\n{STR_VAR_1}(s).");
const u8 gText_Read[] = _("READ");
const u8 gText_MoveToBag[] = _("MOVE TO BAG");
const u8 gText_Give2[] = _("GIVE");
const u8 gText_NoMailHere[] = _("There's no MAIL here.{PAUSE_UNTIL_PRESS}");
const u8 gText_WhatToDoWithVar1sMail[] = _("What would you like to do with\n{STR_VAR_1}'s MAIL?");
const u8 gText_MessageWillBeLost[] = _("The message will be lost.\nIs that okay?");
const u8 gText_BagIsFull[] = _("The BAG is full.{PAUSE_UNTIL_PRESS}");
const u8 gText_MailToBagMessageErased[] = _("The MAIL was returned to the BAG\nwith its message erased.{PAUSE_UNTIL_PRESS}");
const u8 gText_Dad[] = _("DAD");
const u8 gText_Mom[] = _("MOM");
const u8 gText_Wallace[] = _("WALLACE");
const u8 gText_Steven[] = _("STEVEN");
const u8 gText_Brawly[] = _("BRAWLY");
const u8 gText_Winona[] = _("WINONA");
const u8 gText_Phoebe[] = _("PHOEBE");
const u8 gText_Glacia[] = _("GLACIA");
const u8 gUnknown_085EAD37[] = _("PETALBURG");
const u8 gUnknown_085EAD41[] = _("SLATEPORT");
const u8 gUnknown_085EAD4B[] = _("LITTLEROOT");
const u8 gUnknown_085EAD56[] = _("LILYCOVE");
const u8 gUnknown_085EAD5F[] = _("DEWFORD");
const u8 gUnknown_085EAD67[] = _("ENTER");
const u8 gUnknown_085EAD6D[] = _("INFO");
const u8 gUnknown_085EAD72[] = _("What's a CONTEST?");
const u8 gUnknown_085EAD84[] = _("Types of CONTESTS");
const u8 gUnknown_085EAD96[] = _("Ranks");
const u8 gUnknown_085EAD9C[] = _("Judging");
const u8 gText_CoolnessContest[] = _("COOLNESS CONTEST");
const u8 gText_BeautyContest[] = _("BEAUTY CONTEST");
const u8 gText_CutenessContest[] = _("CUTENESS CONTEST");
const u8 gText_SmartnessContest[] = _("SMARTNESS CONTEST");
const u8 gText_ToughnessContest[] = _("TOUGHNESS CONTEST");
const u8 gUnknown_085EADF9[] = _("DECORATION");
const u8 gUnknown_085EAE04[] = _("PACK UP");
const u8 gUnknown_085EAE0C[] = _("COUNT");
const u8 gUnknown_085EAE12[] = _("REGISTRY");
const u8 gUnknown_085EAE1B[] = _("INFORMATION");
const u8 gUnknown_085EAE27[] = _("MACH");
const u8 gUnknown_085EAE2C[] = _("ACRO");
const u8 gUnknown_085EAE31[] = _("PSN");
const u8 gUnknown_085EAE35[] = _("PAR");
const u8 gUnknown_085EAE39[] = _("SLP");
const u8 gUnknown_085EAE3D[] = _("BRN");
const u8 gUnknown_085EAE41[] = _("FRZ");
const u8 gUnknown_085EAE45[] = _("TOXIC");
const u8 gUnknown_085EAE4B[] = _("OK");
const u8 gUnknown_085EAE4E[] = _("QUIT");
const u8 gUnknown_085EAE53[] = _("Saw it");
const u8 gUnknown_085EAE5A[] = _("Not yet");
const u8 gText_Yes[] = _("YES");
const u8 gText_No[] = _("NO");
const u8 gUnknown_085EAE69[] = _("INFO");
const u8 gUnknown_085EAE6E[] = _("SINGLE BATTLE");
const u8 gUnknown_085EAE7C[] = _("DOUBLE BATTLE");
const u8 gUnknown_085EAE8A[] = _("MULTI BATTLE");
const u8 gUnknown_085EAE97[] = _("MR. BRINEY");
const u8 gUnknown_085EAEA2[] = _("CHALLENGE");
const u8 gUnknown_085EAEAC[] = _("INFO");
const u8 gText_Lv50[] = _("LV. 50");
const u8 gText_OpenLevel[] = _("OPEN LEVEL");
const u8 gUnknown_085EAEC3[] = _("FRESH WATER{CLEAR_TO 0x48}¥200");
const u8 gUnknown_085EAED6[] = _("SODA POP{CLEAR_TO 0x48}¥300");
const u8 gUnknown_085EAEE6[] = _("LEMONADE{CLEAR_TO 0x48}¥350");
const u8 gUnknown_085EAEF6[] = _("HOW TO RIDE");
const u8 gUnknown_085EAF02[] = _("HOW TO TURN");
const u8 gUnknown_085EAF0E[] = _("SANDY SLOPES");
const u8 gUnknown_085EAF1B[] = _("WHEELIES");
const u8 gUnknown_085EAF24[] = _("BUNNY-HOPS");
const u8 gUnknown_085EAF2F[] = _("JUMP");
const u8 gUnknown_085EAF34[] = _("Satisfied");
const u8 gUnknown_085EAF3E[] = _("Dissatisfied");
const u8 gUnknown_085EAF4B[] = _("DEEPSEATOOTH");
const u8 gUnknown_085EAF58[] = _("DEEPSEASCALE");
const u8 gUnknown_085EAF65[] = _("BLUE FLUTE");
const u8 gUnknown_085EAF70[] = _("YELLOW FLUTE");
const u8 gUnknown_085EAF7D[] = _("RED FLUTE");
const u8 gUnknown_085EAF87[] = _("WHITE FLUTE");
const u8 gUnknown_085EAF93[] = _("BLACK FLUTE");
const u8 gUnknown_085EAF9F[] = _("GLASS CHAIR");
const u8 gUnknown_085EAFAB[] = _("GLASS DESK");
const u8 gUnknown_085EAFB6[] = _("TREECKO DOLL 1,000 COINS");
const u8 gUnknown_085EAFCF[] = _("TORCHIC DOLL 1,000 COINS");
const u8 gUnknown_085EAFE8[] = _("MUDKIP DOLL   1,000 COINS");
const u8 gUnknown_085EB002[] = _("  50 COINS    ¥1,000");
const u8 gUnknown_085EB017[] = _("500 COINS  ¥10,000");
const u8 gUnknown_085EB02A[] = _("Excellent");
const u8 gUnknown_085EB034[] = _("Not so good");
const u8 gUnknown_085EB040[] = _("RED SHARD");
const u8 gUnknown_085EB04A[] = _("YELLOW SHARD");
const u8 gUnknown_085EB057[] = _("BLUE SHARD");
const u8 gUnknown_085EB062[] = _("GREEN SHARD");
const u8 gText_BattleFrontier[] = _("BATTLE FRONTIER");
const u8 gUnknown_085EB07E[] = _("Right");
const u8 gUnknown_085EB084[] = _("Left");
const u8 gUnknown_085EB089[] = _("TM32{CLEAR_TO 0x48}1,500 COINS");
const u8 gUnknown_085EB09C[] = _("TM29{CLEAR_TO 0x48}3,500 COINS");
const u8 gUnknown_085EB0AF[] = _("TM35{CLEAR_TO 0x48}4,000 COINS");
const u8 gUnknown_085EB0C2[] = _("TM24{CLEAR_TO 0x48}4,000 COINS");
const u8 gUnknown_085EB0D5[] = _("TM13{CLEAR_TO 0x48}4,000 COINS");
const u8 gText_Cool[] = _("COOL");
const u8 gText_Beauty[] = _("BEAUTY");
const u8 gText_Cute[] = _("CUTE");
const u8 gText_Smart[] = _("SMART");
const u8 gText_Tough[] = _("TOUGH");
const u8 gText_Normal[] = _("NORMAL");
const u8 gText_Super[] = _("SUPER");
const u8 gText_Hyper[] = _("HYPER");
const u8 gText_Master[] = _("MASTER");
const u8 gText_Cool2[] = _("COOL");
const u8 gText_Beauty2[] = _("BEAUTY");
const u8 gText_Cute2[] = _("CUTE");
const u8 gText_Smart2[] = _("SMART");
const u8 gText_Tough2[] = _("TOUGH");
const u8 gText_Items[] = _("ITEMS");
const u8 gText_Key_Items[] = _("KEY ITEMS");
const u8 gText_Poke_Balls[] = _("POKé BALLS");
const u8 gText_TMs_Hms[] = _("TMs & HMs");
const u8 gText_Berries2[] = _("BERRIES");
const u8 gText_SomeonesPC[] = _("SOMEONE'S PC");
const u8 gText_LanettesPC[] = _("LANETTE'S PC");
const u8 gText_PlayersPC[] = _("{PLAYER}'s PC");
const u8 gText_HallOfFame[] = _("HALL OF FAME");
const u8 gText_LogOff[] = _("LOG OFF");
const u8 gText_Opponent[] = _("OPPONENT");
const u8 gText_Tourney_Tree[] = _("TOURNEY TREE");
const u8 gText_ReadyToStart[] = _("READY TO START");
const u8 gText_NormalRank[] = _("NORMAL RANK");
const u8 gText_SuperRank[] = _("SUPER RANK");
const u8 gText_HyperRank[] = _("HYPER RANK");
const u8 gText_MasterRank[] = _("MASTER RANK");
const u8 gText_Single2[] = _("SINGLE");
const u8 gText_Double2[] = _("DOUBLE");
const u8 gText_Multi[] = _("MULTI");
const u8 gText_MultiLink[] = _("MULTI-LINK");
const u8 gText_BattleBag[] = _("BATTLE BAG");
const u8 gText_HeldItem[] = _("HELD ITEM");
const u8 gText_LinkContest[] = _("LINK CONTEST");
const u8 gText_AboutE_Mode[] = _("ABOUT E-MODE");
const u8 gText_AboutG_Mode[] = _("ABOUT G-MODE");
const u8 gText_E_Mode[] = _("E-MODE");
const u8 gText_G_Mode[] = _("G-MODE");
const u8 gText_MenuOptionPokedex[] = _("POKéDEX");
const u8 gText_MenuOptionPokemon[] = _("POKéMON");
const u8 gText_MenuOptionBag[] = _("BAG");
const u8 gText_MenuOptionPokenav[] = _("POKéNAV");
const u8 gUnknown_085EB278[] = _("");
const u8 gText_MenuOptionSave[] = _("SAVE");
const u8 gText_MenuOptionOption[] = _("OPTION");
const u8 gText_MenuOptionExit[] = _("EXIT");
const u8 gUnknown_085EB28A[] = __("  ");
const u8 gUnknown_085EB28C[] = _("5BP");
const u8 gUnknown_085EB290[] = _("10BP");
const u8 gUnknown_085EB295[] = _("15BP");
const u8 gUnknown_085EB29A[] = _("RED TENT");
const u8 gUnknown_085EB2A3[] = _("BLUE TENT");
const u8 gText_SouthernIsland[] = _("SOUTHERN ISLAND");
const u8 gText_BirthIsland[] = _("BIRTH ISLAND");
const u8 gText_FarawayIsland[] = _("FARAWAY ISLAND");
const u8 gText_NavelRock[] = _("NAVEL ROCK");
const u8 gUnknown_085EB2E4[] = _("CLAW FOSSIL");
const u8 gUnknown_085EB2F0[] = _("ROOT FOSSIL");
const u8 gUnknown_085EB2FC[] = _("NO");
const u8 gUnknown_085EB2FF[] = _("I'll battle now!");
const u8 gUnknown_085EB310[] = _("I won!");
const u8 gUnknown_085EB317[] = _("I lost!");
const u8 gUnknown_085EB31F[] = _("I won't tell.");
const u8 gText_NormalTagMatch[] = _("NORMAL TAG MATCH");
const u8 gText_VarietyTagMatch[] = _("VARIETY TAG MATCH");
const u8 gText_UniqueTagMatch[] = _("UNIQUE TAG MATCH");
const u8 gText_ExpertTagMatch[] = _("EXPERT TAG MATCH");
const u8 gUnknown_085EB372[] = _("TRADE CENTER");
const u8 gUnknown_085EB37F[] = _("COLOSSEUM");
const u8 gUnknown_085EB389[] = _("RECORD CORNER");
const u8 gUnknown_085EB397[] = _("BERRY CRUSH");
const u8 gUnknown_085EB3A3[] = _("");
const u8 gUnknown_085EB3A4[] = _("POKéMON JUMP");
const u8 gUnknown_085EB3B1[] = _("DODRIO BERRY-PICKING");
const u8 gUnknown_085EB3C6[] = _("BECOME LEADER");
const u8 gUnknown_085EB3D4[] = _("JOIN GROUP");
const u8 gUnknown_085EB3DF[] = _("TWO STYLES");
const u8 gUnknown_085EB3EA[] = _("LV. 50");
const u8 gUnknown_085EB3F1[] = _("OPEN LEVEL");
const u8 gUnknown_085EB3FC[] = _("{PKMN} TYPE & NO.");
const u8 gUnknown_085EB40A[] = _("HOLD ITEMS");
const u8 gUnknown_085EB415[] = _("SYMBOLS");
const u8 gUnknown_085EB41D[] = _("RECORD");
const u8 gUnknown_085EB424[] = _("BATTLE PTS");
const u8 gUnknown_085EB42F[] = _("TOWER INFO");
const u8 gUnknown_085EB43A[] = _("BATTLE {PKMN}");
const u8 gUnknown_085EB444[] = _("BATTLE SALON");
const u8 gUnknown_085EB451[] = _("MULTI-LINK");
const u8 gUnknown_085EB45C[] = _("BATTLE RULES");
const u8 gUnknown_085EB469[] = _("JUDGE: MIND");
const u8 gUnknown_085EB475[] = _("JUDGE: SKILL");
const u8 gUnknown_085EB482[] = _("JUDGE: BODY");
const u8 gUnknown_085EB48E[] = _("MATCHUP");
const u8 gUnknown_085EB496[] = _("TOURNEY TREE");
const u8 gUnknown_085EB4A3[] = _("DOUBLE KO");
const u8 gUnknown_085EB4AD[] = _("BASIC RULES");
const u8 gUnknown_085EB4B9[] = _("SWAP: PARTNER");
const u8 gUnknown_085EB4C7[] = _("SWAP: NUMBER");
const u8 gUnknown_085EB4D4[] = _("SWAP: NOTES");
const u8 gUnknown_085EB4E0[] = _("OPEN LEVEL");
const u8 gText_BattleBasics[] = _("BATTLE BASICS");
const u8 gText_PokemonNature[] = _("POKéMON NATURE");
const u8 gText_PokemonMoves[] = _("POKéMON MOVES");
const u8 gText_Underpowered[] = _("UNDERPOWERED");
const u8 gText_WhenInDanger[] = _("WHEN IN DANGER");
const u8 gUnknown_085EB532[] = _("PYRAMID: POKéMON");
const u8 gUnknown_085EB543[] = _("PYRAMID: TRAINERS");
const u8 gUnknown_085EB555[] = _("PYRAMID: MAZE");
const u8 gUnknown_085EB563[] = _("BATTLE BAG");
const u8 gUnknown_085EB56E[] = _("POKéNAV AND BAG");
const u8 gUnknown_085EB57E[] = _("HELD ITEMS");
const u8 gUnknown_085EB589[] = _("POKéMON ORDER");
const u8 gUnknown_085EB597[] = _("BATTLE POKéMON");
const u8 gText_BattleTrainers[] = _("BATTLE TRAINERS");
const u8 gUnknown_085EB5B6[] = _("GO ON");
const u8 gUnknown_085EB5BC[] = _("RECORD");
const u8 gUnknown_085EB5C3[] = _("REST");
const u8 gUnknown_085EB5C8[] = _("RETIRE");
const u8 gText_99TimesPlus[] = _("99 times +");
const u8 gText_1MinutePlus[] = _("1 minute +");
const u8 gText_SpaceSeconds[] = _(" seconds");
const u8 gText_SpaceTimes[] = _(" time(s)");
const u8 gUnknown_085EB5F7[] = _(".");
const u8 gText_BigGuy[] = _("Big guy");
const u8 gText_BigGirl[] = _("Big girl");
const u8 gText_Son[] = _("son");
const u8 gText_Daughter[] = _("daughter");
const u8 gText_BlueFlute[] = _("BLUE FLUTE");
const u8 gText_YellowFlute[] = _("YELLOW FLUTE");
const u8 gText_RedFlute[] = _("RED FLUTE");
const u8 gText_WhiteFlute[] = _("WHITE FLUTE");
const u8 gText_BlackFlute[] = _("BLACK FLUTE");
const u8 gText_PrettyChair[] = _("PRETTY CHAIR");
const u8 gText_PrettyDesk[] = _("PRETTY DESK");
const u8 gText_1F[] = _("1F");
const u8 gText_2F[] = _("2F");
const u8 gText_3F[] = _("3F");
const u8 gText_4F[] = _("4F");
const u8 gText_5F[] = _("5F");
const u8 gText_6F[] = _("6F");
const u8 gText_7F[] = _("7F");
const u8 gText_8F[] = _("8F");
const u8 gText_9F[] = _("9F");
const u8 gText_10F[] = _("10F");
const u8 gText_11F[] = _("11F");
const u8 gText_B1F[] = _("B1F");
const u8 gText_B2F[] = _("B2F");
const u8 gText_B3F[] = _("B3F");
const u8 gText_B4F[] = _("B4F");
const u8 gText_Rooftop[] = _("ROOFTOP");
const u8 gText_ElevatorNowOn[] = _("Now on:");
const u8 gText_BP[] = _("BP");
const u8 gText_EnergyPowder50[] = _("ENERGYPOWDER{CLEAR_TO 0x72}{SIZE 0}50");
const u8 gText_EnergyRoot80[] = _("ENERGY ROOT{CLEAR_TO 0x72}{SIZE 0}80");
const u8 gText_HealPowder50[] = _("HEAL POWDER{CLEAR_TO 0x72}{SIZE 0}50");
const u8 gText_RevivalHerb300[] = _("REVIVAL HERB{CLEAR_TO 0x6C}{SIZE 0}300");
const u8 gText_Protein1000[] = _("PROTEIN{CLEAR_TO 0x63}{SIZE 0}1,000");
const u8 gText_Iron1000[] = _("IRON{CLEAR_TO 0x63}{SIZE 0}1,000");
const u8 gText_Carbos1000[] = _("CARBOS{CLEAR_TO 0x63}{SIZE 0}1,000");
const u8 gText_Calcium1000[] = _("CALCIUM{CLEAR_TO 0x63}{SIZE 0}1,000");
const u8 gText_Zinc1000[] = _("ZINC{CLEAR_TO 0x63}{SIZE 0}1,000");
const u8 gText_HPUp1000[] = _("HP UP{CLEAR_TO 0x63}{SIZE 0}1,000");
const u8 gText_PPUp3000[] = _("PP UP{CLEAR_TO 0x63}{SIZE 0}3,000");
const u8 gText_RankingHall[] = _("RANKING HALL");
const u8 gText_ExchangeService[] = _("EXCHANGE SERVICE");
const u8 gText_LilycoveCity[] = _("LILYCOVE CITY");
const u8 gText_SlateportCity[] = _("SLATEPORT CITY");
const u8 gText_CaveOfOrigin[] = _("CAVE OF ORIGIN");
const u8 gText_MtPyre[] = _("MT. PYRE");
const u8 gText_SkyPillar[] = _("SKY PILLAR");
const u8 gText_DontRemember[] = _("Don't remember");
const u8 gText_Exit[] = _("EXIT");
const u8 gText_ExitFromBox[] = _("Exit from the BOX?");
const u8 gText_WhatDoYouWantToDo[] = _("What do you want to do?");
const u8 gText_PleasePickATheme[] = _("Please pick a theme.");
const u8 gText_PickTheWallpaper[] = _("Pick the wallpaper.");
const u8 gText_PkmnIsSelected[] = _("{SPECIAL_F7 0x00} is selected.");
const u8 gText_JumpToWhichBox[] = _("Jump to which BOX?");
const u8 gText_DepositInWhichBox[] = _("Deposit in which BOX?");
const u8 gText_PkmnWasDeposited[] = _("{SPECIAL_F7 0x00} was deposited.");
const u8 gText_BoxIsFull2[] = _("The BOX is full.");
const u8 gText_ReleaseThisPokemon[] = _("Release this POKéMON?");
const u8 gText_PkmnWasReleased[] = _("{SPECIAL_F7 0x00} was released.");
const u8 gText_ByeByePkmn[] = _("Bye-bye, {SPECIAL_F7 0x00}!");
const u8 gText_MarkYourPkmn[] = _("Mark your POKéMON.");
const u8 gText_ThatsYourLastPkmn[] = _("That's your last POKéMON!");
const u8 gText_YourPartysFull[] = _("Your party's full!");
const u8 gText_YoureHoldingAPkmn[] = _("You're holding a POKéMON!");
const u8 gText_WhichOneWillYouTake[] = _("Which one will you take?");
const u8 gText_YouCantReleaseAnEgg[] = _("You can't release an EGG.");
const u8 gText_ContinueBoxOperations[] = _("Continue BOX operations?");
const u8 gText_PkmnCameBack[] = _("{SPECIAL_F7 0x00} came back!");
const u8 gText_WasItWorriedAboutYou[] = _("Was it worried about you?");
const u8 gText_FourEllipsesExclamation[] = _("… … … … !");
const u8 gText_PleaseRemoveTheMail[] = _("Please remove the MAIL.");
const u8 gText_GiveToAPkmn[] = _("GIVE to a POKéMON?");
const u8 gText_PlacedItemInBag[] = _("Placed item in the BAG.");
const u8 gText_BagIsFull2[] = _("The BAG is full.");
const u8 gText_PutItemInBag[] = _("Put this item in the BAG?");
const u8 gText_ItemIsNowHeld[] = _("{SPECIAL_F7 0x00} is now held.");
const u8 gText_ChangedToNewItem[] = _("Changed to {SPECIAL_F7 0x00}.");
const u8 gText_MailCantBeStored[] = _("MAIL can't be stored!");
const u8 gPCText_Cancel[] = _("CANCEL");
const u8 gPCText_Store[] = _("STORE");
const u8 gPCText_Withdraw[] = _("WITHDRAW");
const u8 gPCText_Shift[] = _("SHIFT");
const u8 gPCText_Move[] = _("MOVE");
const u8 gPCText_Place[] = _("PLACE");
const u8 gPCText_Summary[] = _("SUMMARY");
const u8 gPCText_Release[] = _("RELEASE");
const u8 gPCText_Mark[] = _("MARK");
const u8 gPCText_Name[] = _("NAME");
const u8 gPCText_Jump[] = _("JUMP");
const u8 gPCText_Wallpaper[] = _("WALLPAPER");
const u8 gPCText_Take[] = _("TAKE");
const u8 gPCText_Give[] = _("GIVE");
const u8 gPCText_Switch[] = _("SWITCH");
const u8 gPCText_Bag[] = _("BAG");
const u8 gPCText_Info[] = _("INFO");
const u8 gPCText_Scenery1[] = _("SCENERY 1");
const u8 gPCText_Scenery2[] = _("SCENERY 2");
const u8 gPCText_Scenery3[] = _("SCENERY 3");
const u8 gPCText_Etcetera[] = _("ETCETERA");
const u8 gPCText_Friends[] = _("FRIENDS");
const u8 gPCText_Forest[] = _("FOREST");
const u8 gPCText_City[] = _("CITY");
const u8 gPCText_Desert[] = _("DESERT");
const u8 gPCText_Savanna[] = _("SAVANNA");
const u8 gPCText_Crag[] = _("CRAG");
const u8 gPCText_Volcano[] = _("VOLCANO");
const u8 gPCText_Snow[] = _("SNOW");
const u8 gPCText_Cave[] = _("CAVE");
const u8 gPCText_Beach[] = _("BEACH");
const u8 gPCText_Seafloor[] = _("SEAFLOOR");
const u8 gPCText_River[] = _("RIVER");
const u8 gPCText_Sky[] = _("SKY");
const u8 gPCText_PolkaDot[] = _("POLKA-DOT");
const u8 gPCText_Pokecenter[] = _("POKéCENTER");
const u8 gPCText_Machine[] = _("MACHINE");
const u8 gPCText_Simple[] = _("SIMPLE");
const u8 gUnknown_085EBB56[] = _("What would you like to do?");
const u8 gText_WithdrawPokemon[] = _("WITHDRAW POKéMON");
const u8 gText_DepositPokemon[] = _("DEPOSIT POKéMON");
const u8 gText_MovePokemon[] = _("MOVE POKéMON");
const u8 gText_MoveItems[] = _("MOVE ITEMS");
const u8 gText_SeeYa[] = _("SEE YA!");
const u8 gText_WithdrawMonDescription[] = _("Move POKéMON stored in BOXES to\nyour party.");
const u8 gText_DepositMonDescription[] = _("Store POKéMON in your party in BOXES.");
const u8 gText_MoveMonDescription[] = _("Organize the POKéMON in BOXES and\nin your party.");
const u8 gText_MoveItemsDescription[] = _("Move items held by any POKéMON\nin a BOX or your party.");
const u8 gText_SeeYaDescription[] = _("Return to the previous menu.");
const u8 gText_JustOnePkmn[] = _("There is just one POKéMON with you.");
const u8 gText_PartyFull[] = _("Your party is full!");
const u8 gText_Box[] = _("BOX");
const u8 gUnknown_085EBCC5[] = _("Check the map of the HOENN region.");
const u8 gUnknown_085EBCE8[] = _("Check POKéMON in detail.");
const u8 gUnknown_085EBD01[] = _("Call a registered TRAINER.");
const u8 gUnknown_085EBD1C[] = _("Check obtained RIBBONS.");
const u8 gUnknown_085EBD34[] = _("Put away the POKéNAV.");
const u8 gText_NoRibbonWinners[] = _("There are no RIBBON winners.");
const u8 gUnknown_085EBD67[] = _("No TRAINERS are registered.");
const u8 gUnknown_085EBD83[] = _("Check party POKéMON in detail.");
const u8 gUnknown_085EBDA2[] = _("Check all POKéMON in detail.");
const u8 gUnknown_085EBDBF[] = _("Return to the POKéNAV menu.");
const u8 gUnknown_085EBDDB[] = _("Find cool POKéMON.");
const u8 gUnknown_085EBDEE[] = _("Find beautiful POKéMON.");
const u8 gUnknown_085EBE06[] = _("Find cute POKéMON.");
const u8 gUnknown_085EBE19[] = _("Find smart POKéMON.");
const u8 gUnknown_085EBE2D[] = _("Find tough POKéMON.");
const u8 gUnknown_085EBE41[] = _("Return to the CONDITION menu.");
const u8 gText_NumberRegistered[] = _("No. registered");
const u8 gText_NumberOfBattles[] = _("No. of battles");
const u8 gUnknown_085EBE7D[] = _("DETAIL");
const u8 gUnknown_085EBE84[] = _("CALL");
const u8 gUnknown_085EBE89[] = _("EXIT");
const u8 gUnknown_085EBE8E[] = _("Can't call opponent here.");
const u8 gText_PokenavMatchCall_Strategy[] = _("STRATEGY");
const u8 gText_PokenavMatchCall_TrainerPokemon[] = _("TRAINER'S POKéMON");
const u8 gText_PokenavMatchCall_SelfIntroduction[] = _("SELF-INTRODUCTION");
const u8 gText_Pokenav_ClearButtonList[] = _("{CLEAR 0x80}");
const u8 gText_PokenavMap_ZoomedOutButtons[] = _("{A_BUTTON}ZOOM {B_BUTTON}CANCEL");
const u8 gText_PokenavMap_ZoomedInButtons[] = _("{A_BUTTON}FULL {B_BUTTON}CANCEL");
const u8 gText_PokenavCondition_MonListButtons[] = _("{A_BUTTON}CONDITION {B_BUTTON}CANCEL");
const u8 gText_PokenavCondition_MonStatusButtons[] = _("{A_BUTTON}MARKINGS {B_BUTTON}CANCEL");
const u8 gText_PokenavCondition_MarkingButtons[] = _("{A_BUTTON}SELECT MARK {B_BUTTON}CANCEL");
const u8 gText_PokenavMatchCall_TrainerListButtons[] = _("{A_BUTTON}MENU {B_BUTTON}CANCEL");
const u8 gText_PokenavMatchCall_CallMenuButtons[] = _("{A_BUTTON}OK {B_BUTTON}CANCEL");
const u8 gText_PokenavMatchCall_CheckTrainerButtons[] = _("{B_BUTTON}CANCEL");
const u8 gText_PokenavRibbons_MonListButtons[] = _("{A_BUTTON}RIBBONS {B_BUTTON}CANCEL");
const u8 gText_PokenavRibbons_RibbonListButtons[] = _("{A_BUTTON}CHECK {B_BUTTON}CANCEL");
const u8 gText_PokenavRibbons_RibbonCheckButtons[] = _("{B_BUTTON}CANCEL");
const u8 gText_NatureSlash[] = _("NATURE/");
const u8 gText_TrainerCloseBy[] = _("That TRAINER is close by.\nTalk to the TRAINER in person!");
const u8 gText_InParty[] = _("IN PARTY");
const u8 gText_Number2[] = _("No. ");
const u8 gUnknown_085EBFDC[] = _("RIBBONS");
const u8 gUnknown_085EBFE4[] = _("{SPECIAL_F7 0x00}{COLOR_HIGHLIGHT_SHADOW LIGHT_RED WHITE GREEN}♂{COLOR_HIGHLIGHT_SHADOW DARK_GREY WHITE LIGHT_GREY}/{LV}{SPECIAL_F7 0x01}");
const u8 gUnknown_085EBFF6[] = _("{SPECIAL_F7 0x00}{COLOR_HIGHLIGHT_SHADOW LIGHT_GREEN WHITE BLUE}♀{COLOR_HIGHLIGHT_SHADOW DARK_GREY WHITE LIGHT_GREY}/{LV}{SPECIAL_F7 0x01}");
const u8 gUnknown_085EC008[] = _("{SPECIAL_F7 0x00}/{LV}{SPECIAL_F7 0x01}");
const u8 gText_Unknown[] = _("UNKNOWN");
const u8 gUnknown_085EC017[] = _("CALL");
const u8 gUnknown_085EC01C[] = _("CHECK");
const u8 gUnknown_085EC022[] = _("CANCEL");
const u8 gText_NumberF700[] = _("No. {SPECIAL_F7 0x00}");
const u8 gText_RibbonsF700[] = _("RIBBONS {SPECIAL_F7 0x00}");
const u8 gUnknown_085EC03B[] = _("{SPECIAL_F7 0x00}{COLOR_HIGHLIGHT_SHADOW LIGHT_RED WHITE GREEN}♂{COLOR_HIGHLIGHT_SHADOW DARK_GREY WHITE LIGHT_GREY}/{LV}{SPECIAL_F7 0x01}{SPECIAL_F7 0x02}");
const u8 gUnknown_085EC04F[] = _("{SPECIAL_F7 0x00}{COLOR_HIGHLIGHT_SHADOW LIGHT_GREEN WHITE BLUE}♀{COLOR_HIGHLIGHT_SHADOW DARK_GREY WHITE LIGHT_GREY}/{LV}{SPECIAL_F7 0x01}{SPECIAL_F7 0x02}");
const u8 gUnknown_085EC063[] = _("{SPECIAL_F7 0x00}/{LV}{SPECIAL_F7 0x01}{SPECIAL_F7 0x02}");
const u8 gText_CombineFourWordsOrPhrases[] = _("Combine four words or phrases");
const u8 gText_AndMakeYourProfile[] = _("and make your profile.");
const u8 gText_CombineSixWordsOrPhrases[] = _("Combine six words or phrases");
const u8 gText_AndMakeAMessage[] = _("and make a message.");
const u8 gText_FindWordsThatDescribeYour[] = _("Find words that describe your");
const u8 gText_FeelingsRightNow[] = _("feelings right now.");
const u8 gUnknown_085EC104[] = _("With four phrases,");
const u8 gText_CombineNineWordsOrPhrases[] = _("Combine nine words or phrases");
const u8 gText_AndMakeAMessage2[] = _("and make a message.");
const u8 gText_ChangeJustOneWordOrPhrase[] = _("Change just one word or phrase");
const u8 gText_AndImproveTheBardsSong[] = _("and improve the BARD's song.");
const u8 gText_YourProfile[] = _("Your profile");
const u8 gText_YourFeelingAtTheBattlesStart[] = _("Your feeling at the battle's start");
const u8 gText_WhatYouSayIfYouWin[] = _("What you say if you win a battle");
const u8 gText_WhatYouSayIfYouLose[] = _("What you say if you lose a battle");
const u8 gText_TheAnswer[] = _("The answer");
const u8 gText_TheMailMessage[] = _("The MAIL message");
const u8 gUnknown_085EC214[] = _("The MAIL salutation");
const u8 gText_TheBardsSong2[] = _("The new song");
const u8 gText_CombineTwoWordsOrPhrases[] = _("Combine two words or phrases");
const u8 gText_AndMakeATrendySaying[] = _("and make a trendy saying.");
const u8 gText_TheTrendySaying[] = _("The trendy saying");
const u8 gText_IsAsShownOkay[] = _("is as shown. Okay?");
const u8 gText_CombineTwoWordsOrPhrases2[] = _("Combine two words or phrases");
const u8 gText_ToTeachHerAGoodSaying[] = _("to teach her a good saying.");
const u8 gText_FindWordsWhichFit[] = _("Find words which fit");
const u8 gText_TheTrainersImage[] = _("the TRAINER's image.");
const u8 gText_TheImage[] = _("The image:");
const u8 gText_OutOfTheListedChoices[] = _("Out of the listed choices,");
const u8 gText_SelectTheAnswerToTheQuiz[] = _("select the answer to the quiz!");
const u8 gText_AndCreateAQuiz[] = _("and create a quiz!");
const u8 gText_PickAWordOrPhraseAnd[] = _("Pick a word or phrase and");
const u8 gText_SetTheQuizAnswer[] = _("set the quiz answer.");
const u8 gText_TheAnswerColon[] = _("The answer:");
const u8 gUnknown_085EC387[] = _("The quiz:");
const u8 gText_ApprenticePhrase[] = _("Apprentice's phrase:");
const u8 gText_QuitEditing[] = _("Quit editing?");
const u8 gText_StopGivingPkmnMail[] = _("Stop giving the POKéMON MAIL?");
const u8 gText_AndFillOutTheQuestionnaire[] = _("and fill out the questionnaire.");
const u8 gText_LetsReplyToTheInterview[] = _("Let's reply to the interview!");
const u8 gText_AllTextBeingEditedWill[] = _("All the text being edited will");
const u8 gText_BeDeletedThatOkay[] = _("be deleted. Is that okay?");
const u8 gUnknown_085EC449[] = _("Quit editing?");
const u8 gUnknown_085EC457[] = _("The edited text will not be saved.");
const u8 gUnknown_085EC47A[] = _("Is that okay?");
const u8 gUnknown_085EC488[] = _("Please enter a phrase or word.");
const u8 gUnknown_085EC4A7[] = _("The entire text can't be deleted.");
const u8 gText_OnlyOnePhrase[] = _("Only one phrase may be changed.");
const u8 gText_OriginalSongWillBeUsed[] = _("The original song will be used.");
const u8 gUnknown_085EC509[] = _("That's trendy already!");
const u8 gText_CombineTwoWordsOrPhrases3[] = _("Combine two words or phrases.");
const u8 gUnknown_085EC53E[] = _("Quit giving information?");
const u8 gUnknown_085EC557[] = _("Stop giving the POKéMON MAIL?");
const u8 gUnknown_085EC575[] = _("Create a quiz!");
const u8 gUnknown_085EC584[] = _("Set the answer!");
const u8 gUnknown_085EC594[] = _("Cancel the selection?");
const u8 gText_Profile[] = _("PROFILE");
const u8 gText_AtTheBattlesStart[] = _("At the battle's start:");
const u8 gText_UponWinningABattle[] = _("Upon winning a battle:");
const u8 gText_UponLosingABattle[] = _("Upon losing a battle:");
const u8 gText_TheBardsSong[] = _("The BARD's Song");
const u8 gText_WhatsHipAndHappening[] = _("What's hip and happening?");
const u8 gText_Interview[] = _("Interview");
const u8 gText_GoodSaying[] = _("Good saying");
const u8 gText_FansQuestion[] = _("Fan's question");
const u8 gUnknown_085EC645[] = _("クイズの こたえは？");
const u8 gText_ApprenticesPhrase[] = _("Apprentice's phrase");
const u8 gText_Questionnaire[] = _("QUESTIONNAIRE");
const u8 gText_YouCannotQuitHere[] = _("You cannot quit here.");
const u8 gText_SectionMustBeCompleted[] = _("This section must be completed.");
const u8 gText_F700sQuiz[] = _("{SPECIAL_F7 0x00}'s quiz");
const u8 gText_Lady[] = _("Lady");
const u8 gText_AfterYouHaveReadTheQuiz[] = _("After you have read the quiz");
const u8 gText_QuestionPressTheAButton[] = _("question, press the A Button.");
const u8 gText_TheQuizAnswerIs[] = _("The quiz answer is?");
const u8 gText_LikeToQuitQuiz[] = _("Would you like to quit this quiz");
const u8 gText_ChallengeQuestionMark[] = _("challenge?");
const u8 gText_IsThisQuizOK[] = _("Is this quiz OK?");
const u8 gText_CreateAQuiz[] = _("Create a quiz!");
const u8 gText_SelectTheAnswer[] = _("Select the answer!");
const u8 gText_LyricsCantBeDeleted[] = _("The lyrics can't be deleted.");
const u8 gText_PokemonLeague[] = _("POKéMON LEAGUE");
const u8 gText_PokemonCenter[] = _("POKéMON CENTER");
const u8 gText_GetsAPokeBlockQuestion[] = _(" gets a {POKEBLOCK}?");
const u8 gText_Coolness[] = _("Coolness ");
const u8 gText_Beauty3[] = _("Beauty ");
const u8 gText_Cuteness[] = _("Cuteness ");
const u8 gText_Smartness[] = _("Smartness ");
const u8 gText_Toughness[] = _("Toughness ");
const u8 gText_WasEnhanced[] = _("was enhanced!");
const u8 gText_NothingChanged[] = _("Nothing changed!");
const u8 gText_WontEatAnymore[] = _("It won't eat anymore…");
const u8 gText_SaveFailedCheckingBackup[] = _("Save failed. Checking the backup\nmemory… Please wait.\n{COLOR RED}“Time required: about 1 minute”");
const u8 gText_BackupMemoryDamaged[] = _("The backup memory is damaged, or\nthe internal battery has run dry.\nYou can still play, but not save.");
const u8 gText_GamePlayCannotBeContinued[] = _("{COLOR RED}“Game play cannot be continued.\nReturning to the title screen…”");
const u8 gText_CheckCompleted[] = _("Check completed.\nAttempting to save again.\nPlease wait.");
const u8 gText_SaveCompleteGameCannotContinue[] = _("Save completed.\n{COLOR RED}“Game play cannot be continued.\nReturning to the title screen.”");
const u8 gText_SaveCompletePressA[] = _("Save completed.\n{COLOR RED}“Please press the A Button.”");
const u8 gText_Ferry[] = _("FERRY");
const u8 gText_SecretBase[] = _("SECRET BASE");
const u8 gText_Hideout[] = _("HIDEOUT");
const u8 gText_ResetRTCConfirmCancel[] = _("Reset RTC?\nA: Confirm, B: Cancel");
const u8 gText_PresentTime[] = _("Present time in game");
const u8 gText_PreviousTime[] = _("Previous time in game");
const u8 gText_PleaseResetTime[] = _("Please reset the time.");
const u8 gText_ClockHasBeenReset[] = _("The clock has been reset.\nData will be saved. Please wait.");
const u8 gText_SaveCompleted[] = _("Save completed.");
const u8 gText_SaveFailed[] = _("Save failed…");
const u8 gText_NoSaveFileCantSetTime[] = _("There is no save file, so the time\ncan't be set.");
const u8 gText_InGameClockUsable[] = _("The in-game clock adjustment system\nis now useable.");
const u8 gText_Slots[] = _("SLOTS");
const u8 gText_Roulette[] = _("ROULETTE");
const u8 gText_Good[] = _("Good");
const u8 gText_VeryGood[] = _("Very good");
const u8 gText_Excellent[] = _("Excellent");
const u8 gText_SoSo[] = _("So-so");
const u8 gText_Bad[] = _("Bad");
const u8 gText_TheWorst[] = _("The worst");
const u8 gText_Spicy2[] = _("spicy");
const u8 gText_Dry2[] = _("dry");
const u8 gText_Sweet2[] = _("sweet");
const u8 gText_Bitter2[] = _("bitter");
const u8 gText_Sour2[] = _("sour");
const u8 gText_Single[] = _("SINGLE");
const u8 gText_Double[] = _("DOUBLE");
const u8 gText_Jackpot[] = _("jackpot");
const u8 gText_First[] = _("first");
const u8 gText_Second[] = _("second");
const u8 gText_Third[] = _("third");
const u8 gText_0Pts[] = _("0 pts");
const u8 gText_10Pts[] = _("10 pts");
const u8 gText_20Pts[] = _("20 pts");
const u8 gText_30Pts[] = _("30 pts");
const u8 gText_40Pts[] = _("40 pts");
const u8 gText_50Pts[] = _("50 pts");
const u8 gText_60Pts[] = _("60 pts");
const u8 gText_70Pts[] = _("70 pts");
const u8 gText_80Pts[] = _("80 pts");
const u8 gText_90Pts[] = _("90 pts");
const u8 gText_100Pts[] = _("100 pts");
const u8 gText_QuestionMark[] = _("?");
const u8 gText_KissPoster16BP[] = _("KISS POSTER{CLEAR_TO 0x5E}16BP");
const u8 gText_KissCushion32BP[] = _("KISS CUSHION{CLEAR_TO 0x5E}32BP");
const u8 gText_SmoochumDoll32BP[] = _("SMOOCHUM DOLL{CLEAR_TO 0x5E}32BP");
const u8 gText_TogepiDoll48BP[] = _("TOGEPI DOLL{CLEAR_TO 0x5E}48BP");
const u8 gText_MeowthDoll48BP[] = _("MEOWTH DOLL{CLEAR_TO 0x5E}48BP");
const u8 gText_ClefairyDoll48BP[] = _("CLEFAIRY DOLL{CLEAR_TO 0x5E}48BP");
const u8 gText_DittoDoll48BP[] = _("DITTO DOLL{CLEAR_TO 0x5E}48BP");
const u8 gText_CyndaquilDoll80BP[] = _("CYNDAQUIL DOLL{CLEAR_TO 0x5E}80BP");
const u8 gText_ChikoritaDoll80BP[] = _("CHIKORITA DOLL{CLEAR_TO 0x5E}80BP");
const u8 gText_TotodileDoll80BP[] = _("TOTODILE DOLL{CLEAR_TO 0x5E}80BP");
const u8 gText_LaprasDoll128BP[] = _("LAPRAS DOLL{CLEAR_TO 0x58}128BP");
const u8 gText_SnorlaxDoll128BP[] = _("SNORLAX DOLL{CLEAR_TO 0x58}128BP");
const u8 gText_VenusaurDoll256BP[] = _("VENUSAUR DOLL{CLEAR_TO 0x58}256BP");
const u8 gText_CharizardDoll256BP[] = _("CHARIZARD DOLL{CLEAR_TO 0x58}256BP");
const u8 gText_BlastoiseDoll256BP[] = _("BLASTOISE DOLL{CLEAR_TO 0x58}256BP");
const u8 gText_Protein1BP[] = _("PROTEIN{CLEAR_TO 0x64}1BP");
const u8 gText_Calcium1BP[] = _("CALCIUM{CLEAR_TO 0x64}1BP");
const u8 gText_Iron1BP[] = _("IRON{CLEAR_TO 0x64}1BP");
const u8 gText_Zinc1BP[] = _("ZINC{CLEAR_TO 0x64}1BP");
const u8 gText_Carbos1BP[] = _("CARBOS{CLEAR_TO 0x64}1BP");
const u8 gText_HpUp1BP[] = _("HP UP{CLEAR_TO 0x64}1BP");
const u8 gText_Leftovers48BP[] = _("LEFTOVERS{CLEAR_TO 0x5E}48BP");
const u8 gText_WhiteHerb48BP[] = _("WHITE HERB{CLEAR_TO 0x5E}48BP");
const u8 gText_QuickClaw48BP[] = _("QUICK CLAW{CLEAR_TO 0x5E}48BP");
const u8 gText_MentalHerb48BP[] = _("MENTAL HERB{CLEAR_TO 0x5E}48BP");
const u8 gText_BrightPowder64BP[] = _("BRIGHTPOWDER{CLEAR_TO 0x5E}64BP");
const u8 gText_ChoiceBand64BP[] = _("CHOICE BAND{CLEAR_TO 0x5E}64BP");
const u8 gText_KingsRock64BP[] = _("KING'S ROCK{CLEAR_TO 0x5E}64BP");
const u8 gText_FocusBand64BP[] = _("FOCUS BAND{CLEAR_TO 0x5E}64BP");
const u8 gText_ScopeLens64BP[] = _("SCOPE LENS{CLEAR_TO 0x5E}64BP");
const u8 gText_Softboiled16BP[] = _("SOFTBOILED{CLEAR_TO 0x4E}16BP");
const u8 gText_SeismicToss24BP[] = _("SEISMIC TOSS{CLEAR_TO 0x4E}24BP");
const u8 gText_DreamEater24BP[] = _("DREAM EATER{CLEAR_TO 0x4E}24BP");
const u8 gText_MegaPunch24BP[] = _("MEGA PUNCH{CLEAR_TO 0x4E}24BP");
const u8 gText_MegaKick48BP[] = _("MEGA KICK{CLEAR_TO 0x4E}48BP");
const u8 gText_BodySlam48BP[] = _("BODY SLAM{CLEAR_TO 0x4E}48BP");
const u8 gText_RockSlide48BP[] = _("ROCK SLIDE{CLEAR_TO 0x4E}48BP");
const u8 gText_Counter48BP[] = _("COUNTER{CLEAR_TO 0x4E}48BP");
const u8 gText_ThunderWave48BP[] = _("THUNDER WAVE{CLEAR_TO 0x4E}48BP");
const u8 gText_SwordsDance48BP[] = _("SWORDS DANCE{CLEAR_TO 0x4E}48BP");
const u8 gText_DefenseCurl16BP[] = _("DEFENSE CURL{CLEAR_TO 0x4E}16BP");
const u8 gText_Snore24BP[] = _("SNORE{CLEAR_TO 0x4E}24BP");
const u8 gText_MudSlap24BP[] = _("MUD-SLAP{CLEAR_TO 0x4E}24BP");
const u8 gText_Swift24BP[] = _("SWIFT{CLEAR_TO 0x4E}24BP");
const u8 gText_IcyWind24BP[] = _("ICY WIND{CLEAR_TO 0x4E}24BP");
const u8 gText_Endure48BP[] = _("ENDURE{CLEAR_TO 0x4E}48BP");
const u8 gText_PsychUp48BP[] = _("PSYCH UP{CLEAR_TO 0x4E}48BP");
const u8 gText_IcePunch48BP[] = _("ICE PUNCH{CLEAR_TO 0x4E}48BP");
const u8 gText_ThunderPunch48BP[] = _("THUNDERPUNCH{CLEAR_TO 0x4E}48BP");
const u8 gText_FirePunch48BP[] = _("FIRE PUNCH{CLEAR_TO 0x4E}48BP");
const u8 gText_PkmnFainted3[] = _("{STR_VAR_1} fainted…\p\n");
const u8 gText_Marco[] = _("MARCO");
const u8 gText_TrainerCardName[] = _("NAME: ");
const u8 gText_TrainerCardIDNo[] = _("IDNo.");
const u8 gText_TrainerCardMoney[] = _("MONEY");
const u8 gUnknown_085ECF84[] = _("¥");
const u8 gText_TrainerCardPokedex[] = _("POKéDEX");
const u8 gText_EmptyString6[] = _("");
const u8 gText_Colon2[] = _(":");
const u8 gUnknown_085ECF91[] = _(" points");
const u8 gText_TrainerCardTime[] = _("TIME");
const u8 gUnknown_085ECF9E[] = _("ゲ-ムポイント");
const u8 gText_Var1sTrainerCard[] = _("{STR_VAR_1}'s TRAINER CARD");
const u8 gText_HallOfFameDebut[] = _("HALL OF FAME DEBUT  ");
const u8 gText_LinkBattles[] = _("LINK BATTLES");
const u8 gText_LinkCableBattles[] = _("LINK CABLE BATTLES");
const u8 gText_WinsLosses[] = _("W:{COLOR RED}{SHADOW LIGHT_RED}{STR_VAR_1}{COLOR DARK_GREY}{SHADOW LIGHT_GREY}  L:{COLOR RED}{SHADOW LIGHT_RED}{STR_VAR_2}{COLOR DARK_GREY}{SHADOW LIGHT_GREY}");
const u8 gText_PokemonTrades[] = _("POKéMON TRADES");
const u8 gText_UnionTradesAndBattles[] = _("UNION TRADES & BATTLES");
const u8 gText_BerryCrush[] = _("BERRY CRUSH");
const u8 gText_WaitingTrainerFinishReading[] = _("Waiting for the other TRAINER to\nfinish reading your TRAINER CARD.");
const u8 gText_PokeblocksWithFriends[] = _("{POKEBLOCK}S W/FRIENDS");
const u8 gText_Var1DarkGreyShadowLightGrey[] = _("{STR_VAR_1}{COLOR DARK_GREY}{SHADOW LIGHT_GREY}");
const u8 gText_WonContestsWFriends[] = _("WON CONTESTS W/FRIENDS");
const u8 gText_BattlePtsWon[] = _("BATTLE POINTS WON");
const u8 gText_Var1DarkLightGreyBP[] = _("{STR_VAR_1}{COLOR DARK_GREY}{SHADOW LIGHT_GREY}BP");
const u8 gText_BattleTower[] = _("BATTLE TOWER");
const u8 gText_WSlashStraightSlash[] = _("W/{COLOR RED}{SHADOW LIGHT_RED}{STR_VAR_1}{COLOR DARK_GREY}{SHADOW LIGHT_GREY}  STRAIGHT/{COLOR RED}{SHADOW LIGHT_RED}{STR_VAR_2}");
const u8 gText_BattleTower2[] = _("BATTLE TOWER");
const u8 gText_BattleDome[] = _("BATTLE DOME");
const u8 gText_BattlePalace[] = _("BATTLE PALACE");
const u8 gText_BattleFactory[] = _("BATTLE FACTORY");
const u8 gText_BattleArena[] = _("BATTLE ARENA");
const u8 gText_BattlePike[] = _("BATTLE PIKE");
const u8 gText_BattlePyramid[] = _("BATTLE PYRAMID");

__attribute__((aligned(4))) const u8 gUnknown_085ED164[] = _("{STR_VAR_1} SINGLE");
__attribute__((aligned(4))) const u8 gUnknown_085ED170[] = _("{STR_VAR_1} DOUBLE");
__attribute__((aligned(4))) const u8 gUnknown_085ED17C[] = _("{STR_VAR_1} MULTI");
__attribute__((aligned(4))) const u8 gUnknown_085ED188[] = _("{STR_VAR_1} LINK");
__attribute__((aligned(4))) const u8 gUnknown_085ED190[] = _("{STR_VAR_1}");

const u8 gText_Give[] = _("Give");
const u8 gText_NoNeed[] = _("No need");
const u8 gText_ColorLightShadowDarkGrey[] = _("{COLOR LIGHT_GREY}{SHADOW DARK_GREY}");
const u8 gText_ColorBlue[] = _("{COLOR BLUE}");
const u8 gText_ColorTransparent[] = _("{HIGHLIGHT TRANSPARENT}{COLOR TRANSPARENT}");
const u8 gText_CDot[] = _("C.");
const u8 gText_BDot[] = _("B.");
const u8 gText_AnnouncingResults[] = _("Announcing the results!");
const u8 gText_PreliminaryResults[] = _("The preliminary results!");
const u8 gText_Round2Results[] = _("Round 2 results!");
const u8 gText_Var1sVar2Won[] = _("{STR_VAR_1}'s {STR_VAR_2} won!");
const u8 gText_CommunicationStandby[] = _("Communication standby…");
const u8 gText_ColorDarkGrey[] = _("{COLOR DARK_GREY}");
const u8 gUnknown_085ED222[] = _("{COLOR_HIGHLIGHT_SHADOW DYNAMIC_COLOR6 WHITE DYNAMIC_COLOR5}");
const u8 gText_HighlightDarkGrey[] = _("{HIGHLIGHT DARK_GREY}");
const u8 gUnknown_085ED22C[] = _(" ");
const u8 gText_DynColor2Male[] = _("{COLOR DYNAMIC_COLOR2}♂");
const u8 gText_DynColor1Female[] = _("{COLOR DYNAMIC_COLOR1}♀");
const u8 gText_DynColor2[] = _("{COLOR DYNAMIC_COLOR2}");
const u8 gText_Upper[] = _("UPPER");
const u8 gText_Lower[] = _("lower");
const u8 gText_Others[] = _("OTHERS");
const u8 gText_Symbols[] = _("SYMBOLS");
const u8 gText_Register2[] = _("REGISTER");
const u8 gText_Exit2[] = _("EXIT");
const u8 gText_QuitChatting[] = _("Quit chatting?");
const u8 gText_RegisterTextWhere[] = _("Register text where?");
const u8 gText_RegisterTextHere[] = _("Register text here?");
const u8 gText_InputText[] = _("Input text.");
const u8 gText_F700JoinedChat[] = _("{SPECIAL_F7 0x00} joined the chat!");
const u8 gText_F700LeftChat[] = _("{SPECIAL_F7 0x00} left the chat.");
const u8 gUnknown_085ED2CF[] = _("{SPECIAL_F7 0x00}の{SPECIAL_F7 0x01}ひきめ:");
const u8 gUnknown_085ED2D9[] = _("{SPECIAL_F7 0x00}の{SPECIAL_F7 0x01}ひきめは いません");
const u8 gText_ExitingChat[] = _("Exiting the chat…");
const u8 gText_LeaderLeftEndingChat[] = _("The LEADER, {SPECIAL_F7 0x00}, has\nleft, ending the chat.");
const u8 gText_RegisteredTextChanged[] = _("The registered text has been changed.\nIs it okay to save the game?");
const u8 gText_AlreadySavedFile_Unused[] = _("There is already a saved file.\nIs it okay to overwrite it?");
const u8 gText_SavingDontTurnOff_Unused[] = _("SAVING…\nDON'T TURN OFF THE POWER.");
const u8 gText_PlayerSavedGame_Unused[] = _("{SPECIAL_F7 0x00} saved the game.");
const u8 gText_IfLeaderLeavesChatEnds[] = _("If the LEADER leaves, the chat\nwill end. Is that okay?");
const u8 gText_Hello[] = _("HELLO");
const u8 gText_Pokemon2[] = _("POKéMON");
const u8 gText_Trade[] = _("TRADE");
const u8 gText_Battle[] = _("BATTLE");
const u8 gText_Lets[] = _("LET'S");
const u8 gText_Ok[] = _("OK!");
const u8 gText_Sorry[] = _("SORRY");
const u8 gText_YayUnkF9F9[] = _("YAY{EMOJI_BIGSMILE}");
const u8 gText_ThankYou[] = _("THANK YOU");
const u8 gText_ByeBye[] = _("BYE-BYE!");
const u8 gMatchCallStevenStrategyText[] = _("Attack the weak points!");
const u8 gMatchCall_StevenTrainersPokemonText[] = _("Ultimate STEEL POKéMON.");
const u8 gMatchCall_StevenSelfIntroductionText_Line1_BeforeMeteorFallsBattle[] = _("I'd climb even waterfalls");
const u8 gMatchCall_StevenSelfIntroductionText_Line2_BeforeMeteorFallsBattle[] = _("to find a rare stone!");
const u8 gMatchCall_StevenSelfIntroductionText_Line1_AfterMeteorFallsBattle[] = _("I'm the strongest and most");
const u8 gMatchCall_StevenSelfIntroductionText_Line2_AfterMeteorFallsBattle[] = _("energetic after all!");
const u8 gMatchCall_BrendanStrategyText[] = _("Battle with knowledge!");
const u8 gMatchCall_BrendanTrainersPokemonText[] = _("I will use various POKéMON.");
const u8 gMatchCall_BrendanSelfIntroductionText_Line1[] = _("I'll be a better POKéMON");
const u8 gMatchCall_BrendanSelfIntroductionText_Line2[] = _("prof than my father is!");
const u8 gMatchCall_MayStrategyText[] = _("I'm not so good at battles.");
const u8 gMatchCall_MayTrainersPokemonText[] = _("I'll use any POKéMON!");
const u8 gMatchCall_MaySelfIntroductionText_Line1[] = _("My POKéMON and I help");
const u8 gMatchCall_MaySelfIntroductionText_Line2[] = _("my father's research.");
const u8 gText_HatchedFromEgg[] = _("{STR_VAR_1} hatched from the EGG!");
const u8 gText_NickHatchPrompt[] = _("Would you like to nickname the newly\nhatched {STR_VAR_1}?");
__attribute__((aligned(4))) const u8 gText_ReadyToBerryCrush[] = _("Are you ready to BERRY-CRUSH?\nPlease pick a BERRY for use.\p");
__attribute__((aligned(4))) const u8 gText_WaitForAllChooseBerry[] = _("Please wait while each member\nchooses a BERRY.");
__attribute__((aligned(4))) const u8 gText_EndedWithXUnitsPowder[] = _("{PAUSE_MUSIC}{PLAY_BGM MUS_FANFA1}You ended up with {STR_VAR_1} units of\nsilky-smooth BERRY POWDER.{RESUME_MUSIC}\pYour total amount of BERRY POWDER\nis {STR_VAR_2}.\p");
__attribute__((aligned(4))) const u8 gText_RecordingGameResults[] = _("Recording your game results in the\nsave file.\lPlease wait.");
__attribute__((aligned(4))) const u8 gText_PlayBerryCrushAgain[] = _("Want to play BERRY CRUSH again?");
__attribute__((aligned(4))) const u8 gText_YouHaveNoBerries[] = _("You have no BERRIES.\nThe game will be canceled.");
__attribute__((aligned(4))) const u8 gText_MemberDroppedOut[] = _("A member dropped out.\nThe game will be canceled.");
__attribute__((aligned(4))) const u8 gText_TimesUpNoGoodPowder[] = _("Time's up.\pGood BERRY POWDER could not be\nmade…\p");
__attribute__((aligned(4))) const u8 gText_CommunicationStandby2[] = _("Communication standby…");
__attribute__((aligned(4))) const u8 gText_1DotBlueF700[] = _("1. {COLOR BLUE}{SHADOW LIGHT_BLUE}{SPECIAL_F7 0x00}");
__attribute__((aligned(4))) const u8 gText_1DotF700[] = _("1. {SPECIAL_F7 0x00}");
__attribute__((aligned(4))) const u8 gText_SpaceTimes2[] = _(" time(s)");
__attribute__((aligned(4))) const u8 gText_XDotY[] = _("{STR_VAR_1}.{STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_Var1Berry[] = _("{STR_VAR_1} BERRY");
__attribute__((aligned(4))) const u8 gText_TimeColon[] = _("Time:");
__attribute__((aligned(4))) const u8 gText_PressingSpeed[] = _("Pressing Speed:");
__attribute__((aligned(4))) const u8 gText_Silkiness[] = _("Silkiness:");
__attribute__((aligned(4))) const u8 gText_StrVar1[] = _("{STR_VAR_1}");
__attribute__((aligned(4))) const u8 gText_SpaceMin[] = _(" min. ");
__attribute__((aligned(4))) const u8 gText_XDotY2[] = _("{STR_VAR_1}.{STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_SpaceSec[] = _(" sec.");
__attribute__((aligned(4))) const u8 gText_XDotY3[] = _("{STR_VAR_1}.{STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_TimesPerSec[] = _(" Times/sec.");
__attribute__((aligned(4))) const u8 gText_Var1Percent[] = _("{STR_VAR_1}%");
__attribute__((aligned(4))) const u8 gText_PressesRankings[] = _("No. of Presses Rankings");
__attribute__((aligned(4))) const u8 gText_CrushingResults[] = _("Crushing Results");
__attribute__((aligned(4))) const u8 gText_NeatnessRankings[] = _("Neatness Rankings");
__attribute__((aligned(4))) const u8 gText_CoopRankings[] = _("Cooperative Rankings");
__attribute__((aligned(4))) const u8 gText_PressingPowerRankings[] = _("Pressing-Power Rankings");
const u8 gText_BerryCrush2[] = _("BERRY CRUSH");
const u8 gText_PressingSpeedRankings[] = _("Pressing-Speed Rankings");
const u8 gText_Var1Players[] = _("{STR_VAR_1} PLAYERS");
const u8 gText_SymbolsEarned[] = _("Symbols Earned");
const u8 gText_BattleRecord[] = _("Battle Record");
const u8 gText_BattlePoints[] = _("Battle Points");
const u8 gUnknown_085ED92A[] = _("CANCEL");
const u8 gUnknown_085ED931[] = _("");
const u8 gUnknown_085ED932[] = _("Check BATTLE FRONTIER MAP.");
const u8 gUnknown_085ED94D[] = _("Check TRAINER CARD.");
const u8 gUnknown_085ED961[] = _("View recorded battle.");
const u8 gUnknown_085ED977[] = _("Put away the FRONTIER PASS.");
const u8 gUnknown_085ED993[] = _("Your current Battle Points.");
const u8 gUnknown_085ED9AF[] = _("Your collected Symbols.");
const u8 gUnknown_085ED9C7[] = _("Battle Tower - Ability Symbol");
const u8 gUnknown_085ED9E5[] = _("Battle Dome - Tactics Symbol");
const u8 gUnknown_085EDA02[] = _("Battle Palace - Spirits Symbol");
const u8 gUnknown_085EDA21[] = _("Battle Arena - Guts Symbol");
const u8 gUnknown_085EDA3C[] = _("Battle Factory - Knowledge Symbol");
const u8 gUnknown_085EDA5E[] = _("Battle Pike - Luck Symbol");
const u8 gUnknown_085EDA78[] = _("Battle Pyramid - Brave Symbol");
const u8 gUnknown_085EDA96[] = _("There is no Battle Record.");
const u8 gUnknown_085EDAB1[] = _("BATTLE TOWER");
const u8 gUnknown_085EDABE[] = _("BATTLE DOME");
const u8 gUnknown_085EDACA[] = _("BATTLE PALACE");
const u8 gUnknown_085EDAD8[] = _("BATTLE ARENA");
const u8 gUnknown_085EDAE5[] = _("BATTLE FACTORY");
const u8 gUnknown_085EDAF4[] = _("BATTLE PIKE");
const u8 gUnknown_085EDB00[] = _("BATTLE PYRAMID");
const u8 gUnknown_085EDB0F[] = _("KO opponents and aim for the top!\nYour ability will be tested.");
const u8 gUnknown_085EDB4E[] = _("Keep winning at the tournament!\nYour tactics will be tested.");
const u8 gUnknown_085EDB8B[] = _("Watch your POKéMON battle!\nYour spirit will be tested.");
const u8 gUnknown_085EDBC2[] = _("Win battles with teamed-up POKéMON!\nYour guts will be tested.");
const u8 gUnknown_085EDC00[] = _("Aim for victory using rental POKéMON!\nYour knowledge will be tested.");
const u8 gUnknown_085EDC45[] = _("Select one of three paths to battle!\nYour luck will be tested.");
const u8 gUnknown_085EDC84[] = _("Aim for the top with exploration!\nYour bravery will be tested.");
const u8 gText_ContinueMenuPlayer[] = _("PLAYER");
const u8 gText_ContinueMenuTime[] = _("TIME");
const u8 gText_ContinueMenuPokedex[] = _("POKéDEX");
const u8 gText_ContinueMenuBadges[] = _("BADGES");
const u8 gText_Powder[] = _("POWDER");
const u8 gText_BerryPickingRecords[] = _("DODRIO BERRY-PICKING RECORDS");
const u8 gText_BerriesPicked[] = _("BERRIES picked:");
const u8 gText_BestScore[] = _("Best score:");
const u8 gText_BerriesInRowFivePlayers[] = _("BERRIES picked in a row with\nfive players:");
const u8 gText_BerryPickingResults[] = _("Announcing BERRY-PICKING results!");
const u8 gText_10P30P50P50P[] = _("{CLEAR_TO 0x03}10P{CLEAR_TO 0x2B}30P{CLEAR_TO 0x53}50P{CLEAR_TO 0x77}{EMOJI_MINUS}50P");
const u8 gText_AnnouncingRankings[] = _("Announcing rankings!");
const u8 gText_AnnouncingPrizes[] = _("Announcing prizes!");
const u8 gText_1Colon[] = _("1:");
const u8 gText_2Colon[] = _("2:");
const u8 gText_3Colon[] = _("3:");
const u8 gText_4Colon[] = _("4:");
const u8 gText_5Colon[] = _("5:");
const u8 gText_FirstPlacePrize[] = _("The first-place winner gets\nthis {SPECIAL_F7 0x00}!");
const u8 gText_CantHoldAnyMore[] = _("You can't hold any more!");
const u8 gText_FilledStorageSpace[] = _("It filled its storage space.");
const u8 gText_WantToPlayAgain[] = _("Want to play again?");
const u8 gText_SomeoneDroppedOut[] = _("Somebody dropped out.\nThe link will be canceled.");
const u8 gText_SpacePoints[] = _(" points");
const u8 gText_CommunicationStandby3[] = _("Communication standby…");
const u8 gText_SpacePoints2[] = _(" points");
const u8 gText_SpaceTimes3[] = _(" time(s)");
const u8 gText_PkmnJumpRecords[] = _("POKéMON JUMP RECORDS");
const u8 gText_JumpsInARow[] = _("Jumps in a row:");
const u8 gText_BestScore2[] = _("Best score:");
const u8 gText_ExcellentsInARow[] = _("EXCELLENTS in a row:");
const u8 gText_AwesomeWonF701F700[] = _("Awesome score! You've\nwon {SPECIAL_F7 0x01} {SPECIAL_F7 0x00}!");
const u8 gText_FilledStorageSpace2[] = _("It filled its storage space.");
const u8 gText_CantHoldMore[] = _("You can't hold any more!");
const u8 gText_WantToPlayAgain2[] = _("Want to play again?");
const u8 gText_SomeoneDroppedOut2[] = _("Somebody dropped out.\nThe link will be canceled.");
const u8 gText_CommunicationStandby4[] = _("Communication standby…");
const u8 gText_LinkContestResults[] = _("{PLAYER}'s Link Contest Results");
const u8 gText_1st[] = _("1st");
const u8 gText_2nd[] = _("2nd");
const u8 gText_3rd[] = _("3rd");
const u8 gText_4th[] = _("4th");
const u8 gText_Friend[] = _("Friend");
const u8 gUnknown_085EDFB7[] = _("POKeMON");
const u8 gJPText_MysteryGift[] = _("ふしぎなもらいもの");
const u8 gJPText_DecideStop[] = _("{A_BUTTON}けってい {B_BUTTON}やめる");
const u8 gUnknown_085EDFD6[] = _("カードeリーダー{PLUS}　で\nふしぎなもらいものを　よみこみます");
const u8 gUnknown_085EDFF5[] = _("カードeリーダー{PLUS}の　メニューから\n‘つうしん'を　えらび");
const u8 gUnknown_085EE014[] = _("‘ゲームボーイアドバンスとつうしん'\nを　せんたく　してください");
const u8 gUnknown_085EE035[] = _("カードeリーダー{PLUS}の　‘つうしん'を\nえらんで　Aボタンを　おしてください");
const u8 gUnknown_085EE05C[] = _("せつぞくが　まちがっています");
const u8 gUnknown_085EE06B[] = _("カードの　よみこみを\nちゅうし　しました");
const u8 gUnknown_085EE080[] = _("カードeリーダー{PLUS}と\nつうしん　できません");
const u8 gUnknown_085EE097[] = _("つうしん　ちゅう　です");
const u8 gUnknown_085EE0A3[] = _("つうしん　エラーです\nせつぞくを　たしかめて　ください");
const u8 gUnknown_085EE0BF[] = _("つうしん　エラーです\nはじめから　やりなおして　ください");
const u8 gUnknown_085EE0DC[] = _("カードeリーダー{PLUS}　に\nカードを　よみこませて　ください");
const u8 gUnknown_085EE0FA[] = _("つうしん　しゅうりょう！");
const u8 gUnknown_085EE107[] = _("あらたな　トレーナーが\nホウエンに　やってきた！");
const u8 gUnknown_085EE120[] = _("しばらく　おまちください");
const u8 gUnknown_085EE12D[] = _("かきこみ　エラー　です\nデータが　ほぞん　できませんでした");
const u8 gUnknown_085EE14B[] = _("RED");
const u8 gUnknown_085EE14F[] = _("BLUE");
const u8 gUnknown_085EE154[] = _("---");
const u8 gText_SingleBattleRoomResults[] = _("{PLAYER}'s Single Battle Room Results");
const u8 gText_DoubleBattleRoomResults[] = _("{PLAYER}'s Double Battle Room Results");
const u8 gText_MultiBattleRoomResults[] = _("{PLAYER}'s Multi Battle Room Results");
const u8 gText_LinkMultiBattleRoomResults[] = _("{PLAYER}'s Link Multi Battle Room Results");
const u8 gText_SingleBattleTourneyResults[] = _("{PLAYER}'s Single Battle Tourney Results");
const u8 gText_DoubleBattleTourneyResults[] = _("{PLAYER}'s Double Battle Tourney Results");
const u8 gText_SingleBattleHallResults[] = _("{PLAYER}'s Single Battle Hall Results");
const u8 gText_DoubleBattleHallResults[] = _("{PLAYER}'s Double Battle Hall Results");
const u8 gText_BattleChoiceResults[] = _("{PLAYER}'s Battle Choice Results");
const u8 gText_SetKOTourneyResults[] = _("{PLAYER}'s Set KO Tourney Results");
const u8 gText_BattleSwapSingleResults[] = _("{PLAYER}'s Battle Swap Single Results");
const u8 gText_BattleSwapDoubleResults[] = _("{PLAYER}'s Battle Swap Double Results");
const u8 gText_BattleQuestResults[] = _("{PLAYER}'s Battle Quest Results");
const u8 gText_Lv502[] = _("LV. 50");
const u8 gText_OpenLv[] = _("OPEN LV.");
const u8 gText_WinStreak[] = _("Win streak: {STR_VAR_1}");
const u8 gText_Current[] = _("CURRENT");
const u8 gText_Record[] = _("RECORD");
const u8 gText_Prev[] = _("PREV.");
const u8 gText_RentalSwap[] = _("Rental/Swap");
const u8 gText_Total[] = _("Total");
const u8 gText_ClearStreak[] = _("Clear streak: {STR_VAR_1}");
const u8 gText_Championships[] = _("Championships: {STR_VAR_1}");
const u8 gText_RoomsCleared[] = _("Rooms cleared: {STR_VAR_1}");
const u8 gText_TimesCleared[] = _("Times cleared:{CLEAR 0x05}{STR_VAR_1}");
const u8 gText_KOsInARow[] = _("KOs in a row: {STR_VAR_1}");
const u8 gText_TimesVar1[] = _("Times: {STR_VAR_1}");
const u8 gText_FloorsCleared[] = _("Floors cleared: {STR_VAR_1}");

__attribute__((aligned(4))) const u8 gText_RecordsLv50[] = _("LV. 50");
__attribute__((aligned(4))) const u8 gText_RecordsOpenLevel[] = _("OPEN LEVEL");
__attribute__((aligned(4))) const u8 gText_FrontierFacilityWinStreak[] = _("Win streak: {STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_FrontierFacilityClearStreak[] = _("Clear streak: {STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_FrontierFacilityRoomsCleared[] = _("Rooms cleared: {STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_FrontierFacilityKOsStreak[] = _("KOs in a row: {STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_FrontierFacilityFloorsCleared[] = _("Floors cleared: {STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_123Dot[][3] = {_("1."), _("2."), _("3.")};

const u8 gText_SavingDontTurnOff2[] = _("SAVING…\nDON'T TURN OFF THE POWER.");
const u8 gText_BlenderMaxSpeedRecord[] = _("BERRY BLENDER\nMAXIMUM SPEED RECORD!");
const u8 gText_234Players[] = _("2 PLAYERS\n3 PLAYERS\n4 PLAYERS");
const u8 gText_YesNo[] = _("YES\nNO");
const u8 gText_SelectorArrow3[] = _("▶");
const u8 gText_Peekaboo[] = _("PEEKABOO!");
const u8 gText_CommErrorCheckConnections[] = _("Communication error…\nPlease check all connections,\nthen turn the power OFF and ON.");
const u8 gText_CommErrorEllipsis[] = _("Communication error…");
const u8 gText_MoveCloserToLinkPartner[] = _("Move closer to your link partner(s).\nAvoid obstacles between partners.");
const u8 gText_ABtnRegistrationCounter[] = _("A Button: Registration Counter");
const u8 gText_ABtnTitleScreen[] = _("A Button: Title Screen");
const u8 gText_Option[] = _("OPTION");
const u8 gText_TextSpeed[] = _("TEXT SPEED");
const u8 gText_BattleScene[] = _("BATTLE SCENE");
const u8 gText_BattleStyle[] = _("BATTLE STYLE");
const u8 gText_Sound[] = _("SOUND");
const u8 gText_Frame[] = _("FRAME");
const u8 gText_OptionMenuCancel[] = _("CANCEL");
const u8 gText_ButtonMode[] = _("BUTTON MODE");
const u8 gText_TextSpeedSlow[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}SLOW");
const u8 gText_TextSpeedMid[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}MID");
const u8 gText_TextSpeedFast[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}FAST");
const u8 gText_BattleSceneOn[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}ON");
const u8 gText_BattleSceneOff[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}OFF");
const u8 gText_BattleStyleShift[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}SHIFT");
const u8 gText_BattleStyleSet[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}SET");
const u8 gText_SoundMono[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}MONO");
const u8 gText_SoundStereo[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}STEREO");
const u8 gText_FrameType[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}TYPE");
const u8 gText_FrameTypeNumber[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}");
const u8 gText_ButtonTypeNormal[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}NORMAL");
const u8 gText_ButtonTypeLR[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}LR");
const u8 gText_ButtonTypeLEqualsA[] = _("{COLOR GREEN}{SHADOW LIGHT_GREEN}L=A");
const u8 gText_XPLink[] = _("{STR_VAR_1}P LINK");
const u8 gText_BronzeCard[] = _("BRONZE");
const u8 gText_CopperCard[] = _("COPPER");
const u8 gText_SilverCard[] = _("SILVER");
const u8 gText_GoldCard[] = _("GOLD");
const u8 gText_Day[] = _("DAY");
const u8 gText_Colon3[] = _(":");
const u8 gText_Confirm2[] = _("CONFIRM");
const u8 gUnknown_085EE698[] = _("Days");
const u8 gUnknown_085EE69D[] = _("Time:");
const u8 gUnknown_085EE6A3[] = _("Game time");
const u8 gUnknown_085EE6AD[] = _("RTC time");
const u8 gUnknown_085EE6B6[] = _("Updated time");
const u8 gText_MenuPokedex[] = _("POKéDEX");
const u8 gText_MenuPokemon[] = _("POKéMON");
const u8 gText_MenuBag[] = _("BAG");
const u8 gText_MenuPokenav[] = _("POKéNAV");
const u8 gText_MenuPlayer[] = _("{PLAYER}");
const u8 gText_MenuSave[] = _("SAVE");
const u8 gText_MenuOption[] = _("OPTION");
const u8 gText_MenuExit[] = _("EXIT");
const u8 gText_MenuRetire[] = _("RETIRE");
const u8 gText_MenuRest[] = _("REST");
const u8 gText_SafariBallStock[] = _("SAFARI BALLS\nStock: {STR_VAR_1}");
const u8 gText_BattlePyramidFloor[] = _("Battle Pyramid\n{STR_VAR_1}");
const u8 gText_Floor1[] = _("Floor 1");
const u8 gText_Floor2[] = _("Floor 2");
const u8 gText_Floor3[] = _("Floor 3");
const u8 gText_Floor4[] = _("Floor 4");
const u8 gText_Floor5[] = _("Floor 5");
const u8 gText_Floor6[] = _("Floor 6");
const u8 gText_Floor7[] = _("Floor 7");
const u8 gText_Peak[] = _("Peak");
const u8 gText_LinkStandby2[] = _("Link standby…\n… … B Button: Cancel");
const u8 gText_PressAToLoadEvent[] = _("Press the A Button to load event.\n… … B Button: Cancel");
const u8 gText_LoadingEvent[] = _("Loading event…");
const u8 gText_DontRemoveCableTurnOff[] = _("Don't remove the Game Link cable.\nDon't turn off the power.");
const u8 gText_EventSafelyLoaded[] = _("The event was safely loaded.");
const u8 gText_LoadErrorEndingSession[] = _("Loading error.\nEnding session.");
const u8 gUnknown_085EE846[] = _("プレイヤー");
const u8 gUnknown_085EE84C[] = _("さま");
const u8 gText_DexHoenn[] = _("HOENN");
const u8 gText_DexNational[] = _("NATIONAL");
const u8 gText_PokedexDiploma[] = _("PLAYER: {CLEAR 0x10}{COLOR RED}{SHADOW LIGHT_RED}{PLAYER}{COLOR DARK_GREY}{SHADOW LIGHT_GREY}\n\nThis document certifies\nthat you have successfully\ncompleted your\n{STR_VAR_1} POKéDEX.\n\n{CLEAR_TO 0x42}{COLOR RED}{SHADOW LIGHT_RED}GAME FREAK");
const u8 gUnknown_085EE8DC[] = _("{COLOR RED}{SHADOW LIGHT_RED}ゲ-ムフリ-ク");
const u8 gUnknown_085EE8EA[] = _("{COLOR RED}{SHADOW LIGHT_RED}");
const u8 gText_Hoenn[] = _("HOENN");
const u8 gText_OhABite[] = _("Oh! A bite!");
const u8 gText_PokemonOnHook[] = _("A POKéMON's on the hook!{PAUSE_UNTIL_PRESS}");
const u8 gText_NotEvenANibble[] = _("Not even a nibble…{PAUSE_UNTIL_PRESS}");
const u8 gText_ItGotAway[] = _("It got away…{PAUSE_UNTIL_PRESS}");
const u8 gText_XWillBeSentToY[] = _("{STR_VAR_2} will be\nsent to {STR_VAR_1}.");
const u8 gText_ByeByeVar1[] = _("Bye-bye, {STR_VAR_2}!");
const u8 gText_XSentOverY[] = _("{STR_VAR_1} sent over {STR_VAR_3}.");
const u8 gText_TakeGoodCareOfX[] = _("Take good care of {STR_VAR_3}!");


const u8 gEasyChatGroupName_Pokemon[] = _("POKéMON");
const u8 gEasyChatGroupName_Trainer[] = _("TRAINER");
const u8 gEasyChatGroupName_Status[] = _("STATUS");
const u8 gEasyChatGroupName_Battle[] = _("BATTLE");
const u8 gEasyChatGroupName_Greetings[] = _("GREETINGS");
const u8 gEasyChatGroupName_People[] = _("PEOPLE");
const u8 gEasyChatGroupName_Voices[] = _("VOICES");
const u8 gEasyChatGroupName_Speech[] = _("SPEECH");
const u8 gEasyChatGroupName_Endings[] = _("ENDINGS");
const u8 gEasyChatGroupName_Feelings[] = _("FEELINGS");
const u8 gEasyChatGroupName_Conditions[] = _("CONDITIONS");
const u8 gEasyChatGroupName_Actions[] = _("ACTIONS");
const u8 gEasyChatGroupName_Lifestyle[] = _("LIFESTYLE");
const u8 gEasyChatGroupName_Hobbies[] = _("HOBBIES");
const u8 gEasyChatGroupName_Time[] = _("TIME");
const u8 gEasyChatGroupName_Misc[] = _("MISC.");
const u8 gEasyChatGroupName_Adjectives[] = _("ADJECTIVES");
const u8 gEasyChatGroupName_Events[] = _("EVENTS");
const u8 gEasyChatGroupName_Move1[] = _("MOVE 1");
const u8 gEasyChatGroupName_Move2[] = _("MOVE 2");
const u8 gEasyChatGroupName_TrendySaying[] = _("TRENDY SAYING");
const u8 gEasyChatGroupName_Pokemon2[] = _("POKéMON2");

const u8 gText_ThreeQuestionMarks[] = _("???");
const u8 gUnknown_085EEA46[] = _("MAX. HP");
const u8 gUnknown_085EEA4E[] = _("ATTACK");
const u8 gUnknown_085EEA55[] = _("DEFENSE");
const u8 gUnknown_085EEA5D[] = _("SPEED");
const u8 gUnknown_085EEA63[] = _("SP. ATK");
const u8 gUnknown_085EEA6B[] = _("SP. DEF");
const u8 gText_UnkCtrlF904[] = _("{PLUS}");
const u8 gText_Dash[] = _("-");
const u8 gText_FromSpace[] = _("From ");
const u8 gText_MixingRecords[] = _("Mixing records…");
const u8 gText_RecordMixingComplete[] = _("Record mixing completed.\nThank you for waiting.");
const u8 gText_YourName[] = _("YOUR NAME?");
const u8 gText_BoxName[] = _("BOX NAME?");
const u8 gText_PkmnsNickname[] = _("{STR_VAR_1}'s nickname?");
const u8 gText_TellHimTheWords[] = _("Tell him the words.");
const u8 gText_MoveOkBack[] = _("{DPAD_NONE}MOVE  {A_BUTTON}OK  {B_BUTTON}BACK");
const u8 gText_CallCantBeMadeHere[] = _("A call can't be made from here.");
const u8 gText_ContestLady_Handsome[] = _("HANDSOME");
const u8 gText_ContestLady_Vinny[] = _("VINNY");
const u8 gText_ContestLady_Moreme[] = _("MOREME");
const u8 gText_ContestLady_Ironhard[] = _("IRONHARD");
const u8 gText_ContestLady_Muscle[] = _("MUSCLE");
const u8 gText_ContestLady_Coolness[] = _("coolness");
const u8 gText_ContestLady_Beauty[] = _("beauty");
const u8 gText_ContestLady_Cuteness[] = _("cuteness");
const u8 gText_ContestLady_Smartness[] = _("smartness");
const u8 gText_ContestLady_Toughness[] = _("toughness");
const u8 gText_QuizLady_Lady[] = _("Lady");
const u8 gText_FavorLady_Slippery[] = _("slippery");
const u8 gText_FavorLady_Roundish[] = _("roundish");
const u8 gText_FavorLady_Whamish[] = _("wham-ish");
const u8 gText_FavorLady_Shiny[] = _("shiny");
const u8 gText_FavorLady_Sticky[] = _("sticky");
const u8 gText_FavorLady_Pointy[] = _("pointy");
const u8 gText_RentalPkmn2[] = _("RENTAL POKéMON");
const u8 gText_SelectFirstPkmn[] = _("Select the first POKéMON.");
const u8 gText_SelectSecondPkmn[] = _("Select the second POKéMON.");
const u8 gText_SelectThirdPkmn[] = _("Select the third POKéMON.");
const u8 gText_Rent[] = _("RENT");
const u8 gText_Summary[] = _("SUMMARY");
const u8 gText_Others2[] = _("OTHERS");
const u8 gText_Deselect[] = _("DESELECT");
const u8 gText_TheseThreePkmnOkay[] = _("Are these three POKéMON OK?");
const u8 gText_Yes2[] = _("YES");
const u8 gText_No2[] = _("NO");
const u8 gText_CantSelectSamePkmn[] = _("Can't select same {PKMN}.");
const u8 gText_PkmnSwap[] = _("POKéMON SWAP");
const u8 gText_SelectPkmnToSwap[] = _("Select POKéMON to swap.");
const u8 gText_SelectPkmnToAccept[] = _("Select POKéMON to accept.");
const u8 gText_Swap[] = _("SWAP");
const u8 gText_Summary2[] = _("SUMMARY");
const u8 gText_Rechoose[] = _("RECHOOSE");
const u8 gText_QuitSwapping[] = _("Quit swapping?");
const u8 gText_Yes3[] = _("YES");
const u8 gText_No3[] = _("NO");
const u8 gText_PkmnForSwap[] = _("{PKMN} FOR SWAP");
const u8 gText_Cancel3[] = _("CANCEL");
const u8 gUnknown_085EECE4[] = _("SWAP");
const u8 gUnknown_085EECE9[] = _("ACCEPT");
const u8 gText_AcceptThisPkmn[] = _("Accept this POKéMON?");
const u8 gUnknown_085EED05[] = _("    ");
const u8 gText_SamePkmnInPartyAlready[] = _("Same {PKMN} in party already.");
const u8 gText_DecimalPoint[] = _(".");
const u8 gText_SavingPlayer[] = _("PLAYER");
const u8 gText_SavingBadges[] = _("BADGES");
const u8 gText_SavingPokedex[] = _("POKéDEX");
const u8 gText_SavingTime[] = _("TIME");
const u8 gText_WirelessCommStatus[] = _("Wireless Communication Status");
const u8 gText_PeopleTrading[] = _("People trading:");
const u8 gText_PeopleBattling[] = _("People battling:");
const u8 gText_PeopleInUnionRoom[] = _("People in the UNION ROOM:");
const u8 gText_PeopleCommunicating[] = _("People communicating:");
const u8 gText_F700Players[] = _("{SPECIAL_F7 0} players");
const u8 gText_F701Players[] = _("{SPECIAL_F7 1} players");
const u8 gText_F702Players[] = _("{SPECIAL_F7 2} players");
const u8 gText_F703Players[] = _("{SPECIAL_F7 3} players");

const u8 *const gTextTable_Players[] = {
    gText_F700Players,
    gText_F701Players,
    gText_F702Players,
    gText_F703Players
};

__attribute__((aligned(4))) const u8 gText_WonderCards[] = _("WONDER CARDS");
__attribute__((aligned(4))) const u8 gText_WonderNews[] = _("WONDER NEWS");
__attribute__((aligned(4))) const u8 gText_WirelessCommunication[] = _("WIRELESS COMMUNICATION");
__attribute__((aligned(4))) const u8 gText_Friend2[] = _("FRIEND");
__attribute__((aligned(4))) const u8 gText_Exit3[] = _("EXIT");
__attribute__((aligned(4))) const u8 gText_Receive[] = _("RECEIVE");
__attribute__((aligned(4))) const u8 gText_Send[] = _("SEND");
__attribute__((aligned(4))) const u8 gText_Toss[] = _("TOSS");
__attribute__((aligned(4))) const u8 gText_VarietyOfEventsImportedWireless[] = _("A variety of events will be imported\nover Wireless Communication.");
__attribute__((aligned(4))) const u8 gText_WonderCardsInPossession[] = _("Read the WONDER CARDS in your\npossession.");
__attribute__((aligned(4))) const u8 gText_ReadNewsThatArrived[] = _("Read the NEWS that arrived.");
__attribute__((aligned(4))) const u8 gText_ReturnToTitle[] = _("Return to the title screen.");
__attribute__((aligned(4))) const u8 gText_DontHaveCardNewOneInput[] = _("You don't have a WONDER CARD,\nso a new CARD will be input.");
__attribute__((aligned(4))) const u8 gText_DontHaveNewsNewOneInput[] = _("You don't have any WONDER NEWS,\nso new NEWS will be input.");
__attribute__((aligned(4))) const u8 gText_WhereShouldCardBeAccessed[] = _("Where should the WONDER CARD\nbe accessed?");
__attribute__((aligned(4))) const u8 gText_WhereShouldNewsBeAccessed[] = _("Where should the WONDER NEWS\nbe accessed?");
__attribute__((aligned(4))) const u8 gUnknown_085EEFC0[] = _("Communication standby…\nB Button: Cancel");
__attribute__((aligned(4))) const u8 gText_Communicating[] = _("Communicating…");
__attribute__((aligned(4))) const u8 gText_CommunicationCompleted[] = _("Communication completed.");
__attribute__((aligned(4))) const u8 gText_CommunicationError[] = _("Communication error.");
__attribute__((aligned(4))) const u8 gText_CommunicationCanceled[] = _("Communication has been canceled.");
__attribute__((aligned(4))) const u8 gText_ThrowAwayWonderCard[] = _("Throw away the WONDER CARD\nand input a new CARD?");
__attribute__((aligned(4))) const u8 gText_HaventReceivedCardsGift[] = _("You haven't received the CARD's gift\nyet. Input a new CARD anyway?");
__attribute__((aligned(4))) const u8 gText_WonderCardReceivedFrom[] = _("A WONDER CARD has been received\nfrom {STR_VAR_1}.");
__attribute__((aligned(4))) const u8 gText_WonderNewsReceivedFrom[] = _("A WONDER NEWS item has been\nreceived from {STR_VAR_1}.");
__attribute__((aligned(4))) const u8 gText_WonderCardReceived[] = _("A new WONDER CARD has been\nreceived.");
__attribute__((aligned(4))) const u8 gText_WonderNewsReceived[] = _("A new WONDER NEWS item has been\nreceived.");
__attribute__((aligned(4))) const u8 gText_NewStampReceived[] = _("A new STAMP has been received.");
__attribute__((aligned(4))) const u8 gText_NewTrainerReceived[] = _("A new TRAINER has arrived.");
__attribute__((aligned(4))) const u8 gText_AlreadyHadCard[] = _("You already had that\nWONDER CARD.");
__attribute__((aligned(4))) const u8 gText_AlreadyHadNews[] = _("You already had that\nWONDER NEWS item.");
__attribute__((aligned(4))) const u8 gText_AlreadyHadStamp[] = _("You already had that\nSTAMP.");
__attribute__((aligned(4))) const u8 gText_NoMoreRoomForStamps[] = _("There's no more room for adding\nSTAMPS.");
__attribute__((aligned(4))) const u8 gText_RecordUploadedViaWireless[] = _("Your record has been uploaded via\nWIRELESS COMMUNICATION.");
__attribute__((aligned(4))) const u8 gText_CantAcceptCardFromTrainer[] = _("You can't accept a WONDER CARD\nfrom this TRAINER.");
__attribute__((aligned(4))) const u8 gText_CantAcceptNewsFromTrainer[] = _("You can't accept WONDER NEWS\nfrom this TRAINER.");
__attribute__((aligned(4))) const u8 gText_NothingSentOver[] = _("Nothing was sent over…");
__attribute__((aligned(4))) const u8 gText_WhatToDoWithCards[] = _("What would you like to do\nwith the WONDER CARDS?");
__attribute__((aligned(4))) const u8 gText_WhatToDoWithNews[] = _("What would you like to do\nwith the WONDER NEWS?");
__attribute__((aligned(4))) const u8 gText_SendingWonderCard[] = _("Sending your WONDER CARD…");
__attribute__((aligned(4))) const u8 gText_SendingWonderNews[] = _("Sending your WONDER NEWS item…");
__attribute__((aligned(4))) const u8 gText_WonderCardSentTo[] = _("Your WONDER CARD has been sent\nto {STR_VAR_1}.");
__attribute__((aligned(4))) const u8 gText_WonderNewsSentTo[] = _("Your WONDER NEWS item has been\nsent to {STR_VAR_1}.");
__attribute__((aligned(4))) const u8 gText_StampSentTo[] = _("A STAMP has been sent to {STR_VAR_1}.");
__attribute__((aligned(4))) const u8 gText_GiftSentTo[] = _("A GIFT has been sent to {STR_VAR_1}.");
__attribute__((aligned(4))) const u8 gText_OtherTrainerHasCard[] = _("The other TRAINER has the same\nWONDER CARD already.");
__attribute__((aligned(4))) const u8 gText_OtherTrainerHasNews[] = _("The other TRAINER has the same\nWONDER NEWS already.");
__attribute__((aligned(4))) const u8 gText_OtherTrainerHasStamp[] = _("The other TRAINER has the same\nSTAMP already.");
__attribute__((aligned(4))) const u8 gText_OtherTrainerCanceled[] = _("The other TRAINER canceled\ncommunication.");
__attribute__((aligned(4))) const u8 gText_CantSendGiftToTrainer[] = _("You can't send a MYSTERY GIFT to\nthis TRAINER.");
__attribute__((aligned(4))) const u8 gText_IfThrowAwayCardEventWontHappen[] = _("If you throw away the CARD,\nits event won't happen. Okay?");
__attribute__((aligned(4))) const u8 gText_OkayToDiscardNews[] = _("Is it okay to discard this\nNEWS item?");
__attribute__((aligned(4))) const u8 gText_HaventReceivedGiftOkayToDiscard[] = _("You haven't received the\nGIFT. Is it okay to discard?");
__attribute__((aligned(4))) const u8 gText_DataWillBeSaved[] = _("Data will be saved.\nPlease wait.");
__attribute__((aligned(4))) const u8 gText_SaveCompletedPressA[] = _("Save completed.\nPlease press the A Button.");
__attribute__((aligned(4))) const u8 gText_WonderCardThrownAway[] = _("The WONDER CARD was thrown away.");
__attribute__((aligned(4))) const u8 gText_WonderNewsThrownAway[] = _("The WONDER NEWS was thrown away.");
__attribute__((aligned(4))) const u8 gText_MysteryGift[] = _("MYSTERY GIFT");
__attribute__((aligned(4))) const u8 gText_PickOKExit[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}OK {B_BUTTON}EXIT");
__attribute__((aligned(4))) const u8 gText_PickOKCancel[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}OK {B_BUTTON}CANCEL");
const u8 gText_PlayersBattleResults[] = _("{PLAYER}'s BATTLE RESULTS");
const u8 gText_TotalRecordWLD[] = _("TOTAL RECORD W:{STR_VAR_1} L:{STR_VAR_2} D:{STR_VAR_3}");
const u8 gText_WinLoseDraw[] = _("{CLEAR_TO 0x53}WIN{CLEAR_TO 0x80}LOSE{CLEAR_TO 0xB0}DRAW");
const u8 gText_CommunicationStandby5[] = _("Communication standby…");
const u8 gText_QuitTheGame[] = _("Quit the game?");
const u8 gText_YouveGot9999Coins[] = _("You've got 9,999 COINS.");
const u8 gText_YouveRunOutOfCoins[] = _("You've run out of COINS.\nGame over!");
const u8 gText_YouDontHaveThreeCoins[] = _("You don't have three COINS.");
const u8 gText_ReelTimeHelp[] = _("REEL TIME\nHere's your chance to take\naim and nail marks!\nReel Time continues for the\nawarded number of spins.\nIt all ends on a Big Bonus.");
const u8 gDaycareText_GetAlongVeryWell[] = _("The two seem to get along\nvery well.");
const u8 gDaycareText_GetAlong[] = _("The two seem to get along.");
const u8 gDaycareText_DontLikeOther[] = _("The two don't seem to like\neach other much.");
const u8 gDaycareText_PlayOther[] = _("The two prefer to play with other\nPOKéMON than each other.");
const u8 gText_NewLine2[] = _("\n");
const u8 gText_Exit4[] = _("EXIT");
const u8 gText_Lv[] = _("{LV}");
const u8 gText_TimeBoard[] = _("TIME BOARD");
const u8 gText_TimeCleared[] = _("TIME CLEARED ");
const u8 gText_XMinYDotZSec[] = _("{STR_VAR_1} min. {STR_VAR_2}.{STR_VAR_3} sec.");
const u8 gText_TrainerHill1F[] = _("1F");
const u8 gText_TrainerHill2F[] = _("2F");
const u8 gText_TrainerHill3F[] = _("3F");
const u8 gText_TrainerHill4F[] = _("4F");
const u8 gText_TeachWhichMoveToPkmn[] = _("Teach which move to {STR_VAR_1}?");
const u8 gText_MoveRelearnerTeachMoveConfirm[] = _("Teach {STR_VAR_2}?");
const u8 gText_MoveRelearnerPkmnLearnedMove[] = _("{STR_VAR_1} learned\n{STR_VAR_2}!");
const u8 gText_MoveRelearnerPkmnTryingToLearnMove[] = _("{STR_VAR_1} is trying to learn\n{STR_VAR_2}.\pBut {STR_VAR_1} can't learn more\nthan four moves.\pDelete an older move to make\nroom for {STR_VAR_2}?");
const u8 gText_MoveRelearnerStopTryingToTeachMove[] = _("Stop trying to teach\n{STR_VAR_2}?");
const u8 gText_MoveRelearnerAndPoof[] = _("{PAUSE 32}1, {PAUSE 15}2, and {PAUSE 15}… {PAUSE 15}… {PAUSE 15}… {PAUSE 15}{PLAY_SE 0x0038}Poof!\p");
const u8 gText_MoveRelearnerPkmnForgotMoveAndLearnedNew[] = _("{STR_VAR_1} forgot {STR_VAR_3}.\pAnd…\p{STR_VAR_1} learned {STR_VAR_2}.");
const u8 gUnknown_085EF9C8[] = _("{STR_VAR_1} did not learn the\nmove {STR_VAR_2}.");
const u8 gText_MoveRelearnerGiveUp[] = _("Give up trying to teach a new\nmove to {STR_VAR_1}?");
const u8 gText_MoveRelearnerWhichMoveToForget[] = _("Which move should be\nforgotten?\p");
const u8 gText_MoveRelearnerBattleMoves[] = _("BATTLE MOVES");
const u8 gText_MoveRelearnerContestMovesTitle[] = _("CONTEST MOVES");
const u8 gUnknown_085EFA4C[] = _("TYPE/");
const u8 gText_MoveRelearnerPP[] = _("PP/");
const u8 gText_MoveRelearnerPower[] = _("POWER/");
const u8 gText_MoveRelearnerAccuracy[] = _("ACCURACY/");
const u8 gText_MoveRelearnerAppeal[] = _("APPEAL");
const u8 gText_MoveRelearnerJam[] = _("JAM");
const u8 gText_Kira[] = _("KIRA");
const u8 gText_Amy[] = _("AMY");
const u8 gText_John[] = _("JOHN");
const u8 gText_Roy[] = _("ROY");
const u8 gText_Gabby[] = _("GABBY");
const u8 gText_Anna[] = _("ANNA");
const u8 gText_ClearAllSaveData[] = _("Clear all save data areas?");
const u8 gText_ClearingData[] = _("Clearing data…\nPlease wait.");
const u8 gText_IsThisTheCorrectTime[] = _("Is this the correct time?");
const u8 gText_Confirm3[] = _("CONFIRM");
const u8 gText_Cancel4[] = _("CANCEL");
const u8 gMrStoneMatchCallDesc[] = _("DEVON PRES");
const u8 gMrStoneMatchCallName[] = _("MR. STONE");
const u8 gStevenMatchCallDesc[] = _("HARD AS ROCK");
const u8 gStevenMatchCallName[] = _("STEVEN");
const u8 gMayBrendanMatchCallDesc[] = _("RAD NEIGHBOR");
const u8 gNormanMatchCallDesc[] = _("RELIABLE ONE");
const u8 gMomMatchCallDesc[] = _("CALM & KIND");
const u8 gWallyMatchCallDesc[] = _("{PKMN} LOVER");
const u8 gNormanMatchCallName[] = _("DAD");
const u8 gMomMatchCallName[] = _("MOM");
const u8 gScottMatchCallDesc[] = _("ELUSIVE EYES");
const u8 gScottMatchCallName[] = _("SCOTT");
const u8 gRoxanneMatchCallDesc[] = _("ROCKIN' WHIZ");
const u8 gBrawlyMatchCallDesc[] = _("THE BIG HIT");
const u8 gWattsonMatchCallDesc[] = _("SWELL SHOCK");
const u8 gFlanneryMatchCallDesc[] = _("PASSION BURN");
const u8 gWinonaMatchCallDesc[] = _("SKY TAMER");
const u8 gTateLizaMatchCallDesc[] = _("MYSTIC DUO");
const u8 gJuanMatchCallDesc[] = _("DANDY CHARM");
const u8 gEliteFourMatchCallDesc[] = _("ELITE FOUR");
const u8 gChampionMatchCallDesc[] = _("CHAMPION");
const u8 gProfBirchMatchCallDesc[] = _("{PKMN} PROF.");
const u8 gText_CommStandbyAwaitingOtherPlayer[] = _("Communication standby…\nAwaiting another player to choose.");
const u8 gText_BattleWasRefused[] = _("The battle was refused.{PAUSE 60}");
const u8 gText_RefusedBattle[] = _("Refused the battle.{PAUSE 60}");
const u8 gUnknown_085EFC3E[] = _("NO WEATHER");
const u8 gUnknown_085EFC49[] = _("SUNNY");
const u8 gUnknown_085EFC4F[] = _("SUNNY2");
const u8 gUnknown_085EFC56[] = _("RAIN");
const u8 gUnknown_085EFC5B[] = _("SNOW");
const u8 gUnknown_085EFC60[] = _("LIGHTNING");
const u8 gUnknown_085EFC6A[] = _("FOG");
const u8 gUnknown_085EFC6E[] = _("VOLCANO ASH");
const u8 gUnknown_085EFC7A[] = _("SANDSTORM");
const u8 gUnknown_085EFC84[] = _("FOG2");
const u8 gUnknown_085EFC89[] = _("SEAFLOOR");
const u8 gUnknown_085EFC92[] = _("CLOUDY");
const u8 gUnknown_085EFC99[] = _("SUNNY3");
const u8 gUnknown_085EFCA0[] = _("HEAVY RAIN");
const u8 gUnknown_085EFCAB[] = _("SEAFLOOR2");
const u8 gText_DelAll[] = _("DEL. ALL");
const u8 gText_Cancel5[] = _("CANCEL");
const u8 gText_Ok2[] = _("OK");
const u8 gText_Quiz[] = _("QUIZ");
const u8 gText_Answer[] = _("ANSWER");
const u8 gText_PokeBalls[] = _("POKé BALLS");
const u8 gText_Berry[] = _("BERRY");
const u8 gText_Berries[] = _("BERRIES");
