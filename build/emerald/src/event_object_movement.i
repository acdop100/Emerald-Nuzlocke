# 1 "src/event_object_movement.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/event_object_movement.c"
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
# 2 "src/event_object_movement.c" 2
# 1 "include/alloc.h" 1
# 15 "include/alloc.h"
extern u8 gHeap[];

void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 3 "src/event_object_movement.c" 2
# 1 "include/battle_pyramid.h" 1



void CallBattlePyramidFunction(void);
u16 LocalIdToPyramidTrainerId(u8 localId);
bool8 GetBattlePyramidTrainerFlag(u8 eventId);
void MarkApproachingPyramidTrainersAsBattled(void);
void GenerateBattlePyramidWildMon(void);
u8 GetPyramidRunMultiplier(void);
u8 InBattlePyramid(void);
bool8 InBattlePyramid_(void);
void sub_81A9E90(void);
void SoftResetInBattlePyramid(void);
void CopyPyramidTrainerSpeechBefore(u16 trainerId);
void CopyPyramidTrainerWinSpeech(u16 trainerId);
void CopyPyramidTrainerLoseSpeech(u16 trainerId);
u8 GetBattlePyramindTrainerEncounterMusicId(u16 trainerId);
void GenerateBattlePyramidFloorLayout(u16 *mapArg, bool8 setPlayerPosition);
void LoadBattlePyramidEventObjectTemplates(void);
void LoadBattlePyramidFloorEventObjectScripts(void);
u8 GetNumBattlePyramidEventObjects(void);
u16 GetBattlePyramidPickupItemId(void);
# 4 "src/event_object_movement.c" 2
# 1 "include/berry.h" 1





enum
{
    BERRY_FIRMNESS_UNKNOWN,
    BERRY_FIRMNESS_VERY_SOFT,
    BERRY_FIRMNESS_SOFT,
    BERRY_FIRMNESS_HARD,
    BERRY_FIRMNESS_VERY_HARD,
    BERRY_FIRMNESS_SUPER_HARD,
};

enum
{
    FLAVOR_SPICY,
    FLAVOR_DRY,
    FLAVOR_SWEET,
    FLAVOR_BITTER,
    FLAVOR_SOUR,
    FLAVOR_COUNT
};

enum
{
    BERRY_STAGE_NO_BERRY,
    BERRY_STAGE_PLANTED,
    BERRY_STAGE_SPROUTED,
    BERRY_STAGE_TALLER,
    BERRY_STAGE_FLOWERING,
    BERRY_STAGE_BERRIES,
    BERRY_STAGE_SPARKLING = 0xFF,
};

void ClearEnigmaBerries(void);
void SetEnigmaBerry(u8 *src);
bool32 IsEnigmaBerryValid(void);
const struct Berry *GetBerryInfo(u8 berry);
struct BerryTree *GetBerryTreeInfo(u8 id);
bool32 EventObjectInteractionWaterBerryTree(void);
bool8 IsPlayerFacingEmptyBerryTreePatch(void);
bool8 TryToWaterBerryTree(void);
void ClearBerryTrees(void);
void BerryTreeTimeUpdate(s32 minutes);
void PlantBerryTree(u8 id, u8 berry, u8 stage, bool8 sparkle);
void RemoveBerryTree(u8 id);
u8 GetBerryTypeByBerryTreeId(u8 id);
u8 GetStageByBerryTreeId(u8);
u8 ItemIdToBerryType(u16 item);
void GetBerryNameByBerryType(u8 berry, u8 *string);
void ResetBerryTreeSparkleFlag(u8 id);
void Bag_ChooseBerry(void);
void EventObjectInteractionGetBerryTreeData(void);
void EventObjectInteractionPlantBerryTree(void);
void EventObjectInteractionPickBerryTree(void);
void EventObjectInteractionRemoveBerryTree(void);
bool8 PlayerHasBerries(void);
void ResetBerryTreeSparkleFlags(void);

extern const struct Berry gBerries[];

struct UnkStruct_0858AB24 {
    u8 unk0;
    u16 unk1;
};

extern const struct UnkStruct_0858AB24 gUnknown_0858AB24[];
# 5 "src/event_object_movement.c" 2
# 1 "include/decoration.h" 1



enum DecorationPermission
{



    DECORPERM_SOLID_FLOOR,
    DECORPERM_PASS_FLOOR,
    DECORPERM_BEHIND_FLOOR,
    DECORPERM_NA_WALL,
    DECORPERM_SPRITE,
};

enum DecorationShape
{
    DECORSHAPE_1x1,
    DECORSHAPE_2x1,
    DECORSHAPE_3x1,
    DECORSHAPE_4x2,
    DECORSHAPE_2x2,
    DECORSHAPE_1x2,
    DECORSHAPE_1x3,
    DECORSHAPE_2x4,
    DECORSHAPE_3x3,
    DECORSHAPE_3x2,
};

enum DecorationCategory
{
    DECORCAT_DESK,
    DECORCAT_CHAIR,
    DECORCAT_PLANT,
    DECORCAT_ORNAMENT,
    DECORCAT_MAT,
    DECORCAT_POSTER,
    DECORCAT_DOLL,
    DECORCAT_CUSHION,
    DECORCAT_COUNT,
};

struct Decoration
{
    u8 id;
    u8 name[16];
    u8 permission;
    u8 shape;
    u8 category;
    u16 price;
    const u8 *description;
    const u16 *tiles;
};

struct DecorationPCContext
{
    u8 *items;
    u8 *pos;
    u8 size;
    u8 isPlayerRoom;
};

extern const struct Decoration gDecorations[];
extern __attribute__((section("ewram_data"))) u8 *gCurDecorationItems;
extern __attribute__((section("ewram_data"))) u8 gCurDecorationIndex;

void InitDecorationContextItems(void);
void DoSecretBaseDecorationMenu(u8 taskId);
void ShowDecorationOnMap(u16 mapX, u16 mapY, u16 decor);
void DoPlayerRoomDecorationMenu(u8 taskId);
void ShowDecorationCategoriesWindow(u8 taskId);
void CopyDecorationCategoryName(u8 *dest, u8 decorCat);
bool8 IsSelectedDecorInThePC(void);
u8 AddDecorationIconObject(u8 decor, s16 x, s16 y, u8 priority, u16 tilesTag, u16 paletteTag);
# 6 "src/event_object_movement.c" 2
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
# 7 "src/event_object_movement.c" 2
# 1 "include/event_object_movement.h" 1






enum SpinnerRunnerFollowPatterns
{
    RUNFOLLOW_ANY,
    RUNFOLLOW_NORTH_SOUTH,
    RUNFOLLOW_EAST_WEST,
    RUNFOLLOW_NORTH_WEST,
    RUNFOLLOW_NORTH_EAST,
    RUNFOLLOW_SOUTH_WEST,
    RUNFOLLOW_SOUTH_EAST,
    RUNFOLLOW_NORTH_SOUTH_WEST,
    RUNFOLLOW_NORTH_SOUTH_EAST,
    RUNFOLLOW_NORTH_EAST_WEST,
    RUNFOLLOW_SOUTH_EAST_WEST
};

struct UnkStruct_085094AC
{
    const union AnimCmd *const *anims;
    u8 animPos[4];
};
# 49 "include/event_object_movement.h"
struct PairedPalettes
{
    u16 tag;
    const u16 *data;
};

struct LockedAnimEventObjects
{
    u8 eventObjectIds[16];
    u8 count;
};

extern const struct SpriteFrameImage gEventObjectPicTable_PechaBerryTree[];
extern const struct OamData gEventObjectBaseOam_32x8;
extern const struct OamData gEventObjectBaseOam_32x32;
extern const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[];
extern const u8 gReflectionEffectPaletteMap[];

extern const u8 *const gBerryTreeEventObjectGraphicsIdTablePointers[];
extern const struct SpriteFrameImage *const gBerryTreePicTablePointers[];
extern const u8 *const gBerryTreePaletteSlotTablePointers[];

void ResetEventObjects(void);
u8 GetMoveDirectionAnimNum(u8);
u8 GetEventObjectIdByLocalIdAndMap(u8, u8, u8);
bool8 TryGetEventObjectIdByLocalIdAndMap(u8, u8, u8, u8 *);
u8 GetEventObjectIdByXY(s16, s16);
void SetEventObjectDirection(struct EventObject *, u8);
u8 GetFirstInactiveEventObjectId(void);
void RemoveEventObjectByLocalIdAndMap(u8, u8, u8);
void LoadPlayerObjectReflectionPalette(u16, u8);
void LoadSpecialObjectReflectionPalette(u16, u8);
void TryMoveEventObjectToMapCoords(u8, u8, u8, s16, s16);
void PatchObjectPalette(u16, u8);
void sub_808E16C(s16, s16);
void OverrideSecretBaseDecorationSpriteScript(u8 localId, u8 mapNum, u8 mapGroup, u8 decorCat);
void sub_8092FF0(s16, s16, s16 *, s16 *);
u8 GetFaceDirectionAnimNum(u8);
void sub_80930E0(s16 *, s16 *, s16, s16);
void EventObjectClearHeldMovement(struct EventObject *);
void EventObjectClearHeldMovementIfActive(struct EventObject *);
void TrySpawnEventObjects(s16, s16);
u8 sprite_new(u8 graphicsId, u8 a1, s16 x, s16 y, u8 z, u8 direction);
u8 AddPseudoEventObject(u16, void (*)(struct Sprite *), s16 x, s16 y, u8 subpriority);
u8 TrySpawnEventObject(u8, u8, u8);
u8 SpawnSpecialEventObjectParameterized(u8 graphicsId, u8 movementBehavior, u8 localId, s16 x, s16 y, u8 z);
u8 SpawnSpecialEventObject(struct EventObjectTemplate *);
void SetSpritePosToMapCoords(s16, s16, s16 *, s16 *);
void CameraObjectReset1(void);
void EventObjectSetGraphicsId(struct EventObject *, u8 graphicsId);
void EventObjectTurn(struct EventObject *, u8);
void EventObjectTurnByLocalIdAndMap(u8, u8, u8, u8);
const struct EventObjectGraphicsInfo *GetEventObjectGraphicsInfo(u8 graphicsId);
void npc_by_local_id_and_map_set_field_1_bit_x20(u8, u8, u8, u8);
void FreeAndReserveObjectSpritePalettes(void);
void sub_808E82C(u8, u8, u8, s16, s16);
void sub_808E7E4(u8, u8, u8);
void sub_808E78C(u8, u8, u8, u8);
void sub_808E75C(s16, s16);
void EventObjectGetLocalIdAndMap(struct EventObject *eventObject, void *localId, void *mapNum, void *mapGroup);
void ShiftEventObjectCoords(struct EventObject *, s16, s16);
void MoveEventObjectToMapCoords(struct EventObject *, s16, s16);
void TryOverrideEventObjectTemplateCoords(u8, u8, u8);
void InitEventObjectPalettes(u8 palSlot);
void UpdateEventObjectCurrentMovement(struct EventObject *, struct Sprite *, bool8(struct EventObject *, struct Sprite *));
u8 EventObjectFaceOppositeDirection(struct EventObject *, u8);
u8 GetOppositeDirection(u8);
u8 GetWalkInPlaceFastestMovementAction(u32);
u8 GetWalkInPlaceFastMovementAction(u32);
u8 GetWalkInPlaceNormalMovementAction(u32);
u8 GetWalkInPlaceSlowMovementAction(u32);
u8 GetCollisionAtCoords(struct EventObject *, s16, s16, u32);
void MoveCoords(u8, s16 *, s16 *);
bool8 EventObjectIsHeldMovementActive(struct EventObject *);
u8 EventObjectClearHeldMovementIfFinished(struct EventObject *);
u8 GetEventObjectIdByXYZ(u16 x, u16 y, u8 z);
void SetTrainerMovementType(struct EventObject *eventObject, u8 movementType);
u8 GetTrainerFacingDirectionMovementType(u8 direction);
const u8 *GetEventObjectScriptPointerByEventObjectId(u8 eventObjectId);
u8 GetCollisionFlagsAtCoords(struct EventObject *eventObject, s16 x, s16 y, u8 direction);
u8 GetFaceDirectionMovementAction(u32);
u8 GetWalkNormalMovementAction(u32);
u8 GetWalkFastMovementAction(u32);
u8 GetRideWaterCurrentMovementAction(u32);
u8 GetWalkFastestMovementAction(u32);
u8 GetPlayerRunMovementAction(u32);
u8 GetJumpInPlaceMovementAction(u32);
u8 GetAcroWheelieFaceDirectionMovementAction(u32);
u8 GetAcroPopWheelieFaceDirectionMovementAction(u32);
u8 GetAcroEndWheelieFaceDirectionMovementAction(u32);
u8 GetAcroWheelieHopFaceDirectionMovementAction(u32);
u8 GetAcroWheelieHopDirectionMovementAction(u32);
u8 GetAcroWheelieJumpDirectionMovementAction(u32);
u8 GetJumpInPlaceTurnAroundMovementAction(u32);
u8 GetAcroWheelieInPlaceDirectionMovementAction(u32);
u8 GetAcroPopWheelieMoveDirectionMovementAction(u32);
u8 GetAcroWheelieMoveDirectionMovementAction(u32);
u8 GetAcroEndWheelieMoveDirectionMovementAction(u32);
u8 GetFishingDirectionAnimNum(u8 direction);
u8 GetAcroWheelieDirectionAnimNum(u8 direction);
u8 GetFishingBiteDirectionAnimNum(u8 direction);
u8 GetFishingNoCatchDirectionAnimNum(u8 direction);
bool8 EventObjectSetHeldMovement(struct EventObject *eventObject, u8 specialAnimId);
void EventObjectForceSetHeldMovement(struct EventObject *eventObject, u8 movementActionId);
bool8 EventObjectIsMovementOverridden(struct EventObject *eventObject);
u8 EventObjectCheckHeldMovementStatus(struct EventObject *eventObject);
u8 EventObjectGetHeldMovementActionId(struct EventObject *eventObject);
void TryOverrideTemplateCoordsForEventObject(const struct EventObject *eventObject, u8 movementType);
void OverrideTemplateCoordsForEventObject(const struct EventObject *eventObject);
void ShiftStillEventObjectCoords(struct EventObject *pObject);
void EventObjectMoveDestCoords(struct EventObject *pObject, u32 unk_19, s16 *pInt, s16 *pInt1);
u8 AddCameraObject(u8 linkedSpriteId);
void UpdateEventObjectsForCameraUpdate(s16 x, s16 y);
u8 GetWalkSlowMovementAction(u32);
u8 GetJumpMovementAction(u32);
bool8 AreZCoordsCompatible(u8, u8);
u8 ZCoordToPriority(u8);
void EventObjectUpdateZCoord(struct EventObject *pObject);
void SetObjectSubpriorityByZCoord(u8, struct Sprite *, u8);
bool8 IsZCoordMismatchAt(u8, s16, s16);
void UnfreezeEventObject(struct EventObject *);
u8 FindLockedEventObjectIndex(struct EventObject *);
bool8 obj_npc_ministep(struct Sprite *sprite);
bool8 sub_80976EC(struct Sprite *sprite);
void sub_80976DC(struct Sprite *, u8);
void sub_809783C(struct Sprite *, u8, u8, u8);
void DoShadowFieldEffect(struct EventObject *);
u8 sub_809785C(struct Sprite *);
u8 sub_80978E4(struct Sprite *);
void SetAndStartSpriteAnim(struct Sprite *, u8, u8);
bool8 SpriteAnimEnded(struct Sprite *);
void sub_8097750(struct Sprite *);
bool8 sub_8097758(struct Sprite *);
void CreateLevitateMovementTask(struct EventObject *);
void DestroyExtraMovementTask(u8);
void UnfreezeEventObjects(void);
void FreezeEventObjectsExceptOne(u8 eventObjectId);
void sub_8097B78(u8, u8);
void sub_8098074(u8 var1, u8 var2);
void FreezeEventObjects(void);
bool8 FreezeEventObject(struct EventObject *eventObject);
u8 GetMoveDirectionFastAnimNum(u8);
u8 GetMoveDirectionFasterAnimNum(u8);
u8 GetMoveDirectionFastestAnimNum(u8);
u8 GetLedgeJumpDirection(s16, s16, u8);
void CameraObjectSetFollowedObjectId(u8 objectId);
u16 GetObjectPaletteTag(u8 palSlot);
void UpdateEventObjectSpriteVisibility(struct Sprite *sprite, bool8 invisible);
s16 sub_809773C(s16 a1);
s16 sub_8097728(s16 a1);
void CameraObjectReset2(void);
u8 EventObjectGetBerryTreeId(u8 eventObjectId);
void sub_8092EF0(u8 mapId, u8 mapNumber, u8 mapGroup);
bool8 IsBerryTreeSparkling(u8, u8, u8);

void MovementType_None(struct Sprite *);
void MovementType_LookAround(struct Sprite *);
void MovementType_WanderAround(struct Sprite *);
void MovementType_WanderUpAndDown(struct Sprite *);
void MovementType_WanderLeftAndRight(struct Sprite *);
void MovementType_FaceDirection(struct Sprite *);
void MovementType_Player(struct Sprite *);
void MovementType_BerryTreeGrowth(struct Sprite *);
void MovementType_FaceDownAndUp(struct Sprite *);
void MovementType_FaceLeftAndRight(struct Sprite *);
void MovementType_FaceUpAndLeft(struct Sprite *);
void MovementType_FaceUpAndRight(struct Sprite *);
void MovementType_FaceDownAndLeft(struct Sprite *);
void MovementType_FaceDownAndRight(struct Sprite *);
void MovementType_FaceDownUpAndLeft(struct Sprite *);
void MovementType_FaceDownUpAndRight(struct Sprite *);
void MovementType_FaceUpRightAndLeft(struct Sprite *);
void MovementType_FaceDownRightAndLeft(struct Sprite *);
void MovementType_RotateCounterclockwise(struct Sprite *);
void MovementType_RotateClockwise(struct Sprite *);
void MovementType_WalkBackAndForth(struct Sprite *);
void MovementType_WalkSequenceUpRightLeftDown(struct Sprite *);
void MovementType_WalkSequenceRightLeftDownUp(struct Sprite *);
void MovementType_WalkSequenceDownUpRightLeft(struct Sprite *);
void MovementType_WalkSequenceLeftDownUpRight(struct Sprite *);
void MovementType_WalkSequenceUpLeftRightDown(struct Sprite *);
void MovementType_WalkSequenceLeftRightDownUp(struct Sprite *);
void MovementType_WalkSequenceDownUpLeftRight(struct Sprite *);
void MovementType_WalkSequenceRightDownUpLeft(struct Sprite *);
void MovementType_WalkSequenceLeftUpDownRight(struct Sprite *);
void MovementType_WalkSequenceUpDownRightLeft(struct Sprite *);
void MovementType_WalkSequenceRightLeftUpDown(struct Sprite *);
void MovementType_WalkSequenceDownRightLeftUp(struct Sprite *);
void MovementType_WalkSequenceRightUpDownLeft(struct Sprite *);
void MovementType_WalkSequenceUpDownLeftRight(struct Sprite *);
void MovementType_WalkSequenceLeftRightUpDown(struct Sprite *);
void MovementType_WalkSequenceDownLeftRightUp(struct Sprite *);
void MovementType_WalkSequenceUpLeftDownRight(struct Sprite *);
void MovementType_WalkSequenceDownRightUpLeft(struct Sprite *);
void MovementType_WalkSequenceLeftDownRightUp(struct Sprite *);
void MovementType_WalkSequenceRightUpLeftDown(struct Sprite *);
void MovementType_WalkSequenceUpRightDownLeft(struct Sprite *);
void MovementType_WalkSequenceDownLeftUpRight(struct Sprite *);
void MovementType_WalkSequenceLeftUpRightDown(struct Sprite *);
void MovementType_WalkSequenceRightDownLeftUp(struct Sprite *);
void MovementType_CopyPlayer(struct Sprite *);
void MovementType_TreeDisguise(struct Sprite *);
void MovementType_MountainDisguise(struct Sprite *);
void MovementType_CopyPlayerInGrass(struct Sprite *);
void MovementType_Hidden(struct Sprite *);
void MovementType_WalkInPlace(struct Sprite *);
void MovementType_JogInPlace(struct Sprite *);
void MovementType_RunInPlace(struct Sprite *);
void MovementType_Invisible(struct Sprite *);
void MovementType_WalkSlowlyInPlace(struct Sprite *);
u8 GetSlideMovementAction(u32);
u8 GetJumpInPlaceMovementAction(u32);
u8 GetJumpMovementAction(u32);
u8 GetJump2MovementAction(u32);
u8 CreateCopySpriteAt(struct Sprite *sprite, s16 x, s16 y, u8 subpriority);

u8 MovementType_WanderAround_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_WanderAround_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WanderAround_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_WanderAround_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_WanderAround_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_WanderAround_Step5(struct EventObject *, struct Sprite *);
u8 MovementType_WanderAround_Step6(struct EventObject *, struct Sprite *);
u8 GetVectorDirection(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_EastNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestSouth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_EastSouth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorthWest(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorthEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_NorthWestEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthWestEast(s16, s16, s16, s16);
u8 MovementType_LookAround_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_LookAround_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_LookAround_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_LookAround_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_LookAround_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step5(struct EventObject *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step6(struct EventObject *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step5(struct EventObject *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step6(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDirection_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDirection_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDirection_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step4(struct EventObject *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_RotateClockwise_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_RotateClockwise_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_RotateClockwise_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_RotateClockwise_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step3(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequence_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequence_Step2(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceUpRightLeftDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceRightLeftDownUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceDownUpRightLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceLeftDownUpRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceUpLeftRightDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceLeftRightDownUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceDownUpLeftRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceRightDownUpLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceLeftUpDownRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceUpDownRightLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceRightLeftUpDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceDownRightLeftUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceRightUpDownLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceUpDownLeftRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceLeftRightUpDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceDownLeftRightUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceUpLeftDownRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceDownRightUpLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceLeftDownRightUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceRightUpLeftDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceUpRightDownLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceDownLeftUpRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceLeftUpRightDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSequenceRightDownLeftUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_CopyPlayer_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_CopyPlayer_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_CopyPlayer_Step2(struct EventObject *, struct Sprite *);
bool8 CopyablePlayerMovement_None(struct EventObject *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_FaceDirection(struct EventObject *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed0(struct EventObject *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed1(struct EventObject *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed2(struct EventObject *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_Slide(struct EventObject *, struct Sprite *, u8, bool8(u8));
bool8 cph_IM_DIFFERENT(struct EventObject *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed4(struct EventObject *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_Jump(struct EventObject *, struct Sprite *, u8, bool8(u8));
u8 MovementType_CopyPlayerInGrass_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_Hidden_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_WalkInPlace_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_MoveInPlace_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_WalkSlowlyInPlace_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_JogInPlace_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_RunInPlace_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_Invisible_Step0(struct EventObject *, struct Sprite *);
u8 MovementType_Invisible_Step1(struct EventObject *, struct Sprite *);
u8 MovementType_Invisible_Step2(struct EventObject *, struct Sprite *);
void sub_8097C44(u8 var, bool32 var2);
bool32 sub_8097C8C(u8 var);
void sub_8097BB4(u8 var1, u8 graphicsId);
void sub_8097CC4(u8 var1, u8 var2);
bool32 sub_8097D9C(u8 var);
# 8 "src/event_object_movement.c" 2
# 1 "include/event_scripts.h" 1



extern const u8 gUnknown_0823B4E8[];
extern const u8 gUnknown_0823B5E9[];
extern const u8 EventScript_TestSignpostMsg[];
extern const u8 EventScript_TryGetTrainerScript[];
extern const u8 EventScript_275BB7[];
extern const u8 EventScript_275D0C[];
extern const u8 EventScript_275D1F[];
extern const u8 EventScript_275D2E[];
extern const u8 EventScript_271354[];
extern const u8 EventScript_DoTainerBattle[];
extern const u8 EventScript_TryDoDoubleTrainerBattle[];
extern const u8 EventScript_TryDoNormalTrainerBattle[];
extern const u8 EventScript_TryDoDoubleRematchBattle[];
extern const u8 EventScript_TryDoRematchBattle[];
extern const u8 SecretBase_EventScript_DollInteract[];
extern const u8 SecretBase_EventScript_CushionInteract[];

extern const u8 BerryTreeScript[];

extern const u8 gTVBravoTrainerText00[];
extern const u8 gTVBravoTrainerText01[];
extern const u8 gTVBravoTrainerText02[];
extern const u8 gTVBravoTrainerText03[];
extern const u8 gTVBravoTrainerText04[];
extern const u8 gTVBravoTrainerText05[];
extern const u8 gTVBravoTrainerText06[];
extern const u8 gTVBravoTrainerText07[];
extern const u8 gTVBravoTrainerText08[];
extern const u8 gTVBravoTrainerBattleTowerText00[];
extern const u8 gTVBravoTrainerBattleTowerText01[];
extern const u8 gTVBravoTrainerBattleTowerText02[];
extern const u8 gTVBravoTrainerBattleTowerText03[];
extern const u8 gTVBravoTrainerBattleTowerText04[];
extern const u8 gTVBravoTrainerBattleTowerText05[];
extern const u8 gTVBravoTrainerBattleTowerText06[];
extern const u8 gTVBravoTrainerBattleTowerText07[];
extern const u8 gTVBravoTrainerBattleTowerText08[];
extern const u8 gTVBravoTrainerBattleTowerText09[];
extern const u8 gTVBravoTrainerBattleTowerText10[];
extern const u8 gTVBravoTrainerBattleTowerText11[];
extern const u8 gTVBravoTrainerBattleTowerText12[];
extern const u8 gTVBravoTrainerBattleTowerText13[];
extern const u8 gTVBravoTrainerBattleTowerText14[];
extern const u8 gTVFanClubOpinionsText00[];
extern const u8 gTVFanClubOpinionsText01[];
extern const u8 gTVFanClubOpinionsText02[];
extern const u8 gTVFanClubOpinionsText03[];
extern const u8 gTVFanClubOpinionsText04[];
extern const u8 gTVFanClubText00[];
extern const u8 gTVFanClubText01[];
extern const u8 gTVFanClubText02[];
extern const u8 gTVFanClubText03[];
extern const u8 gTVFanClubText04[];
extern const u8 gTVFanClubText05[];
extern const u8 gTVFanClubText06[];
extern const u8 gTVFanClubText07[];
extern const u8 gTVRecentHappeningsText00[];
extern const u8 gTVRecentHappeningsText01[];
extern const u8 gTVRecentHappeningsText02[];
extern const u8 gTVRecentHappeningsText03[];
extern const u8 gTVRecentHappeningsText04[];
extern const u8 gTVRecentHappeningsText05[];
extern const u8 gTVMassOutbreakText00[];
extern const u8 gTV3CheersForPokeblocksText00[];
extern const u8 gTV3CheersForPokeblocksText01[];
extern const u8 gTV3CheersForPokeblocksText02[];
extern const u8 gTV3CheersForPokeblocksText03[];
extern const u8 gTV3CheersForPokeblocksText04[];
extern const u8 gTV3CheersForPokeblocksText05[];
extern const u8 gTVTrainerFanClubSpecialText00[];
extern const u8 gTVTrainerFanClubSpecialText01[];
extern const u8 gTVTrainerFanClubSpecialText02[];
extern const u8 gTVTrainerFanClubSpecialText03[];
extern const u8 gTVTrainerFanClubSpecialText04[];
extern const u8 gTVTrainerFanClubSpecialText05[];
extern const u8 gTVNameRaterText00[];
extern const u8 gTVNameRaterText01[];
extern const u8 gTVNameRaterText02[];
extern const u8 gTVNameRaterText03[];
extern const u8 gTVNameRaterText04[];
extern const u8 gTVNameRaterText05[];
extern const u8 gTVNameRaterText06[];
extern const u8 gTVNameRaterText07[];
extern const u8 gTVNameRaterText08[];
extern const u8 gTVNameRaterText09[];
extern const u8 gTVNameRaterText10[];
extern const u8 gTVNameRaterText11[];
extern const u8 gTVNameRaterText12[];
extern const u8 gTVNameRaterText13[];
extern const u8 gTVNameRaterText14[];
extern const u8 gTVNameRaterText15[];
extern const u8 gTVNameRaterText16[];
extern const u8 gTVNameRaterText17[];
extern const u8 gTVNameRaterText18[];
extern const u8 gTVPokemonAnglerText00[];
extern const u8 gTVPokemonAnglerText01[];
extern const u8 gTVPokemonTodayFailedText00[];
extern const u8 gTVPokemonTodayFailedText01[];
extern const u8 gTVPokemonTodayFailedText02[];
extern const u8 gTVPokemonTodayFailedText03[];
extern const u8 gTVPokemonTodayFailedText04[];
extern const u8 gTVPokemonTodayFailedText05[];
extern const u8 gTVPokemonTodayFailedText06[];
extern const u8 gTVPokemonTodaySuccessfulText00[];
extern const u8 gTVPokemonTodaySuccessfulText01[];
extern const u8 gTVPokemonTodaySuccessfulText02[];
extern const u8 gTVPokemonTodaySuccessfulText03[];
extern const u8 gTVPokemonTodaySuccessfulText04[];
extern const u8 gTVPokemonTodaySuccessfulText05[];
extern const u8 gTVPokemonTodaySuccessfulText06[];
extern const u8 gTVPokemonTodaySuccessfulText07[];
extern const u8 gTVPokemonTodaySuccessfulText08[];
extern const u8 gTVPokemonTodaySuccessfulText09[];
extern const u8 gTVPokemonTodaySuccessfulText10[];
extern const u8 gTVPokemonTodaySuccessfulText11[];
extern const u8 gTVTodaysSmartShopperText00[];
extern const u8 gTVTodaysSmartShopperText01[];
extern const u8 gTVTodaysSmartShopperText02[];
extern const u8 gTVTodaysSmartShopperText03[];
extern const u8 gTVTodaysSmartShopperText04[];
extern const u8 gTVTodaysSmartShopperText05[];
extern const u8 gTVTodaysSmartShopperText06[];
extern const u8 gTVTodaysSmartShopperText07[];
extern const u8 gTVTodaysSmartShopperText08[];
extern const u8 gTVTodaysSmartShopperText09[];
extern const u8 gTVTodaysSmartShopperText10[];
extern const u8 gTVTodaysSmartShopperText11[];
extern const u8 gTVTodaysSmartShopperText12[];
extern const u8 gTVWorldOfMastersText00[];
extern const u8 gTVWorldOfMastersText01[];
extern const u8 gTVWorldOfMastersText02[];
extern const u8 gTVTodaysRivalTrainerText00[];
extern const u8 gTVTodaysRivalTrainerText07[];
extern const u8 gTVTodaysRivalTrainerText08[];
extern const u8 gTVTodaysRivalTrainerText09[];
extern const u8 gTVTodaysRivalTrainerText10[];
extern const u8 gTVTodaysRivalTrainerText01[];
extern const u8 gTVTodaysRivalTrainerText02[];
extern const u8 gTVTodaysRivalTrainerText03[];
extern const u8 gTVTodaysRivalTrainerText04[];
extern const u8 gTVTodaysRivalTrainerText05[];
extern const u8 gTVTodaysRivalTrainerText06[];
extern const u8 gTVDewfordTrendWatcherNetworkText00[];
extern const u8 gTVDewfordTrendWatcherNetworkText01[];
extern const u8 gTVDewfordTrendWatcherNetworkText02[];
extern const u8 gTVDewfordTrendWatcherNetworkText03[];
extern const u8 gTVDewfordTrendWatcherNetworkText04[];
extern const u8 gTVDewfordTrendWatcherNetworkText05[];
extern const u8 gTVDewfordTrendWatcherNetworkText06[];
extern const u8 gTVHoennTreasureInvestigatorsText00[];
extern const u8 gTVHoennTreasureInvestigatorsText01[];
extern const u8 gTVHoennTreasureInvestigatorsText02[];
extern const u8 gTVFindThatGamerText00[];
extern const u8 gTVFindThatGamerText01[];
extern const u8 gTVFindThatGamerText02[];
extern const u8 gTVFindThatGamerText03[];
extern const u8 gTVBreakingNewsText00[];
extern const u8 gTVBreakingNewsText01[];
extern const u8 gTVBreakingNewsText02[];
extern const u8 gTVBreakingNewsText03[];
extern const u8 gTVBreakingNewsText04[];
extern const u8 gTVBreakingNewsText05[];
extern const u8 gTVBreakingNewsText06[];
extern const u8 gTVBreakingNewsText07[];
extern const u8 gTVBreakingNewsText12[];
extern const u8 gTVBreakingNewsText08[];
extern const u8 gTVBreakingNewsText09[];
extern const u8 gTVBreakingNewsText10[];
extern const u8 gTVBreakingNewsText11[];
extern const u8 gTVSecretBaseVisitText00[];
extern const u8 gTVSecretBaseVisitText01[];
extern const u8 gTVSecretBaseVisitText02[];
extern const u8 gTVSecretBaseVisitText03[];
extern const u8 gTVSecretBaseVisitText04[];
extern const u8 gTVSecretBaseVisitText05[];
extern const u8 gTVSecretBaseVisitText06[];
extern const u8 gTVSecretBaseVisitText07[];
extern const u8 gTVSecretBaseVisitText08[];
extern const u8 gTVSecretBaseVisitText09[];
extern const u8 gTVSecretBaseVisitText10[];
extern const u8 gTVSecretBaseVisitText11[];
extern const u8 gTVSecretBaseVisitText12[];
extern const u8 gTVSecretBaseVisitText13[];
extern const u8 gTVPokemonLotteryWinnerFlashReportText00[];
extern const u8 gTVThePokemonBattleSeminarText00[];
extern const u8 gTVThePokemonBattleSeminarText01[];
extern const u8 gTVThePokemonBattleSeminarText02[];
extern const u8 gTVThePokemonBattleSeminarText03[];
extern const u8 gTVThePokemonBattleSeminarText04[];
extern const u8 gTVThePokemonBattleSeminarText05[];
extern const u8 gTVThePokemonBattleSeminarText06[];
extern const u8 gTVTrainerFanClubText00[];
extern const u8 gTVTrainerFanClubText01[];
extern const u8 gTVTrainerFanClubText02[];
extern const u8 gTVTrainerFanClubText03[];
extern const u8 gTVTrainerFanClubText04[];
extern const u8 gTVTrainerFanClubText05[];
extern const u8 gTVTrainerFanClubText06[];
extern const u8 gTVTrainerFanClubText07[];
extern const u8 gTVTrainerFanClubText08[];
extern const u8 gTVTrainerFanClubText09[];
extern const u8 gTVTrainerFanClubText10[];
extern const u8 gTVTrainerFanClubText11[];
extern const u8 gTVCutiesText00[];
extern const u8 gTVCutiesText01[];
extern const u8 gTVCutiesText02[];
extern const u8 gTVCutiesText03[];
extern const u8 gTVCutiesText04[];
extern const u8 gTVCutiesText05[];
extern const u8 gTVCutiesText06[];
extern const u8 gTVCutiesText07[];
extern const u8 gTVCutiesText08[];
extern const u8 gTVCutiesText09[];
extern const u8 gTVCutiesText10[];
extern const u8 gTVCutiesText11[];
extern const u8 gTVCutiesText12[];
extern const u8 gTVCutiesText13[];
extern const u8 gTVCutiesText14[];
extern const u8 gTVCutiesText15[];
extern const u8 gTVPokemonNewsBattleFrontierText00[];
extern const u8 gTVPokemonNewsBattleFrontierText01[];
extern const u8 gTVPokemonNewsBattleFrontierText02[];
extern const u8 gTVPokemonNewsBattleFrontierText03[];
extern const u8 gTVPokemonNewsBattleFrontierText04[];
extern const u8 gTVPokemonNewsBattleFrontierText05[];
extern const u8 gTVPokemonNewsBattleFrontierText06[];
extern const u8 gTVPokemonNewsBattleFrontierText07[];
extern const u8 gTVPokemonNewsBattleFrontierText08[];
extern const u8 gTVPokemonNewsBattleFrontierText09[];
extern const u8 gTVPokemonNewsBattleFrontierText10[];
extern const u8 gTVPokemonNewsBattleFrontierText11[];
extern const u8 gTVPokemonNewsBattleFrontierText12[];
extern const u8 gTVPokemonNewsBattleFrontierText13[];
extern const u8 gTVPokemonNewsBattleFrontierText14[];
extern const u8 gTVPokemonNewsBattleFrontierText15[];
extern const u8 gTVPokemonNewsBattleFrontierText16[];
extern const u8 gTVPokemonNewsBattleFrontierText17[];
extern const u8 gTVPokemonNewsBattleFrontierText18[];
extern const u8 gTVWhatsNo1InHoennTodayText00[];
extern const u8 gTVWhatsNo1InHoennTodayText01[];
extern const u8 gTVWhatsNo1InHoennTodayText02[];
extern const u8 gTVWhatsNo1InHoennTodayText03[];
extern const u8 gTVWhatsNo1InHoennTodayText04[];
extern const u8 gTVWhatsNo1InHoennTodayText05[];
extern const u8 gTVWhatsNo1InHoennTodayText06[];
extern const u8 gTVWhatsNo1InHoennTodayText07[];
extern const u8 gTVWhatsNo1InHoennTodayText08[];
extern const u8 gTVSecretBaseSecretsText00[];
extern const u8 gTVSecretBaseSecretsText01[];
extern const u8 gTVSecretBaseSecretsText02[];
extern const u8 gTVSecretBaseSecretsText03[];
extern const u8 gTVSecretBaseSecretsText04[];
extern const u8 gTVSecretBaseSecretsText05[];
extern const u8 gTVSecretBaseSecretsText06[];
extern const u8 gTVSecretBaseSecretsText07[];
extern const u8 gTVSecretBaseSecretsText08[];
extern const u8 gTVSecretBaseSecretsText09[];
extern const u8 gTVSecretBaseSecretsText10[];
extern const u8 gTVSecretBaseSecretsText11[];
extern const u8 gTVSecretBaseSecretsText12[];
extern const u8 gTVSecretBaseSecretsText13[];
extern const u8 gTVSecretBaseSecretsText14[];
extern const u8 gTVSecretBaseSecretsText15[];
extern const u8 gTVSecretBaseSecretsText16[];
extern const u8 gTVSecretBaseSecretsText17[];
extern const u8 gTVSecretBaseSecretsText18[];
extern const u8 gTVSecretBaseSecretsText19[];
extern const u8 gTVSecretBaseSecretsText20[];
extern const u8 gTVSecretBaseSecretsText21[];
extern const u8 gTVSecretBaseSecretsText22[];
extern const u8 gTVSecretBaseSecretsText23[];
extern const u8 gTVSecretBaseSecretsText24[];
extern const u8 gTVSecretBaseSecretsText25[];
extern const u8 gTVSecretBaseSecretsText26[];
extern const u8 gTVSecretBaseSecretsText27[];
extern const u8 gTVSecretBaseSecretsText28[];
extern const u8 gTVSecretBaseSecretsText29[];
extern const u8 gTVSecretBaseSecretsText30[];
extern const u8 gTVSecretBaseSecretsText31[];
extern const u8 gTVSecretBaseSecretsText32[];
extern const u8 gTVSecretBaseSecretsText33[];
extern const u8 gTVSecretBaseSecretsText34[];
extern const u8 gTVSecretBaseSecretsText35[];
extern const u8 gTVSecretBaseSecretsText36[];
extern const u8 gTVSecretBaseSecretsText37[];
extern const u8 gTVSecretBaseSecretsText38[];
extern const u8 gTVSecretBaseSecretsText39[];
extern const u8 gTVSecretBaseSecretsText40[];
extern const u8 gTVSecretBaseSecretsText41[];
extern const u8 gTVSecretBaseSecretsText42[];
extern const u8 gTVSafariFanClubText00[];
extern const u8 gTVSafariFanClubText01[];
extern const u8 gTVSafariFanClubText02[];
extern const u8 gTVSafariFanClubText03[];
extern const u8 gTVSafariFanClubText04[];
extern const u8 gTVSafariFanClubText05[];
extern const u8 gTVSafariFanClubText06[];
extern const u8 gTVSafariFanClubText07[];
extern const u8 gTVSafariFanClubText08[];
extern const u8 gTVSafariFanClubText09[];
extern const u8 gTVSafariFanClubText10[];
extern const u8 gTVContestLiveUpdatesText00[];
extern const u8 gTVContestLiveUpdatesText01[];
extern const u8 gTVContestLiveUpdatesText02[];
extern const u8 gTVContestLiveUpdatesText03[];
extern const u8 gTVContestLiveUpdatesText04[];
extern const u8 gTVContestLiveUpdatesText05[];
extern const u8 gTVContestLiveUpdatesText06[];
extern const u8 gTVContestLiveUpdatesText07[];
extern const u8 gTVContestLiveUpdatesText08[];
extern const u8 gTVContestLiveUpdatesText09[];
extern const u8 gTVContestLiveUpdatesText10[];
extern const u8 gTVContestLiveUpdatesText11[];
extern const u8 gTVContestLiveUpdatesText12[];
extern const u8 gTVContestLiveUpdatesText13[];
extern const u8 gTVContestLiveUpdatesText14[];
extern const u8 gTVContestLiveUpdatesText15[];
extern const u8 gTVContestLiveUpdatesText16[];
extern const u8 gTVContestLiveUpdatesText17[];
extern const u8 gTVContestLiveUpdatesText18[];
extern const u8 gTVContestLiveUpdatesText19[];
extern const u8 gTVContestLiveUpdatesText20[];
extern const u8 gTVContestLiveUpdatesText21[];
extern const u8 gTVContestLiveUpdatesText22[];
extern const u8 gTVContestLiveUpdatesText23[];
extern const u8 gTVContestLiveUpdatesText24[];
extern const u8 gTVContestLiveUpdatesText25[];
extern const u8 gTVContestLiveUpdatesText26[];
extern const u8 gTVContestLiveUpdatesText27[];
extern const u8 gTVContestLiveUpdatesText28[];
extern const u8 gTVContestLiveUpdatesText29[];
extern const u8 gTVContestLiveUpdatesText30[];
extern const u8 gTVContestLiveUpdatesText31[];
extern const u8 gTVContestLiveUpdatesText32[];
extern const u8 gTVPokemonBattleUpdateText00[];
extern const u8 gTVPokemonBattleUpdateText01[];
extern const u8 gTVPokemonBattleUpdateText02[];
extern const u8 gTVPokemonBattleUpdateText03[];
extern const u8 gTVPokemonBattleUpdateText04[];
extern const u8 gTVPokemonBattleUpdateText05[];
extern const u8 gTVPokemonBattleUpdateText06[];
extern const u8 gTVPokemonBattleUpdateText07[];
extern const u8 gTVInSearchOfTrainersText00[];
extern const u8 gTVInSearchOfTrainersText01[];
extern const u8 gTVInSearchOfTrainersText02[];
extern const u8 gTVInSearchOfTrainersText03[];
extern const u8 gTVInSearchOfTrainersText04[];
extern const u8 gTVInSearchOfTrainersText05[];
extern const u8 gTVInSearchOfTrainersText06[];
extern const u8 gTVInSearchOfTrainersText07[];
extern const u8 gTVInSearchOfTrainersText08[];
extern const u8 gTVPokemonContestLiveUpdates2Text00[];
extern const u8 gTVPokemonContestLiveUpdates2Text01[];
extern const u8 gTVPokemonContestLiveUpdates2Text02[];
extern const u8 gTVPokemonContestLiveUpdates2Text03[];
extern const u8 gPokeNewsTextSlateport_Upcoming[];
extern const u8 gPokeNewsTextSlateport_Ongoing[];
extern const u8 gPokeNewsTextSlateport_Ending[];
extern const u8 gPokeNewsTextGameCorner_Upcoming[];
extern const u8 gPokeNewsTextGameCorner_Ongoing[];
extern const u8 gPokeNewsTextGameCorner_Ending[];
extern const u8 gPokeNewsTextLilycove_Upcoming[];
extern const u8 gPokeNewsTextLilycove_Ongoing[];
extern const u8 gPokeNewsTextLilycove_Ending[];
extern const u8 gPokeNewsTextBlendMaster_Upcoming[];
extern const u8 gPokeNewsTextBlendMaster_Ongoing[];
extern const u8 gPokeNewsTextBlendMaster_Ending[];
extern const u8 SecretBase_RedCave1_Text_274966[];
extern const u8 SecretBase_RedCave1_Text_274D13[];
extern const u8 SecretBase_RedCave1_Text_274FFE[];
extern const u8 SecretBase_RedCave1_Text_275367[];
extern const u8 SecretBase_RedCave1_Text_2756C7[];
extern const u8 SecretBase_RedCave1_Text_274B24[];
extern const u8 SecretBase_RedCave1_Text_274E75[];
extern const u8 SecretBase_RedCave1_Text_2751E1[];
extern const u8 SecretBase_RedCave1_Text_2754F6[];
extern const u8 SecretBase_RedCave1_Text_2758CC[];

extern const u8 BattleFrontier_BattlePyramidEmptySquare_EventScript_252C88[];


extern const u8 EventScript_FldEffStrength[];
extern const u8 EventScript_FailSweetScent[];
extern const u8 EventScript_2926F8[];
extern const u8 EventScript_FldEffRockSmash[];


extern const u8 LittlerootTown_BrendansHouse_2F_EventScript_1F863F[];
extern const u8 LittlerootTown_MaysHouse_2F_EventScript_1F958F[];


extern const u8 gText_0827D507[];
extern const u8 gText_0827D531[];


extern const u8 gOtherText_Is[];
extern const u8 gOtherText_DontYouAgree[];
extern const u8 gText_SoPretty[];
extern const u8 gText_SoDarling[];
extern const u8 gText_SoRelaxed[];
extern const u8 gText_SoSunny[];
extern const u8 gText_SoDesirable[];
extern const u8 gText_SoExciting[];
extern const u8 gText_SoAmusing[];
extern const u8 gText_SoMagical[];
extern const u8 gMauvilleManText_ISoWantToGoOnAVacation[];
extern const u8 gMauvilleManText_IBoughtCrayonsWith120Colors[];
extern const u8 gMauvilleManText_WouldntItBeNiceIfWeCouldFloat[];
extern const u8 gMauvilleManText_WhenYouWriteOnASandyBeach[];
extern const u8 gMauvilleManText_WhatsTheBottomOfTheSeaLike[];
extern const u8 gMauvilleManText_WhenYouSeeTheSettingSunDoesIt[];
extern const u8 gMauvilleManText_LyingBackInTheGreenGrass[];
extern const u8 gMauvilleManText_SecretBasesAreSoWonderful[];


extern const u8 MauvilleCity_PokemonCenter_1F_Text_28E930[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28E947[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28E956[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28E9D7[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28E9EF[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28E9FE[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EA7D[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EA98[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EAA8[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EB19[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EB31[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EB3E[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EBB5[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EBCD[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EBDD[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EC60[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EC79[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EC81[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28ED04[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28ED21[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28ED30[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EDA1[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EDB5[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EDCF[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EE45[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EE5D[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EE6A[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EEDD[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EEF1[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EF01[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EF73[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EF95[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28EFAA[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F045[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F05A[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F071[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F0F3[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F10D[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F125[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F1BE[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F1D5[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F1DE[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F24F[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F269[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F277[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F2FC[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F314[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F32A[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F3AD[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F3C6[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F3D2[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F44B[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F461[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F47C[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F50C[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F51B[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F538[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F5BE[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F5D1[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F5F2[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F678[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F694[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F6B4[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F751[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F76A[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F776[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F7F6[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F811[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F822[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F89C[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F8AF[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F8BC[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F92F[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F941[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F949[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F9D1[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F9EA[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28F9FD[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FA81[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FA99[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FAA7[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FB1D[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FB35[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FB47[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FBC4[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FBD9[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FBEA[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FC6B[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FC85[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FC98[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FD1D[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FD35[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FD40[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FDA2[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FDBD[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FDCE[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FE57[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FE72[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FE88[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FF0C[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FF27[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FF44[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FFDD[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_28FFFA[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_29000D[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_290097[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_2900B5[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_2900CB[];

extern const u8 EventScript_PlayerPCMale[];
extern const u8 EventScript_PlayerPCFemale[];
extern const u8 EventScript_SecretBasePC[];
extern const u8 EventScript_RecordMixingSecretBasePC[];
extern const u8 EventScript_PC[];
extern const u8 EventScript_TestSignpostMsg[];
extern const u8 EventScript_HiddenItemScript[];
extern const u8 EventScript_2759F1[];
extern const u8 EventScript_TV[];
extern const u8 EventScript_ClosedSootopolisDoor[];
extern const u8 SkyPillar_Outside_EventScript_2393F9[];
extern const u8 EventScript_CableBoxResults[];
extern const u8 EventScript_PokeBlockFeeder[];
extern const u8 Route110_TrickHouseEntrance_EventScript_26A22A[];
extern const u8 EventScript_RegionMap[];
extern const u8 EventScript_RunningShoesManual[];
extern const u8 EventScript_PictureBookShelf[];
extern const u8 EventScript_BookShelf[];
extern const u8 EventScript_PokemonCenterBookShelf[];
extern const u8 EventScript_Vase[];
extern const u8 EventScript_EmptyTrashCan[];
extern const u8 EventScript_ShopShelf[];
extern const u8 EventScript_Blueprint[];
extern const u8 EventScript_WirelessBoxResults[];
extern const u8 EventScript_CableBoxResults[];
extern const u8 EventScript_Questionnaire[];
extern const u8 EventScript_TrainerHillTimer[];
extern const u8 EventScript_SecretBaseSandOrnament[];
extern const u8 EventScript_SecretBaseShieldOrToyTV[];
extern const u8 EventScript_UseSurf[];
extern const u8 EventScript_UseWaterfall[];
extern const u8 EventScript_CannotUseWaterfall[];
extern const u8 EventScript_UseDive[];
extern const u8 EventScript_UseDiveUnderwater[];
extern const u8 EventScript_FallDownHole[];
extern const u8 BattleFrontier_BattlePyramidEmptySquare_EventScript_252BE8[];
extern const u8 EventScript_Poison[];
extern const u8 EventScript_EggHatch[];
extern const u8 UnusualWeather_EventScript_EndEventAndCleanup_1[];
extern const u8 IslandCave_EventScript_238EAF[];
extern const u8 MauvilleCity_EventScript_1DF7BA[];
extern const u8 Route119_EventScript_1F49EC[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_1FA4D6[];
extern const u8 RustboroCity_Gym_EventScript_21307B[];
extern const u8 MossdeepCity_SpaceCenter_2F_EventScript_224175[];
extern const u8 SSTidalCorridor_EventScript_23C050[];
extern const u8 gUnknown_082A8350[];


extern const u8 BattleFrontier_BattlePyramidEmptySquare_EventScript_252C88[];
extern const u8 BattlePyramid_TrainerBattle[];
extern const u8 BattlePyramid_FindItemBall[];


extern const u8 EventScript_275A86[];
extern const u8 EventScript_275ADF[];
extern const u8 EventScript_275B38[];


extern const u8 EventScript_2C83F0[];
# 9 "src/event_object_movement.c" 2
# 1 "include/faraway_island.h" 1



u32 GetMewMoveDirection(void);
bool8 sub_81D4A58(struct EventObject*);
void UpdateFarawayIslandStepCounter(void);
bool8 EventObjectIsFarawayIslandMew(struct EventObject *);
bool8 IsMewPlayingHideAndSeek(void);
# 10 "src/event_object_movement.c" 2
# 1 "include/field_camera.h" 1





struct CameraObject
{
    void (*callback)(struct CameraObject *);
    u32 spriteId;
    s32 movementSpeedX;
    s32 movementSpeedY;
    s32 x;
    s32 y;
};


extern struct CameraObject gFieldCamera;
extern u16 gTotalCameraPixelOffsetX;
extern u16 gTotalCameraPixelOffsetY;


void DrawWholeMapView(void);
void CurrentMapDrawMetatileAt(int x, int y);
void sub_8089C08(s16 *a0, s16 *a1);
void DrawDoorMetatileAt(int x, int y, u16 *arr);
void move_tilemap_camera_to_upper_left_corner(void);
void sub_8057A58(void);
void ResetCameraUpdateInfo(void);
u32 InitCameraUpdateCallback(u8 a);
void CameraUpdate(void);
void SetCameraPanningCallback(void (*a)(void));
void SetCameraPanning(s16 a, s16 b);
void InstallCameraPanAheadCallback(void);
void UpdateCameraPanning(void);
void FieldUpdateBgTilemapScroll(void);
# 11 "src/event_object_movement.c" 2
# 1 "include/field_effect.h" 1



extern const struct SpritePalette gNewGameBirchObjectPaletteInfo;
extern const struct SpriteTemplate gNewGameBirchObjectTemplate;
extern const struct OamData gNewGameBirchOamAttributes;

extern s32 gFieldEffectArguments[8];
extern void (*gPostMenuFieldCallback)(void);
extern bool8 (*gFieldCallback2)(void);

u32 FieldEffectStart(u8);
bool8 FieldEffectActiveListContains(u8 id);
void FieldEffectActiveListClear(void);
void sub_80B69DC(void);
u8 AddNewGameBirchObject(s16, s16, u8);
void FieldEffectStop(struct Sprite *sprite, u8 id);
u8 CreateTrainerSprite(u8 trainerSpriteID, s16 x, s16 y, u8 subpriority, u8 *buffer);
void CreateTeleportFieldEffectTask(void);
void FieldEffectActiveListRemove(u8 id);
void MultiplyInvertedPaletteRGBComponents(u16, u8, u8, u8);
void FieldEffectActiveListAdd(u8 id);
void FieldEffectScript_LoadTiles(u8 **script);
void FieldEffectScript_LoadFadedPalette(u8 **script);
void FieldEffectScript_LoadPalette(u8 **script);
void FieldEffectScript_CallNative(u8 **script, u32 *val);
void FieldEffectFreeTilesIfUnused(u16 tileStart);
void FieldEffectFreePaletteIfUnused(u8 paletteNum);
bool8 FieldEffectCmd_loadtiles(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadfadedpal(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadpal(u8 **script, u32 *val);
bool8 FieldEffectCmd_callnative(u8 **script, u32 *val);
bool8 FieldEffectCmd_end(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadgfx_callnative(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadtiles_callnative(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadfadedpal_callnative(u8 **script, u32 *val);
void sub_80B6B68(void);
void sub_80B6E4C(u8 a0, u8 priority);
void sub_80B75D8(u8 priority);
void sub_80B7A74(u8 priority);

void sub_80B9C28(s16*, u8);
void sub_80B9C54(s16*, u8);
void sub_80B9CDC(s16*, u8);

void sub_80B7CAC(struct Sprite*);
void sub_80B7A58(struct Sprite*);

void MultiplyPaletteRGBComponents(u16 i, u8 r, u8 g, u8 b);
void FreeResourcesAndDestroySprite(struct Sprite *sprite, u8 spriteId);
u8 CreateMonSprite_PicBox(u16 species, s16 x, s16 y, u8 subpriority);
void StartEscapeRopeFieldEffect(void);
# 12 "src/event_object_movement.c" 2
# 1 "include/field_effect_helpers.h" 1
# 9 "include/field_effect_helpers.h"
u8 CreateWarpArrowSprite(void);
u8 sub_8155800(u8 oldSpriteId);
void sub_81555AC(u8, u8);
bool8 sub_8155DA0(struct EventObject *);
void sub_8155D78(struct EventObject *);
void StartAshFieldEffect(s16, s16, u16, s16);
void SetUpReflection(struct EventObject*, struct Sprite*, u8);
u32 StartFieldEffectForEventObject(u8, struct EventObject*);
u8 FindTallGrassFieldEffectSpriteId(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y);
void sub_8155F80(struct Sprite*);
void UpdateShadowFieldEffect(struct Sprite*);
void UpdateTallGrassFieldEffect(struct Sprite*);
void WaitFieldEffectSpriteAnim(struct Sprite*);
void UpdateAshFieldEffect(struct Sprite*);
void UpdateSurfBlobFieldEffect(struct Sprite*);
void sub_8156194(struct Sprite*);
void UpdateFootprintsTireTracksFieldEffect(struct Sprite*);
void UpdateSplashFieldEffect(struct Sprite*);
void UpdateLongGrassFieldEffect(struct Sprite*);
void UpdateSandPileFieldEffect(struct Sprite*);
void UpdateDisguiseFieldEffect(struct Sprite*);
void UpdateShortGrassFieldEffect(struct Sprite*);
void UpdateHotSpringsWaterFieldEffect(struct Sprite*);
void UpdateBubblesFieldEffect(struct Sprite*);
void UpdateSparkleFieldEffect(struct Sprite*);
void SetSpriteInvisible(u8 spriteId);
void ShowWarpArrowSprite(u8 spriteId, u8 direction, s16 x, s16 y);
void sub_8155604(u8 spriteId, u8 value, s16 data1);
void sub_81555D8(u8 spriteId, u8 value);
# 13 "src/event_object_movement.c" 2
# 1 "include/field_player_avatar.h" 1



void player_step(u8 a, u16 b, u16 c);
void ClearPlayerAvatarInfo(void);
void SetPlayerAvatarExtraStateTransition(u8, u8);
u8 GetPlayerAvatarGenderByGraphicsId(u8);
bool8 TestPlayerAvatarFlags(u8);
u8 GetPlayerAvatarObjectId(void);
void PlayerGetDestCoords(s16 *, s16 *);
u8 GetPlayerFacingDirection(void);
u8 GetPlayerMovementDirection(void);
u8 PlayerGetCopyableMovement(void);
void PlayerGoSpeed1(u8);
void PlayerGoSpeed2(u8);
void PlayerRideWaterCurrent(u8);
void PlayerGoSpeed4(u8);
void PlayerOnBikeCollide(u8);
void PlayerFaceDirection(u8 a);
void PlayerTurnInPlace(u8 a);
void PlayerJumpLedge(u8 a);
void PlayerIdleWheelie(u8 a);
void PlayerStartWheelie(u8 a);
void PlayerEndWheelie(u8 a);
void PlayerStandingHoppingWheelie(u8 a);
void PlayerMovingHoppingWheelie(u8 a);
void PlayerLedgeHoppingWheelie(u8 a);
void PlayerAcroTurnJump(u8 a);
void PlayerSetAnimId(u8 a, u8 b);
bool8 IsPlayerCollidingWithFarawayIslandMew(u8 direction);
void PlayerOnBikeCollideWithFarawayIslandMew(u8 direction);
u8 CheckForEventObjectCollision(struct EventObject *a, s16 b, s16 c, u8 d, u8 e);
u8 PlayerGetZCoord(void);
void SetPlayerAvatarTransitionFlags(u16 a);
void sub_808BCE8(void);
void InitPlayerAvatar(s16 a, s16 b, u8 c, u8 d);
void sub_808B864(void);
void sub_808BCF4(void);
void sub_808D074(u8);
void GetXYCoordsOneStepInFrontOfPlayer(s16 *xPtr, s16 *yPtr);
u8 GetRivalAvatarGraphicsIdByStateIdAndGender(u8, u8);
void sub_808C114(void);
u8 GetPlayerAvatarGraphicsIdByCurrentState(void);
void SetPlayerAvatarStateMask(u8 a);
u8 GetPlayerAvatarGraphicsIdByStateId(u8 a);
u8 GetJumpSpecialMovementAction(u32);
bool8 PartyHasMonWithSurf(void);
bool8 IsPlayerFacingSurfableFishableWater(void);
bool8 IsPlayerSurfingNorth(void);
void sub_808C228(u8 direction);
u8 sub_808BCD0(void);
void sub_808B578(void);
u8 GetFRLGAvatarGraphicsIdByGender(u8);
u8 GetRSAvatarGraphicsIdByGender(u8);
void sub_808B980(u8 direction);
void sub_808B9BC(u8 direction);
void sub_808B9A4(u8 direction);
void sub_808C1B4(u8 direction);
void sub_808B9D4(u8 direction);
void sub_808D194(void);
void sub_808D1C8(void);
bool32 sub_808D1B4(void);
bool32 sub_808D1E8(void);
void sub_808C0A8(u8 a);
u8 player_get_pos_including_state_based_drift(s16 *x, s16 *y);
# 14 "src/event_object_movement.c" 2
# 1 "include/fieldmap.h" 1
# 12 "include/fieldmap.h"
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
# 13 "include/fieldmap.h" 2

extern struct BackupMapLayout gBackupMapLayout;

u32 MapGridGetMetatileIdAt(int, int);
u32 MapGridGetMetatileBehaviorAt(int, int);
void MapGridSetMetatileIdAt(int, int, u16);
void MapGridSetMetatileEntryAt(int, int, u16);
void GetCameraCoords(u16*, u16*);
bool8 MapGridIsImpassableAt(int, int);
int GetMapBorderIdAt(int x, int y);
int CanCameraMoveInDirection(int direction);
u16 GetBehaviorByMetatileId(u16 metatileId);
void GetCameraFocusCoords(u16 *x, u16 *y);
u8 MapGridGetMetatileLayerTypeAt(int x, int y);
u8 MapGridGetZCoordAt(int x, int y);
bool8 CameraMove(int deltaX, int deltaY);
struct MapConnection *sub_8088950(u8 direction, int x, int y);
bool8 sub_80889A8(u8 direction, int x, int y, struct MapConnection *connection);
bool8 sub_8088A0C(int x, int src_width, int dest_width, int offset);
void save_serialize_map(void);
void sub_8088B3C(u16 x, u16 y);
void InitMap(void);
void InitMapFromSavedGame(void);
void InitTrainerHillMap(void);
void InitBattlePyramidMap(bool8 setPlayerPosition);
void copy_map_tileset1_tileset2_to_vram(struct MapLayout const *mapLayout);
void apply_map_tileset1_tileset2_palette(struct MapLayout const *mapLayout);
void apply_map_tileset2_palette(struct MapLayout const *mapLayout);
void copy_map_tileset2_to_vram_2(struct MapLayout const *mapLayout);
void copy_map_tileset1_to_vram(const struct MapLayout *);
void copy_map_tileset2_to_vram(const struct MapLayout *);
struct MapHeader const *const mapconnection_get_mapheader(struct MapConnection *connection);
struct MapConnection *sub_8088A8C(s16 x, s16 y);

void SpriteCB_PokeballGlow(struct Sprite *);
void SpriteCB_PokecenterMonitor(struct Sprite *);
void SpriteCB_HallOfFameMonitor(struct Sprite *);


void FieldInitRegionMap(MainCallback callback);
void sub_8088B94(int x, int y, int a2);
# 15 "src/event_object_movement.c" 2
# 1 "include/mauville_old_man.h" 1




enum MauvilleOldManType
{
    MAUVILLE_MAN_BARD,
    MAUVILLE_MAN_HIPSTER,
    MAUVILLE_MAN_TRADER,
    MAUVILLE_MAN_STORYTELLER,
    MAUVILLE_MAN_GIDDY
};

extern struct BardSong gBardSong;

void SetMauvilleOldMan(void);
u8 GetCurrentMauvilleOldMan(void);
void ScrSpecial_SetMauvilleOldManEventObjGfx(void);
u8 sub_81201C8(void);
void sub_8120B70(OldMan *dest);
void sub_8120670(void);
void SanitizeReceivedRubyOldMan(union OldMan * oldMan, u32 r1, u32 r6);
void SanitizeReceivedEmeraldOldMan(union OldMan * oldMan, u32 unused, u32 a2);
void ResetMauvilleOldManFlag(void);
# 16 "src/event_object_movement.c" 2
# 1 "include/metatile_behavior.h" 1



bool8 MetatileBehavior_IsATile(u8);
bool8 MetatileBehavior_IsEncounterTile(u8);
bool8 MetatileBehavior_IsJumpEast(u8);
bool8 MetatileBehavior_IsJumpWest(u8);
bool8 MetatileBehavior_IsJumpNorth(u8);
bool8 MetatileBehavior_IsJumpSouth(u8);
bool8 MetatileBehavior_IsPokeGrass(u8);
bool8 MetatileBehavior_IsSandOrDeepSand(u8);
bool8 MetatileBehavior_IsDeepSand(u8);
bool8 MetatileBehavior_IsReflective(u8);
bool8 MetatileBehavior_IsIce(u8);
bool8 MetatileBehavior_IsWarpDoor(u8);
bool8 MetatileBehavior_IsDoor(u8);
bool8 MetatileBehavior_IsEscalator(u8);
bool8 MetatileBehavior_IsMB_04(u8);
bool8 MetatileBehavior_IsLadder(u8);
bool8 MetatileBehavior_IsNonAnimDoor(u8);
bool8 MetatileBehavior_IsDeepSouthWarp(u8);
bool8 MetatileBehavior_IsSurfableWaterOrUnderwater(u8);
bool8 MetatileBehavior_IsEastArrowWarp(u8);
bool8 MetatileBehavior_IsWestArrowWarp(u8);
bool8 MetatileBehavior_IsNorthArrowWarp(u8);
bool8 MetatileBehavior_IsSouthArrowWarp(u8);
bool8 MetatileBehavior_IsArrowWarp(u8);
bool8 MetatileBehavior_IsForcedMovementTile(u8);
bool8 MetatileBehavior_IsIce_2(u8);
bool8 MetatileBehavior_IsTrickHouseSlipperyFloor(u8);
bool8 MetatileBehavior_IsMB_05(u8);
bool8 MetatileBehavior_IsWalkNorth(u8);
bool8 MetatileBehavior_IsWalkSouth(u8);
bool8 MetatileBehavior_IsWalkWest(u8);
bool8 MetatileBehavior_IsWalkEast(u8);
bool8 MetatileBehavior_IsNorthwardCurrent(u8);
bool8 MetatileBehavior_IsSouthwardCurrent(u8);
bool8 MetatileBehavior_IsWestwardCurrent(u8);
bool8 MetatileBehavior_IsEastwardCurrent(u8);
bool8 MetatileBehavior_IsSlideNorth(u8);
bool8 MetatileBehavior_IsSlideSouth(u8);
bool8 MetatileBehavior_IsSlideWest(u8);
bool8 MetatileBehavior_IsSlideEast(u8);
bool8 MetatileBehavior_IsCounter(u8);
bool8 MetatileBehavior_IsPlayerFacingTVScreen(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsPC(u8);
bool8 MetatileBehavior_IsCableBoxResults1(u8);
bool8 MetatileBehavior_IsOpenSecretBaseDoor(u8);
bool8 MetatileBehavior_IsSecretBaseCave(u8);
bool8 MetatileBehavior_IsSecretBaseTree(u8);
bool8 MetatileBehavior_IsSecretBaseShrub(u8);
bool8 MetatileBehavior_IsSecretBasePC(u8);
bool8 MetatileBehavior_IsRecordMixingSecretBasePC(u8);
bool8 MetatileBehavior_IsMB_B2(u8);
bool8 MetatileBehavior_IsBlockDecoration(u8);
bool8 MetatileBehavior_IsSecretBaseImpassable(u8);
bool8 MetatileBehavior_IsMB_C6(u8);
bool8 MetatileBehavior_IsSecretBasePoster(u8);
bool8 MetatileBehavior_IsNormal(u8);
bool8 MetatileBehavior_IsSecretBaseNorthWall(u8);
bool8 MetatileBehavior_IsMB_B2_Duplicate(u8);
bool8 MetatileBehavior_HoldsSmallDecoration(u8);
bool8 MetatileBehavior_HoldsLargeDecoration(u8);
bool8 MetatileBehavior_IsSecretBaseHole(u8);
bool8 MetatileBehavior_IsSecretBaseBalloon(u8);
bool8 MetatileBehavior_IsSecretBaseBreakableDoor(u8);
bool8 MetatileBehavior_IsSecretBaseSoundMat(u8);
bool8 MetatileBehavior_IsSecretBaseGlitterMat(u8);
bool8 MetatileBehavior_IsSecretBaseSandOrnament(u8);
bool8 MetatileBehavior_IsSecretBaseShieldOrToyTV(u8);
bool8 MetatileBehavior_IsPlayerRoomPCOn(u8);
bool8 MetatileBehavior_HasRipples(u8);
bool8 MetatileBehavior_IsPuddle(u8);
bool8 MetatileBehavior_IsTallGrass(u8);
bool8 MetatileBehavior_IsLongGrass(u8);
bool8 MetatileBehavior_IsBerryTreeSoil(u8);
bool8 MetatileBehavior_IsAshGrass(u8);
bool8 MetatileBehavior_IsFootprints(u8);
bool8 MetatileBehavior_IsBridge(u8);
u8 MetatileBehavior_GetBridgeType(u8);
u8 MetatileBehavior_8089510(u8);
bool8 MetatileBehavior_IsLandWildEncounter(u8);
bool8 MetatileBehavior_IsWaterWildEncounter(u8);
bool8 MetatileBehavior_IsIndoorEncounter(u8);
bool8 MetatileBehavior_IsMountain(u8);
bool8 MetatileBehavior_IsDiveable(u8);
bool8 MetatileBehavior_IsUnableToEmerge(u8);
bool8 MetatileBehavior_IsShallowFlowingWater(u8);
bool8 MetatileBehavior_IsThinIce(u8);
bool8 MetatileBehavior_IsCrackedIce(u8);
bool8 MetatileBehavior_IsDeepOrOceanWater(u8);
bool8 MetatileBehavior_IsMB_18_OrMB_1A(u8);
bool8 MetatileBehavior_IsSurfableAndNotWaterfall(u8);
bool8 MetatileBehavior_IsEastBlocked(u8);
bool8 MetatileBehavior_IsWestBlocked(u8);
bool8 MetatileBehavior_IsNorthBlocked(u8);
bool8 MetatileBehavior_IsSouthBlocked(u8);
bool8 MetatileBehavior_IsShortGrass(u8);
bool8 MetatileBehavior_IsHotSprings(u8);
bool8 MetatileBehavior_IsWaterfall(u8);
bool8 MetatileBehavior_IsFortreeBridge(u8);
bool8 MetatileBehavior_IsPacifilogVerticalLog1(u8);
bool8 MetatileBehavior_IsPacifilogVerticalLog2(u8);
bool8 MetatileBehavior_IsPacifilogHorizontalLog1(u8);
bool8 MetatileBehavior_IsPacifilogHorizontalLog2(u8);
bool8 MetatileBehavior_IsPacifidlogLog(u8);
bool8 MetatileBehavior_IsTrickHousePuzzleDoor(u8);
bool8 MetatileBehavior_IsRegionMap(u8);
bool8 MetatileBehavior_IsClosedSootopolisDoor(u8);
bool8 MetatileBehavior_IsUnknownClosedDoor(u8);
bool8 MetatileBehavior_IsRoulette(u8);
bool8 MetatileBehavior_IsPokeblockFeeder(u8);
bool8 MetatileBehavior_IsSecretBaseJumpMat(u8);
bool8 MetatileBehavior_IsSecretBaseSpinMat(u8);
bool8 MetatileBehavior_IsLavaridgeB1FWarp(u8);
bool8 MetatileBehavior_IsLavaridge1FWarp(u8);
bool8 MetatileBehavior_IsAquaHideoutWarp(u8);
bool8 MetatileBehavior_IsWarpOrBridge(u8);
bool8 MetatileBehavior_IsMossdeepGymWarp(u8);
bool8 MetatileBehavior_IsSurfableFishableWater(u8);
bool8 MetatileBehavior_IsMtPyreHole(u8);
bool8 MetatileBehavior_IsCrackedFloorHole(u8);
bool8 MetatileBehavior_IsCrackedFloor(u8);
bool8 MetatileBehavior_IsMuddySlope(u8);
bool8 MetatileBehavior_IsBumpySlope(u8);
bool8 MetatileBehavior_IsIsolatedVerticalRail(u8);
bool8 MetatileBehavior_IsIsolatedHorizontalRail(u8);
bool8 MetatileBehavior_IsVerticalRail(u8);
bool8 MetatileBehavior_IsHorizontalRail(u8);
bool8 MetatileBehavior_IsSeaweed(u8);
bool8 MetatileBehavior_IsRunningDisallowed(u8);
bool8 MetatileBehavior_IsCuttableGrass(u8);
bool8 MetatileBehavior_IsRunningShoesManual(u8);
bool8 MetatileBehavior_IsPictureBookShelf(u8);
bool8 MetatileBehavior_IsBookShelf(u8);
bool8 MetatileBehavior_IsPokeCenterBookShelf(u8);
bool8 MetatileBehavior_IsVase(u8);
bool8 MetatileBehavior_IsTrashCan(u8);
bool8 MetatileBehavior_IsShopShelf(u8);
bool8 MetatileBehavior_IsBlueprint(u8);
bool8 MetatileBehavior_IsBattlePyramidWarp(u8);
bool8 MetatileBehavior_IsPlayerFacingWirelessBoxResults(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsCableBoxResults2(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsQuestionnaire(u8);
bool8 MetatileBehavior_IsLongGrass_Duplicate(u8);
bool8 MetatileBehavior_IsLongGrassSouthEdge(u8);
bool8 MetatileBehavior_IsTrainerHillTimer(u8);
# 17 "src/event_object_movement.c" 2
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
# 18 "src/event_object_movement.c" 2
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
# 19 "src/event_object_movement.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);





void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 20 "src/event_object_movement.c" 2
# 1 "include/sprite.h" 1
# 21 "src/event_object_movement.c" 2
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
# 22 "src/event_object_movement.c" 2
# 1 "include/trainer_see.h" 1



struct ApproachingTrainer
{
    u8 eventObjectId;
    u8 radius;
    const u8 *trainerScriptPtr;
    u8 taskId;
};

extern u16 gUnknown_03006080;
extern u8 gUnknown_03006084[4];
extern struct ApproachingTrainer gApproachingTrainers[2];
extern u8 gNoOfApproachingTrainers;
extern u8 gUnknown_030060AC;
extern u8 gApproachingTrainerId;

bool8 CheckForTrainersWantingBattle(void);
void sub_80B4578(struct EventObject *var);
void EndTrainerApproach(void);
void TryPrepareSecondApproachingTrainer(void);
u8 FldEff_ExclamationMarkIcon(void);
u8 FldEff_QuestionMarkIcon(void);
u8 FldEff_HeartIcon(void);
u8 GetCurrentApproachingTrainerEventObjectId(void);
u8 GetChosenApproachingTrainerEventObjectId(u8 arrayId);
void sub_80B4808(void);
# 23 "src/event_object_movement.c" 2
# 1 "include/trainer_hill.h" 1



extern u32 *gTrainerHillVBlankCounter;

void CallTrainerHillFunction(void);
void ResetTrainerHillResults(void);
u8 GetTrainerHillOpponentClass(u16 trainerId);
void GetTrainerHillTrainerName(u8 *dst, u16 trainerId);
u8 GetTrainerHillTrainerFrontSpriteId(u16 trainerId);
void InitTrainerHillBattleStruct(void);
void FreeTrainerHillBattleStruct(void);
void CopyTrainerHillTrainerText(u8 which, u16 trainerId);
bool8 sub_81D5C18(void);
void nullsub_129(void);
void PrintOnTrainerHillRecordsWindow(void);
void sub_81D5DF8(void);
bool32 sub_81D5F48(void);
void sub_81D5FB4(u16 *mapArg);
bool32 InTrainerHill(void);
u8 GetCurrentTrainerHillMapId(void);
const struct WarpEvent* sub_81D6120(void);
const struct WarpEvent* sub_81D6134(u8 warpEventId);
u16 LocalIdToHillTrainerId(u8 localId);
bool8 GetHillTrainerFlag(u8 eventObjectId);
void SetHillTrainerFlag(void);
const u8 *GetTrainerHillTrainerScript(void);
void FillHillTrainerParty(void);
void FillHillTrainersParties(void);
u32 sub_81D63C4(void);
u8 GetTrainerEncounterMusicIdInTrainerHill(u16 trainerId);
u8 sub_81D6490(void);
void sub_81D64C0(void);
bool32 sub_81D6534(void);
# 24 "src/event_object_movement.c" 2
# 1 "include/util.h" 1





extern const u8 gMiscBlank_Gfx[];
extern const u32 gBitTable[];

u8 CreateInvisibleSpriteWithCallback(void (*)(struct Sprite *));
void StoreWordInTwoHalfwords(u16 *, u32);
void LoadWordFromTwoHalfwords(u16 *, u32 *);
int CountTrailingZeroBits(u32 value);
u16 CalcCRC16(const u8 *data, s32 length);
u16 CalcCRC16WithTable(const u8 *data, u32 length);
u32 CalcByteArraySum(const u8* data, u32 length);
void BlendPalette(u16 palOffset, u16 numEntries, u8 coeff, u16 blendColor);
void DoBgAffineSet(struct BgAffineDstData *dest, u32 texX, u32 texY, s16 scrX, s16 scrY, s16 sx, s16 sy, u16 alpha);
void CopySpriteTiles(u8 shape, u8 size, u8 *tiles, u16 *tilemap, u8 *output);
# 25 "src/event_object_movement.c" 2
# 1 "include/constants/event_object_movement_constants.h" 1
# 26 "src/event_object_movement.c" 2
# 1 "include/constants/event_objects.h" 1
# 27 "src/event_object_movement.c" 2
# 1 "include/constants/field_effects.h" 1
# 28 "src/event_object_movement.c" 2
# 1 "include/constants/items.h" 1
# 29 "src/event_object_movement.c" 2
# 54 "src/event_object_movement.c"
__attribute__((section("ewram_data"))) u8 sCurrentReflectionType = 0;
__attribute__((section("ewram_data"))) u16 sCurrentSpecialObjectPaletteTag = 0;
__attribute__((section("ewram_data"))) struct LockedAnimEventObjects *gLockedAnimEventObjects = {0};

static void MoveCoordsInDirection(u32, s16 *, s16 *, s16, s16);
static bool8 EventObjectExecSingleMovementAction(struct EventObject *, struct Sprite *);
static void SetMovementDelay(struct Sprite *, s16);
static bool8 WaitForMovementDelay(struct Sprite *);
static u8 GetCollisionInDirection(struct EventObject *, u8);
static u32 state_to_direction(u8, u32, u32);
static void TryEnableEventObjectAnim(struct EventObject *, struct Sprite *);
static void EventObjectExecHeldMovementAction(struct EventObject *, struct Sprite *);
static void UpdateEventObjectSpriteAnimPause(struct EventObject *, struct Sprite *);
static bool8 IsCoordOutsideEventObjectMovementRange(struct EventObject *, s16, s16);
static bool8 IsMetatileDirectionallyImpassable(struct EventObject *, s16, s16, u8);
static bool8 DoesObjectCollideWithObjectAt(struct EventObject *, s16, s16);
static void sub_8096530(struct EventObject *, struct Sprite *);
static void UpdateEventObjSpriteVisibility(struct EventObject *, struct Sprite *);
static void EventObjectUpdateMetatileBehaviors(struct EventObject*);
static void GetGroundEffectFlags_Reflection(struct EventObject*, u32*);
static void GetGroundEffectFlags_TallGrassOnSpawn(struct EventObject*, u32*);
static void GetGroundEffectFlags_LongGrassOnSpawn(struct EventObject*, u32*);
static void GetGroundEffectFlags_SandHeap(struct EventObject*, u32*);
static void GetGroundEffectFlags_ShallowFlowingWater(struct EventObject*, u32*);
static void GetGroundEffectFlags_ShortGrass(struct EventObject*, u32*);
static void GetGroundEffectFlags_HotSprings(struct EventObject*, u32*);
static void GetGroundEffectFlags_TallGrassOnBeginStep(struct EventObject*, u32*);
static void GetGroundEffectFlags_LongGrassOnBeginStep(struct EventObject*, u32*);
static void GetGroundEffectFlags_Tracks(struct EventObject*, u32*);
static void GetGroundEffectFlags_Puddle(struct EventObject*, u32*);
static void GetGroundEffectFlags_Ripple(struct EventObject*, u32*);
static void GetGroundEffectFlags_Seaweed(struct EventObject*, u32*);
static void GetGroundEffectFlags_JumpLanding(struct EventObject*, u32*);
static u8 EventObjectCheckForReflectiveSurface(struct EventObject*);
static u8 GetReflectionTypeByMetatileBehavior(u32);
static void InitObjectPriorityByZCoord(struct Sprite *sprite, u8 z);
static void EventObjectUpdateSubpriority(struct EventObject*, struct Sprite*);
static void DoTracksGroundEffect_None(struct EventObject*, struct Sprite*, u8);
static void DoTracksGroundEffect_Footprints(struct EventObject*, struct Sprite*, u8);
static void DoTracksGroundEffect_BikeTireTracks(struct EventObject*, struct Sprite*, u8);
static void DoRippleFieldEffect(struct EventObject*, struct Sprite*);
static void DoGroundEffects_OnSpawn(struct EventObject*, struct Sprite*);
static void DoGroundEffects_OnBeginStep(struct EventObject*, struct Sprite*);
static void DoGroundEffects_OnFinishStep(struct EventObject*, struct Sprite*);
static void sub_8097D68(struct Sprite*);
static void ApplyLevitateMovement(u8);
static bool8 MovementType_Disguise_Callback(struct EventObject *, struct Sprite *);
static bool8 MovementType_Hidden_Callback(struct EventObject *, struct Sprite *);
static void CreateReflectionEffectSprites(void);
static u8 GetEventObjectIdByLocalId(u8);
static u8 GetEventObjectIdByLocalIdAndMapInternal(u8, u8, u8);
static bool8 GetAvailableEventObjectId(u16, u8, u8, u8 *);
static void SetEventObjectDynamicGraphicsId(struct EventObject *);
static void RemoveEventObjectInternal(struct EventObject *);
static u16 GetEventObjectFlagIdByEventObjectId(u8);
static void UpdateEventObjectVisibility(struct EventObject *, struct Sprite *);
static void MakeObjectTemplateFromEventObjectTemplate(struct EventObjectTemplate *, struct SpriteTemplate *, const struct SubspriteTable **);
static void GetEventObjectMovingCameraOffset(s16 *, s16 *);
static struct EventObjectTemplate *GetEventObjectTemplateByLocalIdAndMap(u8, u8, u8);
static void LoadEventObjectPalette(u16);
static void RemoveEventObjectIfOutsideView(struct EventObject *);
static void sub_808E1B8(u8, s16, s16);
static void SetPlayerAvatarEventObjectIdAndObjectId(u8, u8);
static void sub_808E38C(struct EventObject *);
static u8 sub_808E8F4(const struct SpritePalette *);
static u8 FindEventObjectPaletteIndexByTag(u16);
static void sub_808EAB0(u16, u8);
static bool8 EventObjectDoesZCoordMatch(struct EventObject *, u8);
static void ObjectCB_CameraObject(struct Sprite *);
static void CameraObject_0(struct Sprite *);
static void CameraObject_1(struct Sprite *);
static void CameraObject_2(struct Sprite *);
static struct EventObjectTemplate *FindEventObjectTemplateByLocalId(u8 localId, struct EventObjectTemplate *templates, u8 count);
static void ClearEventObjectMovement(struct EventObject *, struct Sprite *);
static void EventObjectSetSingleMovement(struct EventObject *, struct Sprite *, u8);
static void oamt_npc_ministep_reset(struct Sprite *, u8, u8);
static void UpdateEventObjectSpriteSubpriorityAndVisibility(struct Sprite *);

const u8 gReflectionEffectPaletteMap[] = {1, 1, 6, 7, 8, 9, 6, 7, 8, 9, 11, 11, 0, 0, 0, 0};

const struct SpriteTemplate gCameraSpriteTemplate = {0, 0xFFFF, &gDummyOamData, gDummySpriteAnimTable, ((void *)0), gDummySpriteAffineAnimTable, ObjectCB_CameraObject};

void (*const gCameraObjectFuncs[])(struct Sprite *) = {
    CameraObject_0,
    CameraObject_1,
    CameraObject_2,
};

# 1 "src/data/field_event_obj/event_object_graphics.h" 1
const u32 gEventObjectPic_BrendanNormal[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/walking.4bpp");
const u32 gEventObjectPic_BrendanRunning[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/running.4bpp");
const u16 gEventObjectPalette8[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_08.gbapal");
const u32 gEventObjectPic_RubySapphireBrendanNormal[] = INCBIN_U32("graphics/event_objects/pics/people/ruby_sapphire_brendan/walking.4bpp");
const u32 gEventObjectPic_RubySapphireBrendanRunning[] = INCBIN_U32("graphics/event_objects/pics/people/ruby_sapphire_brendan/running.4bpp");
const u16 gEventObjectPalette33[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_33.gbapal");
const u16 NullPalette_8499A38[16] = {};
const u16 NullPalette_8499A58[16] = {};
const u16 NullPalette_8499A78[16] = {};
const u16 NullPalette_8499A98[16] = {};
const u16 NullPalette_8499AB8[16] = {};
const u16 NullPalette_8499AD8[16] = {};
const u16 NullPalette_8499AF8[16] = {};
const u16 NullPalette_8499B18[16] = {};
const u16 NullPalette_8499B38[16] = {};
const u16 NullPalette_8499B58[16] = {};
const u16 NullPalette_8499B78[16] = {};
const u16 NullPalette_8499B98[16] = {};
const u16 NullPalette_8499BB8[16] = {};
const u16 NullPalette_8499BD8[16] = {};
const u16 NullPalette_8499BF8[16] = {};
const u16 gEventObjectPalette9[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_09.gbapal");
const u16 gEventObjectPalette10[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_10.gbapal");
const u32 gEventObjectPic_BrendanFieldMove[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/field_move.4bpp");
const u32 gEventObjectPic_BrendanSurfing[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/surfing.4bpp");
const u32 gEventObjectPic_BrendanMachBike[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/mach_bike.4bpp");
const u32 gEventObjectPic_BrendanAcroBike[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/acro_bike.4bpp");
const u32 gEventObjectPic_BrendanFishing[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/fishing.4bpp");
const u32 gEventObjectPic_BrendanWatering[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/watering.4bpp");
const u32 gEventObjectPic_BrendanDecorating[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/decorating.4bpp");
const u32 gEventObjectPic_MayDecorating[] = INCBIN_U32("graphics/event_objects/pics/people/may/decorating.4bpp");
const u32 gEventObjectPic_BrendanUnderwater[] = INCBIN_U32("graphics/event_objects/pics/people/brendan/underwater.4bpp");
const u32 gEventObjectPic_MayUnderwater[] = INCBIN_U32("graphics/event_objects/pics/people/may/underwater.4bpp");
const u16 gEventObjectPalette11[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_11.gbapal");
const u32 gEventObjectPic_MayNormal[] = INCBIN_U32("graphics/event_objects/pics/people/may/walking.4bpp");
const u32 gEventObjectPic_MayRunning[] = INCBIN_U32("graphics/event_objects/pics/people/may/running.4bpp");
const u16 gEventObjectPalette17[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_17.gbapal");
const u16 gEventObjectPalette18[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_18.gbapal");
const u32 gEventObjectPic_RubySapphireMayNormal[] = INCBIN_U32("graphics/event_objects/pics/people/ruby_sapphire_may/walking.4bpp");
const u32 gEventObjectPic_RubySapphireMayRunning[] = INCBIN_U32("graphics/event_objects/pics/people/ruby_sapphire_may/running.4bpp");
const u16 gEventObjectPalette34[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_34.gbapal");
const u16 gUnusedEventObjectPalette[] = INCBIN_U16("graphics/event_objects/palettes/unused_palette.gbapal");
const u16 NullPalette_84A54F8[16] = {};
const u16 NullPalette_84A5518[16] = {};
const u16 NullPalette_84A5538[16] = {};
const u16 NullPalette_84A5558[16] = {};
const u16 NullPalette_84A5578[16] = {};
const u16 NullPalette_84A5598[16] = {};
const u16 NullPalette_84A55B8[16] = {};
const u16 NullPalette_84A55D8[16] = {};
const u16 NullPalette_84A55F8[16] = {};
const u16 NullPalette_84A5618[16] = {};
const u16 NullPalette_84A5638[16] = {};
const u16 NullPalette_84A5658[16] = {};
const u16 NullPalette_84A5678[16] = {};
const u16 NullPalette_84A5698[16] = {};
const u32 gEventObjectPic_MayMachBike[] = INCBIN_U32("graphics/event_objects/pics/people/may/mach_bike.4bpp");
const u32 gEventObjectPic_MayAcroBike[] = INCBIN_U32("graphics/event_objects/pics/people/may/acro_bike.4bpp");
const u32 gEventObjectPic_MaySurfing[] = INCBIN_U32("graphics/event_objects/pics/people/may/surfing.4bpp");
const u32 gEventObjectPic_MayFieldMove[] = INCBIN_U32("graphics/event_objects/pics/people/may/field_move.4bpp");
const u32 gEventObjectPic_MayFishing[] = INCBIN_U32("graphics/event_objects/pics/people/may/fishing.4bpp");
const u32 gEventObjectPic_MayWatering[] = INCBIN_U32("graphics/event_objects/pics/people/may/watering.4bpp");
const u16 gEventObjectPalette0[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_00.gbapal");
const u16 gEventObjectPalette1[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_01.gbapal");
const u16 gEventObjectPalette2[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_02.gbapal");
const u16 gEventObjectPalette3[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_03.gbapal");
const u16 gEventObjectPalette4[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_04.gbapal");
const u16 gEventObjectPalette5[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_05.gbapal");
const u16 gEventObjectPalette6[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_06.gbapal");
const u16 gEventObjectPalette7[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_07.gbapal");
const u32 gEventObjectPic_NinjaBoy[] = INCBIN_U32("graphics/event_objects/pics/people/ninja_boy.4bpp");
const u32 gEventObjectPic_Twin[] = INCBIN_U32("graphics/event_objects/pics/people/twin.4bpp");
const u32 gEventObjectPic_Boy1[] = INCBIN_U32("graphics/event_objects/pics/people/boy_1.4bpp");
const u32 gEventObjectPic_Girl1[] = INCBIN_U32("graphics/event_objects/pics/people/girl_1.4bpp");
const u32 gEventObjectPic_Boy2[] = INCBIN_U32("graphics/event_objects/pics/people/boy_2.4bpp");
const u32 gEventObjectPic_Girl2[] = INCBIN_U32("graphics/event_objects/pics/people/girl_2.4bpp");
const u32 gEventObjectPic_LittleBoy[] = INCBIN_U32("graphics/event_objects/pics/people/little_boy.4bpp");
const u32 gEventObjectPic_LittleGirl[] = INCBIN_U32("graphics/event_objects/pics/people/little_girl.4bpp");
const u32 gEventObjectPic_Boy3[] = INCBIN_U32("graphics/event_objects/pics/people/boy_3.4bpp");
const u32 gEventObjectPic_Girl3[] = INCBIN_U32("graphics/event_objects/pics/people/girl_3.4bpp");
const u32 gEventObjectPic_RichBoy[] = INCBIN_U32("graphics/event_objects/pics/people/rich_boy.4bpp");
const u32 gEventObjectPic_Woman1[] = INCBIN_U32("graphics/event_objects/pics/people/woman_1.4bpp");
const u32 gEventObjectPic_FatMan[] = INCBIN_U32("graphics/event_objects/pics/people/fat_man.4bpp");
const u32 gEventObjectPic_PokefanF[] = INCBIN_U32("graphics/event_objects/pics/people/pokefan_f.4bpp");
const u32 gEventObjectPic_Man1[] = INCBIN_U32("graphics/event_objects/pics/people/man_1.4bpp");
const u32 gEventObjectPic_Woman2[] = INCBIN_U32("graphics/event_objects/pics/people/woman_2.4bpp");
const u32 gEventObjectPic_ExpertM[] = INCBIN_U32("graphics/event_objects/pics/people/expert_m.4bpp");
const u32 gEventObjectPic_ExpertF[] = INCBIN_U32("graphics/event_objects/pics/people/expert_f.4bpp");
const u32 gEventObjectPic_Man2[] = INCBIN_U32("graphics/event_objects/pics/people/man_2.4bpp");
const u32 gEventObjectPic_Woman3[] = INCBIN_U32("graphics/event_objects/pics/people/woman_3.4bpp");
const u32 gEventObjectPic_PokefanM[] = INCBIN_U32("graphics/event_objects/pics/people/pokefan_m.4bpp");
const u32 gEventObjectPic_Woman4[] = INCBIN_U32("graphics/event_objects/pics/people/woman_4.4bpp");
const u32 gEventObjectPic_Cook[] = INCBIN_U32("graphics/event_objects/pics/people/cook.4bpp");
const u32 gEventObjectPic_LinkReceptionist[] = INCBIN_U32("graphics/event_objects/pics/people/link_receptionist.4bpp");
const u32 gEventObjectPic_OldMan[] = INCBIN_U32("graphics/event_objects/pics/people/old_man.4bpp");
const u32 gEventObjectPic_OldWoman[] = INCBIN_U32("graphics/event_objects/pics/people/old_woman.4bpp");
const u32 gEventObjectPic_Camper[] = INCBIN_U32("graphics/event_objects/pics/people/camper.4bpp");
const u32 gEventObjectPic_Picnicker[] = INCBIN_U32("graphics/event_objects/pics/people/picnicker.4bpp");
const u32 gEventObjectPic_Man3[] = INCBIN_U32("graphics/event_objects/pics/people/man_3.4bpp");
const u32 gEventObjectPic_Woman5[] = INCBIN_U32("graphics/event_objects/pics/people/woman_5.4bpp");
const u32 gEventObjectPic_Youngster[] = INCBIN_U32("graphics/event_objects/pics/people/youngster.4bpp");
const u32 gEventObjectPic_BugCatcher[] = INCBIN_U32("graphics/event_objects/pics/people/bug_catcher.4bpp");
const u32 gEventObjectPic_PsychicM[] = INCBIN_U32("graphics/event_objects/pics/people/psychic_m.4bpp");
const u32 gEventObjectPic_SchoolKidM[] = INCBIN_U32("graphics/event_objects/pics/people/school_kid_m.4bpp");
const u32 gEventObjectPic_Maniac[] = INCBIN_U32("graphics/event_objects/pics/people/maniac.4bpp");
const u32 gEventObjectPic_HexManiac[] = INCBIN_U32("graphics/event_objects/pics/people/hex_maniac.4bpp");
const u32 gEventObjectPic_UnusedWoman[] = INCBIN_U32("graphics/event_objects/pics/people/unused_woman.4bpp");
const u32 gEventObjectPic_SwimmerM[] = INCBIN_U32("graphics/event_objects/pics/people/swimmer_m.4bpp");
const u32 gEventObjectPic_SwimmerF[] = INCBIN_U32("graphics/event_objects/pics/people/swimmer_f.4bpp");
const u32 gEventObjectPic_BlackBelt[] = INCBIN_U32("graphics/event_objects/pics/people/black_belt.4bpp");
const u32 gEventObjectPic_Beauty[] = INCBIN_U32("graphics/event_objects/pics/people/beauty.4bpp");
const u32 gEventObjectPic_Scientist1[] = INCBIN_U32("graphics/event_objects/pics/people/scientist_1.4bpp");
const u32 gEventObjectPic_Lass[] = INCBIN_U32("graphics/event_objects/pics/people/lass.4bpp");
const u32 gEventObjectPic_Gentleman[] = INCBIN_U32("graphics/event_objects/pics/people/gentleman.4bpp");
const u32 gEventObjectPic_Sailor[] = INCBIN_U32("graphics/event_objects/pics/people/sailor.4bpp");
const u32 gEventObjectPic_Fisherman[] = INCBIN_U32("graphics/event_objects/pics/people/fisherman.4bpp");
const u32 gEventObjectPic_RunningTriathleteM[] = INCBIN_U32("graphics/event_objects/pics/people/running_triathlete_m.4bpp");
const u32 gEventObjectPic_RunningTriathleteF[] = INCBIN_U32("graphics/event_objects/pics/people/running_triathlete_f.4bpp");
const u32 gEventObjectPic_TuberF[] = INCBIN_U32("graphics/event_objects/pics/people/tuber_f.4bpp");
const u32 gEventObjectPic_TuberM[] = INCBIN_U32("graphics/event_objects/pics/people/tuber_m.4bpp");
const u32 gEventObjectPic_Hiker[] = INCBIN_U32("graphics/event_objects/pics/people/hiker.4bpp");
const u32 gEventObjectPic_CyclingTriathleteM[] = INCBIN_U32("graphics/event_objects/pics/people/cycling_triathlete_m.4bpp");
const u32 gEventObjectPic_CyclingTriathleteF[] = INCBIN_U32("graphics/event_objects/pics/people/cycling_triathlete_f.4bpp");
const u32 gEventObjectPic_Man4[] = INCBIN_U32("graphics/event_objects/pics/people/man_4.4bpp");
const u32 gEventObjectPic_Man5[] = INCBIN_U32("graphics/event_objects/pics/people/man_5.4bpp");
const u32 gEventObjectPic_Nurse[] = INCBIN_U32("graphics/event_objects/pics/people/nurse.4bpp");
const u32 gEventObjectPic_ItemBall[] = INCBIN_U32("graphics/event_objects/pics/misc/item_ball.4bpp");
const u32 gEventObjectPic_ProfBirch[] = INCBIN_U32("graphics/event_objects/pics/people/prof_birch.4bpp");
const u32 gEventObjectPic_ReporterM[] = INCBIN_U32("graphics/event_objects/pics/people/reporter_m.4bpp");
const u32 gEventObjectPic_ReporterF[] = INCBIN_U32("graphics/event_objects/pics/people/reporter_f.4bpp");
const u32 gEventObjectPic_MauvilleOldMan1[] = INCBIN_U32("graphics/event_objects/pics/people/mauville_old_man_1.4bpp");
const u32 gEventObjectPic_MauvilleOldMan2[] = INCBIN_U32("graphics/event_objects/pics/people/mauville_old_man_2.4bpp");
const u32 gEventObjectPic_MartEmployee[] = INCBIN_U32("graphics/event_objects/pics/people/mart_employee.4bpp");
const u32 gEventObjectPic_RooftopSaleWoman[] = INCBIN_U32("graphics/event_objects/pics/people/rooftop_sale_woman.4bpp");
const u32 gEventObjectPic_Teala[] = INCBIN_U32("graphics/event_objects/pics/people/teala.4bpp");
const u32 gEventObjectPic_Artist[] = INCBIN_U32("graphics/event_objects/pics/people/artist.4bpp");
const u32 gEventObjectPic_Cameraman[] = INCBIN_U32("graphics/event_objects/pics/people/cameraman.4bpp");
const u32 gEventObjectPic_Scientist2[] = INCBIN_U32("graphics/event_objects/pics/people/scientist_2.4bpp");
const u32 gEventObjectPic_DevonEmployee[] = INCBIN_U32("graphics/event_objects/pics/people/devon_employee.4bpp");
const u32 gEventObjectPic_AquaMemberM[] = INCBIN_U32("graphics/event_objects/pics/people/team_aqua/aqua_member_m.4bpp");
const u32 gEventObjectPic_AquaMemberF[] = INCBIN_U32("graphics/event_objects/pics/people/team_aqua/aqua_member_f.4bpp");
const u32 gEventObjectPic_MagmaMemberM[] = INCBIN_U32("graphics/event_objects/pics/people/team_magma/magma_member_m.4bpp");
const u32 gEventObjectPic_MagmaMemberF[] = INCBIN_U32("graphics/event_objects/pics/people/team_magma/magma_member_f.4bpp");
const u32 gEventObjectPic_Sidney[] = INCBIN_U32("graphics/event_objects/pics/people/elite_four/sidney.4bpp");
const u32 gEventObjectPic_Phoebe[] = INCBIN_U32("graphics/event_objects/pics/people/elite_four/phoebe.4bpp");
const u32 gEventObjectPic_Glacia[] = INCBIN_U32("graphics/event_objects/pics/people/elite_four/glacia.4bpp");
const u32 gEventObjectPic_Drake[] = INCBIN_U32("graphics/event_objects/pics/people/elite_four/drake.4bpp");
const u32 gEventObjectPic_Roxanne[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/roxanne.4bpp");
const u32 gEventObjectPic_Brawly[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/brawly.4bpp");
const u32 gEventObjectPic_Wattson[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/wattson.4bpp");
const u32 gEventObjectPic_Flannery[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/flannery.4bpp");
const u32 gEventObjectPic_Norman[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/norman.4bpp");
const u32 gEventObjectPic_Winona[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/winona.4bpp");
const u32 gEventObjectPic_Liza[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/liza.4bpp");
const u32 gEventObjectPic_Tate[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/tate.4bpp");
const u32 gEventObjectPic_Wallace[] = INCBIN_U32("graphics/event_objects/pics/people/wallace.4bpp");
const u32 gEventObjectPic_Steven[] = INCBIN_U32("graphics/event_objects/pics/people/steven.4bpp");
const u32 gEventObjectPic_Wally[] = INCBIN_U32("graphics/event_objects/pics/people/wally.4bpp");
const u32 gEventObjectPic_RubySapphireLittleBoy[] = INCBIN_U32("graphics/event_objects/pics/people/rs_little_boy.4bpp");
const u32 gEventObjectPic_HotSpringsOldWoman[] = INCBIN_U32("graphics/event_objects/pics/people/hot_springs_old_woman.4bpp");
const u32 gEventObjectPic_LatiasLatios[] = INCBIN_U32("graphics/event_objects/pics/pokemon/latias_latios.4bpp");
const u32 gEventObjectPic_GameboyKid[] = INCBIN_U32("graphics/event_objects/pics/people/gameboy_kid.4bpp");
const u32 gEventObjectPic_ContestJudge[] = INCBIN_U32("graphics/event_objects/pics/people/contest_judge.4bpp");
const u32 gEventObjectPic_Archie[] = INCBIN_U32("graphics/event_objects/pics/people/team_aqua/archie.4bpp");
const u32 gEventObjectPic_Maxie[] = INCBIN_U32("graphics/event_objects/pics/people/team_magma/maxie.4bpp");
const u32 gEventObjectPic_Kyogre[] = INCBIN_U32("graphics/event_objects/pics/pokemon/kyogre.4bpp");
const u32 gEventObjectPic_Groudon[] = INCBIN_U32("graphics/event_objects/pics/pokemon/groudon.4bpp");
const u32 gEventObjectPic_Regi[] = INCBIN_U32("graphics/event_objects/pics/pokemon/regi.4bpp");
const u32 gEventObjectPic_Skitty[] = INCBIN_U32("graphics/event_objects/pics/pokemon/skitty.4bpp");
const u32 gEventObjectPic_Kecleon[] = INCBIN_U32("graphics/event_objects/pics/pokemon/kecleon.4bpp");
const u32 gEventObjectPic_Rayquaza[] = INCBIN_U32("graphics/event_objects/pics/pokemon/rayquaza.4bpp");
const u32 gEventObjectPic_RayquazaStill[] = INCBIN_U32("graphics/event_objects/pics/pokemon/rayquaza_still.4bpp");
const u32 gEventObjectPic_Zigzagoon[] = INCBIN_U32("graphics/event_objects/pics/pokemon/zigzagoon.4bpp");
const u32 gEventObjectPic_Pikachu[] = INCBIN_U32("graphics/event_objects/pics/pokemon/pikachu.4bpp");
const u32 gEventObjectPic_Azumarill[] = INCBIN_U32("graphics/event_objects/pics/pokemon/azumarill.4bpp");
const u32 gEventObjectPic_Wingull[] = INCBIN_U32("graphics/event_objects/pics/pokemon/wingull.4bpp");
const u32 gEventObjectPic_TuberMSwimming[] = INCBIN_U32("graphics/event_objects/pics/people/tuber_m_swimming.4bpp");
const u32 gEventObjectPic_Azurill[] = INCBIN_U32("graphics/event_objects/pics/pokemon/azurill.4bpp");
const u32 gEventObjectPic_Mom[] = INCBIN_U32("graphics/event_objects/pics/people/mom.4bpp");
const u16 gEventObjectPalette22[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_22.gbapal");
const u16 gEventObjectPalette23[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_23.gbapal");
const u16 gEventObjectPalette24[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_24.gbapal");
const u16 gEventObjectPalette25[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_25.gbapal");
const u32 gEventObjectPic_UnusedNatuDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/unused_natu_doll.4bpp");
const u32 gEventObjectPic_UnusedMagnemiteDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/unused_magnemite_doll.4bpp");
const u32 gEventObjectPic_UnusedSquirtleDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/unused_squirtle_doll.4bpp");
const u32 gEventObjectPic_UnusedWooperDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/unused_wooper_doll.4bpp");
const u32 gEventObjectPic_UnusedPikachuDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/unused_pikachu_doll.4bpp");
const u32 gEventObjectPic_UnusedPorygon2Doll[] = INCBIN_U32("graphics/event_objects/pics/dolls/unused_porygon2_doll.4bpp");
const u32 gEventObjectPic_PichuDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/pichu_doll.4bpp");
const u32 gEventObjectPic_PikachuDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/pikachu_doll.4bpp");
const u32 gEventObjectPic_MarillDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/marill_doll.4bpp");
const u32 gEventObjectPic_TogepiDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/togepi_doll.4bpp");
const u32 gEventObjectPic_CyndaquilDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/cyndaquil_doll.4bpp");
const u32 gEventObjectPic_ChikoritaDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/chikorita_doll.4bpp");
const u32 gEventObjectPic_TotodileDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/totodile_doll.4bpp");
const u32 gEventObjectPic_JigglypuffDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/jigglypuff_doll.4bpp");
const u32 gEventObjectPic_MeowthDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/meowth_doll.4bpp");
const u32 gEventObjectPic_ClefairyDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/clefairy_doll.4bpp");
const u32 gEventObjectPic_DittoDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/ditto_doll.4bpp");
const u32 gEventObjectPic_SmoochumDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/smoochum_doll.4bpp");
const u32 gEventObjectPic_TreeckoDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/treecko_doll.4bpp");
const u32 gEventObjectPic_TorchicDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/torchic_doll.4bpp");
const u32 gEventObjectPic_MudkipDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/mudkip_doll.4bpp");
const u32 gEventObjectPic_DuskullDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/duskull_doll.4bpp");
const u32 gEventObjectPic_WynautDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/wynaut_doll.4bpp");
const u32 gEventObjectPic_BaltoyDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/baltoy_doll.4bpp");
const u32 gEventObjectPic_KecleonDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/kecleon_doll.4bpp");
const u32 gEventObjectPic_AzurillDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/azurill_doll.4bpp");
const u32 gEventObjectPic_SkittyDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/skitty_doll.4bpp");
const u32 gEventObjectPic_SwabluDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/swablu_doll.4bpp");
const u32 gEventObjectPic_GulpinDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/gulpin_doll.4bpp");
const u32 gEventObjectPic_LotadDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/lotad_doll.4bpp");
const u32 gEventObjectPic_SeedotDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/seedot_doll.4bpp");
const u32 gEventObjectPic_PikaCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/pika_cushion.4bpp");
const u32 gEventObjectPic_RoundCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/round_cushion.4bpp");
const u32 gEventObjectPic_KissCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/kiss_cushion.4bpp");
const u32 gEventObjectPic_ZigzagCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/zigzag_cushion.4bpp");
const u32 gEventObjectPic_SpinCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/spin_cushion.4bpp");
const u32 gEventObjectPic_DiamondCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/diamond_cushion.4bpp");
const u32 gEventObjectPic_BallCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/ball_cushion.4bpp");
const u32 gEventObjectPic_GrassCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/grass_cushion.4bpp");
const u32 gEventObjectPic_FireCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/fire_cushion.4bpp");
const u32 gEventObjectPic_WaterCushion[] = INCBIN_U32("graphics/event_objects/pics/cushions/water_cushion.4bpp");
const u32 gEventObjectPic_BigSnorlaxDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_snorlax_doll.4bpp");
const u32 gEventObjectPic_BigRhydonDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_rhydon_doll.4bpp");
const u32 gEventObjectPic_BigLaprasDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_lapras_doll.4bpp");
const u32 gEventObjectPic_BigVenusaurDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_venusaur_doll.4bpp");
const u32 gEventObjectPic_BigCharizardDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_charizard_doll.4bpp");
const u32 gEventObjectPic_BigBlastoiseDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_blastoise_doll.4bpp");
const u32 gEventObjectPic_BigWailmerDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_wailmer_doll.4bpp");
const u32 gEventObjectPic_BigRegirockDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_regirock_doll.4bpp");
const u32 gEventObjectPic_BigRegiceDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_regice_doll.4bpp");
const u32 gEventObjectPic_BigRegisteelDoll[] = INCBIN_U32("graphics/event_objects/pics/dolls/big_registeel_doll.4bpp");
const u32 gEventObjectPic_CuttableTree[] = INCBIN_U32("graphics/event_objects/pics/misc/cuttable_tree.4bpp");
const u32 gEventObjectPic_BreakableRock[] = INCBIN_U32("graphics/event_objects/pics/misc/breakable_rock.4bpp");
const u32 gEventObjectPic_PushableBoulder[] = INCBIN_U32("graphics/event_objects/pics/misc/pushable_boulder.4bpp");
const u32 gEventObjectPic_MrBrineysBoat[] = INCBIN_U32("graphics/event_objects/pics/misc/mr_brineys_boat.4bpp");
const u32 gEventObjectPic_Fossil[] = INCBIN_U32("graphics/event_objects/pics/misc/fossil.4bpp");
const u32 gEventObjectPic_SubmarineShadow[] = INCBIN_U32("graphics/event_objects/pics/misc/submarine_shadow.4bpp");
const u16 gEventObjectPalette26[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_26.gbapal");
const u32 gEventObjectPic_Truck[] = INCBIN_U32("graphics/event_objects/pics/misc/truck.4bpp");
const u16 gEventObjectPalette14[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_14.gbapal");
const u32 gEventObjectPic_Vigoroth[] = INCBIN_U32("graphics/event_objects/pics/pokemon/vigoroth.4bpp");
const u16 gEventObjectPalette15[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_15.gbapal");
const u32 gEventObjectPic_BirchsBag[] = INCBIN_U32("graphics/event_objects/pics/misc/birchs_bag.4bpp");
const u32 gEventObjectPic_EnemyZigzagoon[] = INCBIN_U32("graphics/event_objects/pics/pokemon/enemy_zigzagoon.4bpp");
const u16 gEventObjectPalette16[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_16.gbapal");
const u32 gEventObjectPic_Poochyena[] = INCBIN_U32("graphics/event_objects/pics/pokemon/poochyena.4bpp");
const u16 gEventObjectPalette27[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_27.gbapal");
const u32 gEventObjectPic_CableCar[] = INCBIN_U32("graphics/event_objects/pics/misc/cable_car.4bpp");
const u16 gEventObjectPalette20[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_20.gbapal");
const u32 gEventObjectPic_SSTidal[] = INCBIN_U32("graphics/event_objects/pics/misc/ss_tidal.4bpp");
const u16 gEventObjectPalette21[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_21.gbapal");
const u32 gFieldEffectObjectPic_BerryTreeGrowthSparkle[] = INCBIN_U32("graphics/event_objects/pics/effects/berry_tree_growth_sparkle.4bpp");
const u32 gEventObjectPic_BerryTreeDirtPile[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/dirt_pile.4bpp");
const u32 gEventObjectPic_BerryTreeSprout[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/sprout.4bpp");
const u32 gEventObjectPic_PechaBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/pecha.4bpp");
const u32 gEventObjectPic_KelpsyBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/kelpsy.4bpp");
const u32 gEventObjectPic_WepearBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/wepear.4bpp");
const u32 gEventObjectPic_IapapaBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/iapapa.4bpp");
const u32 gEventObjectPic_CheriBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/cheri.4bpp");
const u32 gEventObjectPic_FigyBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/figy.4bpp");
const u32 gEventObjectPic_MagoBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/mago.4bpp");
const u32 gEventObjectPic_LumBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/lum.4bpp");
const u32 gEventObjectPic_RazzBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/razz.4bpp");
const u32 gEventObjectPic_GrepaBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/grepa.4bpp");
const u32 gEventObjectPic_RabutaBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/rabuta.4bpp");
const u32 gEventObjectPic_NomelBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/nomel.4bpp");
const u32 gEventObjectPic_LeppaBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/leppa.4bpp");
const u32 gEventObjectPic_LiechiBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/liechi.4bpp");
const u32 gEventObjectPic_HondewBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/hondew.4bpp");
const u32 gEventObjectPic_AguavBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/aguav.4bpp");
const u32 gEventObjectPic_WikiBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/wiki.4bpp");
const u32 gEventObjectPic_PomegBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/pomeg.4bpp");
const u32 gEventObjectPic_RawstBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/rawst.4bpp");
const u32 gEventObjectPic_SpelonBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/spelon.4bpp");
const u32 gEventObjectPic_ChestoBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/chesto.4bpp");
const u32 gEventObjectPic_OranBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/oran.4bpp");
const u32 gEventObjectPic_PersimBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/persim.4bpp");
const u32 gEventObjectPic_SitrusBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/sitrus.4bpp");
const u32 gEventObjectPic_AspearBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/aspear.4bpp");
const u32 gEventObjectPic_PamtreBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/pamtre.4bpp");
const u32 gEventObjectPic_CornnBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/cornn.4bpp");
const u32 gEventObjectPic_LansatBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/lansat.4bpp");
const u32 gEventObjectPic_DurinBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/durin.4bpp");
const u32 gEventObjectPic_TamatoBerryTree[] = INCBIN_U32("graphics/event_objects/pics/berry_trees/tamato.4bpp");
const u32 gFieldEffectObjectPic_SurfBlob[] = INCBIN_U32("graphics/event_objects/pics/effects/surf_blob.4bpp");
const u32 gEventObjectPic_QuintyPlump[] = INCBIN_U32("graphics/event_objects/pics/people/quinty_plump.4bpp");
const u16 gEventObjectPalette12[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_12.gbapal");
const u16 gEventObjectPalette13[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_13.gbapal");
const u32 gFieldEffectObjectPic_ShadowSmall[] = INCBIN_U32("graphics/event_objects/pics/effects/shadow_small.4bpp");
const u32 gFieldEffectObjectPic_ShadowMedium[] = INCBIN_U32("graphics/event_objects/pics/effects/shadow_medium.4bpp");
const u32 gFieldEffectObjectPic_ShadowLarge[] = INCBIN_U32("graphics/event_objects/pics/effects/shadow_large.4bpp");
const u32 gFieldEffectObjectPic_ShadowExtraLarge[] = INCBIN_U32("graphics/event_objects/pics/effects/shadow_extra_large.4bpp");
const u32 filler_8368A08[0x48] = {};
const u8 gFieldEffectPic_CutGrass[] = INCBIN_U8("graphics/event_objects/pics/effects/cut_grass.4bpp");
const u32 gFieldEffectPic_CutGrass_Copy[] = INCBIN_U32("graphics/event_objects/pics/effects/cut_grass.4bpp");
const u16 gFieldEffectObjectPalette6[] = INCBIN_U16("graphics/event_objects/palettes/field_effect_object_palette_06.gbapal");
const u32 gFieldEffectObjectPic_Ripple[] = INCBIN_U32("graphics/event_objects/pics/effects/ripple.4bpp");
const u32 gFieldEffectObjectPic_Ash[] = INCBIN_U32("graphics/event_objects/pics/effects/ash.4bpp");
const u32 gFieldEffectObjectPic_Arrow[] = INCBIN_U32("graphics/event_objects/pics/effects/arrow.4bpp");
const u16 gFieldEffectObjectPalette0[] = INCBIN_U16("graphics/event_objects/palettes/field_effect_object_palette_00.gbapal");
const u16 gFieldEffectObjectPalette1[] = INCBIN_U16("graphics/event_objects/palettes/field_effect_object_palette_01.gbapal");
const u32 gFieldEffectObjectPic_GroundImpactDust[] = INCBIN_U32("graphics/event_objects/pics/effects/ground_impact_dust.4bpp");
const u32 gFieldEffectObjectPic_BikeHopTallGrass[] = INCBIN_U32("graphics/event_objects/pics/effects/bike_hop_tall_grass.4bpp");
const u32 gUnusedGrass[] = INCBIN_U32("graphics/event_objects/pics/effects/unused_grass.4bpp");
const u32 gFieldEffectObjectPic_Unknown16[] = INCBIN_U32("graphics/event_objects/pics/effects/unknown_16.4bpp");
const u32 gFieldEffectObjectPic_Unknown17[] = INCBIN_U32("graphics/event_objects/pics/effects/unknown_17.4bpp");
const u32 gFieldEffectObjectPic_Unknown18[] = INCBIN_U32("graphics/event_objects/pics/effects/unknown_18.4bpp");
const u32 gFieldEffectObjectPic_LongGrass[] = INCBIN_U32("graphics/event_objects/pics/effects/long_grass.4bpp");
const u32 gFieldEffectObjectPic_TallGrass[] = INCBIN_U32("graphics/event_objects/pics/effects/tall_grass.4bpp");
const u32 gFieldEffectObjectPic_ShortGrass[] = INCBIN_U32("graphics/event_objects/pics/effects/short_grass.4bpp");
const u32 gFieldEffectObjectPic_SandFootprints[] = INCBIN_U32("graphics/event_objects/pics/effects/sand_footprints.4bpp");
const u32 gFieldEffectObjectPic_DeepSandFootprints[] = INCBIN_U32("graphics/event_objects/pics/effects/deep_sand_footprints.4bpp");
const u32 gFieldEffectObjectPic_BikeTireTracks[] = INCBIN_U32("graphics/event_objects/pics/effects/bike_tire_tracks.4bpp");
const u32 gFieldEffectObjectPic_Unknown19[] = INCBIN_U32("graphics/event_objects/pics/effects/unknown_19.4bpp");
const u32 gFieldEffectObjectPic_Unknown29[] = INCBIN_U32("graphics/event_objects/pics/effects/unknown_29.4bpp");
const u32 gFieldEffectObjectPic_BikeHopBigSplash[] = INCBIN_U32("graphics/event_objects/pics/effects/bike_hop_big_splash.4bpp");
const u32 gFieldEffectObjectPic_Splash[] = INCBIN_U32("graphics/event_objects/pics/effects/splash.4bpp");
const u32 gFieldEffectObjectPic_BikeHopSmallSplash[] = INCBIN_U32("graphics/event_objects/pics/effects/bike_hop_small_splash.4bpp");
const u32 gFieldEffectObjectPic_Unknown20[] = INCBIN_U32("graphics/event_objects/pics/effects/unknown_20.4bpp");
const u32 gFieldEffectObjectPic_TreeDisguise[] = INCBIN_U32("graphics/event_objects/pics/effects/tree_disguise.4bpp");
const u32 gFieldEffectObjectPic_MountainDisguise[] = INCBIN_U32("graphics/event_objects/pics/effects/mountain_disguise.4bpp");
const u32 gFieldEffectObjectPic_SandDisguisePlaceholder[] = INCBIN_U32("graphics/event_objects/pics/effects/sand_disguise_placeholder.4bpp");
const u32 gFieldEffectObjectPic_HotSpringsWater[] = INCBIN_U32("graphics/event_objects/pics/effects/hot_springs_water.4bpp");
const u16 gFieldEffectObjectPalette2[] = INCBIN_U16("graphics/event_objects/palettes/field_effect_object_palette_02.gbapal");
const u32 gFieldEffectObjectPic_JumpOutOfAsh[] = INCBIN_U32("graphics/event_objects/pics/effects/jump_out_of_ash.4bpp");
const u32 gFieldEffectObjectPic_Unknown33[] = INCBIN_U32("graphics/event_objects/pics/effects/unknown_33.4bpp");
const u32 gFieldEffectObjectPic_Bubbles[] = INCBIN_U32("graphics/event_objects/pics/effects/bubbles.4bpp");
const u32 gFieldEffectObjectPic_Unknown35[] = INCBIN_U32("graphics/event_objects/pics/effects/unknown_35.4bpp");
const u16 gFieldEffectObjectPalette3[] = INCBIN_U16("graphics/event_objects/palettes/field_effect_object_palette_03.gbapal");
const u32 gFieldEffectObjectPic_Bird[] = INCBIN_U32("graphics/event_objects/pics/effects/bird.4bpp");
const u32 gEventObjectPic_Juan[] = INCBIN_U32("graphics/event_objects/pics/people/gym_leaders/juan.4bpp");
const u32 gEventObjectPic_Scott[] = INCBIN_U32("graphics/event_objects/pics/people/scott.4bpp");
const u32 gEventObjectPic_Statue[] = INCBIN_U32("graphics/event_objects/pics/misc/statue.4bpp");
const u32 gEventObjectPic_Kirlia[] = INCBIN_U32("graphics/event_objects/pics/pokemon/kirlia.4bpp");
const u32 gEventObjectPic_Dusclops[] = INCBIN_U32("graphics/event_objects/pics/pokemon/dusclops.4bpp");
const u32 gEventObjectPic_MysteryEventDeliveryman[] = INCBIN_U32("graphics/event_objects/pics/people/mystery_event_deliveryman.4bpp");
const u32 gEventObjectPic_UnionRoomAttendant[] = INCBIN_U32("graphics/event_objects/pics/people/union_room_attendant.4bpp");
const u32 gEventObjectPic_MovingBox[] = INCBIN_U32("graphics/event_objects/pics/misc/moving_box.4bpp");
const u16 gEventObjectPalette19[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_19.gbapal");
const u32 gEventObjectPic_Sudowoodo[] = INCBIN_U32("graphics/event_objects/pics/pokemon/sudowoodo.4bpp");
const u32 gEventObjectPic_Mew[] = INCBIN_U32("graphics/event_objects/pics/pokemon/mew.4bpp");
const u16 gEventObjectPalette28[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_28.gbapal");
const u32 gEventObjectPic_Red[] = INCBIN_U32("graphics/event_objects/pics/people/red.4bpp");
const u32 gEventObjectPic_Leaf[] = INCBIN_U32("graphics/event_objects/pics/people/leaf.4bpp");
const u16 gEventObjectPalette30[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_30.gbapal");
const u32 gEventObjectPic_BirthIslandStone[] = INCBIN_U32("graphics/event_objects/pics/misc/birth_island_stone.4bpp");
const u16 gEventObjectPalette29[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_29.gbapal");
const u32 gEventObjectPic_Deoxys[] = INCBIN_U32("graphics/event_objects/pics/pokemon/deoxys.4bpp");
const u32 gEventObjectPic_Anabel[] = INCBIN_U32("graphics/event_objects/pics/people/frontier_brains/anabel.4bpp");
const u32 gEventObjectPic_Tucker[] = INCBIN_U32("graphics/event_objects/pics/people/frontier_brains/tucker.4bpp");
const u32 gEventObjectPic_Spenser[] = INCBIN_U32("graphics/event_objects/pics/people/frontier_brains/spenser.4bpp");
const u32 gEventObjectPic_Greta[] = INCBIN_U32("graphics/event_objects/pics/people/frontier_brains/greta.4bpp");
const u32 gEventObjectPic_Noland[] = INCBIN_U32("graphics/event_objects/pics/people/frontier_brains/noland.4bpp");
const u32 gEventObjectPic_Lucy[] = INCBIN_U32("graphics/event_objects/pics/people/frontier_brains/lucy.4bpp");
const u32 gEventObjectPic_Brandon[] = INCBIN_U32("graphics/event_objects/pics/people/frontier_brains/brandon.4bpp");
const u32 gEventObjectPic_Lugia[] = INCBIN_U32("graphics/event_objects/pics/pokemon/lugia.4bpp");
const u16 gEventObjectPalette32[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_32.gbapal");
const u32 gEventObjectPic_HoOh[] = INCBIN_U32("graphics/event_objects/pics/pokemon/ho_oh.4bpp");
const u16 gEventObjectPalette31[] = INCBIN_U16("graphics/event_objects/palettes/field_object_palette_31.gbapal");
# 143 "src/event_object_movement.c" 2


static void (*const sMovementTypeCallbacks[])(struct Sprite *) =
{
    [0x0] = MovementType_None,
    [0x1] = MovementType_LookAround,
    [0x2] = MovementType_WanderAround,
    [0x3] = MovementType_WanderUpAndDown,
    [0x4] = MovementType_WanderUpAndDown,
    [0x5] = MovementType_WanderLeftAndRight,
    [0x6] = MovementType_WanderLeftAndRight,
    [0x7] = MovementType_FaceDirection,
    [0x8] = MovementType_FaceDirection,
    [0x9] = MovementType_FaceDirection,
    [0xA] = MovementType_FaceDirection,
    [0xB] = MovementType_Player,
    [0xC] = MovementType_BerryTreeGrowth,
    [0xD] = MovementType_FaceDownAndUp,
    [0xE] = MovementType_FaceLeftAndRight,
    [0xF] = MovementType_FaceUpAndLeft,
    [0x10] = MovementType_FaceUpAndRight,
    [0x11] = MovementType_FaceDownAndLeft,
    [0x12] = MovementType_FaceDownAndRight,
    [0x13] = MovementType_FaceDownUpAndLeft,
    [0x14] = MovementType_FaceDownUpAndRight,
    [0x15] = MovementType_FaceUpRightAndLeft,
    [0x16] = MovementType_FaceDownRightAndLeft,
    [0x17] = MovementType_RotateCounterclockwise,
    [0x18] = MovementType_RotateClockwise,
    [0x19] = MovementType_WalkBackAndForth,
    [0x1A] = MovementType_WalkBackAndForth,
    [0x1B] = MovementType_WalkBackAndForth,
    [0x1C] = MovementType_WalkBackAndForth,
    [0x1D] = MovementType_WalkSequenceUpRightLeftDown,
    [0x1E] = MovementType_WalkSequenceRightLeftDownUp,
    [0x1F] = MovementType_WalkSequenceDownUpRightLeft,
    [0x20] = MovementType_WalkSequenceLeftDownUpRight,
    [0x21] = MovementType_WalkSequenceUpLeftRightDown,
    [0x22] = MovementType_WalkSequenceLeftRightDownUp,
    [0x23] = MovementType_WalkSequenceDownUpLeftRight,
    [0x24] = MovementType_WalkSequenceRightDownUpLeft,
    [0x25] = MovementType_WalkSequenceLeftUpDownRight,
    [0x26] = MovementType_WalkSequenceUpDownRightLeft,
    [0x27] = MovementType_WalkSequenceRightLeftUpDown,
    [0x28] = MovementType_WalkSequenceDownRightLeftUp,
    [0x29] = MovementType_WalkSequenceRightUpDownLeft,
    [0x2A] = MovementType_WalkSequenceUpDownLeftRight,
    [0x2B] = MovementType_WalkSequenceLeftRightUpDown,
    [0x2C] = MovementType_WalkSequenceDownLeftRightUp,
    [0x2D] = MovementType_WalkSequenceUpLeftDownRight,
    [0x2E] = MovementType_WalkSequenceDownRightUpLeft,
    [0x2F] = MovementType_WalkSequenceLeftDownRightUp,
    [0x30] = MovementType_WalkSequenceRightUpLeftDown,
    [0x31] = MovementType_WalkSequenceUpRightDownLeft,
    [0x32] = MovementType_WalkSequenceDownLeftUpRight,
    [0x33] = MovementType_WalkSequenceLeftUpRightDown,
    [0x34] = MovementType_WalkSequenceRightDownLeftUp,
    [0x35] = MovementType_CopyPlayer,
    [0x36] = MovementType_CopyPlayer,
    [0x37] = MovementType_CopyPlayer,
    [0x38] = MovementType_CopyPlayer,
    [0x39] = MovementType_TreeDisguise,
    [0x3A] = MovementType_MountainDisguise,
    [0x3B] = MovementType_CopyPlayerInGrass,
    [0x3C] = MovementType_CopyPlayerInGrass,
    [0x3D] = MovementType_CopyPlayerInGrass,
    [0x3E] = MovementType_CopyPlayerInGrass,
    [0x3F] = MovementType_Hidden,
    [0x40] = MovementType_WalkInPlace,
    [0x41] = MovementType_WalkInPlace,
    [0x42] = MovementType_WalkInPlace,
    [0x43] = MovementType_WalkInPlace,
    [0x44] = MovementType_JogInPlace,
    [0x45] = MovementType_JogInPlace,
    [0x46] = MovementType_JogInPlace,
    [0x47] = MovementType_JogInPlace,
    [0x48] = MovementType_RunInPlace,
    [0x49] = MovementType_RunInPlace,
    [0x4A] = MovementType_RunInPlace,
    [0x4B] = MovementType_RunInPlace,
    [0x4C] = MovementType_Invisible,
    [0x4D] = MovementType_WalkSlowlyInPlace,
    [0x4E] = MovementType_WalkSlowlyInPlace,
    [0x4F] = MovementType_WalkSlowlyInPlace,
    [0x50] = MovementType_WalkSlowlyInPlace,
};

const u8 gRangedMovementTypes[] = {
    [0x0] = 0,
    [0x1] = 0,
    [0x2] = 1,
    [0x3] = 1,
    [0x4] = 1,
    [0x5] = 1,
    [0x6] = 1,
    [0x7] = 0,
    [0x8] = 0,
    [0x9] = 0,
    [0xA] = 0,
    [0xB] = 0,
    [0xC] = 0,
    [0xD] = 0,
    [0xE] = 0,
    [0xF] = 0,
    [0x10] = 0,
    [0x11] = 0,
    [0x12] = 0,
    [0x13] = 0,
    [0x14] = 0,
    [0x15] = 0,
    [0x16] = 0,
    [0x17] = 0,
    [0x18] = 0,
    [0x19] = 1,
    [0x1A] = 1,
    [0x1B] = 1,
    [0x1C] = 1,
    [0x1D] = 1,
    [0x1E] = 1,
    [0x1F] = 1,
    [0x20] = 1,
    [0x21] = 1,
    [0x22] = 1,
    [0x23] = 1,
    [0x24] = 1,
    [0x25] = 1,
    [0x26] = 1,
    [0x27] = 1,
    [0x28] = 1,
    [0x29] = 1,
    [0x2A] = 1,
    [0x2B] = 1,
    [0x2C] = 1,
    [0x2D] = 1,
    [0x2E] = 1,
    [0x2F] = 1,
    [0x30] = 1,
    [0x31] = 1,
    [0x32] = 1,
    [0x33] = 1,
    [0x34] = 1,
    [0x35] = 1,
    [0x36] = 1,
    [0x37] = 1,
    [0x38] = 1,
    [0x39] = 0,
    [0x3A] = 0,
    [0x3B] = 1,
    [0x3C] = 1,
    [0x3D] = 1,
    [0x3E] = 1,
    [0x3F] = 0,
    [0x40] = 0,
    [0x41] = 0,
    [0x42] = 0,
    [0x43] = 0,
    [0x44] = 0,
    [0x45] = 0,
    [0x46] = 0,
    [0x47] = 0,
    [0x48] = 0,
    [0x49] = 0,
    [0x4A] = 0,
    [0x4B] = 0,
    [0x4C] = 0,
    [0x4D] = 0,
    [0x4E] = 0,
    [0x4F] = 0,
    [0x50] = 0,
};

const u8 gInitialMovementTypeFacingDirections[] = {
    [0x0] = 1,
    [0x1] = 1,
    [0x2] = 1,
    [0x3] = 2,
    [0x4] = 1,
    [0x5] = 3,
    [0x6] = 4,
    [0x7] = 2,
    [0x8] = 1,
    [0x9] = 3,
    [0xA] = 4,
    [0xB] = 1,
    [0xC] = 1,
    [0xD] = 1,
    [0xE] = 3,
    [0xF] = 2,
    [0x10] = 2,
    [0x11] = 1,
    [0x12] = 1,
    [0x13] = 1,
    [0x14] = 1,
    [0x15] = 2,
    [0x16] = 1,
    [0x17] = 1,
    [0x18] = 1,
    [0x19] = 2,
    [0x1A] = 1,
    [0x1B] = 3,
    [0x1C] = 4,
    [0x1D] = 2,
    [0x1E] = 4,
    [0x1F] = 1,
    [0x20] = 3,
    [0x21] = 2,
    [0x22] = 3,
    [0x23] = 1,
    [0x24] = 4,
    [0x25] = 3,
    [0x26] = 2,
    [0x27] = 4,
    [0x28] = 1,
    [0x29] = 4,
    [0x2A] = 2,
    [0x2B] = 3,
    [0x2C] = 1,
    [0x2D] = 2,
    [0x2E] = 1,
    [0x2F] = 3,
    [0x30] = 4,
    [0x31] = 2,
    [0x32] = 1,
    [0x33] = 3,
    [0x34] = 4,
    [0x35] = 2,
    [0x36] = 1,
    [0x37] = 3,
    [0x38] = 4,
    [0x39] = 1,
    [0x3A] = 1,
    [0x3B] = 2,
    [0x3C] = 1,
    [0x3D] = 3,
    [0x3E] = 4,
    [0x3F] = 1,
    [0x40] = 1,
    [0x41] = 2,
    [0x42] = 3,
    [0x43] = 4,
    [0x44] = 1,
    [0x45] = 2,
    [0x46] = 3,
    [0x47] = 4,
    [0x48] = 1,
    [0x49] = 2,
    [0x4A] = 3,
    [0x4B] = 4,
    [0x4C] = 1,
    [0x4D] = 1,
    [0x4E] = 2,
    [0x4F] = 3,
    [0x50] = 4,
};
# 435 "src/event_object_movement.c"
# 1 "src/data/field_event_obj/event_object_graphics_info_pointers.h" 1
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanNormal;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanMachBike;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanSurfing;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanFieldMove;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_QuintyPlump;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_NinjaBoy;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Twin;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Boy1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Girl1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Boy2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Girl2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LittleBoy;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LittleGirl;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Boy3;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Girl3;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RichBoy;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_FatMan;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PokefanF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ExpertM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ExpertF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman3;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PokefanM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman4;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Cook;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LinkReceptionist;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_OldMan;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_OldWoman;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Camper;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Picnicker;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man3;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman5;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Youngster;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BugCatcher;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PsychicM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SchoolKidM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Maniac;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_HexManiac;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Rayquaza1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SwimmerM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SwimmerF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BlackBelt;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Beauty;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Scientist1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Lass;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Gentleman;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Sailor;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Fisherman;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RunningTriathleteM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RunningTriathleteF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TuberF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TuberM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Hiker;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CyclingTriathleteM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CyclingTriathleteF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Nurse;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ItemBall;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BerryTree;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BerryTreeEarlyStages;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BerryTreeLateStages;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanAcroBike;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ProfBirch;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man4;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man5;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ReporterM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ReporterF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Bard;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Anabel;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Tucker;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Greta;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Spenser;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Noland;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Lucy;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedNatuDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedMagnemiteDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedSquirtleDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedWooperDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedPikachuDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedPorygon2Doll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CuttableTree;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MartEmployee;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RooftopSaleWoman;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Teala;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BreakableRock;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PushableBoulder;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MrBrineysBoat;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayNormal;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayMachBike;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayAcroBike;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MaySurfing;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayFieldMove;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Truck;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_VigorothCarryingBox;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_VigorothFacingAway;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BirchsBag;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_EnemyZigzagoon;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Artist;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanNormal;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanMachBike;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanAcroBike;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanSurfing;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanFieldMove;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMayNormal;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMayMachBike;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMayAcroBike;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMaySurfing;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMayFieldMove;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Cameraman;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanUnderwater;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayUnderwater;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MovingBox;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CableCar;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Scientist2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_DevonEmployee;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_AquaMemberM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_AquaMemberF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MagmaMemberM;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MagmaMemberF;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Sidney;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Phoebe;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Glacia;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Drake;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Roxanne;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Brawly;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Wattson;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Flannery;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Norman;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Winona;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Liza;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Tate;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Wallace;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Steven;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Wally;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RubySapphireLittleBoy;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanFishing;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayFishing;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_HotSpringsOldWoman;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SSTidal;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SubmarineShadow;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PichuDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PikachuDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MarillDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TogepiDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CyndaquilDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ChikoritaDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TotodileDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_JigglypuffDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MeowthDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ClefairyDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_DittoDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SmoochumDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TreeckoDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TorchicDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MudkipDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_DuskullDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_WynautDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BaltoyDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_KecleonDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_AzurillDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SkittyDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SwabluDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_GulpinDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LotadDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SeedotDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PikaCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RoundCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_KissCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ZigzagCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SpinCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_DiamondCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BallCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_GrassCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_FireCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_WaterCushion;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigSnorlaxDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigRhydonDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigLaprasDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigVenusaurDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigCharizardDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigBlastoiseDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigWailmerDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigRegirockDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigRegiceDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigRegisteelDoll;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Latias;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Latios;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_GameboyKid;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ContestJudge;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanWatering;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayWatering;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanDecorating;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayDecorating;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Archie;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Maxie;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kyogre1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Groudon1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Fossil;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Regirock;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Regice;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Registeel;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Skitty;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kecleon1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kyogre2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Groudon2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Rayquaza2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Zigzagoon;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Pikachu;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Azumarill;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Wingull;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kecleon2;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TuberMSwimming;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Azurill;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Mom;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LinkBrendan;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LinkMay;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Juan;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Scott;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Poochyena;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kyogre3;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Groudon3;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MysteryEventDeliveryman;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Statue;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kirlia;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Dusclops;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnionRoomAttendant;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Sudowoodo;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Mew;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Red;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Leaf;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Deoxys;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BirthIslandStone;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Brandon;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RubySapphireBrendan;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RubySapphireMay;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Lugia;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_HoOh;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Bard;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Hipster;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Trader;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Storyteller;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Giddy;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedMauvilleOldMan1;
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedMauvilleOldMan2;


const struct EventObjectGraphicsInfo *const gEventObjectGraphicsInfoPointers[] = {
    &gEventObjectGraphicsInfo_BrendanNormal,
    &gEventObjectGraphicsInfo_BrendanMachBike,
    &gEventObjectGraphicsInfo_BrendanSurfing,
    &gEventObjectGraphicsInfo_BrendanFieldMove,
    &gEventObjectGraphicsInfo_QuintyPlump,
    &gEventObjectGraphicsInfo_NinjaBoy,
    &gEventObjectGraphicsInfo_Twin,
    &gEventObjectGraphicsInfo_Boy1,
    &gEventObjectGraphicsInfo_Girl1,
    &gEventObjectGraphicsInfo_Boy2,
    &gEventObjectGraphicsInfo_Girl2,
    &gEventObjectGraphicsInfo_LittleBoy,
    &gEventObjectGraphicsInfo_LittleGirl,
    &gEventObjectGraphicsInfo_Boy3,
    &gEventObjectGraphicsInfo_Girl3,
    &gEventObjectGraphicsInfo_RichBoy,
    &gEventObjectGraphicsInfo_Woman1,
    &gEventObjectGraphicsInfo_FatMan,
    &gEventObjectGraphicsInfo_PokefanF,
    &gEventObjectGraphicsInfo_Man1,
    &gEventObjectGraphicsInfo_Woman2,
    &gEventObjectGraphicsInfo_ExpertM,
    &gEventObjectGraphicsInfo_ExpertF,
    &gEventObjectGraphicsInfo_Man2,
    &gEventObjectGraphicsInfo_Woman3,
    &gEventObjectGraphicsInfo_PokefanM,
    &gEventObjectGraphicsInfo_Woman4,
    &gEventObjectGraphicsInfo_Cook,
    &gEventObjectGraphicsInfo_LinkReceptionist,
    &gEventObjectGraphicsInfo_OldMan,
    &gEventObjectGraphicsInfo_OldWoman,
    &gEventObjectGraphicsInfo_Camper,
    &gEventObjectGraphicsInfo_Picnicker,
    &gEventObjectGraphicsInfo_Man3,
    &gEventObjectGraphicsInfo_Woman5,
    &gEventObjectGraphicsInfo_Youngster,
    &gEventObjectGraphicsInfo_BugCatcher,
    &gEventObjectGraphicsInfo_PsychicM,
    &gEventObjectGraphicsInfo_SchoolKidM,
    &gEventObjectGraphicsInfo_Maniac,
    &gEventObjectGraphicsInfo_HexManiac,
    &gEventObjectGraphicsInfo_Rayquaza1,
    &gEventObjectGraphicsInfo_SwimmerM,
    &gEventObjectGraphicsInfo_SwimmerF,
    &gEventObjectGraphicsInfo_BlackBelt,
    &gEventObjectGraphicsInfo_Beauty,
    &gEventObjectGraphicsInfo_Scientist1,
    &gEventObjectGraphicsInfo_Lass,
    &gEventObjectGraphicsInfo_Gentleman,
    &gEventObjectGraphicsInfo_Sailor,
    &gEventObjectGraphicsInfo_Fisherman,
    &gEventObjectGraphicsInfo_RunningTriathleteM,
    &gEventObjectGraphicsInfo_RunningTriathleteF,
    &gEventObjectGraphicsInfo_TuberF,
    &gEventObjectGraphicsInfo_TuberM,
    &gEventObjectGraphicsInfo_Hiker,
    &gEventObjectGraphicsInfo_CyclingTriathleteM,
    &gEventObjectGraphicsInfo_CyclingTriathleteF,
    &gEventObjectGraphicsInfo_Nurse,
    &gEventObjectGraphicsInfo_ItemBall,
    &gEventObjectGraphicsInfo_BerryTree,
    &gEventObjectGraphicsInfo_BerryTreeEarlyStages,
    &gEventObjectGraphicsInfo_BerryTreeLateStages,
    &gEventObjectGraphicsInfo_BrendanAcroBike,
    &gEventObjectGraphicsInfo_ProfBirch,
    &gEventObjectGraphicsInfo_Man4,
    &gEventObjectGraphicsInfo_Man5,
    &gEventObjectGraphicsInfo_ReporterM,
    &gEventObjectGraphicsInfo_ReporterF,
    &gEventObjectGraphicsInfo_Bard,
    &gEventObjectGraphicsInfo_Anabel,
    &gEventObjectGraphicsInfo_Tucker,
    &gEventObjectGraphicsInfo_Greta,
    &gEventObjectGraphicsInfo_Spenser,
    &gEventObjectGraphicsInfo_Noland,
    &gEventObjectGraphicsInfo_Lucy,
    &gEventObjectGraphicsInfo_UnusedNatuDoll,
    &gEventObjectGraphicsInfo_UnusedMagnemiteDoll,
    &gEventObjectGraphicsInfo_UnusedSquirtleDoll,
    &gEventObjectGraphicsInfo_UnusedWooperDoll,
    &gEventObjectGraphicsInfo_UnusedPikachuDoll,
    &gEventObjectGraphicsInfo_UnusedPorygon2Doll,
    &gEventObjectGraphicsInfo_CuttableTree,
    &gEventObjectGraphicsInfo_MartEmployee,
    &gEventObjectGraphicsInfo_RooftopSaleWoman,
    &gEventObjectGraphicsInfo_Teala,
    &gEventObjectGraphicsInfo_BreakableRock,
    &gEventObjectGraphicsInfo_PushableBoulder,
    &gEventObjectGraphicsInfo_MrBrineysBoat,
    &gEventObjectGraphicsInfo_MayNormal,
    &gEventObjectGraphicsInfo_MayMachBike,
    &gEventObjectGraphicsInfo_MayAcroBike,
    &gEventObjectGraphicsInfo_MaySurfing,
    &gEventObjectGraphicsInfo_MayFieldMove,
    &gEventObjectGraphicsInfo_Truck,
    &gEventObjectGraphicsInfo_VigorothCarryingBox,
    &gEventObjectGraphicsInfo_VigorothFacingAway,
    &gEventObjectGraphicsInfo_BirchsBag,
    &gEventObjectGraphicsInfo_EnemyZigzagoon,
    &gEventObjectGraphicsInfo_Artist,
    &gEventObjectGraphicsInfo_RivalBrendanNormal,
    &gEventObjectGraphicsInfo_RivalBrendanMachBike,
    &gEventObjectGraphicsInfo_RivalBrendanAcroBike,
    &gEventObjectGraphicsInfo_RivalBrendanSurfing,
    &gEventObjectGraphicsInfo_RivalBrendanFieldMove,
    &gEventObjectGraphicsInfo_RivalMayNormal,
    &gEventObjectGraphicsInfo_RivalMayMachBike,
    &gEventObjectGraphicsInfo_RivalMayAcroBike,
    &gEventObjectGraphicsInfo_RivalMaySurfing,
    &gEventObjectGraphicsInfo_RivalMayFieldMove,
    &gEventObjectGraphicsInfo_Cameraman,
    &gEventObjectGraphicsInfo_BrendanUnderwater,
    &gEventObjectGraphicsInfo_MayUnderwater,
    &gEventObjectGraphicsInfo_MovingBox,
    &gEventObjectGraphicsInfo_CableCar,
    &gEventObjectGraphicsInfo_Scientist2,
    &gEventObjectGraphicsInfo_DevonEmployee,
    &gEventObjectGraphicsInfo_AquaMemberM,
    &gEventObjectGraphicsInfo_AquaMemberF,
    &gEventObjectGraphicsInfo_MagmaMemberM,
    &gEventObjectGraphicsInfo_MagmaMemberF,
    &gEventObjectGraphicsInfo_Sidney,
    &gEventObjectGraphicsInfo_Phoebe,
    &gEventObjectGraphicsInfo_Glacia,
    &gEventObjectGraphicsInfo_Drake,
    &gEventObjectGraphicsInfo_Roxanne,
    &gEventObjectGraphicsInfo_Brawly,
    &gEventObjectGraphicsInfo_Wattson,
    &gEventObjectGraphicsInfo_Flannery,
    &gEventObjectGraphicsInfo_Norman,
    &gEventObjectGraphicsInfo_Winona,
    &gEventObjectGraphicsInfo_Liza,
    &gEventObjectGraphicsInfo_Tate,
    &gEventObjectGraphicsInfo_Wallace,
    &gEventObjectGraphicsInfo_Steven,
    &gEventObjectGraphicsInfo_Wally,
    &gEventObjectGraphicsInfo_RubySapphireLittleBoy,
    &gEventObjectGraphicsInfo_BrendanFishing,
    &gEventObjectGraphicsInfo_MayFishing,
    &gEventObjectGraphicsInfo_HotSpringsOldWoman,
    &gEventObjectGraphicsInfo_SSTidal,
    &gEventObjectGraphicsInfo_SubmarineShadow,
    &gEventObjectGraphicsInfo_PichuDoll,
    &gEventObjectGraphicsInfo_PikachuDoll,
    &gEventObjectGraphicsInfo_MarillDoll,
    &gEventObjectGraphicsInfo_TogepiDoll,
    &gEventObjectGraphicsInfo_CyndaquilDoll,
    &gEventObjectGraphicsInfo_ChikoritaDoll,
    &gEventObjectGraphicsInfo_TotodileDoll,
    &gEventObjectGraphicsInfo_JigglypuffDoll,
    &gEventObjectGraphicsInfo_MeowthDoll,
    &gEventObjectGraphicsInfo_ClefairyDoll,
    &gEventObjectGraphicsInfo_DittoDoll,
    &gEventObjectGraphicsInfo_SmoochumDoll,
    &gEventObjectGraphicsInfo_TreeckoDoll,
    &gEventObjectGraphicsInfo_TorchicDoll,
    &gEventObjectGraphicsInfo_MudkipDoll,
    &gEventObjectGraphicsInfo_DuskullDoll,
    &gEventObjectGraphicsInfo_WynautDoll,
    &gEventObjectGraphicsInfo_BaltoyDoll,
    &gEventObjectGraphicsInfo_KecleonDoll,
    &gEventObjectGraphicsInfo_AzurillDoll,
    &gEventObjectGraphicsInfo_SkittyDoll,
    &gEventObjectGraphicsInfo_SwabluDoll,
    &gEventObjectGraphicsInfo_GulpinDoll,
    &gEventObjectGraphicsInfo_LotadDoll,
    &gEventObjectGraphicsInfo_SeedotDoll,
    &gEventObjectGraphicsInfo_PikaCushion,
    &gEventObjectGraphicsInfo_RoundCushion,
    &gEventObjectGraphicsInfo_KissCushion,
    &gEventObjectGraphicsInfo_ZigzagCushion,
    &gEventObjectGraphicsInfo_SpinCushion,
    &gEventObjectGraphicsInfo_DiamondCushion,
    &gEventObjectGraphicsInfo_BallCushion,
    &gEventObjectGraphicsInfo_GrassCushion,
    &gEventObjectGraphicsInfo_FireCushion,
    &gEventObjectGraphicsInfo_WaterCushion,
    &gEventObjectGraphicsInfo_BigSnorlaxDoll,
    &gEventObjectGraphicsInfo_BigRhydonDoll,
    &gEventObjectGraphicsInfo_BigLaprasDoll,
    &gEventObjectGraphicsInfo_BigVenusaurDoll,
    &gEventObjectGraphicsInfo_BigCharizardDoll,
    &gEventObjectGraphicsInfo_BigBlastoiseDoll,
    &gEventObjectGraphicsInfo_BigWailmerDoll,
    &gEventObjectGraphicsInfo_BigRegirockDoll,
    &gEventObjectGraphicsInfo_BigRegiceDoll,
    &gEventObjectGraphicsInfo_BigRegisteelDoll,
    &gEventObjectGraphicsInfo_Latias,
    &gEventObjectGraphicsInfo_Latios,
    &gEventObjectGraphicsInfo_GameboyKid,
    &gEventObjectGraphicsInfo_ContestJudge,
    &gEventObjectGraphicsInfo_BrendanWatering,
    &gEventObjectGraphicsInfo_MayWatering,
    &gEventObjectGraphicsInfo_BrendanDecorating,
    &gEventObjectGraphicsInfo_MayDecorating,
    &gEventObjectGraphicsInfo_Archie,
    &gEventObjectGraphicsInfo_Maxie,
    &gEventObjectGraphicsInfo_Kyogre1,
    &gEventObjectGraphicsInfo_Groudon1,
    &gEventObjectGraphicsInfo_Fossil,
    &gEventObjectGraphicsInfo_Regirock,
    &gEventObjectGraphicsInfo_Regice,
    &gEventObjectGraphicsInfo_Registeel,
    &gEventObjectGraphicsInfo_Skitty,
    &gEventObjectGraphicsInfo_Kecleon1,
    &gEventObjectGraphicsInfo_Kyogre2,
    &gEventObjectGraphicsInfo_Groudon2,
    &gEventObjectGraphicsInfo_Rayquaza2,
    &gEventObjectGraphicsInfo_Zigzagoon,
    &gEventObjectGraphicsInfo_Pikachu,
    &gEventObjectGraphicsInfo_Azumarill,
    &gEventObjectGraphicsInfo_Wingull,
    &gEventObjectGraphicsInfo_Kecleon2,
    &gEventObjectGraphicsInfo_TuberMSwimming,
    &gEventObjectGraphicsInfo_Azurill,
    &gEventObjectGraphicsInfo_Mom,
    &gEventObjectGraphicsInfo_LinkBrendan,
    &gEventObjectGraphicsInfo_LinkMay,
    &gEventObjectGraphicsInfo_Juan,
    &gEventObjectGraphicsInfo_Scott,
    &gEventObjectGraphicsInfo_Poochyena,
    &gEventObjectGraphicsInfo_Kyogre3,
    &gEventObjectGraphicsInfo_Groudon3,
    &gEventObjectGraphicsInfo_MysteryEventDeliveryman,
    &gEventObjectGraphicsInfo_Statue,
    &gEventObjectGraphicsInfo_Kirlia,
    &gEventObjectGraphicsInfo_Dusclops,
    &gEventObjectGraphicsInfo_UnionRoomAttendant,
    &gEventObjectGraphicsInfo_Sudowoodo,
    &gEventObjectGraphicsInfo_Mew,
    &gEventObjectGraphicsInfo_Red,
    &gEventObjectGraphicsInfo_Leaf,
    &gEventObjectGraphicsInfo_Deoxys,
    &gEventObjectGraphicsInfo_BirthIslandStone,
    &gEventObjectGraphicsInfo_Brandon,
    &gEventObjectGraphicsInfo_RubySapphireBrendan,
    &gEventObjectGraphicsInfo_RubySapphireMay,
    &gEventObjectGraphicsInfo_Lugia,
    &gEventObjectGraphicsInfo_HoOh,
};

const struct EventObjectGraphicsInfo *const gMauvilleOldManGraphicsInfoPointers[] = {
    &gEventObjectGraphicsInfo_Bard,
    &gEventObjectGraphicsInfo_Hipster,
    &gEventObjectGraphicsInfo_Trader,
    &gEventObjectGraphicsInfo_Storyteller,
    &gEventObjectGraphicsInfo_Giddy,
    &gEventObjectGraphicsInfo_UnusedMauvilleOldMan1,
    &gEventObjectGraphicsInfo_UnusedMauvilleOldMan2,
};
# 436 "src/event_object_movement.c" 2
# 1 "src/data/field_event_obj/field_effect_object_template_pointers.h" 1
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowSmall;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowMedium;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowLarge;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowExtraLarge;
const struct SpriteTemplate gFieldEffectObjectTemplate_TallGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_Ripple;
const struct SpriteTemplate gFieldEffectObjectTemplate_Ash;
const struct SpriteTemplate gFieldEffectObjectTemplate_SurfBlob;
const struct SpriteTemplate gFieldEffectObjectTemplate_Arrow;
const struct SpriteTemplate gFieldEffectObjectTemplate_GroundImpactDust;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopTallGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_SandFootprints;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopBigSplash;
const struct SpriteTemplate gFieldEffectObjectTemplate_Splash;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopSmallSplash;
const struct SpriteTemplate gFieldEffectObjectTemplate_LongGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown16;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown17;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown18;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown19;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown20;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown21;
const struct SpriteTemplate gFieldEffectObjectTemplate_BerryTreeGrowthSparkle;
const struct SpriteTemplate gFieldEffectObjectTemplate_DeepSandFootprints;
const struct SpriteTemplate gFieldEffectObjectTemplate_TreeDisguise;
const struct SpriteTemplate gFieldEffectObjectTemplate_MountainDisguise;
const struct SpriteTemplate gFieldEffectObjectTemplate_Bird;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeTireTracks;
const struct SpriteTemplate gFieldEffectObjectTemplate_SandDisguisePlaceholder;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown29;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShortGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_HotSpringsWater;
const struct SpriteTemplate gFieldEffectObjectTemplate_JumpOutOfAsh;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown33;
const struct SpriteTemplate gFieldEffectObjectTemplate_Bubbles;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown35;
const struct SpriteTemplate gFieldEffectObjectTemplate_Rayquaza;

const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[] = {
    &gFieldEffectObjectTemplate_ShadowSmall,
    &gFieldEffectObjectTemplate_ShadowMedium,
    &gFieldEffectObjectTemplate_ShadowLarge,
    &gFieldEffectObjectTemplate_ShadowExtraLarge,
    &gFieldEffectObjectTemplate_TallGrass,
    &gFieldEffectObjectTemplate_Ripple,
    &gFieldEffectObjectTemplate_Ash,
    &gFieldEffectObjectTemplate_SurfBlob,
    &gFieldEffectObjectTemplate_Arrow,
    &gFieldEffectObjectTemplate_GroundImpactDust,
    &gFieldEffectObjectTemplate_BikeHopTallGrass,
    &gFieldEffectObjectTemplate_SandFootprints,
    &gFieldEffectObjectTemplate_BikeHopBigSplash,
    &gFieldEffectObjectTemplate_Splash,
    &gFieldEffectObjectTemplate_BikeHopSmallSplash,
    &gFieldEffectObjectTemplate_LongGrass,
    &gFieldEffectObjectTemplate_Unknown16,
    &gFieldEffectObjectTemplate_Unknown17,
    &gFieldEffectObjectTemplate_Unknown18,
    &gFieldEffectObjectTemplate_Unknown19,
    &gFieldEffectObjectTemplate_Unknown20,
    &gFieldEffectObjectTemplate_Unknown21,
    &gFieldEffectObjectTemplate_BerryTreeGrowthSparkle,
    &gFieldEffectObjectTemplate_DeepSandFootprints,
    &gFieldEffectObjectTemplate_TreeDisguise,
    &gFieldEffectObjectTemplate_MountainDisguise,
    &gFieldEffectObjectTemplate_Bird,
    &gFieldEffectObjectTemplate_BikeTireTracks,
    &gFieldEffectObjectTemplate_SandDisguisePlaceholder,
    &gFieldEffectObjectTemplate_Unknown29,
    &gFieldEffectObjectTemplate_ShortGrass,
    &gFieldEffectObjectTemplate_HotSpringsWater,
    &gFieldEffectObjectTemplate_JumpOutOfAsh,
    &gFieldEffectObjectTemplate_Unknown33,
    &gFieldEffectObjectTemplate_Bubbles,
    &gFieldEffectObjectTemplate_Unknown35,
    &gFieldEffectObjectTemplate_Rayquaza,
};
# 437 "src/event_object_movement.c" 2
# 1 "src/data/field_event_obj/event_object_pic_tables.h" 1
const struct SpriteFrameImage gEventObjectPicTable_BrendanNormal[] = {
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanRunning + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BrendanMachBike[] = {
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanMachBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BrendanAcroBike[] = {
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 12 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 13 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 14 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 15 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 16 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 17 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 18 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 19 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 20 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 21 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 22 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 23 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 24 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 25 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanAcroBike + (4 * 4 * 26 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BrendanSurfing[] = {
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanSurfing + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BrendanUnderwater[] = {
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BrendanFieldMove[] = {
    {.data = (u8 *)gEventObjectPic_BrendanFieldMove + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFieldMove + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFieldMove + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFieldMove + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFieldMove + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_QuintyPlump[] = {
    {.data = (u8 *)gEventObjectPic_QuintyPlump + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_QuintyPlump + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_QuintyPlump + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_QuintyPlump + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_QuintyPlump + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_QuintyPlump + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_QuintyPlump + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_NinjaBoy[] = {
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NinjaBoy + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Twin[] = {
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Twin + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Boy1[] = {
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Girl1[] = {
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Boy2[] = {
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Girl2[] = {
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_LittleBoy[] = {
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleBoy + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_LittleGirl[] = {
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LittleGirl + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Boy3[] = {
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Boy3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Girl3[] = {
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Girl3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_RichBoy[] = {
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RichBoy + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Woman1[] = {
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_FatMan[] = {
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FatMan + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_PokefanF[] = {
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Man1[] = {
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Woman2[] = {
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_ExpertM[] = {
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_ExpertF[] = {
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ExpertF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Man2[] = {
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Woman3[] = {
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_PokefanM[] = {
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PokefanM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Woman4[] = {
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman4 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Cook[] = {
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cook + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_LinkReceptionist[] = {
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LinkReceptionist + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_OldMan[] = {
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_OldWoman[] = {
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OldWoman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Camper[] = {
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Camper + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Picnicker[] = {
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Picnicker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Man3[] = {
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Woman5[] = {
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Woman5 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Youngster[] = {
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Youngster + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BugCatcher[] = {
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BugCatcher + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_PsychicM[] = {
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PsychicM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_SchoolKidM[] = {
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SchoolKidM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Maniac[] = {
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maniac + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_HexManiac[] = {
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HexManiac + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_SwimmerM[] = {
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_SwimmerF[] = {
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SwimmerF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BlackBelt[] = {
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BlackBelt + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Beauty[] = {
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Beauty + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Scientist1[] = {
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Lass[] = {
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lass + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Gentleman[] = {
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Gentleman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Sailor[] = {
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sailor + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Fisherman[] = {
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Fisherman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_RunningTriathleteM[] = {
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_RunningTriathleteF[] = {
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RunningTriathleteF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_TuberF[] = {
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberF + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_TuberM[] = {
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberM + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Hiker[] = {
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Hiker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_CyclingTriathleteM[] = {
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteM + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_CyclingTriathleteF[] = {
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CyclingTriathleteF + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Nurse[] = {
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Nurse + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_ItemBall[] = {
    {.data = (u8 *)gEventObjectPic_ItemBall, .size = sizeof gEventObjectPic_ItemBall},
};

const struct SpriteFrameImage gEventObjectPicTable_ProfBirch[] = {
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ProfBirch + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Man4[] = {
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man4 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Man5[] = {
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Man5 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_ReporterM[] = {
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_ReporterF[] = {
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ReporterF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MauvilleOldMan1[] = {
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MauvilleOldMan2[] = {
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MauvilleOldMan2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_UnusedNatuDoll[] = {
    {.data = (u8 *)gEventObjectPic_UnusedNatuDoll, .size = sizeof gEventObjectPic_UnusedNatuDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_UnusedMagnemiteDoll[] = {
    {.data = (u8 *)gEventObjectPic_UnusedMagnemiteDoll, .size = sizeof gEventObjectPic_UnusedMagnemiteDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_UnusedSquirtleDoll[] = {
    {.data = (u8 *)gEventObjectPic_UnusedSquirtleDoll, .size = sizeof gEventObjectPic_UnusedSquirtleDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_UnusedWooperDoll[] = {
    {.data = (u8 *)gEventObjectPic_UnusedWooperDoll, .size = sizeof gEventObjectPic_UnusedWooperDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_UnusedPikachuDoll[] = {
    {.data = (u8 *)gEventObjectPic_UnusedPikachuDoll, .size = sizeof gEventObjectPic_UnusedPikachuDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_UnusedPorygon2Doll[] = {
    {.data = (u8 *)gEventObjectPic_UnusedPorygon2Doll, .size = sizeof gEventObjectPic_UnusedPorygon2Doll},
};

const struct SpriteFrameImage gEventObjectPicTable_CuttableTree[] = {
    {.data = (u8 *)gEventObjectPic_CuttableTree + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CuttableTree + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CuttableTree + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CuttableTree + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MartEmployee[] = {
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MartEmployee + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_RooftopSaleWoman[] = {
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RooftopSaleWoman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Teala[] = {
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Teala + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BreakableRock[] = {
    {.data = (u8 *)gEventObjectPic_BreakableRock + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BreakableRock + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BreakableRock + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BreakableRock + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_PushableBoulder[] = {
    {.data = (u8 *)gEventObjectPic_PushableBoulder, .size = sizeof gEventObjectPic_PushableBoulder},
};

const struct SpriteFrameImage gEventObjectPicTable_MrBrineysBoat[] = {
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MrBrineysBoat + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Truck[] = {
    {.data = (u8 *)gEventObjectPic_Truck, .size = sizeof gEventObjectPic_Truck},
};

const struct SpriteFrameImage gEventObjectPicTable_VigorothCarryingBox[] = {
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_VigorothFacingAway[] = {
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BirchsBag[] = {
    {.data = (u8 *)gEventObjectPic_BirchsBag, .size = sizeof gEventObjectPic_BirchsBag},
};

const struct SpriteFrameImage gEventObjectPicTable_EnemyZigzagoon[] = {
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_EnemyZigzagoon + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Poochyena[] = {
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Poochyena + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Artist[] = {
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Artist + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MayNormal[] = {
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayRunning + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MayMachBike[] = {
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayMachBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MayAcroBike[] = {
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 12 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 13 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 14 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 15 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 16 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 17 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 18 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 19 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 20 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 21 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 22 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 23 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 24 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 25 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayAcroBike + (4 * 4 * 26 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MaySurfing[] = {
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MaySurfing + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MayUnderwater[] = {
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MayFieldMove[] = {
    {.data = (u8 *)gEventObjectPic_MayFieldMove + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFieldMove + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFieldMove + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFieldMove + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFieldMove + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Cameraman[] = {
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Cameraman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MovingBox[] = {
    {.data = (u8 *)gEventObjectPic_MovingBox, .size = sizeof gEventObjectPic_MovingBox},
};

const struct SpriteFrameImage gEventObjectPicTable_CableCar[] = {
    {.data = (u8 *)gEventObjectPic_CableCar, .size = sizeof gEventObjectPic_CableCar},
};

const struct SpriteFrameImage gEventObjectPicTable_Scientist2[] = {
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scientist2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_DevonEmployee[] = {
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DevonEmployee + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_AquaMemberM[] = {
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_AquaMemberF[] = {
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AquaMemberF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MagmaMemberM[] = {
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MagmaMemberF[] = {
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagmaMemberF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Sidney[] = {
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sidney + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Phoebe[] = {
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Phoebe + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Glacia[] = {
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Glacia + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Drake[] = {
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Drake + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Roxanne[] = {
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Roxanne + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Brawly[] = {
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brawly + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Wattson[] = {
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wattson + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Flannery[] = {
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Flannery + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Norman[] = {
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Norman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Winona[] = {
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Winona + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Liza[] = {
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Liza + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Tate[] = {
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tate + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Wallace[] = {
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wallace + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Steven[] = {
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Steven + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Wally[] = {
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wally + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_RubySapphireLittleBoy[] = {
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireLittleBoy + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BrendanFishing[] = {
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanFishing + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MayFishing[] = {
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayFishing + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_HotSpringsOldWoman[] = {
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HotSpringsOldWoman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_SSTidal[] = {
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
    {.data = (u8 *)gEventObjectPic_SSTidal, .size = sizeof gEventObjectPic_SSTidal},
};

const struct SpriteFrameImage gEventObjectPicTable_SubmarineShadow[] = {
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
    {.data = (u8 *)gEventObjectPic_SubmarineShadow, .size = sizeof gEventObjectPic_SubmarineShadow},
};

const struct SpriteFrameImage gEventObjectPicTable_PichuDoll[] = {
    {.data = (u8 *)gEventObjectPic_PichuDoll, .size = sizeof gEventObjectPic_PichuDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_PikachuDoll[] = {
    {.data = (u8 *)gEventObjectPic_PikachuDoll, .size = sizeof gEventObjectPic_PikachuDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_MarillDoll[] = {
    {.data = (u8 *)gEventObjectPic_MarillDoll, .size = sizeof gEventObjectPic_MarillDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_TogepiDoll[] = {
    {.data = (u8 *)gEventObjectPic_TogepiDoll, .size = sizeof gEventObjectPic_TogepiDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_CyndaquilDoll[] = {
    {.data = (u8 *)gEventObjectPic_CyndaquilDoll, .size = sizeof gEventObjectPic_CyndaquilDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_ChikoritaDoll[] = {
    {.data = (u8 *)gEventObjectPic_ChikoritaDoll, .size = sizeof gEventObjectPic_ChikoritaDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_TotodileDoll[] = {
    {.data = (u8 *)gEventObjectPic_TotodileDoll, .size = sizeof gEventObjectPic_TotodileDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_JigglypuffDoll[] = {
    {.data = (u8 *)gEventObjectPic_JigglypuffDoll, .size = sizeof gEventObjectPic_JigglypuffDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_MeowthDoll[] = {
    {.data = (u8 *)gEventObjectPic_MeowthDoll, .size = sizeof gEventObjectPic_MeowthDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_ClefairyDoll[] = {
    {.data = (u8 *)gEventObjectPic_ClefairyDoll, .size = sizeof gEventObjectPic_ClefairyDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_DittoDoll[] = {
    {.data = (u8 *)gEventObjectPic_DittoDoll, .size = sizeof gEventObjectPic_DittoDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_SmoochumDoll[] = {
    {.data = (u8 *)gEventObjectPic_SmoochumDoll, .size = sizeof gEventObjectPic_SmoochumDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_TreeckoDoll[] = {
    {.data = (u8 *)gEventObjectPic_TreeckoDoll, .size = sizeof gEventObjectPic_TreeckoDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_TorchicDoll[] = {
    {.data = (u8 *)gEventObjectPic_TorchicDoll, .size = sizeof gEventObjectPic_TorchicDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_MudkipDoll[] = {
    {.data = (u8 *)gEventObjectPic_MudkipDoll, .size = sizeof gEventObjectPic_MudkipDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_DuskullDoll[] = {
    {.data = (u8 *)gEventObjectPic_DuskullDoll, .size = sizeof gEventObjectPic_DuskullDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_WynautDoll[] = {
    {.data = (u8 *)gEventObjectPic_WynautDoll, .size = sizeof gEventObjectPic_WynautDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BaltoyDoll[] = {
    {.data = (u8 *)gEventObjectPic_BaltoyDoll, .size = sizeof gEventObjectPic_BaltoyDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_KecleonDoll[] = {
    {.data = (u8 *)gEventObjectPic_KecleonDoll, .size = sizeof gEventObjectPic_KecleonDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_AzurillDoll[] = {
    {.data = (u8 *)gEventObjectPic_AzurillDoll, .size = sizeof gEventObjectPic_AzurillDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_SkittyDoll[] = {
    {.data = (u8 *)gEventObjectPic_SkittyDoll, .size = sizeof gEventObjectPic_SkittyDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_SwabluDoll[] = {
    {.data = (u8 *)gEventObjectPic_SwabluDoll, .size = sizeof gEventObjectPic_SwabluDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_GulpinDoll[] = {
    {.data = (u8 *)gEventObjectPic_GulpinDoll, .size = sizeof gEventObjectPic_GulpinDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_LotadDoll[] = {
    {.data = (u8 *)gEventObjectPic_LotadDoll, .size = sizeof gEventObjectPic_LotadDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_SeedotDoll[] = {
    {.data = (u8 *)gEventObjectPic_SeedotDoll, .size = sizeof gEventObjectPic_SeedotDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_PikaCushion[] = {
    {.data = (u8 *)gEventObjectPic_PikaCushion, .size = sizeof gEventObjectPic_PikaCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_RoundCushion[] = {
    {.data = (u8 *)gEventObjectPic_RoundCushion, .size = sizeof gEventObjectPic_RoundCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_KissCushion[] = {
    {.data = (u8 *)gEventObjectPic_KissCushion, .size = sizeof gEventObjectPic_KissCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_ZigzagCushion[] = {
    {.data = (u8 *)gEventObjectPic_ZigzagCushion, .size = sizeof gEventObjectPic_ZigzagCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_SpinCushion[] = {
    {.data = (u8 *)gEventObjectPic_SpinCushion, .size = sizeof gEventObjectPic_SpinCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_DiamondCushion[] = {
    {.data = (u8 *)gEventObjectPic_DiamondCushion, .size = sizeof gEventObjectPic_DiamondCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_BallCushion[] = {
    {.data = (u8 *)gEventObjectPic_BallCushion, .size = sizeof gEventObjectPic_BallCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_GrassCushion[] = {
    {.data = (u8 *)gEventObjectPic_GrassCushion, .size = sizeof gEventObjectPic_GrassCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_FireCushion[] = {
    {.data = (u8 *)gEventObjectPic_FireCushion, .size = sizeof gEventObjectPic_FireCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_WaterCushion[] = {
    {.data = (u8 *)gEventObjectPic_WaterCushion, .size = sizeof gEventObjectPic_WaterCushion},
};

const struct SpriteFrameImage gEventObjectPicTable_BigSnorlaxDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigSnorlaxDoll, .size = sizeof gEventObjectPic_BigSnorlaxDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigRhydonDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigRhydonDoll, .size = sizeof gEventObjectPic_BigRhydonDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigLaprasDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigLaprasDoll, .size = sizeof gEventObjectPic_BigLaprasDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigVenusaurDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigVenusaurDoll, .size = sizeof gEventObjectPic_BigVenusaurDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigCharizardDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigCharizardDoll, .size = sizeof gEventObjectPic_BigCharizardDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigBlastoiseDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigBlastoiseDoll, .size = sizeof gEventObjectPic_BigBlastoiseDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigWailmerDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigWailmerDoll, .size = sizeof gEventObjectPic_BigWailmerDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigRegirockDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigRegirockDoll, .size = sizeof gEventObjectPic_BigRegirockDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigRegiceDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigRegiceDoll, .size = sizeof gEventObjectPic_BigRegiceDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_BigRegisteelDoll[] = {
    {.data = (u8 *)gEventObjectPic_BigRegisteelDoll, .size = sizeof gEventObjectPic_BigRegisteelDoll},
};

const struct SpriteFrameImage gEventObjectPicTable_LatiasLatios[] = {
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LatiasLatios + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_GameboyKid[] = {
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GameboyKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_ContestJudge[] = {
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ContestJudge + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BrendanWatering[] = {
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BrendanWatering + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MayWatering[] = {
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MayWatering + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BrendanDecorating[] = {
    {.data = (u8 *)gEventObjectPic_BrendanDecorating, .size = sizeof gEventObjectPic_BrendanDecorating},
};

const struct SpriteFrameImage gEventObjectPicTable_MayDecorating[] = {
    {.data = (u8 *)gEventObjectPic_MayDecorating, .size = sizeof gEventObjectPic_MayDecorating},
};

const struct SpriteFrameImage gEventObjectPicTable_Archie[] = {
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Archie + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Maxie[] = {
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Maxie + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_KyogreFront[] = {
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_GroudonFront[] = {
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_KyogreSide[] = {
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_GroudonSide[] = {
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Fossil[] = {
    {.data = (u8 *)gEventObjectPic_Fossil, .size = sizeof gEventObjectPic_Fossil},
};

const struct SpriteFrameImage gEventObjectPicTable_Regi[] = {
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
    {.data = (u8 *)gEventObjectPic_Regi, .size = sizeof gEventObjectPic_Regi},
};

const struct SpriteFrameImage gEventObjectPicTable_Skitty[] = {
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Skitty + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Kecleon[] = {
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kecleon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Rayquaza[] = {
    {.data = (u8 *)gEventObjectPic_Rayquaza + (8 * 8 * 0 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Rayquaza + (8 * 8 * 1 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Rayquaza + (8 * 8 * 2 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Rayquaza + (8 * 8 * 3 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Rayquaza + (8 * 8 * 4 * 64)/2, .size = (8 * 8 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_RayquazaStill[] = {
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
    {.data = (u8 *)gEventObjectPic_RayquazaStill, .size = sizeof gEventObjectPic_RayquazaStill},
};

const struct SpriteFrameImage gEventObjectPicTable_Zigzagoon[] = {
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Zigzagoon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Pikachu[] = {
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Azumarill[] = {
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azumarill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Wingull[] = {
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Wingull + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_TuberMSwimming[] = {
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TuberMSwimming + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Azurill[] = {
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Azurill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Mom[] = {
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mom + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Scott[] = {
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Scott + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Juan[] = {
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Juan + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_MysteryEventDeliveryman[] = {
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MysteryEventDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Statue[] = {
    {.data = (u8 *)gEventObjectPic_Statue, .size = sizeof gEventObjectPic_Statue},
};

const struct SpriteFrameImage gEventObjectPicTable_Dusclops[] = {
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Dusclops + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Kirlia[] = {
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Kirlia + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_UnionRoomAttendant[] = {
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_UnionRoomAttendant + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Sudowoodo[] = {
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Sudowoodo + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Mew[] = {
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Mew + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Red[] = {
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Red + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Leaf[] = {
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Leaf + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Deoxys[] = {
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_BirthIslandStone[] = {
    {.data = (u8 *)gEventObjectPic_BirthIslandStone, .size = sizeof gEventObjectPic_BirthIslandStone},
};

const struct SpriteFrameImage gEventObjectPicTable_Anabel[] = {
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Anabel + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Tucker[] = {
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Tucker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Spenser[] = {
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Spenser + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Greta[] = {
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Greta + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Noland[] = {
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Noland + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Lucy[] = {
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lucy + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Brandon[] = {
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Brandon + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_Lugia[] = {
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_HoOh[] = {
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_RubySapphireBrendan[] = {
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireBrendanNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gEventObjectPicTable_RubySapphireMay[] = {
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RubySapphireMayNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};
# 438 "src/event_object_movement.c" 2
# 1 "src/data/field_event_obj/event_object_anims.h" 1
const union AnimCmd gEventObjectImageAnim_StayStill[] =
{
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpFaceSouth[] =
{
    {.frame = {0, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpFaceNorth[] =
{
    {.frame = {1, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpFaceWest[] =
{
    {.frame = {2, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpFaceEast[] =
{
    {.frame = {2, 16, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoSouth[] =
{
    {.frame = {3, 8}},
    {.frame = {0, 8}},
    {.frame = {3, 8, .hFlip = 1}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoNorth[] =
{
    {.frame = {4, 8}},
    {.frame = {1, 8}},
    {.frame = {4, 8, .hFlip = 1}},
    {.frame = {1, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoWest[] =
{
    {.frame = {5, 8}},
    {.frame = {2, 8}},
    {.frame = {6, 8}},
    {.frame = {2, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoEast[] =
{
    {.frame = {5, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.frame = {6, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFastSouth[] =
{
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {3, 4, .hFlip = 1}},
    {.frame = {0, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFastNorth[] =
{
    {.frame = {4, 4}},
    {.frame = {1, 4}},
    {.frame = {4, 4, .hFlip = 1}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFastWest[] =
{
    {.frame = {5, 4}},
    {.frame = {2, 4}},
    {.frame = {6, 4}},
    {.frame = {2, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFastEast[] =
{
    {.frame = {5, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {6, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFasterSouth[] =
{
    {.frame = {3, 2}},
    {.frame = {0, 2}},
    {.frame = {3, 2, .hFlip = 1}},
    {.frame = {0, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFasterNorth[] =
{
    {.frame = {4, 2}},
    {.frame = {1, 2}},
    {.frame = {4, 2, .hFlip = 1}},
    {.frame = {1, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFasterWest[] =
{
    {.frame = {5, 2}},
    {.frame = {2, 2}},
    {.frame = {6, 2}},
    {.frame = {2, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFasterEast[] =
{
    {.frame = {5, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {6, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFastestSouth[] =
{
    {.frame = {3, 1}},
    {.frame = {0, 1}},
    {.frame = {3, 1, .hFlip = 1}},
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFastestNorth[] =
{
    {.frame = {4, 1}},
    {.frame = {1, 1}},
    {.frame = {4, 1, .hFlip = 1}},
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFastestWest[] =
{
    {.frame = {5, 1}},
    {.frame = {2, 1}},
    {.frame = {6, 1}},
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_QuintyPlumpGoFastestEast[] =
{
    {.frame = {5, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.frame = {6, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_FaceSouth[] =
{
    {.frame = {0, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_FaceNorth[] =
{
    {.frame = {1, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_FaceWest[] =
{
    {.frame = {2, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_FaceEast[] =
{
    {.frame = {2, 16, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoSouth[] =
{
    {.frame = {3, 8}},
    {.frame = {0, 8}},
    {.frame = {4, 8}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoNorth[] =
{
    {.frame = {5, 8}},
    {.frame = {1, 8}},
    {.frame = {6, 8}},
    {.frame = {1, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoWest[] =
{
    {.frame = {7, 8}},
    {.frame = {2, 8}},
    {.frame = {8, 8}},
    {.frame = {2, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoEast[] =
{
    {.frame = {7, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.frame = {8, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFastSouth[] =
{
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {4, 4}},
    {.frame = {0, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFastNorth[] =
{
    {.frame = {5, 4}},
    {.frame = {1, 4}},
    {.frame = {6, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFastWest[] =
{
    {.frame = {7, 4}},
    {.frame = {2, 4}},
    {.frame = {8, 4}},
    {.frame = {2, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFastEast[] =
{
    {.frame = {7, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {8, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFasterSouth[] =
{
    {.frame = {3, 2}},
    {.frame = {0, 2}},
    {.frame = {4, 2}},
    {.frame = {0, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFasterNorth[] =
{
    {.frame = {5, 2}},
    {.frame = {1, 2}},
    {.frame = {6, 2}},
    {.frame = {1, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFasterWest[] =
{
    {.frame = {7, 2}},
    {.frame = {2, 2}},
    {.frame = {8, 2}},
    {.frame = {2, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFasterEast[] =
{
    {.frame = {7, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {8, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFastestSouth[] =
{
    {.frame = {3, 1}},
    {.frame = {0, 1}},
    {.frame = {4, 1}},
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFastestNorth[] =
{
    {.frame = {5, 1}},
    {.frame = {1, 1}},
    {.frame = {6, 1}},
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFastestWest[] =
{
    {.frame = {7, 1}},
    {.frame = {2, 1}},
    {.frame = {8, 1}},
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GoFastestEast[] =
{
    {.frame = {7, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.frame = {8, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_RunSouth[] =
{
    {.frame = {12, 5}},
    {.frame = {9, 3}},
    {.frame = {13, 5}},
    {.frame = {9, 3}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_RunNorth[] =
{
    {.frame = {14, 5}},
    {.frame = {10, 3}},
    {.frame = {15, 5}},
    {.frame = {10, 3}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_RunWest[] =
{
    {.frame = {16, 5}},
    {.frame = {11, 3}},
    {.frame = {17, 5}},
    {.frame = {11, 3}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_RunEast[] =
{
    {.frame = {16, 5, .hFlip = 1}},
    {.frame = {11, 3, .hFlip = 1}},
    {.frame = {17, 5, .hFlip = 1}},
    {.frame = {11, 3, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_FieldMove[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 8}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_GetOnOffSurfBlobSouth[] =
{
    {.frame = {9, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GetOnOffSurfBlobNorth[] =
{
    {.frame = {10, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GetOnOffSurfBlobWest[] =
{
    {.frame = {11, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_GetOnOffSurfBlobEast[] =
{
    {.frame = {11, 32, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_BunnyHoppyBackWheelSouth[] =
{
    {.frame = {9, 4}},
    {.frame = {10, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BunnyHoppyBackWheelNorth[] =
{
    {.frame = {13, 4}},
    {.frame = {14, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BunnyHoppyBackWheelWest[] =
{
    {.frame = {17, 4}},
    {.frame = {18, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BunnyHoppyBackWheelEast[] =
{
    {.frame = {17, 4, .hFlip = 1}},
    {.frame = {18, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BunnyHoppyFrontWheelSouth[] =
{
    {.frame = {11, 4}},
    {.frame = {12, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BunnyHoppyFrontWheelNorth[] =
{
    {.frame = {15, 4}},
    {.frame = {16, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BunnyHoppyFrontWheelWest[] =
{
    {.frame = {19, 4}},
    {.frame = {20, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BunnyHoppyFrontWheelEast[] =
{
    {.frame = {19, 4, .hFlip = 1}},
    {.frame = {20, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_StandingWheelieBackWheelSouth[] =
{
    {.frame = {9, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_StandingWheelieBackWheelNorth[] =
{
    {.frame = {13, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_StandingWheelieBackWheelWest[] =
{
    {.frame = {17, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_StandingWheelieBackWheelEast[] =
{
    {.frame = {17, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_StandingWheelieFrontWheelSouth[] =
{
    {.frame = {11, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_StandingWheelieFrontWheelNorth[] =
{
    {.frame = {15, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_StandingWheelieFrontWheelWest[] =
{
    {.frame = {19, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_StandingWheelieFrontWheelEast[] =
{
    {.frame = {19, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_MovingWheelieSouth[] =
{
    {.frame = {21, 4}},
    {.frame = {10, 4}},
    {.frame = {22, 4}},
    {.frame = {10, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_MovingWheelieNorth[] =
{
    {.frame = {23, 4}},
    {.frame = {14, 4}},
    {.frame = {24, 4}},
    {.frame = {14, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_MovingWheelieWest[] =
{
    {.frame = {25, 4}},
    {.frame = {18, 4}},
    {.frame = {26, 4}},
    {.frame = {18, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_MovingWheelieEast[] =
{
    {.frame = {25, 4, .hFlip = 1}},
    {.frame = {18, 4, .hFlip = 1}},
    {.frame = {26, 4, .hFlip = 1}},
    {.frame = {18, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_BerryTreeStage0[] =
{
    {.frame = {0, 32}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BerryTreeStage1[] =
{
    {.frame = {1, 32}},
    {.frame = {2, 32}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BerryTreeStage2[] =
{
    {.frame = {3, 48}},
    {.frame = {4, 48}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BerryTreeStage3[] =
{
    {.frame = {5, 32}},
    {.frame = {5, 32}},
    {.frame = {6, 32}},
    {.frame = {6, 32}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_BerryTreeStage4[] =
{
    {.frame = {7, 48}},
    {.frame = {7, 48}},
    {.frame = {8, 48}},
    {.frame = {8, 48}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_NurseBow[] =
{
    {.frame = {0, 8}},
    {.frame = {9, 32}},
    {.frame = {0, 8}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_RockBreak[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_TreeCut[] =
{
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_TakeOutRodSouth[] =
{
    {.frame = {8, 4}},
    {.frame = {9, 4}},
    {.frame = {10, 4}},
    {.frame = {11, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_TakeOutRodNorth[] =
{
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_TakeOutRodWest[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_TakeOutRodEast[] =
{
    {.frame = {0, 4, .hFlip = 1}},
    {.frame = {1, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {3, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_PutAwayRodSouth[] =
{
    {.frame = {11, 4}},
    {.frame = {10, 6}},
    {.frame = {9, 6}},
    {.frame = {8, 6}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_PutAwayRodNorth[] =
{
    {.frame = {7, 4}},
    {.frame = {6, 6}},
    {.frame = {5, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_PutAwayRodWest[] =
{
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_PutAwayRodEast[] =
{
    {.frame = {3, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {1, 4, .hFlip = 1}},
    {.frame = {0, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gEventObjectImageAnim_HookedPokemonSouth[] =
{
    {.frame = {10, 6}},
    {.frame = {11, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {11, 30}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_HookedPokemonNorth[] =
{
    {.frame = {6, 6}},
    {.frame = {7, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {7, 30}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_HookedPokemonWest[] =
{
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {3, 30}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_HookedPokemonEast[] =
{
    {.frame = {2, 6, .hFlip = 1}},
    {.frame = {3, 6, .hFlip = 1}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {3, 30, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AffineAnimCmd gEventObjectRotScalAnim_8508FD8[] =
{
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 1, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 7}},
    {.jump = {.type = 0x7FFE, .target = 0}},
};

const union AffineAnimCmd gEventObjectRotScalAnim_8509008[] =
{
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = -1, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 15}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 1, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 15}},
    {.jump = {.type = 0x7FFE, .target = 0}},
};

const union AffineAnimCmd gEventObjectRotScalAnim_8509040[] =
{
    {.frame = {.xScale = 0x100, .yScale = 0x100, .rotation = 10, .duration = 0}},
    {.type = 0x7FFF},
};

const union AffineAnimCmd gEventObjectRotScalAnim_8509050[] =
{
    {.frame = {.xScale = 0x100, .yScale = 0x100, .rotation = 10, .duration = 0}},
    {.type = 0x7FFF},
};

const union AffineAnimCmd gEventObjectRotScalAnim_8509060[] =
{
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = -1, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 8}},
    {.type = 0x7FFF},
};

const union AffineAnimCmd gEventObjectRotScalAnim_8509078[] =
{
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 1, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 8}},
    {.type = 0x7FFF},
};

const union AnimCmd gEventObjectImageAnim_HoOhFlapWings[] =
{
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_HoOhStayStill[] =
{
    {.frame = {3, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gEventObjectImageAnimTable_Inanimate[] = {
    gEventObjectImageAnim_StayStill,
};

const union AnimCmd *const gEventObjectImageAnimTable_QuintyPlump[] = {
    gEventObjectImageAnim_QuintyPlumpFaceSouth,
    gEventObjectImageAnim_QuintyPlumpFaceNorth,
    gEventObjectImageAnim_QuintyPlumpFaceWest,
    gEventObjectImageAnim_QuintyPlumpFaceEast,
    gEventObjectImageAnim_QuintyPlumpGoSouth,
    gEventObjectImageAnim_QuintyPlumpGoNorth,
    gEventObjectImageAnim_QuintyPlumpGoWest,
    gEventObjectImageAnim_QuintyPlumpGoEast,
    gEventObjectImageAnim_QuintyPlumpGoFastSouth,
    gEventObjectImageAnim_QuintyPlumpGoFastNorth,
    gEventObjectImageAnim_QuintyPlumpGoFastWest,
    gEventObjectImageAnim_QuintyPlumpGoFastEast,
    gEventObjectImageAnim_QuintyPlumpGoFasterSouth,
    gEventObjectImageAnim_QuintyPlumpGoFasterNorth,
    gEventObjectImageAnim_QuintyPlumpGoFasterWest,
    gEventObjectImageAnim_QuintyPlumpGoFasterEast,
    gEventObjectImageAnim_QuintyPlumpGoFastestSouth,
    gEventObjectImageAnim_QuintyPlumpGoFastestNorth,
    gEventObjectImageAnim_QuintyPlumpGoFastestWest,
    gEventObjectImageAnim_QuintyPlumpGoFastestEast,
};

const union AnimCmd *const gEventObjectImageAnimTable_Standard[] = {
    gEventObjectImageAnim_FaceSouth,
    gEventObjectImageAnim_FaceNorth,
    gEventObjectImageAnim_FaceWest,
    gEventObjectImageAnim_FaceEast,
    gEventObjectImageAnim_GoSouth,
    gEventObjectImageAnim_GoNorth,
    gEventObjectImageAnim_GoWest,
    gEventObjectImageAnim_GoEast,
    gEventObjectImageAnim_GoFastSouth,
    gEventObjectImageAnim_GoFastNorth,
    gEventObjectImageAnim_GoFastWest,
    gEventObjectImageAnim_GoFastEast,
    gEventObjectImageAnim_GoFasterSouth,
    gEventObjectImageAnim_GoFasterNorth,
    gEventObjectImageAnim_GoFasterWest,
    gEventObjectImageAnim_GoFasterEast,
    gEventObjectImageAnim_GoFastestSouth,
    gEventObjectImageAnim_GoFastestNorth,
    gEventObjectImageAnim_GoFastestWest,
    gEventObjectImageAnim_GoFastestEast,
};

const union AnimCmd *const gEventObjectImageAnimTable_HoOh[] = {
    gEventObjectImageAnim_FaceSouth,
    gEventObjectImageAnim_FaceNorth,
    gEventObjectImageAnim_FaceWest,
    gEventObjectImageAnim_FaceEast,
    gEventObjectImageAnim_HoOhFlapWings,
    gEventObjectImageAnim_HoOhStayStill,
    gEventObjectImageAnim_GoWest,
    gEventObjectImageAnim_GoEast,
    gEventObjectImageAnim_GoFastSouth,
    gEventObjectImageAnim_GoFastNorth,
    gEventObjectImageAnim_GoFastWest,
    gEventObjectImageAnim_GoFastEast,
    gEventObjectImageAnim_GoFasterSouth,
    gEventObjectImageAnim_GoFasterNorth,
    gEventObjectImageAnim_GoFasterWest,
    gEventObjectImageAnim_GoFasterEast,
    gEventObjectImageAnim_GoFastestSouth,
    gEventObjectImageAnim_GoFastestNorth,
    gEventObjectImageAnim_GoFastestWest,
    gEventObjectImageAnim_GoFastestEast,
};

const union AnimCmd *const gEventObjectImageAnimTable_Groudon3[] = {
    gEventObjectImageAnim_FaceSouth,
    gEventObjectImageAnim_FaceNorth,
    gEventObjectImageAnim_FaceWest,
    gEventObjectImageAnim_FaceEast,
    gEventObjectImageAnim_GoSouth,
    gEventObjectImageAnim_GoEast,
    gEventObjectImageAnim_GoWest,
    gEventObjectImageAnim_GoEast,
    gEventObjectImageAnim_GoFastSouth,
    gEventObjectImageAnim_GoFastEast,
    gEventObjectImageAnim_GoFastWest,
    gEventObjectImageAnim_GoFastEast,
    gEventObjectImageAnim_GoFasterSouth,
    gEventObjectImageAnim_GoFasterEast,
    gEventObjectImageAnim_GoFasterWest,
    gEventObjectImageAnim_GoFasterEast,
    gEventObjectImageAnim_GoFastestSouth,
    gEventObjectImageAnim_GoFastestEast,
    gEventObjectImageAnim_GoFastestWest,
    gEventObjectImageAnim_GoFastestEast,
};

const union AnimCmd gEventObjectImageAnim_85091F0[] =
{
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_85091F8[] =
{
    {.frame = {4, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_8509200[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_8509208[] =
{
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_8509210[] =
{
    {.frame = {3, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_8509218[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_8509220[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_8509228[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gEventObjectImageAnim_8509230[] =
{
    {.frame = {3, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gEventObjectImageAnimTable_Rayquaza2[] = {
    gEventObjectImageAnim_8509218,
    gEventObjectImageAnim_8509220,
    gEventObjectImageAnim_8509228,
    gEventObjectImageAnim_8509230,
    gEventObjectImageAnim_8509200,
    gEventObjectImageAnim_85091F8,
    gEventObjectImageAnim_8509208,
    gEventObjectImageAnim_8509210,
    gEventObjectImageAnim_8509200,
    gEventObjectImageAnim_85091F8,
    gEventObjectImageAnim_85091F0,
    gEventObjectImageAnim_8509210,
    gEventObjectImageAnim_8509200,
    gEventObjectImageAnim_85091F8,
    gEventObjectImageAnim_8509208,
    gEventObjectImageAnim_8509210,
    gEventObjectImageAnim_8509200,
    gEventObjectImageAnim_85091F8,
    gEventObjectImageAnim_8509208,
    gEventObjectImageAnim_8509210,
};

const union AnimCmd *const gEventObjectImageAnimTable_BrendanMayNormal[] = {
    gEventObjectImageAnim_FaceSouth,
    gEventObjectImageAnim_FaceNorth,
    gEventObjectImageAnim_FaceWest,
    gEventObjectImageAnim_FaceEast,
    gEventObjectImageAnim_GoSouth,
    gEventObjectImageAnim_GoNorth,
    gEventObjectImageAnim_GoWest,
    gEventObjectImageAnim_GoEast,
    gEventObjectImageAnim_GoFastSouth,
    gEventObjectImageAnim_GoFastNorth,
    gEventObjectImageAnim_GoFastWest,
    gEventObjectImageAnim_GoFastEast,
    gEventObjectImageAnim_GoFasterSouth,
    gEventObjectImageAnim_GoFasterNorth,
    gEventObjectImageAnim_GoFasterWest,
    gEventObjectImageAnim_GoFasterEast,
    gEventObjectImageAnim_GoFastestSouth,
    gEventObjectImageAnim_GoFastestNorth,
    gEventObjectImageAnim_GoFastestWest,
    gEventObjectImageAnim_GoFastestEast,
    gEventObjectImageAnim_RunSouth,
    gEventObjectImageAnim_RunNorth,
    gEventObjectImageAnim_RunWest,
    gEventObjectImageAnim_RunEast,
};

const union AnimCmd *const gEventObjectImageAnimTable_AcroBike[] = {
    gEventObjectImageAnim_FaceSouth,
    gEventObjectImageAnim_FaceNorth,
    gEventObjectImageAnim_FaceWest,
    gEventObjectImageAnim_FaceEast,
    gEventObjectImageAnim_GoSouth,
    gEventObjectImageAnim_GoNorth,
    gEventObjectImageAnim_GoWest,
    gEventObjectImageAnim_GoEast,
    gEventObjectImageAnim_GoFastSouth,
    gEventObjectImageAnim_GoFastNorth,
    gEventObjectImageAnim_GoFastWest,
    gEventObjectImageAnim_GoFastEast,
    gEventObjectImageAnim_GoFasterSouth,
    gEventObjectImageAnim_GoFasterNorth,
    gEventObjectImageAnim_GoFasterWest,
    gEventObjectImageAnim_GoFasterEast,
    gEventObjectImageAnim_GoFastestSouth,
    gEventObjectImageAnim_GoFastestNorth,
    gEventObjectImageAnim_GoFastestWest,
    gEventObjectImageAnim_GoFastestEast,
    gEventObjectImageAnim_BunnyHoppyBackWheelSouth,
    gEventObjectImageAnim_BunnyHoppyBackWheelNorth,
    gEventObjectImageAnim_BunnyHoppyBackWheelWest,
    gEventObjectImageAnim_BunnyHoppyBackWheelEast,
    gEventObjectImageAnim_BunnyHoppyFrontWheelSouth,
    gEventObjectImageAnim_BunnyHoppyFrontWheelNorth,
    gEventObjectImageAnim_BunnyHoppyFrontWheelWest,
    gEventObjectImageAnim_BunnyHoppyFrontWheelEast,
    gEventObjectImageAnim_StandingWheelieBackWheelSouth,
    gEventObjectImageAnim_StandingWheelieBackWheelNorth,
    gEventObjectImageAnim_StandingWheelieBackWheelWest,
    gEventObjectImageAnim_StandingWheelieBackWheelEast,
    gEventObjectImageAnim_StandingWheelieFrontWheelSouth,
    gEventObjectImageAnim_StandingWheelieFrontWheelNorth,
    gEventObjectImageAnim_StandingWheelieFrontWheelWest,
    gEventObjectImageAnim_StandingWheelieFrontWheelEast,
    gEventObjectImageAnim_MovingWheelieSouth,
    gEventObjectImageAnim_MovingWheelieNorth,
    gEventObjectImageAnim_MovingWheelieWest,
    gEventObjectImageAnim_MovingWheelieEast,
};

const union AnimCmd *const gEventObjectImageAnimTable_Surfing[] = {
    gEventObjectImageAnim_FaceSouth,
    gEventObjectImageAnim_FaceNorth,
    gEventObjectImageAnim_FaceWest,
    gEventObjectImageAnim_FaceEast,
    gEventObjectImageAnim_GoSouth,
    gEventObjectImageAnim_GoNorth,
    gEventObjectImageAnim_GoWest,
    gEventObjectImageAnim_GoEast,
    gEventObjectImageAnim_GoFastSouth,
    gEventObjectImageAnim_GoFastNorth,
    gEventObjectImageAnim_GoFastWest,
    gEventObjectImageAnim_GoFastEast,
    gEventObjectImageAnim_GoFasterSouth,
    gEventObjectImageAnim_GoFasterNorth,
    gEventObjectImageAnim_GoFasterWest,
    gEventObjectImageAnim_GoFasterEast,
    gEventObjectImageAnim_GoFastestSouth,
    gEventObjectImageAnim_GoFastestNorth,
    gEventObjectImageAnim_GoFastestWest,
    gEventObjectImageAnim_GoFastestEast,
    gEventObjectImageAnim_GetOnOffSurfBlobSouth,
    gEventObjectImageAnim_GetOnOffSurfBlobNorth,
    gEventObjectImageAnim_GetOnOffSurfBlobWest,
    gEventObjectImageAnim_GetOnOffSurfBlobEast,
};

const union AnimCmd *const gEventObjectImageAnimTable_Nurse[] = {
    gEventObjectImageAnim_FaceSouth,
    gEventObjectImageAnim_FaceNorth,
    gEventObjectImageAnim_FaceWest,
    gEventObjectImageAnim_FaceEast,
    gEventObjectImageAnim_GoSouth,
    gEventObjectImageAnim_GoNorth,
    gEventObjectImageAnim_GoWest,
    gEventObjectImageAnim_GoEast,
    gEventObjectImageAnim_GoFastSouth,
    gEventObjectImageAnim_GoFastNorth,
    gEventObjectImageAnim_GoFastWest,
    gEventObjectImageAnim_GoFastEast,
    gEventObjectImageAnim_GoFasterSouth,
    gEventObjectImageAnim_GoFasterNorth,
    gEventObjectImageAnim_GoFasterWest,
    gEventObjectImageAnim_GoFasterEast,
    gEventObjectImageAnim_GoFastestSouth,
    gEventObjectImageAnim_GoFastestNorth,
    gEventObjectImageAnim_GoFastestWest,
    gEventObjectImageAnim_GoFastestEast,
    gEventObjectImageAnim_NurseBow,
};

const union AnimCmd *const gEventObjectImageAnimTable_FieldMove[] = {
    gEventObjectImageAnim_FieldMove,
};

const union AnimCmd *const gEventObjectImageAnimTable_BerryTree[] = {
    gEventObjectImageAnim_BerryTreeStage0,
    gEventObjectImageAnim_BerryTreeStage1,
    gEventObjectImageAnim_BerryTreeStage2,
    gEventObjectImageAnim_BerryTreeStage3,
    gEventObjectImageAnim_BerryTreeStage4,
};

const union AnimCmd *const gEventObjectImageAnimTable_BreakableRock[] = {
    gEventObjectImageAnim_StayStill,
    gEventObjectImageAnim_RockBreak,
};

const union AnimCmd *const gEventObjectImageAnimTable_CuttableTree[] = {
    gEventObjectImageAnim_StayStill,
    gEventObjectImageAnim_TreeCut,
};

const union AnimCmd *const gEventObjectImageAnimTable_Fishing[] = {
    gEventObjectImageAnim_TakeOutRodSouth,
    gEventObjectImageAnim_TakeOutRodNorth,
    gEventObjectImageAnim_TakeOutRodWest,
    gEventObjectImageAnim_TakeOutRodEast,
    gEventObjectImageAnim_PutAwayRodSouth,
    gEventObjectImageAnim_PutAwayRodNorth,
    gEventObjectImageAnim_PutAwayRodWest,
    gEventObjectImageAnim_PutAwayRodEast,
    gEventObjectImageAnim_HookedPokemonSouth,
    gEventObjectImageAnim_HookedPokemonNorth,
    gEventObjectImageAnim_HookedPokemonWest,
    gEventObjectImageAnim_HookedPokemonEast,
};

const union AffineAnimCmd *const gEventObjectRotScalAnimTable_KyogreGroudon[] = {
    gEventObjectRotScalAnim_8508FD8,
    gEventObjectRotScalAnim_8509008,
    gEventObjectRotScalAnim_8509050,
    gEventObjectRotScalAnim_8509040,
    gEventObjectRotScalAnim_8509078,
    gEventObjectRotScalAnim_8509060,
};

const struct UnkStruct_085094AC gUnknown_085094AC[] = {
    {
        .anims = gEventObjectImageAnimTable_QuintyPlump,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gEventObjectImageAnimTable_Standard,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gEventObjectImageAnimTable_BrendanMayNormal,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gEventObjectImageAnimTable_AcroBike,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gEventObjectImageAnimTable_Surfing,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gEventObjectImageAnimTable_Nurse,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gEventObjectImageAnimTable_Fishing,
        .animPos = {1, 3, 0, 2},
    },
    {
        ((void *)0),
        {0, 0, 0, 0},
    },
};
# 439 "src/event_object_movement.c" 2
# 1 "src/data/field_event_obj/base_oam.h" 1
const struct OamData gEventObjectBaseOam_8x8 = {
    .shape = (((0 << 2) | (0)) & 0x03),
    .size = ((((0 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gEventObjectBaseOam_16x8 = {
    .shape = (((0 << 2) | (1)) & 0x03),
    .size = ((((0 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gEventObjectBaseOam_16x16 = {
    .shape = (((1 << 2) | (0)) & 0x03),
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gEventObjectBaseOam_32x8 = {
    .shape = (((1 << 2) | (1)) & 0x03),
    .size = ((((1 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gEventObjectBaseOam_64x32 = {
    .shape = (((3 << 2) | (1)) & 0x03),
    .size = ((((3 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gEventObjectBaseOam_16x32 = {
    .shape = (((2 << 2) | (2)) & 0x03),
    .size = ((((2 << 2) | (2)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gEventObjectBaseOam_32x32 = {
    .shape = (((2 << 2) | (0)) & 0x03),
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gEventObjectBaseOam_64x64 = {
    .shape = (((3 << 2) | (0)) & 0x03),
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};
# 440 "src/event_object_movement.c" 2
# 1 "src/data/field_event_obj/event_object_subsprites.h" 1
const struct Subsprite gEventObjectSpriteOamTable_16x16_0[] = {
    { -8, -8, 0, 1, 0, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_16x16_1[] = {
    { -8, -8, 0, 1, 0, 1}
};

const struct Subsprite gEventObjectSpriteOamTable_16x16_2[] = {
    { -8, -8, 1, 0, 0, 2},
    { -8, 0, 1, 0, 2, 3}
};

const struct Subsprite gEventObjectSpriteOamTable_16x16_3[] = {
    { -8, -8, 0, 1, 0, 2},
    { -8, -8, 0, 1, 0, 3}
};

const struct Subsprite gEventObjectSpriteOamTable_16x16_4[] = {
    { -8, -8, 0, 1, 0, 1},
    { -8, -8, 0, 1, 0, 3}
};

const struct SubspriteTable gEventObjectSpriteOamTables_16x16[] = {
    {0, ((void *)0)},
    {1, gEventObjectSpriteOamTable_16x16_0},
    {1, gEventObjectSpriteOamTable_16x16_1},
    {2, gEventObjectSpriteOamTable_16x16_2},
    {2, gEventObjectSpriteOamTable_16x16_3},
    {2, gEventObjectSpriteOamTable_16x16_4}
};

const struct Subsprite gEventObjectSpriteOamTable_16x32_0[] = {
    { -8, -16, 2, 2, 0, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_16x32_1[] = {
    { -8, -16, 2, 2, 0, 1}
};

const struct Subsprite gEventObjectSpriteOamTable_16x32_2[] = {
    { -8, -16, 0, 1, 0, 2},
    { -8, 0, 1, 0, 4, 2},
    { -8, 8, 1, 0, 6, 3}
};

const struct Subsprite gEventObjectSpriteOamTable_16x32_3[] = {
    { -8, -16, 0, 1, 0, 2},
    { -8, 0, 0, 1, 4, 3}
};

const struct Subsprite gEventObjectSpriteOamTable_16x32_4[] = {
    { -8, -16, 0, 1, 0, 1},
    { -8, 0, 0, 1, 4, 3}
};

const struct SubspriteTable gEventObjectSpriteOamTables_16x32[] = {
    {0, ((void *)0)},
    {1, gEventObjectSpriteOamTable_16x32_0},
    {1, gEventObjectSpriteOamTable_16x32_1},
    {3, gEventObjectSpriteOamTable_16x32_2},
    {2, gEventObjectSpriteOamTable_16x32_3},
    {2, gEventObjectSpriteOamTable_16x32_4}
};

const struct Subsprite gEventObjectSpriteOamTable_32x32_0[] = {
    {-16, -16, 0, 2, 0, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_32x32_1[] = {
    {-16, -16, 0, 2, 0, 1}
};

const struct Subsprite gEventObjectSpriteOamTable_32x32_2[] = {
    {-16, -16, 1, 2, 0, 2},
    {-16, 0, 1, 1, 8, 2},
    {-16, 8, 1, 1, 12, 3}
};

const struct Subsprite gEventObjectSpriteOamTable_32x32_3[] = {
    {-16, -16, 1, 2, 0, 2},
    {-16, 0, 1, 2, 8, 3}
};

const struct Subsprite gEventObjectSpriteOamTable_32x32_4[] = {
    {-16, -16, 1, 2, 0, 1},
    {-16, 0, 1, 2, 8, 3}
};

const struct SubspriteTable gEventObjectSpriteOamTables_32x32[] = {
    {0, ((void *)0)},
    {1, gEventObjectSpriteOamTable_32x32_0},
    {1, gEventObjectSpriteOamTable_32x32_1},
    {3, gEventObjectSpriteOamTable_32x32_2},
    {2, gEventObjectSpriteOamTable_32x32_3},
    {2, gEventObjectSpriteOamTable_32x32_4}
};

const struct Subsprite gEventObjectSpriteOamTable_Truck_0[] = {
    {-24, -24, 1, 1, 0, 2},
    { 8, -24, 1, 0, 4, 2},
    {-24, -16, 1, 1, 6, 2},
    { 8, -16, 1, 0, 10, 2},
    {-24, -8, 1, 1, 12, 2},
    { 8, -8, 1, 0, 16, 2},
    {-24, 0, 1, 1, 18, 2},
    { 8, 0, 1, 0, 22, 2},
    {-24, 8, 1, 1, 24, 2},
    { 8, 8, 1, 0, 28, 2},
    {-24, 16, 1, 1, 30, 2},
    { 8, 16, 1, 0, 34, 2}
};

const struct SubspriteTable gEventObjectSpriteOamTables_Truck[] = {
    {12, gEventObjectSpriteOamTable_Truck_0},
    {12, gEventObjectSpriteOamTable_Truck_0},
    {12, gEventObjectSpriteOamTable_Truck_0},
    {12, gEventObjectSpriteOamTable_Truck_0},
    {12, gEventObjectSpriteOamTable_Truck_0},
    {12, gEventObjectSpriteOamTable_Truck_0}
};

const struct Subsprite gEventObjectSpriteOamTable_Unused_0[] = {
    {-32, -16, 1, 3, 0, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_Unused_1[] = {
    {-32, -16, 1, 3, 0, 1}
};

const struct Subsprite gEventObjectSpriteOamTable_Unused_2[] = {
    {-32, -16, 1, 3, 0, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_Unused_3[] = {
    {-32, -16, 1, 3, 0, 2}
};

const struct SubspriteTable gEventObjectSpriteOamTables_Unused[] = {
    {0, ((void *)0)},
    {1, gEventObjectSpriteOamTable_Unused_0},
    {1, gEventObjectSpriteOamTable_Unused_1},
    {1, gEventObjectSpriteOamTable_Unused_2},
    {1, gEventObjectSpriteOamTable_Unused_3},
    {1, gEventObjectSpriteOamTable_Unused_3}
};

const struct Subsprite gEventObjectSpriteOamTable_64x64_0[] = {
    {-32, -32, 0, 3, 0, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_64x64_1[] = {
    {-32, -32, 0, 3, 0, 1}
};

const struct Subsprite gEventObjectSpriteOamTable_64x64_2[] = {
    {-32, -32, 0, 3, 0, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_64x64_3[] = {
    {-32, -32, 0, 3, 0, 2}
};

const struct SubspriteTable gEventObjectSpriteOamTables_64x64[] = {
    {0, ((void *)0)},
    {1, gEventObjectSpriteOamTable_64x64_0},
    {1, gEventObjectSpriteOamTable_64x64_1},
    {1, gEventObjectSpriteOamTable_64x64_2},
    {1, gEventObjectSpriteOamTable_64x64_3},
    {1, gEventObjectSpriteOamTable_64x64_3}
};

const struct Subsprite gEventObjectSpriteOamTable_SSTidal_0[] = {
    {-48, -20, 1, 1, 0, 2},
    {-16, -20, 1, 1, 4, 2},
    { 16, -20, 1, 1, 8, 2},
    {-48, -12, 1, 1, 12, 2},
    {-16, -12, 1, 1, 16, 2},
    { 16, -12, 1, 1, 20, 2},
    {-48, -4, 1, 1, 24, 2},
    {-16, -4, 1, 1, 28, 2},
    { 16, -4, 1, 1, 32, 2},
    {-48, 4, 1, 1, 36, 2},
    {-16, 4, 1, 1, 40, 2},
    { 16, 4, 1, 1, 44, 2},
    {-48, 12, 1, 1, 48, 2},
    {-16, 12, 1, 1, 52, 2},
    { 16, 12, 1, 1, 56, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_SSTidal_1[] = {
    {-48, -20, 1, 1, 0, 1},
    {-16, -20, 1, 1, 4, 1},
    { 16, -20, 1, 1, 8, 1},
    {-48, -12, 1, 1, 12, 1},
    {-16, -12, 1, 1, 16, 1},
    { 16, -12, 1, 1, 20, 1},
    {-48, -4, 1, 1, 24, 1},
    {-16, -4, 1, 1, 28, 1},
    { 16, -4, 1, 1, 32, 1},
    {-48, 4, 1, 1, 36, 1},
    {-16, 4, 1, 1, 40, 1},
    { 16, 4, 1, 1, 44, 1},
    {-48, 12, 1, 1, 48, 1},
    {-16, 12, 1, 1, 52, 1},
    { 16, 12, 1, 1, 56, 1}
};

const struct Subsprite gEventObjectSpriteOamTable_SSTidal_2[] = {
    {-48, -20, 1, 1, 0, 2},
    {-16, -20, 1, 1, 4, 2},
    { 16, -20, 1, 1, 8, 2},
    {-48, -12, 1, 1, 12, 2},
    {-16, -12, 1, 1, 16, 2},
    { 16, -12, 1, 1, 20, 2},
    {-48, -4, 1, 1, 24, 2},
    {-16, -4, 1, 1, 28, 2},
    { 16, -4, 1, 1, 32, 2},
    {-48, 4, 1, 1, 36, 2},
    {-16, 4, 1, 1, 40, 2},
    { 16, 4, 1, 1, 44, 2},
    {-48, 12, 1, 1, 48, 2},
    {-16, 12, 1, 1, 52, 2},
    { 16, 12, 1, 1, 56, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_SSTidal_3[] = {
    {-48, -20, 1, 1, 0, 1},
    {-16, -20, 1, 1, 4, 1},
    { 16, -20, 1, 1, 8, 1},
    {-48, -12, 1, 1, 12, 1},
    {-16, -12, 1, 1, 16, 1},
    { 16, -12, 1, 1, 20, 1},
    {-48, -4, 1, 1, 24, 2},
    {-16, -4, 1, 1, 28, 2},
    { 16, -4, 1, 1, 32, 2},
    {-48, 4, 1, 1, 36, 2},
    {-16, 4, 1, 1, 40, 2},
    { 16, 4, 1, 1, 44, 2},
    {-48, 12, 1, 1, 48, 2},
    {-16, 12, 1, 1, 52, 2},
    { 16, 12, 1, 1, 56, 2}
};

const struct SubspriteTable gEventObjectSpriteOamTables_SSTidal[] = {
    {15, gEventObjectSpriteOamTable_SSTidal_0},
    {15, gEventObjectSpriteOamTable_SSTidal_0},
    {15, gEventObjectSpriteOamTable_SSTidal_1},
    {15, gEventObjectSpriteOamTable_SSTidal_2},
    {15, gEventObjectSpriteOamTable_SSTidal_3},
    {15, gEventObjectSpriteOamTable_SSTidal_3}
};

const struct Subsprite gEventObjectSpriteOamTable_SubmarineShadow_0[] = {
    {-48, -20, 1, 1, 0, 2},
    {-16, -20, 1, 1, 4, 2},
    { 16, -20, 1, 0, 8, 2},
    { 32, -20, 0, 0, 10, 2},
    {-48, -12, 1, 1, 11, 2},
    {-16, -12, 1, 1, 15, 2},
    { 16, -12, 1, 0, 19, 2},
    { 32, -12, 0, 0, 21, 2},
    {-48, -4, 1, 1, 22, 2},
    {-16, -4, 1, 1, 26, 2},
    { 16, -4, 1, 0, 30, 2},
    { 32, -4, 0, 0, 32, 2},
    {-48, 4, 1, 1, 33, 2},
    {-16, 4, 1, 1, 37, 2},
    { 16, 4, 1, 0, 41, 2},
    { 32, 4, 0, 0, 43, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_SubmarineShadow_1[] = {
    {-48, -20, 1, 1, 0, 1},
    {-16, -20, 1, 1, 4, 1},
    { 16, -20, 1, 0, 8, 1},
    { 32, -20, 0, 0, 10, 1},
    {-48, -12, 1, 1, 11, 1},
    {-16, -12, 1, 1, 15, 1},
    { 16, -12, 1, 0, 19, 1},
    { 32, -12, 0, 0, 21, 1},
    {-48, -4, 1, 1, 22, 1},
    {-16, -4, 1, 1, 26, 1},
    { 16, -4, 1, 0, 30, 1},
    { 32, -4, 0, 0, 32, 1},
    {-48, 4, 1, 1, 33, 1},
    {-16, 4, 1, 1, 37, 1},
    { 16, 4, 1, 0, 41, 1},
    { 32, 4, 0, 0, 43, 1}
};

const struct Subsprite gEventObjectSpriteOamTable_SubmarineShadow_2[] = {
    {-48, -20, 1, 1, 0, 2},
    {-16, -20, 1, 1, 4, 2},
    { 16, -20, 1, 0, 8, 2},
    { 32, -20, 0, 0, 10, 2},
    {-48, -12, 1, 1, 11, 2},
    {-16, -12, 1, 1, 15, 2},
    { 16, -12, 1, 0, 19, 2},
    { 32, -12, 0, 0, 21, 2},
    {-48, -4, 1, 1, 22, 2},
    {-16, -4, 1, 1, 26, 2},
    { 16, -4, 1, 0, 30, 2},
    { 32, -4, 0, 0, 32, 2},
    {-48, 4, 1, 1, 33, 2},
    {-16, 4, 1, 1, 37, 2},
    { 16, 4, 1, 0, 41, 2},
    { 32, 4, 0, 0, 43, 2}
};

const struct Subsprite gEventObjectSpriteOamTable_SubmarineShadow_3[] = {
    {-48, -20, 1, 1, 0, 1},
    {-16, -20, 1, 1, 4, 1},
    { 16, -20, 1, 0, 8, 1},
    { 32, -20, 0, 0, 10, 1},
    {-48, -12, 1, 1, 11, 1},
    {-16, -12, 1, 1, 15, 1},
    { 16, -12, 1, 0, 19, 1},
    { 32, -12, 0, 0, 21, 1},
    {-48, -4, 1, 1, 22, 2},
    {-16, -4, 1, 1, 26, 2},
    { 16, -4, 1, 0, 30, 2},
    { 32, -4, 0, 0, 32, 2},
    {-48, 4, 1, 1, 33, 2},
    {-16, 4, 1, 1, 37, 2},
    { 16, 4, 1, 0, 41, 2},
    { 32, 4, 0, 0, 43, 2}
};

const struct SubspriteTable gEventObjectSpriteOamTables_SubmarineShadow[] = {
    {16, gEventObjectSpriteOamTable_SubmarineShadow_0},
    {16, gEventObjectSpriteOamTable_SubmarineShadow_0},
    {16, gEventObjectSpriteOamTable_SubmarineShadow_1},
    {16, gEventObjectSpriteOamTable_SubmarineShadow_2},
    {16, gEventObjectSpriteOamTable_SubmarineShadow_3},
    {16, gEventObjectSpriteOamTable_SubmarineShadow_3}
};
# 441 "src/event_object_movement.c" 2
# 1 "src/data/field_event_obj/event_object_graphics_info.h" 1
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanNormal = {0xFFFF, 0x1100, 0x1102, 512, 16, 32, 0, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_BrendanMayNormal, gEventObjectPicTable_BrendanNormal, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanMachBike = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_BrendanMachBike, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanAcroBike = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_AcroBike, gEventObjectPicTable_BrendanAcroBike, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanSurfing = {0xFFFF, 0x1100, 0x11FF, 512, 32, 32, 0, 1, 0, 1, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Surfing, gEventObjectPicTable_BrendanSurfing, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanFieldMove = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_FieldMove, gEventObjectPicTable_BrendanFieldMove, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_QuintyPlump = {0xFFFF, 0x110B, 0x11FF, 512, 32, 32, 10, 2, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_QuintyPlump, gEventObjectPicTable_QuintyPlump, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_NinjaBoy = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_NinjaBoy, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Twin = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Twin, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Boy1 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Boy1, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Girl1 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Girl1, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Boy2 = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Boy2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Girl2 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Girl2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LittleBoy = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_LittleBoy, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LittleGirl = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_LittleGirl, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Boy3 = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Boy3, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Girl3 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Girl3, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RichBoy = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_RichBoy, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman1 = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Woman1, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_FatMan = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_FatMan, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PokefanF = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_PokefanF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man1 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Man1, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman2 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Woman2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ExpertM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_ExpertM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ExpertF = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_ExpertF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man2 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Man2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman3 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Woman3, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PokefanM = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_PokefanM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman4 = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Woman4, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Cook = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Cook, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LinkReceptionist = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_LinkReceptionist, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_OldMan = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_OldMan, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_OldWoman = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_OldWoman, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Camper = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Camper, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Picnicker = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Picnicker, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man3 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Man3, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Woman5 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Woman5, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Youngster = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Youngster, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BugCatcher = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_BugCatcher, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PsychicM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_PsychicM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SchoolKidM = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_SchoolKidM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Maniac = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Maniac, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_HexManiac = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_HexManiac, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Rayquaza1 = {0xFFFF, 0x1105, 0x11FF, 2048, 64, 64, 4, 1, 0, 1, 1, &gEventObjectBaseOam_64x64, gEventObjectSpriteOamTables_64x64, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_RayquazaStill, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SwimmerM = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_SwimmerM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SwimmerF = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_SwimmerF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BlackBelt = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_BlackBelt, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Beauty = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Beauty, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Scientist1 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Scientist1, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Lass = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Lass, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Gentleman = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Gentleman, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Sailor = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Sailor, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Fisherman = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Fisherman, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RunningTriathleteM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_RunningTriathleteM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RunningTriathleteF = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_RunningTriathleteF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TuberF = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_TuberF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TuberM = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_TuberM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Hiker = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Hiker, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CyclingTriathleteM = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_AcroBike, gEventObjectPicTable_CyclingTriathleteM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CyclingTriathleteF = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_AcroBike, gEventObjectPicTable_CyclingTriathleteF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Nurse = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Nurse, gEventObjectPicTable_Nurse, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ItemBall = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_ItemBall, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BerryTree = {0xFFFF, 0x1103, 0x11FF, 256, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, ((void *)0), gEventObjectImageAnimTable_BerryTree, gEventObjectPicTable_PechaBerryTree, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BerryTreeEarlyStages = {0xFFFF, 0x1103, 0x11FF, 256, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_BerryTree, gEventObjectPicTable_PechaBerryTree, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BerryTreeLateStages = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_BerryTree, gEventObjectPicTable_PechaBerryTree, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ProfBirch = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_ProfBirch, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man4 = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Man4, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Man5 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Man5, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ReporterM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_ReporterM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ReporterF = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_ReporterF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Bard = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MauvilleOldMan1, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Hipster = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MauvilleOldMan1, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Trader = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MauvilleOldMan1, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Storyteller = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MauvilleOldMan2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Giddy = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MauvilleOldMan2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedMauvilleOldMan1 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MauvilleOldMan2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedMauvilleOldMan2 = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MauvilleOldMan2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedNatuDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_UnusedNatuDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedMagnemiteDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_UnusedMagnemiteDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedSquirtleDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_UnusedSquirtleDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedWooperDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_UnusedWooperDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedPikachuDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_UnusedPikachuDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnusedPorygon2Doll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_UnusedPorygon2Doll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CuttableTree = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_CuttableTree, gEventObjectPicTable_CuttableTree, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MartEmployee = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MartEmployee, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RooftopSaleWoman = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_RooftopSaleWoman, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Teala = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Teala, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BreakableRock = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_BreakableRock, gEventObjectPicTable_BreakableRock, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PushableBoulder = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_PushableBoulder, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MrBrineysBoat = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 0, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MrBrineysBoat, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayNormal = {0xFFFF, 0x1110, 0x1102, 512, 16, 32, 0, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_BrendanMayNormal, gEventObjectPicTable_MayNormal, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayMachBike = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MayMachBike, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayAcroBike = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_AcroBike, gEventObjectPicTable_MayAcroBike, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MaySurfing = {0xFFFF, 0x1110, 0x11FF, 512, 32, 32, 0, 1, 0, 1, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Surfing, gEventObjectPicTable_MaySurfing, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayFieldMove = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_FieldMove, gEventObjectPicTable_MayFieldMove, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Truck = {0xFFFF, 0x110D, 0x11FF, 1152, 48, 48, 10, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_Truck, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_Truck, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_VigorothCarryingBox = {0xFFFF, 0x110E, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_VigorothCarryingBox, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_VigorothFacingAway = {0xFFFF, 0x110E, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_VigorothFacingAway, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BirchsBag = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BirchsBag, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_EnemyZigzagoon = {0xFFFF, 0x110F, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_EnemyZigzagoon, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Poochyena = {0xFFFF, 0x111C, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Poochyena, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Artist = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Artist, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanNormal = {0xFFFF, 0x1100, 0x1102, 256, 16, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_BrendanMayNormal, gEventObjectPicTable_BrendanNormal, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanMachBike = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 10, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_BrendanMachBike, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanAcroBike = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 10, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_AcroBike, gEventObjectPicTable_BrendanAcroBike, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanSurfing = {0xFFFF, 0x1100, 0x11FF, 512, 32, 32, 10, 1, 0, 1, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Surfing, gEventObjectPicTable_BrendanSurfing, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalBrendanFieldMove = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_FieldMove, gEventObjectPicTable_BrendanFieldMove, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMayNormal = {0xFFFF, 0x1110, 0x1102, 256, 16, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_BrendanMayNormal, gEventObjectPicTable_MayNormal, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMayMachBike = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 10, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MayMachBike, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMayAcroBike = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 10, 1, 0, 0, 2, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_AcroBike, gEventObjectPicTable_MayAcroBike, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMaySurfing = {0xFFFF, 0x1110, 0x11FF, 512, 32, 32, 10, 1, 0, 1, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Surfing, gEventObjectPicTable_MaySurfing, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RivalMayFieldMove = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_FieldMove, gEventObjectPicTable_MayFieldMove, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Cameraman = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Cameraman, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanUnderwater = {0xFFFF, 0x1115, 0x11FF, 512, 32, 32, 0, 1, 0, 1, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_BrendanUnderwater, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayUnderwater = {0xFFFF, 0x1115, 0x11FF, 512, 32, 32, 10, 1, 0, 1, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MayUnderwater, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MovingBox = {0xFFFF, 0x1112, 0x11FF, 128, 16, 16, 10, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_MovingBox, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CableCar = {0xFFFF, 0x1113, 0x11FF, 2048, 64, 64, 10, 1, 1, 0, 0, &gEventObjectBaseOam_64x64, gEventObjectSpriteOamTables_64x64, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_CableCar, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Scientist2 = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Scientist2, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_DevonEmployee = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_DevonEmployee, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_AquaMemberM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_AquaMemberM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_AquaMemberF = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_AquaMemberF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MagmaMemberM = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MagmaMemberM, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MagmaMemberF = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MagmaMemberF, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Sidney = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Sidney, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Phoebe = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Phoebe, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Glacia = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Glacia, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Drake = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Drake, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Roxanne = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Roxanne, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Brawly = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Brawly, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Wattson = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Wattson, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Flannery = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Flannery, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Norman = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Norman, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Winona = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Winona, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Liza = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Liza, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Tate = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Tate, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Wallace = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Wallace, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Steven = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Steven, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Wally = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Wally, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RubySapphireLittleBoy = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_RubySapphireLittleBoy, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanFishing = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Fishing, gEventObjectPicTable_BrendanFishing, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayFishing = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Fishing, gEventObjectPicTable_MayFishing, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_HotSpringsOldWoman = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_HotSpringsOldWoman, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SSTidal = {0xFFFF, 0x1114, 0x11FF, 1920, 96, 40, 10, 1, 0, 0, 0, &gEventObjectBaseOam_8x8, gEventObjectSpriteOamTables_SSTidal, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_SSTidal, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SubmarineShadow = {0xFFFF, 0x111B, 0x11FF, 1408, 88, 32, 10, 1, 0, 0, 0, &gEventObjectBaseOam_8x8, gEventObjectSpriteOamTables_SubmarineShadow, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_SubmarineShadow, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PichuDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_PichuDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PikachuDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_PikachuDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MarillDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_MarillDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TogepiDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_TogepiDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_CyndaquilDoll = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_CyndaquilDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ChikoritaDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_ChikoritaDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TotodileDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_TotodileDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_JigglypuffDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_JigglypuffDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MeowthDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_MeowthDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ClefairyDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_ClefairyDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_DittoDoll = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_DittoDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SmoochumDoll = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_SmoochumDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TreeckoDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_TreeckoDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TorchicDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_TorchicDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MudkipDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_MudkipDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_DuskullDoll = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_DuskullDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_WynautDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_WynautDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BaltoyDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BaltoyDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_KecleonDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_KecleonDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_AzurillDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_AzurillDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SkittyDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_SkittyDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SwabluDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_SwabluDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_GulpinDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_GulpinDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LotadDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_LotadDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SeedotDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_SeedotDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_PikaCushion = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_PikaCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RoundCushion = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_RoundCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_KissCushion = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_KissCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ZigzagCushion = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_ZigzagCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_SpinCushion = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_SpinCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_DiamondCushion = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_DiamondCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BallCushion = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BallCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_GrassCushion = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_GrassCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_FireCushion = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_FireCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_WaterCushion = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_WaterCushion, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigSnorlaxDoll = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigSnorlaxDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigRhydonDoll = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigRhydonDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigLaprasDoll = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigLaprasDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigVenusaurDoll = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigVenusaurDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigCharizardDoll = {0xFFFF, 0x1104, 0x11FF, 512, 32, 32, 3, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigCharizardDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigBlastoiseDoll = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigBlastoiseDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigWailmerDoll = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigWailmerDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigRegirockDoll = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigRegirockDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigRegiceDoll = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigRegiceDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BigRegisteelDoll = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BigRegisteelDoll, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Latias = {0xFFFF, 0x1104, 0x11FF, 512, 32, 32, 3, 1, 0, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_LatiasLatios, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Latios = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 0, 0, 0, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_LatiasLatios, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_GameboyKid = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_GameboyKid, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_ContestJudge = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_ContestJudge, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanWatering = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_BrendanWatering, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayWatering = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MayWatering, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BrendanDecorating = {0xFFFF, 0x1100, 0x1102, 256, 16, 32, 10, 1, 1, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BrendanDecorating, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MayDecorating = {0xFFFF, 0x1110, 0x1102, 256, 16, 32, 10, 1, 1, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_MayDecorating, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Archie = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Archie, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Maxie = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Maxie, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kyogre1 = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_KyogreFront, gEventObjectRotScalAnimTable_KyogreGroudon};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Groudon1 = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_GroudonFront, gEventObjectRotScalAnimTable_KyogreGroudon};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kyogre3 = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_KyogreSide, gEventObjectRotScalAnimTable_KyogreGroudon};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Groudon3 = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Groudon3, gEventObjectPicTable_GroudonSide, gEventObjectRotScalAnimTable_KyogreGroudon};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Fossil = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_Fossil, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Regirock = {0xFFFF, 0x1104, 0x11FF, 512, 32, 32, 3, 1, 1, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Regi, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Regice = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 1, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Regi, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Registeel = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Regi, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Skitty = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Skitty, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kecleon1 = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Kecleon, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kyogre2 = {0xFFFF, 0x1116, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_KyogreFront, gEventObjectRotScalAnimTable_KyogreGroudon};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Groudon2 = {0xFFFF, 0x1118, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_GroudonFront, gEventObjectRotScalAnimTable_KyogreGroudon};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Rayquaza2 = {0xFFFF, 0x1105, 0x11FF, 2048, 64, 64, 4, 1, 0, 1, 1, &gEventObjectBaseOam_64x64, gEventObjectSpriteOamTables_64x64, gEventObjectImageAnimTable_Rayquaza2, gEventObjectPicTable_Rayquaza, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Zigzagoon = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Zigzagoon, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Pikachu = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Pikachu, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Azumarill = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Azumarill, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Wingull = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Wingull, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kecleon2 = {0xFFFF, 0x1105, 0x1102, 128, 16, 16, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Kecleon, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_TuberMSwimming = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_TuberMSwimming, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Azurill = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x16, gEventObjectSpriteOamTables_16x16, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Azurill, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Mom = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Mom, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LinkBrendan = {0xFFFF, 0x1110, 0x1102, 256, 16, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_BrendanMayNormal, gEventObjectPicTable_BrendanNormal, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_LinkMay = {0xFFFF, 0x1110, 0x1102, 256, 16, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_BrendanMayNormal, gEventObjectPicTable_MayNormal, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Juan = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Juan, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Scott = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Scott, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_MysteryEventDeliveryman = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_MysteryEventDeliveryman, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Statue = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 1, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_Statue, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Kirlia = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 0, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Kirlia, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Dusclops = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Dusclops, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_UnionRoomAttendant = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_UnionRoomAttendant, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Red = {0xFFFF, 0x111D, 0x11FF, 256, 16, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Red, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Leaf = {0xFFFF, 0x111D, 0x11FF, 256, 16, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Leaf, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Sudowoodo = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Sudowoodo, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Mew = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Mew, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Deoxys = {0xFFFF, 0x111E, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Deoxys, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_BirthIslandStone = {0xFFFF, 0x111F, 0x11FF, 512, 32, 32, 10, 1, 1, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Inanimate, gEventObjectPicTable_BirthIslandStone, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Anabel = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Anabel, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Tucker = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Tucker, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Greta = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Greta, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Spenser = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Spenser, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Noland = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Noland, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Lucy = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Lucy, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Brandon = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Brandon, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RubySapphireBrendan = {0xFFFF, 0x1122, 0x11FF, 256, 16, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_RubySapphireBrendan, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_RubySapphireMay = {0xFFFF, 0x1123, 0x11FF, 256, 16, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_16x32, gEventObjectSpriteOamTables_16x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_RubySapphireMay, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_Lugia = {0xFFFF, 0x1121, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_Standard, gEventObjectPicTable_Lugia, gDummySpriteAffineAnimTable};
const struct EventObjectGraphicsInfo gEventObjectGraphicsInfo_HoOh = {0xFFFF, 0x1120, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gEventObjectBaseOam_32x32, gEventObjectSpriteOamTables_32x32, gEventObjectImageAnimTable_HoOh, gEventObjectPicTable_HoOh, gDummySpriteAffineAnimTable};
# 442 "src/event_object_movement.c" 2

const struct SpritePalette sEventObjectSpritePalettes[] = {
    {gEventObjectPalette0, 0x1103},
    {gEventObjectPalette1, 0x1104},
    {gEventObjectPalette2, 0x1105},
    {gEventObjectPalette3, 0x1106},
    {gEventObjectPalette4, 0x1107},
    {gEventObjectPalette5, 0x1108},
    {gEventObjectPalette6, 0x1109},
    {gEventObjectPalette7, 0x110A},
    {gEventObjectPalette8, 0x1100},
    {gEventObjectPalette9, 0x1101},
    {gEventObjectPalette10, 0x1102},
    {gEventObjectPalette11, 0x1115},
    {gEventObjectPalette12, 0x110B},
    {gEventObjectPalette13, 0x110C},
    {gEventObjectPalette14, 0x110D},
    {gEventObjectPalette15, 0x110E},
    {gEventObjectPalette16, 0x110F},
    {gEventObjectPalette17, 0x1110},
    {gEventObjectPalette18, 0x1111},
    {gEventObjectPalette19, 0x1112},
    {gEventObjectPalette20, 0x1113},
    {gEventObjectPalette21, 0x1114},
    {gEventObjectPalette22, 0x1116},
    {gEventObjectPalette23, 0x1117},
    {gEventObjectPalette24, 0x1118},
    {gEventObjectPalette25, 0x1119},
    {gEventObjectPalette26, 0x111B},
    {gEventObjectPalette27, 0x111C},
    {gEventObjectPalette28, 0x111D},
    {gEventObjectPalette29, 0x111E},
    {gEventObjectPalette30, 0x111F},
    {gEventObjectPalette31, 0x1120},
    {gEventObjectPalette32, 0x1121},
    {gEventObjectPalette33, 0x1122},
    {gEventObjectPalette34, 0x1123},
    {((void *)0), 0x0000},
};

const u16 gPlayerReflectionPaletteTags[] = {
    0x1101,
    0x1101,
    0x1101,
    0x1101,
};

const u16 Unknown_0850BCF0[] = {
    0x1111,
    0x1111,
    0x1111,
    0x1111,
};

const u16 gPlayerUnderwaterReflectionPaletteTags[] = {
    0x1115,
    0x1115,
    0x1115,
    0x1115,
};

const struct PairedPalettes gPlayerReflectionPaletteSets[] = {
    {0x1100, gPlayerReflectionPaletteTags},
    {0x1110, Unknown_0850BCF0},
    {0x1115, gPlayerUnderwaterReflectionPaletteTags},
    {0x11FF, ((void *)0)},
};

const u16 gQuintyPlumpReflectionPaletteTags[] = {
    0x110C,
    0x110C,
    0x110C,
    0x110C,
};

const u16 gTruckReflectionPaletteTags[] = {
    0x110D,
    0x110D,
    0x110D,
    0x110D,
};

const u16 gVigorothMoverReflectionPaletteTags[] = {
    0x110E,
    0x110E,
    0x110E,
    0x110E,
};

const u16 gMovingBoxReflectionPaletteTags[] = {
    0x1112,
    0x1112,
    0x1112,
    0x1112,
};

const u16 gCableCarReflectionPaletteTags[] = {
    0x1113,
    0x1113,
    0x1113,
    0x1113,
};

const u16 gSSTidalReflectionPaletteTags[] = {
    0x1114,
    0x1114,
    0x1114,
    0x1114,
};

const u16 gSubmarineShadowReflectionPaletteTags[] = {
    0x111B,
    0x111B,
    0x111B,
    0x111B,
};

const u16 Unknown_0850BD58[] = {
    0x1117,
    0x1117,
    0x1117,
    0x1117,
};

const u16 Unknown_0850BD60[] = {
    0x1119,
    0x1119,
    0x1119,
    0x1119,
};

const u16 Unknown_0850BD68[] = {
    0x1109,
    0x1109,
    0x1109,
    0x1109,
};

const u16 gRedLeafReflectionPaletteTags[] = {
    0x111D,
    0x111D,
    0x111D,
    0x111D,
};

const struct PairedPalettes gSpecialObjectReflectionPaletteSets[] = {
    {0x1100, gPlayerReflectionPaletteTags},
    {0x1110, Unknown_0850BCF0},
    {0x110B, gQuintyPlumpReflectionPaletteTags},
    {0x110D, gTruckReflectionPaletteTags},
    {0x110E, gVigorothMoverReflectionPaletteTags},
    {0x1112, gMovingBoxReflectionPaletteTags},
    {0x1113, gCableCarReflectionPaletteTags},
    {0x1114, gSSTidalReflectionPaletteTags},
    {0x1116, Unknown_0850BD58},
    {0x1118, Unknown_0850BD60},
    {0x1105, Unknown_0850BD68},
    {0x111B, gSubmarineShadowReflectionPaletteTags},
    {0x111D, gRedLeafReflectionPaletteTags},
    {0x11FF, ((void *)0)},
};

const u16 gObjectPaletteTags0[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

const u16 gObjectPaletteTags1[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

const u16 gObjectPaletteTags2[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

const u16 gObjectPaletteTags3[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

const u16 *const gObjectPaletteTagSets[] = {
    gObjectPaletteTags0,
    gObjectPaletteTags1,
    gObjectPaletteTags2,
    gObjectPaletteTags3,
};

# 1 "src/data/field_event_obj/berry_tree_graphics_tables.h" 1
const struct SpriteFrameImage gEventObjectPicTable_PechaBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PechaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PechaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PechaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PechaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PechaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PechaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Pecha[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_KelpsyBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_KelpsyBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_KelpsyBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_KelpsyBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_KelpsyBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_KelpsyBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_KelpsyBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Kelpsy[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gEventObjectPicTable_WepearBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WepearBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WepearBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WepearBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WepearBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WepearBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WepearBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Wepear[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gEventObjectPicTable_IapapaBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_IapapaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_IapapaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_IapapaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_IapapaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_IapapaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_IapapaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Iapapa[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_CheriBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CheriBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CheriBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CheriBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CheriBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CheriBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CheriBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Cheri[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_FigyBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FigyBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FigyBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FigyBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FigyBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FigyBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_FigyBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Figy[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_MagoBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagoBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagoBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagoBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagoBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagoBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_MagoBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Mago[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_LumBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LumBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LumBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LumBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LumBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LumBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LumBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Lum[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_RazzBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RazzBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RazzBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RazzBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RazzBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RazzBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RazzBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Razz[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_GrepaBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GrepaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GrepaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GrepaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GrepaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GrepaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_GrepaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Grepa[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_RabutaBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RabutaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RabutaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RabutaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RabutaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RabutaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RabutaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Rabuta[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_NomelBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NomelBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NomelBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NomelBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NomelBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NomelBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_NomelBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Nomel[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_LeppaBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LeppaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LeppaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LeppaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LeppaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LeppaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LeppaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Leppa[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_LiechiBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LiechiBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LiechiBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LiechiBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LiechiBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LiechiBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LiechiBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Liechi[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_HondewBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HondewBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HondewBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HondewBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HondewBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HondewBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_HondewBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Hondew[] = {3, 4, 5, 5, 5};

const struct SpriteFrameImage gEventObjectPicTable_AguavBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AguavBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AguavBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AguavBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AguavBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AguavBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AguavBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Aguav[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_WikiBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WikiBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WikiBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WikiBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WikiBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WikiBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_WikiBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Wiki[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_PomegBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PomegBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PomegBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PomegBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PomegBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PomegBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PomegBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Pomeg[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_RawstBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RawstBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RawstBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RawstBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RawstBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RawstBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_RawstBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Rawst[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_SpelonBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SpelonBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SpelonBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SpelonBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SpelonBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SpelonBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SpelonBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Spelon[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_ChestoBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ChestoBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ChestoBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ChestoBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ChestoBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ChestoBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_ChestoBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Chesto[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gEventObjectPicTable_OranBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OranBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OranBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OranBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OranBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OranBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_OranBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Oran[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gEventObjectPicTable_PersimBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PersimBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PersimBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PersimBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PersimBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PersimBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PersimBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Persim[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gEventObjectPicTable_SitrusBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SitrusBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SitrusBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SitrusBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SitrusBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SitrusBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_SitrusBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Sitrus[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_AspearBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AspearBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AspearBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AspearBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AspearBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AspearBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_AspearBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Aspear[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gEventObjectPicTable_PamtreBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PamtreBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PamtreBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PamtreBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PamtreBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PamtreBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_PamtreBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Pamtre[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gEventObjectPicTable_CornnBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CornnBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CornnBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CornnBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CornnBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CornnBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_CornnBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Cornn[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gEventObjectPicTable_LansatBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LansatBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LansatBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LansatBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LansatBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LansatBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_LansatBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Lansat[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gEventObjectPicTable_DurinBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DurinBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DurinBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DurinBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DurinBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DurinBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_DurinBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Durin[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gEventObjectPicTable_TamatoBerryTree[] = {
    {.data = (u8 *)gEventObjectPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TamatoBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TamatoBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TamatoBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TamatoBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TamatoBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gEventObjectPic_TamatoBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Tamato[] = {3, 4, 2, 2, 2};

const u8 gDeadBerryTreeEventObjectGraphicsIdTable[] = {61, 61, 61, 61, 61};

const u8 gBerryTreeEventObjectGraphicsIdTable[] = {61, 61, 62, 62, 62};

const struct SpriteFrameImage *const gBerryTreePicTablePointers[] = {
    [133 - 133] = gEventObjectPicTable_CheriBerryTree,
    [134 - 133] = gEventObjectPicTable_ChestoBerryTree,
    [135 - 133] = gEventObjectPicTable_PechaBerryTree,
    [136 - 133] = gEventObjectPicTable_RawstBerryTree,
    [137 - 133] = gEventObjectPicTable_AspearBerryTree,
    [138 - 133] = gEventObjectPicTable_LeppaBerryTree,
    [139 - 133] = gEventObjectPicTable_OranBerryTree,
    [140 - 133] = gEventObjectPicTable_PersimBerryTree,
    [141 - 133] = gEventObjectPicTable_LumBerryTree,
    [142 - 133] = gEventObjectPicTable_SitrusBerryTree,
    [143 - 133] = gEventObjectPicTable_FigyBerryTree,
    [144 - 133] = gEventObjectPicTable_WikiBerryTree,
    [145 - 133] = gEventObjectPicTable_MagoBerryTree,
    [146 - 133] = gEventObjectPicTable_AguavBerryTree,
    [147 - 133] = gEventObjectPicTable_IapapaBerryTree,
    [148 - 133] = gEventObjectPicTable_RazzBerryTree,
    [149 - 133] = gEventObjectPicTable_RazzBerryTree,
    [150 - 133] = gEventObjectPicTable_MagoBerryTree,
    [151 - 133] = gEventObjectPicTable_WepearBerryTree,
    [152 - 133] = gEventObjectPicTable_IapapaBerryTree,
    [153 - 133] = gEventObjectPicTable_PomegBerryTree,
    [154 - 133] = gEventObjectPicTable_KelpsyBerryTree,
    [155 - 133] = gEventObjectPicTable_WepearBerryTree,
    [156 - 133] = gEventObjectPicTable_HondewBerryTree,
    [157 - 133] = gEventObjectPicTable_GrepaBerryTree,
    [158 - 133] = gEventObjectPicTable_TamatoBerryTree,
    [159 - 133] = gEventObjectPicTable_CornnBerryTree,
    [160 - 133] = gEventObjectPicTable_PomegBerryTree,
    [161 - 133] = gEventObjectPicTable_RabutaBerryTree,
    [162 - 133] = gEventObjectPicTable_NomelBerryTree,
    [163 - 133] = gEventObjectPicTable_SpelonBerryTree,
    [164 - 133] = gEventObjectPicTable_PamtreBerryTree,
    [165 - 133] = gEventObjectPicTable_RabutaBerryTree,
    [166 - 133] = gEventObjectPicTable_DurinBerryTree,
    [167 - 133] = gEventObjectPicTable_HondewBerryTree,
    [168 - 133] = gEventObjectPicTable_LiechiBerryTree,
    [169 - 133] = gEventObjectPicTable_HondewBerryTree,
    [170 - 133] = gEventObjectPicTable_AguavBerryTree,
    [171 - 133] = gEventObjectPicTable_PomegBerryTree,
    [172 - 133] = gEventObjectPicTable_GrepaBerryTree,
    [173 - 133] = gEventObjectPicTable_LansatBerryTree,
    [174 - 133] = gEventObjectPicTable_CornnBerryTree,
    [175 - 133] = gEventObjectPicTable_DurinBerryTree,
};

const u8 *const gBerryTreePaletteSlotTablePointers[] = {
    [133 - 133] = gBerryTreePaletteSlotTable_Cheri,
    [134 - 133] = gBerryTreePaletteSlotTable_Chesto,
    [135 - 133] = gBerryTreePaletteSlotTable_Pecha,
    [136 - 133] = gBerryTreePaletteSlotTable_Rawst,
    [137 - 133] = gBerryTreePaletteSlotTable_Aspear,
    [138 - 133] = gBerryTreePaletteSlotTable_Leppa,
    [139 - 133] = gBerryTreePaletteSlotTable_Oran,
    [140 - 133] = gBerryTreePaletteSlotTable_Persim,
    [141 - 133] = gBerryTreePaletteSlotTable_Lum,
    [142 - 133] = gBerryTreePaletteSlotTable_Sitrus,
    [143 - 133] = gBerryTreePaletteSlotTable_Figy,
    [144 - 133] = gBerryTreePaletteSlotTable_Wiki,
    [145 - 133] = gBerryTreePaletteSlotTable_Mago,
    [146 - 133] = gBerryTreePaletteSlotTable_Aguav,
    [147 - 133] = gBerryTreePaletteSlotTable_Iapapa,
    [148 - 133] = gBerryTreePaletteSlotTable_Razz,
    [149 - 133] = gBerryTreePaletteSlotTable_Razz,
    [150 - 133] = gBerryTreePaletteSlotTable_Mago,
    [151 - 133] = gBerryTreePaletteSlotTable_Wepear,
    [152 - 133] = gBerryTreePaletteSlotTable_Iapapa,
    [153 - 133] = gBerryTreePaletteSlotTable_Pomeg,
    [154 - 133] = gBerryTreePaletteSlotTable_Kelpsy,
    [155 - 133] = gBerryTreePaletteSlotTable_Wepear,
    [156 - 133] = gBerryTreePaletteSlotTable_Hondew,
    [157 - 133] = gBerryTreePaletteSlotTable_Grepa,
    [158 - 133] = gBerryTreePaletteSlotTable_Tamato,
    [159 - 133] = gBerryTreePaletteSlotTable_Cornn,
    [160 - 133] = gBerryTreePaletteSlotTable_Pomeg,
    [161 - 133] = gBerryTreePaletteSlotTable_Rabuta,
    [162 - 133] = gBerryTreePaletteSlotTable_Nomel,
    [163 - 133] = gBerryTreePaletteSlotTable_Spelon,
    [164 - 133] = gBerryTreePaletteSlotTable_Pamtre,
    [165 - 133] = gBerryTreePaletteSlotTable_Rabuta,
    [166 - 133] = gBerryTreePaletteSlotTable_Durin,
    [167 - 133] = gBerryTreePaletteSlotTable_Hondew,
    [168 - 133] = gBerryTreePaletteSlotTable_Liechi,
    [169 - 133] = gBerryTreePaletteSlotTable_Hondew,
    [170 - 133] = gBerryTreePaletteSlotTable_Aguav,
    [171 - 133] = gBerryTreePaletteSlotTable_Pomeg,
    [172 - 133] = gBerryTreePaletteSlotTable_Grepa,
    [173 - 133] = gBerryTreePaletteSlotTable_Lansat,
    [174 - 133] = gBerryTreePaletteSlotTable_Cornn,
    [175 - 133] = gBerryTreePaletteSlotTable_Durin,
};

const u8 *const gBerryTreeEventObjectGraphicsIdTablePointers[] = {
    [133 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [134 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [135 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [136 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [137 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [138 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [139 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [140 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [141 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [142 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [143 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [144 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [145 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [146 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [147 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [148 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [149 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [150 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [151 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [152 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [153 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [154 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [155 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [156 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [157 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [158 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [159 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [160 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [161 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [162 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [163 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [164 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [165 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [166 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [167 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [168 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [169 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [170 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [171 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [172 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [173 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [174 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [175 - 133] = gBerryTreeEventObjectGraphicsIdTable,

    [176 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [177 - 133] = gBerryTreeEventObjectGraphicsIdTable,
    [178 - 133] = gBerryTreeEventObjectGraphicsIdTable,
};
# 664 "src/event_object_movement.c" 2
# 1 "src/data/field_event_obj/field_effect_objects.h" 1
const struct SpritePalette gFieldEffectObjectPaletteInfo0 = {gFieldEffectObjectPalette0, 0x1004};

const struct SpritePalette gFieldEffectObjectPaletteInfo1 = {gFieldEffectObjectPalette1, 0x1005};

const union AnimCmd gFieldEffectObjectImageAnim_850C9D0[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Shadow[] =
{
    gFieldEffectObjectImageAnim_850C9D0,
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShadowSmall[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShadowSmall, .size = sizeof gFieldEffectObjectPic_ShadowSmall},
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShadowMedium[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShadowMedium, .size = sizeof gFieldEffectObjectPic_ShadowMedium},
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShadowLarge[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShadowLarge, .size = sizeof gFieldEffectObjectPic_ShadowLarge},
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShadowExtraLarge[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShadowExtraLarge, .size = sizeof gFieldEffectObjectPic_ShadowExtraLarge},
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowSmall = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_8x8, gFieldEffectObjectImageAnimTable_Shadow, gFieldEffectObjectPicTable_ShadowSmall, gDummySpriteAffineAnimTable, UpdateShadowFieldEffect};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowMedium = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_16x8, gFieldEffectObjectImageAnimTable_Shadow, gFieldEffectObjectPicTable_ShadowMedium, gDummySpriteAffineAnimTable, UpdateShadowFieldEffect};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowLarge = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_32x8, gFieldEffectObjectImageAnimTable_Shadow, gFieldEffectObjectPicTable_ShadowLarge, gDummySpriteAffineAnimTable, UpdateShadowFieldEffect};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowExtraLarge = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_64x32, gFieldEffectObjectImageAnimTable_Shadow, gFieldEffectObjectPicTable_ShadowExtraLarge, gDummySpriteAffineAnimTable, UpdateShadowFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_TallGrass[] = {
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CA84[] =
{
    {.frame = {1, 10}},
    {.frame = {2, 10}},
    {.frame = {3, 10}},
    {.frame = {4, 10}},
    {.frame = {0, 10}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_TallGrass[] =
{
    gFieldEffectObjectImageAnim_850CA84,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_TallGrass = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_TallGrass, gFieldEffectObjectPicTable_TallGrass, gDummySpriteAffineAnimTable, UpdateTallGrassFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Ripple[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CAE0[] =
{
    {.frame = {0, 12}},
    {.frame = {1, 9}},
    {.frame = {2, 9}},
    {.frame = {3, 9}},
    {.frame = {0, 9}},
    {.frame = {1, 9}},
    {.frame = {2, 11}},
    {.frame = {4, 11}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Ripple[] =
{
    gFieldEffectObjectImageAnim_850CAE0,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Ripple = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Ripple, gFieldEffectObjectPicTable_Ripple, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Ash[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CB48[] =
{
    {.frame = {0, 12}},
    {.frame = {1, 12}},
    {.frame = {2, 8}},
    {.frame = {3, 12}},
    {.frame = {4, 12}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Ash[] =
{
    gFieldEffectObjectImageAnim_850CB48,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Ash = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Ash, gFieldEffectObjectPicTable_Ash, gDummySpriteAffineAnimTable, UpdateAshFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_SurfBlob[] = {
    {.data = (u8 *)gFieldEffectObjectPic_SurfBlob + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SurfBlob + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SurfBlob + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const union AnimCmd gSurfBlobAnim_FaceSouth[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gSurfBlobAnim_FaceNorth[] =
{
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gSurfBlobAnim_FaceWest[] =
{
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gSurfBlobAnim_FaceEast[] =
{
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_SurfBlob[] =
{
    gSurfBlobAnim_FaceSouth,
    gSurfBlobAnim_FaceNorth,
    gSurfBlobAnim_FaceWest,
    gSurfBlobAnim_FaceEast,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SurfBlob = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_32x32, gFieldEffectObjectImageAnimTable_SurfBlob, gFieldEffectObjectPicTable_SurfBlob, gDummySpriteAffineAnimTable, UpdateSurfBlobFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Arrow[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC1C[] =
{
    {.frame = {3, 32}},
    {.frame = {7, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC28[] =
{
    {.frame = {0, 32}},
    {.frame = {4, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC34[] =
{
    {.frame = {1, 32}},
    {.frame = {5, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC40[] =
{
    {.frame = {2, 32}},
    {.frame = {6, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Arrow[] =
{
    gFieldEffectObjectImageAnim_850CC1C,
    gFieldEffectObjectImageAnim_850CC28,
    gFieldEffectObjectImageAnim_850CC34,
    gFieldEffectObjectImageAnim_850CC40,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Arrow = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Arrow, gFieldEffectObjectPicTable_Arrow, gDummySpriteAffineAnimTable, SpriteCallbackDummy};

const struct SpriteFrameImage gFieldEffectObjectPicTable_GroundImpactDust[] = {
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC8C[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_GroundImpactDust[] =
{
    gFieldEffectObjectImageAnim_850CC8C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_GroundImpactDust = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x8, gFieldEffectObjectImageAnimTable_GroundImpactDust, gFieldEffectObjectPicTable_GroundImpactDust, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BikeHopTallGrass[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopTallGrass + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopTallGrass + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopTallGrass + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopTallGrass + (2 * 1 * 3 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CCD8[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BikeHopTallGrass[] =
{
    gFieldEffectObjectImageAnim_850CCD8,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopTallGrass = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x8, gFieldEffectObjectImageAnimTable_BikeHopTallGrass, gFieldEffectObjectPicTable_BikeHopTallGrass, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_SandFootprints[] = {
    {.data = (u8 *)gFieldEffectObjectPic_SandFootprints + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandFootprints + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD18[] =
{
    {.frame = {0, 1, .vFlip = 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD20[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD28[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD30[] =
{
    {.frame = {1, 1, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_SandFootprints[] =
{
    gFieldEffectObjectImageAnim_850CD18,
    gFieldEffectObjectImageAnim_850CD18,
    gFieldEffectObjectImageAnim_850CD20,
    gFieldEffectObjectImageAnim_850CD28,
    gFieldEffectObjectImageAnim_850CD30,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SandFootprints = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_SandFootprints, gFieldEffectObjectPicTable_SandFootprints, gDummySpriteAffineAnimTable, UpdateFootprintsTireTracksFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_DeepSandFootprints[] = {
    {.data = (u8 *)gFieldEffectObjectPic_DeepSandFootprints + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_DeepSandFootprints + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD74[] =
{
    {.frame = {0, 1, .vFlip = 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD7C[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD84[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD8C[] =
{
    {.frame = {1, 1, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_DeepSandFootprints[] =
{
    gFieldEffectObjectImageAnim_850CD74,
    gFieldEffectObjectImageAnim_850CD74,
    gFieldEffectObjectImageAnim_850CD7C,
    gFieldEffectObjectImageAnim_850CD84,
    gFieldEffectObjectImageAnim_850CD8C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_DeepSandFootprints = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_DeepSandFootprints, gFieldEffectObjectPicTable_DeepSandFootprints, gDummySpriteAffineAnimTable, UpdateFootprintsTireTracksFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BikeTireTracks[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CDE0[] =
{
    {.frame = {2, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CDE8[] =
{
    {.frame = {2, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CDF0[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CDF8[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE00[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE08[] =
{
    {.frame = {0, 1, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE10[] =
{
    {.frame = {3, 1, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE18[] =
{
    {.frame = {3, 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BikeTireTracks[] =
{
    gFieldEffectObjectImageAnim_850CDE0,
    gFieldEffectObjectImageAnim_850CDE0,
    gFieldEffectObjectImageAnim_850CDE8,
    gFieldEffectObjectImageAnim_850CDF0,
    gFieldEffectObjectImageAnim_850CDF8,
    gFieldEffectObjectImageAnim_850CE00,
    gFieldEffectObjectImageAnim_850CE08,
    gFieldEffectObjectImageAnim_850CE10,
    gFieldEffectObjectImageAnim_850CE18,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeTireTracks = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_BikeTireTracks, gFieldEffectObjectPicTable_BikeTireTracks, gDummySpriteAffineAnimTable, UpdateFootprintsTireTracksFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BikeHopBigSplash[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopBigSplash + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopBigSplash + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopBigSplash + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopBigSplash + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE7C[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BikeHopBigSplash[] =
{
    gFieldEffectObjectImageAnim_850CE7C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopBigSplash = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_BikeHopBigSplash, gFieldEffectObjectPicTable_BikeHopBigSplash, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Splash[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Splash + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Splash + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CEBC[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CEC8[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Splash[] =
{
    gFieldEffectObjectImageAnim_850CEBC,
    gFieldEffectObjectImageAnim_850CEC8,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Splash = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x8, gFieldEffectObjectImageAnimTable_Splash, gFieldEffectObjectPicTable_Splash, gDummySpriteAffineAnimTable, UpdateSplashFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BikeHopSmallSplash[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopSmallSplash + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopSmallSplash + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopSmallSplash + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CF24[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BikeHopSmallSplash[] =
{
    gFieldEffectObjectImageAnim_850CF24,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopSmallSplash = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x8, gFieldEffectObjectImageAnimTable_BikeHopSmallSplash, gFieldEffectObjectPicTable_BikeHopSmallSplash, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_LongGrass[] = {
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CF70[] =
{
    {.frame = {1, 3}},
    {.frame = {2, 3}},
    {.frame = {0, 4}},
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_LongGrass[] =
{
    gFieldEffectObjectImageAnim_850CF70,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_LongGrass = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_LongGrass, gFieldEffectObjectPicTable_LongGrass, gDummySpriteAffineAnimTable, UpdateLongGrassFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown16[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CFDC[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {5, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown16[] =
{
    gFieldEffectObjectImageAnim_850CFDC,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown16 = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown16, gFieldEffectObjectPicTable_Unknown16, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown17[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D05C[] =
{
    {.frame = {0, 10}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.frame = {8, 4}},
    {.jump = {.type = -2, .target = 7}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown17[] =
{
    gFieldEffectObjectImageAnim_850D05C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown17 = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown17, gFieldEffectObjectPicTable_Unknown17, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown18[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown18 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown18 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown18 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown18 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D0C0[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown18[] =
{
    gFieldEffectObjectImageAnim_850D0C0,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown18 = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown18, gFieldEffectObjectPicTable_Unknown18, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown19[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown19 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown19 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown19 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown19 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D118[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown19[] =
{
    gFieldEffectObjectImageAnim_850D118,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown19 = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown19, gFieldEffectObjectPicTable_Unknown19, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown29[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown29 + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown29 + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown29 + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D160[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown29[] =
{
    gFieldEffectObjectImageAnim_850D160,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown29 = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x8, gFieldEffectObjectImageAnimTable_Unknown29, gFieldEffectObjectPicTable_Unknown29, gDummySpriteAffineAnimTable, UpdateSandPileFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown20[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown20 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown20 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown20 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown20 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D1AC[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown20[] =
{
    gFieldEffectObjectImageAnim_850D1AC,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown20 = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown20, gFieldEffectObjectPicTable_Unknown20, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const union AffineAnimCmd gFieldEffectObjectRotScalAnim_850D1E4[] =
{
    {.frame = {.xScale = 0xFF00, .yScale = 0x100, .rotation = -128, .duration = 0}},
    {.frame = {.xScale = 0x1, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0xFFFF, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0xFFFF, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0x1, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.jump = {.type = 0x7FFE, .target = 1}},
};

const union AffineAnimCmd gFieldEffectObjectRotScalAnim_850D234[] =
{
    {.frame = {.xScale = 0x100, .yScale = 0x100, .rotation = -128, .duration = 0}},
    {.frame = {.xScale = 0xFFFF, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0x1, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0x1, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0xFFFF, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.jump = {.type = 0x7FFE, .target = 1}},
};

const union AffineAnimCmd *const gFieldEffectObjectRotScalAnimTable_Unknown21[] =
{
    gFieldEffectObjectRotScalAnim_850D1E4,
    gFieldEffectObjectRotScalAnim_850D234,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown21 = {0x0, 0xFFFF, &gDummyOamData, gDummySpriteAnimTable, ((void *)0), gFieldEffectObjectRotScalAnimTable_Unknown21, SpriteCallbackDummy};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BerryTreeGrowthSparkle[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D2D4[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {5, 8}},
    {.loop = {.type = -3, .count = 0}},
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.loop = {.type = -3, .count = 3}},
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {5, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BerryTreeGrowthSparkle[] =
{
    gFieldEffectObjectImageAnim_850D2D4,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BerryTreeGrowthSparkle = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_BerryTreeGrowthSparkle, gFieldEffectObjectPicTable_BerryTreeGrowthSparkle, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_TreeDisguise[] = {
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D37C[] =
{
    {.frame = {0, 16}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D384[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_TreeDisguise[] =
{
    gFieldEffectObjectImageAnim_850D37C,
    gFieldEffectObjectImageAnim_850D384,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_TreeDisguise = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_16x32, gFieldEffectObjectImageAnimTable_TreeDisguise, gFieldEffectObjectPicTable_TreeDisguise, gDummySpriteAffineAnimTable, UpdateDisguiseFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_MountainDisguise[] = {
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D3FC[] =
{
    {.frame = {0, 16}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D404[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_MountainDisguise[] =
{
    gFieldEffectObjectImageAnim_850D3FC,
    gFieldEffectObjectImageAnim_850D404,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_MountainDisguise = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_16x32, gFieldEffectObjectImageAnimTable_MountainDisguise, gFieldEffectObjectPicTable_MountainDisguise, gDummySpriteAffineAnimTable, UpdateDisguiseFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_SandDisguisePlaceholder[] = {
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SandDisguisePlaceholder = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_16x32, gFieldEffectObjectImageAnimTable_TreeDisguise, gFieldEffectObjectPicTable_SandDisguisePlaceholder, gDummySpriteAffineAnimTable, UpdateDisguiseFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Bird[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Bird, .size = sizeof gFieldEffectObjectPic_Bird},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D49C[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Bird[] =
{
    gFieldEffectObjectImageAnim_850D49C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Bird = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_32x32, gFieldEffectObjectImageAnimTable_Bird, gFieldEffectObjectPicTable_Bird, gDummySpriteAffineAnimTable, SpriteCallbackDummy};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShortGrass[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShortGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_ShortGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D4D0[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_ShortGrass[] =
{
    gFieldEffectObjectImageAnim_850D4D0,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShortGrass = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_ShortGrass, gFieldEffectObjectPicTable_ShortGrass, gDummySpriteAffineAnimTable, UpdateShortGrassFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_HotSpringsWater[] = {
    {.data = (u8 *)gFieldEffectObjectPic_HotSpringsWater, .size = sizeof gFieldEffectObjectPic_HotSpringsWater},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D500[] =
{
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_HotSpringsWater[] =
{
    gFieldEffectObjectImageAnim_850D500,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_HotSpringsWater = {0xFFFF, 0x1005, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_HotSpringsWater, gFieldEffectObjectPicTable_HotSpringsWater, gDummySpriteAffineAnimTable, UpdateHotSpringsWaterFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_JumpOutOfAsh[] = {
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D54C[] =
{
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_JumpOutOfAsh[] =
{
    gFieldEffectObjectImageAnim_850D54C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_JumpOutOfAsh = {0xFFFF, 0x100D, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_JumpOutOfAsh, gFieldEffectObjectPicTable_JumpOutOfAsh, gDummySpriteAffineAnimTable, sub_80B7CAC};

const struct SpritePalette gFieldEffectObjectPaletteInfo2 = {gFieldEffectObjectPalette2, 0x100D};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown33[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown33 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown33 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown33 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown33 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown33 + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D5B0[] =
{
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown33[] =
{
    gFieldEffectObjectImageAnim_850D5B0,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown33 = {0xFFFF, 0x100D, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown33, gFieldEffectObjectPicTable_Unknown33, gDummySpriteAffineAnimTable, sub_80B7A58};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Bubbles[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D624[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Bubbles[] =
{
    gFieldEffectObjectImageAnim_850D624,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Bubbles = {0xFFFF, 0x1004, &gEventObjectBaseOam_16x32, gFieldEffectObjectImageAnimTable_Bubbles, gFieldEffectObjectPicTable_Bubbles, gDummySpriteAffineAnimTable, UpdateBubblesFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown35[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown35 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown35 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D674[] =
{
    {.frame = {0, 3}},
    {.frame = {1, 5}},
    {.frame = {0, 5}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown35[] =
{
    gFieldEffectObjectImageAnim_850D674,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown35 = {0xFFFF, 0x100F, &gEventObjectBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown35, gFieldEffectObjectPicTable_Unknown35, gDummySpriteAffineAnimTable, UpdateSparkleFieldEffect};

const struct SpritePalette gFieldEffectObjectPaletteInfo3 = {gFieldEffectObjectPalette3, 0x100F};

const union AnimCmd gFieldEffectObjectImageAnim_850D6A8[] = {
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Rayquaza[] = {
    gFieldEffectObjectImageAnim_850D6A8,
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Rayquaza[] = {
    {.data = (u8 *)gEventObjectPic_Rayquaza + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Rayquaza = {0xFFFF, 0xFFFF, &gEventObjectBaseOam_32x32, gFieldEffectObjectImageAnimTable_Rayquaza, gFieldEffectObjectPicTable_Rayquaza, gDummySpriteAffineAnimTable, sub_8155F80};

const struct SpritePalette gFieldEffectObjectPaletteInfoUnused = {gEventObjectPalette2, 0x1011};
# 665 "src/event_object_movement.c" 2

const s16 gMovementDelaysMedium[] = {32, 64, 96, 128};
const s16 gMovementDelaysLong[] = {32, 64, 128, 192};
const s16 gMovementDelaysShort[] = {32, 48, 64, 80};

# 1 "src/data/field_event_obj/movement_type_func_tables.h" 1
u8 (*const gMovementTypeFuncs_WanderAround[])(struct EventObject *, struct Sprite *) = {
    MovementType_WanderAround_Step0,
    MovementType_WanderAround_Step1,
    MovementType_WanderAround_Step2,
    MovementType_WanderAround_Step3,
    MovementType_WanderAround_Step4,
    MovementType_WanderAround_Step5,
    MovementType_WanderAround_Step6,
};

const u8 gStandardDirections[] = {1, 2, 3, 4};

u8 (*const gGetVectorDirectionFuncs[])(s16, s16, s16, s16) = {
    GetVectorDirection,
    GetLimitedVectorDirection_SouthNorth,
    GetLimitedVectorDirection_WestEast,
    GetLimitedVectorDirection_WestNorth,
    GetLimitedVectorDirection_EastNorth,
    GetLimitedVectorDirection_WestSouth,
    GetLimitedVectorDirection_EastSouth,
    GetLimitedVectorDirection_SouthNorthWest,
    GetLimitedVectorDirection_SouthNorthEast,
    GetLimitedVectorDirection_NorthWestEast,
    GetLimitedVectorDirection_SouthWestEast,
};

u8 (*const gMovementTypeFuncs_LookAround[])(struct EventObject *, struct Sprite *) = {
    MovementType_LookAround_Step0,
    MovementType_LookAround_Step1,
    MovementType_LookAround_Step2,
    MovementType_LookAround_Step3,
    MovementType_LookAround_Step4,
};

u8 (*const gMovementTypeFuncs_WanderUpAndDown[])(struct EventObject *, struct Sprite *) = {
    MovementType_WanderUpAndDown_Step0,
    MovementType_WanderUpAndDown_Step1,
    MovementType_WanderUpAndDown_Step2,
    MovementType_WanderUpAndDown_Step3,
    MovementType_WanderUpAndDown_Step4,
    MovementType_WanderUpAndDown_Step5,
    MovementType_WanderUpAndDown_Step6,
};

const u8 gUpAndDownDirections[] = {1, 2};

u8 (*const gMovementTypeFuncs_WanderLeftAndRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_WanderLeftAndRight_Step0,
    MovementType_WanderLeftAndRight_Step1,
    MovementType_WanderLeftAndRight_Step2,
    MovementType_WanderLeftAndRight_Step3,
    MovementType_WanderLeftAndRight_Step4,
    MovementType_WanderLeftAndRight_Step5,
    MovementType_WanderLeftAndRight_Step6,
};

const u8 gLeftAndRightDirections[] = {3, 4};

u8 (*const gMovementTypeFuncs_FaceDirection[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceDirection_Step0,
    MovementType_FaceDirection_Step1,
    MovementType_FaceDirection_Step2,
};

u8 (*const gMovementTypeFuncs_BerryTreeGrowth[])(struct EventObject *, struct Sprite *) = {
    MovementType_BerryTreeGrowth_Step0,
    MovementType_BerryTreeGrowth_Step1,
    MovementType_BerryTreeGrowth_Step2,
    MovementType_BerryTreeGrowth_Step3,
    MovementType_BerryTreeGrowth_Step4,
};

u8 (*const gMovementTypeFuncs_FaceDownAndUp[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceDownAndUp_Step0,
    MovementType_FaceDownAndUp_Step1,
    MovementType_FaceDownAndUp_Step2,
    MovementType_FaceDownAndUp_Step3,
    MovementType_FaceDownAndUp_Step4,
};

u8 (*const gMovementTypeFuncs_FaceLeftAndRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceLeftAndRight_Step0,
    MovementType_FaceLeftAndRight_Step1,
    MovementType_FaceLeftAndRight_Step2,
    MovementType_FaceLeftAndRight_Step3,
    MovementType_FaceLeftAndRight_Step4,
};

u8 (*const gMovementTypeFuncs_FaceUpAndLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceUpAndLeft_Step0,
    MovementType_FaceUpAndLeft_Step1,
    MovementType_FaceUpAndLeft_Step2,
    MovementType_FaceUpAndLeft_Step3,
    MovementType_FaceUpAndLeft_Step4,
};

const u8 gUpAndLeftDirections[] = {2, 3};

u8 (*const gMovementTypeFuncs_FaceUpAndRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceUpAndRight_Step0,
    MovementType_FaceUpAndRight_Step1,
    MovementType_FaceUpAndRight_Step2,
    MovementType_FaceUpAndRight_Step3,
    MovementType_FaceUpAndRight_Step4,
};

const u8 gUpAndRightDirections[] = {2, 4};

u8 (*const gMovementTypeFuncs_FaceDownAndLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceDownAndLeft_Step0,
    MovementType_FaceDownAndLeft_Step1,
    MovementType_FaceDownAndLeft_Step2,
    MovementType_FaceDownAndLeft_Step3,
    MovementType_FaceDownAndLeft_Step4,
};

const u8 gDownAndLeftDirections[] = {1, 3};

u8 (*const gMovementTypeFuncs_FaceDownAndRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceDownAndRight_Step0,
    MovementType_FaceDownAndRight_Step1,
    MovementType_FaceDownAndRight_Step2,
    MovementType_FaceDownAndRight_Step3,
    MovementType_FaceDownAndRight_Step4,
};

const u8 gDownAndRightDirections[] = {1, 4};

u8 (*const gMovementTypeFuncs_FaceDownUpAndLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceDownUpAndLeft_Step0,
    MovementType_FaceDownUpAndLeft_Step1,
    MovementType_FaceDownUpAndLeft_Step2,
    MovementType_FaceDownUpAndLeft_Step3,
    MovementType_FaceDownUpAndLeft_Step4,
};

const u8 gDownUpAndLeftDirections[] = {2, 1, 3, 1};

u8 (*const gMovementTypeFuncs_FaceDownUpAndRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceDownUpAndRight_Step0,
    MovementType_FaceDownUpAndRight_Step1,
    MovementType_FaceDownUpAndRight_Step2,
    MovementType_FaceDownUpAndRight_Step3,
    MovementType_FaceDownUpAndRight_Step4,
};

const u8 gDownUpAndRightDirections[] = {1, 2, 4, 1};

u8 (*const gMovementTypeFuncs_FaceUpLeftAndRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceUpLeftAndRight_Step0,
    MovementType_FaceUpLeftAndRight_Step1,
    MovementType_FaceUpLeftAndRight_Step2,
    MovementType_FaceUpLeftAndRight_Step3,
    MovementType_FaceUpLeftAndRight_Step4,
};

const u8 gUpLeftAndRightDirections[] = {2, 3, 4, 2};

u8 (*const gMovementTypeFuncs_FaceDownLeftAndRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_FaceDownLeftAndRight_Step0,
    MovementType_FaceDownLeftAndRight_Step1,
    MovementType_FaceDownLeftAndRight_Step2,
    MovementType_FaceDownLeftAndRight_Step3,
    MovementType_FaceDownLeftAndRight_Step4,
};

const u8 gDownLeftAndRightDirections[] = {3, 4, 1, 1};

u8 (*const gMovementTypeFuncs_RotateCounterclockwise[])(struct EventObject *, struct Sprite *) = {
    MovementType_RotateCounterclockwise_Step0,
    MovementType_RotateCounterclockwise_Step1,
    MovementType_RotateCounterclockwise_Step2,
    MovementType_RotateCounterclockwise_Step3,
};

const u8 gCounterclockwiseDirections[] = {1, 4, 3, 1, 2};

u8 (*const gMovementTypeFuncs_RotateClockwise[])(struct EventObject *, struct Sprite *) = {
    MovementType_RotateClockwise_Step0,
    MovementType_RotateClockwise_Step1,
    MovementType_RotateClockwise_Step2,
    MovementType_RotateClockwise_Step3,
};

const u8 gClockwiseDirections[] = {1, 3, 4, 2, 1};

u8 (*const gMovementTypeFuncs_WalkBackAndForth[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkBackAndForth_Step0,
    MovementType_WalkBackAndForth_Step1,
    MovementType_WalkBackAndForth_Step2,
    MovementType_WalkBackAndForth_Step3,
};

u8 (*const gMovementTypeFuncs_WalkSequenceUpRightLeftDown[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpRightLeftDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpRightLeftDownDirections[] = {2, 4, 3, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceRightLeftDownUp[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightLeftDownUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightLeftDownUpDirections[] = {4, 3, 1, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceDownUpRightLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownUpRightLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownUpRightLeftDirections[] = {1, 2, 4, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftDownUpRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftDownUpRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftDownUpRightDirections[] = {3, 1, 2, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceUpLeftRightDown[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpLeftRightDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpLeftRightDownDirections[] = {2, 3, 4, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftRightDownUp[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftRightDownUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftRightDownUpDirections[] = {3, 4, 1, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceDownUpLeftRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownUpLeftRight_Step1,
    MovementType_WalkSequence_Step2,
};

u8 (*const gMovementTypeFuncs_WalkSequenceRightDownUpLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightDownUpLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightDownUpLeftDirections[] = {4, 1, 2, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftUpDownRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftUpDownRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftUpDownRightDirections[] = {3, 2, 1, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceUpDownRightLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpDownRightLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpDownRightLeftDirections[] = {2, 1, 4, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceRightLeftUpDown[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightLeftUpDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightLeftUpDownDirections[] = {4, 3, 2, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceDownRightLeftUp[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownRightLeftUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownRightLeftUpDirections[] = {1, 4, 3, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceRightUpDownLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightUpDownLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightUpDownLeftDirections[] = {4, 2, 1, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceUpDownLeftRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpDownLeftRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpDownLeftRightDirections[] = {2, 1, 3, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftRightUpDown[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftRightUpDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftRightUpDownDirections[] = {3, 4, 2, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceDownLeftRightUp[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownLeftRightUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownLeftRightUpDirections[] = {1, 3, 4, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceUpLeftDownRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpLeftDownRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpLeftDownRightDirections[] = {2, 3, 1, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceDownRightUpLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownRightUpLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownRightUpLeftDirections[] = {1, 4, 2, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftDownRightUp[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftDownRightUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftDownRightUpDirections[] = {3, 1, 4, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceRightUpLeftDown[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightUpLeftDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightUpLeftDownDirections[] = {4, 2, 3, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceUpRightDownLeft[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpRightDownLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpRightDownLeftDirections[] = {2, 4, 1, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceDownLeftUpRight[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownLeftUpRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownLeftUpRightDirections[] = {1, 3, 2, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftUpRightDown[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftUpRightDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftUpRightDownDirections[] = {3, 2, 4, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceRightDownLeftUp[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightDownLeftUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightDownLeftUpDirections[] = {4, 1, 3, 2};

u8 (*const gMovementTypeFuncs_CopyPlayer[])(struct EventObject *, struct Sprite *) = {
    MovementType_CopyPlayer_Step0,
    MovementType_CopyPlayer_Step1,
    MovementType_CopyPlayer_Step2,
};

bool8 (*const gCopyPlayerMovementFuncs[])(struct EventObject *, struct Sprite *, u8, bool8(u8)) = {
    CopyablePlayerMovement_None,
    CopyablePlayerMovement_FaceDirection,
    CopyablePlayerMovement_GoSpeed0,
    CopyablePlayerMovement_GoSpeed1,
    CopyablePlayerMovement_GoSpeed2,
    CopyablePlayerMovement_Slide,
    cph_IM_DIFFERENT,
    CopyablePlayerMovement_GoSpeed4,
    CopyablePlayerMovement_Jump,
    CopyablePlayerMovement_None,
    CopyablePlayerMovement_None,
};

u8 (*const gMovementTypeFuncs_CopyPlayerInGrass[])(struct EventObject *, struct Sprite *) = {
    MovementType_CopyPlayer_Step0,
    MovementType_CopyPlayerInGrass_Step1,
    MovementType_CopyPlayer_Step2,
};

u8 (*const gMovementTypeFuncs_Hidden[])(struct EventObject *, struct Sprite *) = {
    MovementType_Hidden_Step0,
};

u8 (*const gMovementTypeFuncs_WalkInPlace[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_WalkSlowlyInPlace[])(struct EventObject *, struct Sprite *) = {
    MovementType_WalkSlowlyInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_JogInPlace[])(struct EventObject *, struct Sprite *) = {
    MovementType_JogInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_RunInPlace[])(struct EventObject *, struct Sprite *) = {
    MovementType_RunInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_Invisible[])(struct EventObject *, struct Sprite *) = {
    MovementType_Invisible_Step0,
    MovementType_Invisible_Step1,
    MovementType_Invisible_Step2,
};
# 671 "src/event_object_movement.c" 2

const u8 gFaceDirectionAnimNums[] = {
    [0] = 0,
    [1] = 0,
    [2] = 1,
    [3] = 2,
    [4] = 3,
    [5] = 0,
    [6] = 0,
    [7] = 1,
    [8] = 1,
};
const u8 gMoveDirectionAnimNums[] = {
    [0] = 4,
    [1] = 4,
    [2] = 5,
    [3] = 6,
    [4] = 7,
    [5] = 4,
    [6] = 4,
    [7] = 5,
    [8] = 5,
};
const u8 gMoveDirectionFastAnimNums[] = {
    [0] = 8,
    [1] = 8,
    [2] = 9,
    [3] = 10,
    [4] = 11,
    [5] = 8,
    [6] = 8,
    [7] = 9,
    [8] = 9,
};
const u8 gMoveDirectionFasterAnimNums[] = {
    [0] = 12,
    [1] = 12,
    [2] = 13,
    [3] = 14,
    [4] = 15,
    [5] = 12,
    [6] = 12,
    [7] = 13,
    [8] = 13,
};
const u8 gMoveDirectionFastestAnimNums[] = {
    [0] = 16,
    [1] = 16,
    [2] = 17,
    [3] = 18,
    [4] = 19,
    [5] = 16,
    [6] = 16,
    [7] = 17,
    [8] = 17,
};
const u8 gJumpSpecialDirectionAnimNums[] = {
    [0] = 20,
    [1] = 20,
    [2] = 21,
    [3] = 22,
    [4] = 23,
    [5] = 20,
    [6] = 20,
    [7] = 21,
    [8] = 21,
};
const u8 gAcroWheelieDirectionAnimNums[] = {
    [0] = 20,
    [1] = 20,
    [2] = 21,
    [3] = 22,
    [4] = 23,
    [5] = 20,
    [6] = 20,
    [7] = 21,
    [8] = 21,
};
const u8 gUnrefAnimNums_08375633[] = {
    [0] = 24,
    [1] = 24,
    [2] = 25,
    [3] = 26,
    [4] = 27,
    [5] = 24,
    [6] = 24,
    [7] = 25,
    [8] = 25,
};
const u8 gAcroEndWheelieDirectionAnimNums[] = {
    [0] = 28,
    [1] = 28,
    [2] = 29,
    [3] = 30,
    [4] = 31,
    [5] = 28,
    [6] = 28,
    [7] = 29,
    [8] = 29,
};
const u8 gAcroUnusedActionDirectionAnimNums[] = {
    [0] = 32,
    [1] = 32,
    [2] = 33,
    [3] = 34,
    [4] = 35,
    [5] = 32,
    [6] = 32,
    [7] = 33,
    [8] = 33,
};
const u8 gAcroWheeliePedalDirectionAnimNums[] = {
    [0] = 36,
    [1] = 36,
    [2] = 37,
    [3] = 38,
    [4] = 39,
    [5] = 36,
    [6] = 36,
    [7] = 37,
    [8] = 37,
};
const u8 gFishingDirectionAnimNums[] = {
    [0] = 0,
    [1] = 0,
    [2] = 1,
    [3] = 2,
    [4] = 3,
    [5] = 0,
    [6] = 0,
    [7] = 1,
    [8] = 1,
};
const u8 gFishingNoCatchDirectionAnimNums[] = {
    [0] = 4,
    [1] = 4,
    [2] = 5,
    [3] = 6,
    [4] = 7,
    [5] = 4,
    [6] = 4,
    [7] = 5,
    [8] = 5,
};
const u8 gFishingBiteDirectionAnimNums[] = {
    [0] = 8,
    [1] = 8,
    [2] = 9,
    [3] = 10,
    [4] = 11,
    [5] = 8,
    [6] = 8,
    [7] = 9,
    [8] = 9,
};
const u8 gRunningDirectionAnimNums[] = {
    [0] = 20,
    [1] = 20,
    [2] = 21,
    [3] = 22,
    [4] = 23,
    [5] = 20,
    [6] = 20,
    [7] = 21,
    [8] = 21,
};

const u8 gTrainerFacingDirectionMovementTypes[] = {
    [0] = 0x8,
    [1] = 0x8,
    [2] = 0x7,
    [3] = 0x9,
    [4] = 0xA,
    [5] = 0x8,
    [6] = 0x8,
    [7] = 0x7,
    [8] = 0x7,
};

bool8 (*const gOppositeDirectionBlockedMetatileFuncs[])(u8) = {
    MetatileBehavior_IsSouthBlocked,
    MetatileBehavior_IsNorthBlocked,
    MetatileBehavior_IsWestBlocked,
    MetatileBehavior_IsEastBlocked
};

bool8 (*const gDirectionBlockedMetatileFuncs[])(u8) = {
    MetatileBehavior_IsNorthBlocked,
    MetatileBehavior_IsSouthBlocked,
    MetatileBehavior_IsEastBlocked,
    MetatileBehavior_IsWestBlocked
};

static const struct Coords16 sDirectionToVectors[] = {
    { 0, 0},
    { 0, 1},
    { 0, -1},
    {-1, 0},
    { 1, 0},
    {-1, 1},
    { 1, 1},
    {-1, -1},
    { 1, -1}
};

const u8 gFaceDirectionMovementActions[] = {
    0x0,
    0x0,
    0x1,
    0x2,
    0x3,
};
const u8 gWalkSlowMovementActions[] = {
    0x4,
    0x4,
    0x5,
    0x6,
    0x7,
};
const u8 gWalkNormalMovementActions[] = {
    0x8,
    0x8,
    0x9,
    0xA,
    0xB,
};
const u8 gWalkFastMovementActions[] = {
    0x15,
    0x15,
    0x16,
    0x17,
    0x18,
};
const u8 gRideWaterCurrentMovementActions[] = {
    0x29,
    0x29,
    0x2A,
    0x2B,
    0x2C,
};
const u8 gWalkFastestMovementActions[] = {
    0x2D,
    0x2D,
    0x2E,
    0x2F,
    0x30,
};
const u8 gSlideMovementActions[] = {
    0x31,
    0x31,
    0x32,
    0x33,
    0x34,
};
const u8 gPlayerRunMovementActions[] = {
    0x35,
    0x35,
    0x36,
    0x37,
    0x38,
};
const u8 gJump2MovementActions[] = {
    0xC,
    0xC,
    0xD,
    0xE,
    0xF,
};
const u8 gJumpInPlaceMovementActions[] = {
    0x46,
    0x46,
    0x47,
    0x48,
    0x49,
};
const u8 gJumpInPlaceTurnAroundMovementActions[] = {
    0x4B,
    0x4B,
    0x4A,
    0x4D,
    0x4C,
};
const u8 gJumpMovementActions[] = {
    0x42,
    0x42,
    0x43,
    0x44,
    0x45,
};
const u8 gJumpSpecialMovementActions[] = {
    0x3A,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
};
const u8 gWalkInPlaceSlowMovementActions[] = {
    0x19,
    0x19,
    0x1A,
    0x1B,
    0x1C,
};
const u8 gWalkInPlaceNormalMovementActions[] = {
    0x1D,
    0x1D,
    0x1E,
    0x1F,
    0x20,
};
const u8 gWalkInPlaceFastMovementActions[] = {
    0x21,
    0x21,
    0x22,
    0x23,
    0x24,
};
const u8 gWalkInPlaceFastestMovementActions[] = {
    0x25,
    0x25,
    0x26,
    0x27,
    0x28,
};
const u8 gAcroWheelieFaceDirectionMovementActions[] = {
    0x64,
    0x64,
    0x65,
    0x66,
    0x67,
};
const u8 gAcroPopWheelieFaceDirectionMovementActions[] = {
    0x68,
    0x68,
    0x69,
    0x6A,
    0x6B,
};
const u8 gAcroEndWheelieFaceDirectionMovementActions[] = {
    0x6C,
    0x6C,
    0x6D,
    0x6E,
    0x6F,
};
const u8 gAcroWheelieHopFaceDirectionMovementActions[] = {
    0x70,
    0x70,
    0x71,
    0x72,
    0x73,
};
const u8 gAcroWheelieHopDirectionMovementActions[] = {
    0x74,
    0x74,
    0x75,
    0x76,
    0x77,
};
const u8 gAcroWheelieJumpDirectionMovementActions[] = {
    0x78,
    0x78,
    0x79,
    0x7A,
    0x7B,
};
const u8 gAcroWheelieInPlaceDirectionMovementActions[] = {
    0x7C,
    0x7C,
    0x7D,
    0x7E,
    0x7F,
};
const u8 gAcroPopWheelieMoveDirectionMovementActions[] = {
    0x80,
    0x80,
    0x81,
    0x82,
    0x83,
};
const u8 gAcroWheelieMoveDirectionMovementActions[] = {
    0x84,
    0x84,
    0x85,
    0x86,
    0x87,
};
const u8 gAcroEndWheelieMoveDirectionMovementActions[] = {
    0x88,
    0x88,
    0x89,
    0x8A,
    0x8B,
};

const u8 gOppositeDirections[] = {
    2,
    1,
    4,
    3,
    8,
    7,
    6,
    5,
};

const u8 gUnknown_0850DC2F[][4] = {
    {2, 1, 4, 3},
    {1, 2, 3, 4},
    {3, 4, 2, 1},
    {4, 3, 1, 2}
};

const u8 gUnknown_0850DC3F[][4] = {
    {2, 1, 4, 3},
    {1, 2, 3, 4},
    {4, 3, 1, 2},
    {3, 4, 2, 1}
};

# 1 "src/data/field_event_obj/movement_action_func_tables.h" 1
u8 MovementAction_FaceDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_FaceDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_PauseSpriteAnim(struct EventObject *, struct Sprite *);
u8 MovementAction_FaceUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_FaceLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_FaceRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalUpLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalUpLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalUpRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalUpRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalDownLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalDownLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalDownRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalDownRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkSlowRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalUpLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalUpLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalUpRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalUpRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalDownLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalDownLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalDownRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalDownRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkNormalRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_Jump2Down_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Jump2Down_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_Jump2Up_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Jump2Up_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_Jump2Left_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Jump2Left_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_Jump2Right_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Jump2Right_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_Delay1_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Delay_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_Finish(struct EventObject *, struct Sprite *);
u8 MovementAction_Delay2_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Delay4_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Delay8_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Delay16_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlowDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlow_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlowUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlowLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlowRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceNormalDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlace_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceNormalUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceNormalLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceNormalRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastestDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastestUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastestLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastestRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RideWaterCurrentDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RideWaterCurrentDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_RideWaterCurrentUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RideWaterCurrentUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_RideWaterCurrentLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RideWaterCurrentLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_RideWaterCurrentRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RideWaterCurrentRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastestDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastestDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastestUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastestUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastestLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastestLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastestRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkFastestRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_SlideDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_SlideDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_SlideUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_SlideUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_SlideLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_SlideLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_SlideRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_SlideRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_PlayerRunDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_PlayerRunDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_PlayerRunUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_PlayerRunUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_PlayerRunLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_PlayerRunLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_PlayerRunRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_PlayerRunRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_StartAnimInDirection_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WaitSpriteAnim(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpSpecialDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpSpecialDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpSpecialUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpSpecialUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpSpecialLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpSpecialLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpSpecialRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpSpecialRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_FacePlayer_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_FaceAwayPlayer_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_LockFacingDirection_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_UnlockFacingDirection_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceDownUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceDownUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceUpDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceUpDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceLeftRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceLeftRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceRightLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_JumpInPlaceRightLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_FaceOriginalDirection_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_NurseJoyBowDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_EnableJumpLandingGroundEffect_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_DisableJumpLandingGroundEffect_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_DisableAnimation_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RestoreAnimation_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_SetInvisible_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_SetVisible_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_EmoteExclamationMark_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_EmoteQuestionMark_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_EmoteHeart_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RevealTrainer_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RevealTrainer_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_RockSmashBreak_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_RockSmashBreak_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_RockSmashBreak_Step2(struct EventObject *, struct Sprite *);
u8 MovementAction_CutTree_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_CutTree_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_CutTree_Step2(struct EventObject *, struct Sprite *);
u8 MovementAction_SetFixedPriority_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_ClearFixedPriority_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_InitAffineAnim_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_ClearAffineAnim_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Unknown1_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Unknown2_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkDownStartAffine_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkDownStartAffine_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkDownAffine_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkDownAffine_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkLeftAffine_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkLeftAffine_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkRightAffine_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_WalkRightAffine_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieFaceDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieFaceUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieFaceLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieFaceRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieFaceDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieFaceUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieFaceLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieFaceRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_UnusedAcroActionDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_UnusedAcroActionUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_UnusedAcroActionLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_UnusedAcroActionRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Figure8_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Figure8_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieHopRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieInPlaceDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieInPlaceUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieInPlaceLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieInPlaceRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveDown_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveLeft_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveLeft_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveRight_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveRight_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_Levitate_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_StopLevitate_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_DestroyExtraTaskIfAtTop_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_StoreAndLockAnim_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_Finish(struct EventObject *, struct Sprite *);
u8 MovementAction_FreeAndUnlockAnim_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_FlyUp_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_FlyUp_Step1(struct EventObject *, struct Sprite *);
u8 MovementAction_Fly_Finish(struct EventObject *, struct Sprite *);
u8 MovementAction_FlyDown_Step0(struct EventObject *, struct Sprite *);
u8 MovementAction_FlyDown_Step1(struct EventObject *, struct Sprite *);

u8 (*const gMovementActionFuncs_FaceDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Jump2Down[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Jump2Up[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Jump2Left[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Jump2Right[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay1[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay2[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay4[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay8[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay16[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceSlowDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceSlowUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceSlowLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceSlowRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceNormalDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceNormalUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceNormalLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceNormalRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastestDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastestUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastestLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastestRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_RideWaterCurrentDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_RideWaterCurrentUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_RideWaterCurrentLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_RideWaterCurrentRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastestDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastestUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastestLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastestRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_SlideDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_SlideUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_SlideLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_SlideRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_PlayerRunDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_PlayerRunUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_PlayerRunLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_PlayerRunRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_StartAnimInDirection[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpSpecialDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpSpecialUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpSpecialLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpSpecialRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FacePlayer[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceAwayPlayer[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_LockFacingDirection[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_UnlockFacingDirection[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceDownUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceUpDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceLeftRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceRightLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceOriginalDirection[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_NurseJoyBowDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_EnableJumpLandingGroundEffect[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_DisableJumpLandingGroundEffect[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_DisableAnimation[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_RestoreAnimation[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_SetInvisible[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_SetVisible[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_EmoteExclamationMark[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_EmoteQuestionMark[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_EmoteHeart[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_RevealTrainer[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_RockSmashBreak[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_CutTree[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_SetFixedPriority[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_ClearFixedPriority[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_InitAffineAnim[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_ClearAffineAnim[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Unknown1[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Unknown2[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkDownStartAffine[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkDownAffine[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieFaceDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieFaceUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieFaceLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieFaceRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieFaceDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieFaceUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieFaceLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieFaceRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopFaceDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopFaceUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopFaceLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopFaceRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieJumpDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieJumpUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieJumpLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieJumpRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieInPlaceDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieInPlaceUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieInPlaceLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieInPlaceRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieMoveDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieMoveUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieMoveLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieMoveRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieMoveDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieMoveUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieMoveLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieMoveRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieMoveDown[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieMoveUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieMoveLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieMoveRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDiagonalUpLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDiagonalUpRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDiagonalDownLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDiagonalDownRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDiagonalUpLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDiagonalUpRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDiagonalDownLeft[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDiagonalDownRight[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_StoreAndLockAnim[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FreeAndUnlockAnim[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkLeftAffine[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkRightAffine[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Levitate[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_StopLevitate[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_DestroyExtraTaskIfAtTop[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_Figure8[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FlyUp[])(struct EventObject *, struct Sprite *);
u8 (*const gMovementActionFuncs_FlyDown[])(struct EventObject *, struct Sprite *);

u8 (*const *const gMovementActionFuncs[])(struct EventObject *, struct Sprite *) = {
    [0x0] = gMovementActionFuncs_FaceDown,
    [0x1] = gMovementActionFuncs_FaceUp,
    [0x2] = gMovementActionFuncs_FaceLeft,
    [0x3] = gMovementActionFuncs_FaceRight,
    [0x4] = gMovementActionFuncs_WalkSlowDown,
    [0x5] = gMovementActionFuncs_WalkSlowUp,
    [0x6] = gMovementActionFuncs_WalkSlowLeft,
    [0x7] = gMovementActionFuncs_WalkSlowRight,
    [0x8] = gMovementActionFuncs_WalkNormalDown,
    [0x9] = gMovementActionFuncs_WalkNormalUp,
    [0xA] = gMovementActionFuncs_WalkNormalLeft,
    [0xB] = gMovementActionFuncs_WalkNormalRight,
    [0xC] = gMovementActionFuncs_Jump2Down,
    [0xD] = gMovementActionFuncs_Jump2Up,
    [0xE] = gMovementActionFuncs_Jump2Left,
    [0xF] = gMovementActionFuncs_Jump2Right,
    [0x10] = gMovementActionFuncs_Delay1,
    [0x11] = gMovementActionFuncs_Delay2,
    [0x12] = gMovementActionFuncs_Delay4,
    [0x13] = gMovementActionFuncs_Delay8,
    [0x14] = gMovementActionFuncs_Delay16,
    [0x15] = gMovementActionFuncs_WalkFastDown,
    [0x16] = gMovementActionFuncs_WalkFastUp,
    [0x17] = gMovementActionFuncs_WalkFastLeft,
    [0x18] = gMovementActionFuncs_WalkFastRight,
    [0x19] = gMovementActionFuncs_WalkInPlaceSlowDown,
    [0x1A] = gMovementActionFuncs_WalkInPlaceSlowUp,
    [0x1B] = gMovementActionFuncs_WalkInPlaceSlowLeft,
    [0x1C] = gMovementActionFuncs_WalkInPlaceSlowRight,
    [0x1D] = gMovementActionFuncs_WalkInPlaceNormalDown,
    [0x1E] = gMovementActionFuncs_WalkInPlaceNormalUp,
    [0x1F] = gMovementActionFuncs_WalkInPlaceNormalLeft,
    [0x20] = gMovementActionFuncs_WalkInPlaceNormalRight,
    [0x21] = gMovementActionFuncs_WalkInPlaceFastDown,
    [0x22] = gMovementActionFuncs_WalkInPlaceFastUp,
    [0x23] = gMovementActionFuncs_WalkInPlaceFastLeft,
    [0x24] = gMovementActionFuncs_WalkInPlaceFastRight,
    [0x25] = gMovementActionFuncs_WalkInPlaceFastestDown,
    [0x26] = gMovementActionFuncs_WalkInPlaceFastestUp,
    [0x27] = gMovementActionFuncs_WalkInPlaceFastestLeft,
    [0x28] = gMovementActionFuncs_WalkInPlaceFastestRight,
    [0x29] = gMovementActionFuncs_RideWaterCurrentDown,
    [0x2A] = gMovementActionFuncs_RideWaterCurrentUp,
    [0x2B] = gMovementActionFuncs_RideWaterCurrentLeft,
    [0x2C] = gMovementActionFuncs_RideWaterCurrentRight,
    [0x2D] = gMovementActionFuncs_WalkFastestDown,
    [0x2E] = gMovementActionFuncs_WalkFastestUp,
    [0x2F] = gMovementActionFuncs_WalkFastestLeft,
    [0x30] = gMovementActionFuncs_WalkFastestRight,
    [0x31] = gMovementActionFuncs_SlideDown,
    [0x32] = gMovementActionFuncs_SlideUp,
    [0x33] = gMovementActionFuncs_SlideLeft,
    [0x34] = gMovementActionFuncs_SlideRight,
    [0x35] = gMovementActionFuncs_PlayerRunDown,
    [0x36] = gMovementActionFuncs_PlayerRunUp,
    [0x37] = gMovementActionFuncs_PlayerRunLeft,
    [0x38] = gMovementActionFuncs_PlayerRunRight,
    [0x39] = gMovementActionFuncs_StartAnimInDirection,
    [0x3A] = gMovementActionFuncs_JumpSpecialDown,
    [0x3B] = gMovementActionFuncs_JumpSpecialUp,
    [0x3C] = gMovementActionFuncs_JumpSpecialLeft,
    [0x3D] = gMovementActionFuncs_JumpSpecialRight,
    [0x3E] = gMovementActionFuncs_FacePlayer,
    [0x3F] = gMovementActionFuncs_FaceAwayPlayer,
    [0x40] = gMovementActionFuncs_LockFacingDirection,
    [0x41] = gMovementActionFuncs_UnlockFacingDirection,
    [0x42] = gMovementActionFuncs_JumpDown,
    [0x43] = gMovementActionFuncs_JumpUp,
    [0x44] = gMovementActionFuncs_JumpLeft,
    [0x45] = gMovementActionFuncs_JumpRight,
    [0x46] = gMovementActionFuncs_JumpInPlaceDown,
    [0x47] = gMovementActionFuncs_JumpInPlaceUp,
    [0x48] = gMovementActionFuncs_JumpInPlaceLeft,
    [0x49] = gMovementActionFuncs_JumpInPlaceRight,
    [0x4A] = gMovementActionFuncs_JumpInPlaceDownUp,
    [0x4B] = gMovementActionFuncs_JumpInPlaceUpDown,
    [0x4C] = gMovementActionFuncs_JumpInPlaceLeftRight,
    [0x4D] = gMovementActionFuncs_JumpInPlaceRightLeft,
    [0x4E] = gMovementActionFuncs_FaceOriginalDirection,
    [0x4F] = gMovementActionFuncs_NurseJoyBowDown,
    [0x50] = gMovementActionFuncs_EnableJumpLandingGroundEffect,
    [0x51] = gMovementActionFuncs_DisableJumpLandingGroundEffect,
    [0x52] = gMovementActionFuncs_DisableAnimation,
    [0x53] = gMovementActionFuncs_RestoreAnimation,
    [0x54] = gMovementActionFuncs_SetInvisible,
    [0x55] = gMovementActionFuncs_SetVisible,
    [0x56] = gMovementActionFuncs_EmoteExclamationMark,
    [0x57] = gMovementActionFuncs_EmoteQuestionMark,
    [0x58] = gMovementActionFuncs_EmoteHeart,
    [0x59] = gMovementActionFuncs_RevealTrainer,
    [0x5A] = gMovementActionFuncs_RockSmashBreak,
    [0x5B] = gMovementActionFuncs_CutTree,
    [0x5C] = gMovementActionFuncs_SetFixedPriority,
    [0x5D] = gMovementActionFuncs_ClearFixedPriority,
    [0x5E] = gMovementActionFuncs_InitAffineAnim,
    [0x5F] = gMovementActionFuncs_ClearAffineAnim,
    [0x60] = gMovementActionFuncs_Unknown1,
    [0x61] = gMovementActionFuncs_Unknown2,
    [0x62] = gMovementActionFuncs_WalkDownStartAffine,
    [0x63] = gMovementActionFuncs_WalkDownAffine,
    [0x64] = gMovementActionFuncs_AcroWheelieFaceDown,
    [0x65] = gMovementActionFuncs_AcroWheelieFaceUp,
    [0x66] = gMovementActionFuncs_AcroWheelieFaceLeft,
    [0x67] = gMovementActionFuncs_AcroWheelieFaceRight,
    [0x68] = gMovementActionFuncs_AcroPopWheelieDown,
    [0x69] = gMovementActionFuncs_AcroPopWheelieUp,
    [0x6A] = gMovementActionFuncs_AcroPopWheelieLeft,
    [0x6B] = gMovementActionFuncs_AcroPopWheelieRight,
    [0x6C] = gMovementActionFuncs_AcroEndWheelieFaceDown,
    [0x6D] = gMovementActionFuncs_AcroEndWheelieFaceUp,
    [0x6E] = gMovementActionFuncs_AcroEndWheelieFaceLeft,
    [0x6F] = gMovementActionFuncs_AcroEndWheelieFaceRight,
    [0x70] = gMovementActionFuncs_AcroWheelieHopFaceDown,
    [0x71] = gMovementActionFuncs_AcroWheelieHopFaceUp,
    [0x72] = gMovementActionFuncs_AcroWheelieHopFaceLeft,
    [0x73] = gMovementActionFuncs_AcroWheelieHopFaceRight,
    [0x74] = gMovementActionFuncs_AcroWheelieHopDown,
    [0x75] = gMovementActionFuncs_AcroWheelieHopUp,
    [0x76] = gMovementActionFuncs_AcroWheelieHopLeft,
    [0x77] = gMovementActionFuncs_AcroWheelieHopRight,
    [0x78] = gMovementActionFuncs_AcroWheelieJumpDown,
    [0x79] = gMovementActionFuncs_AcroWheelieJumpUp,
    [0x7A] = gMovementActionFuncs_AcroWheelieJumpLeft,
    [0x7B] = gMovementActionFuncs_AcroWheelieJumpRight,
    [0x7C] = gMovementActionFuncs_AcroWheelieInPlaceDown,
    [0x7D] = gMovementActionFuncs_AcroWheelieInPlaceUp,
    [0x7E] = gMovementActionFuncs_AcroWheelieInPlaceLeft,
    [0x7F] = gMovementActionFuncs_AcroWheelieInPlaceRight,
    [0x80] = gMovementActionFuncs_AcroPopWheelieMoveDown,
    [0x81] = gMovementActionFuncs_AcroPopWheelieMoveUp,
    [0x82] = gMovementActionFuncs_AcroPopWheelieMoveLeft,
    [0x83] = gMovementActionFuncs_AcroPopWheelieMoveRight,
    [0x84] = gMovementActionFuncs_AcroWheelieMoveDown,
    [0x85] = gMovementActionFuncs_AcroWheelieMoveUp,
    [0x86] = gMovementActionFuncs_AcroWheelieMoveLeft,
    [0x87] = gMovementActionFuncs_AcroWheelieMoveRight,
    [0x88] = gMovementActionFuncs_AcroEndWheelieMoveDown,
    [0x89] = gMovementActionFuncs_AcroEndWheelieMoveUp,
    [0x8A] = gMovementActionFuncs_AcroEndWheelieMoveLeft,
    [0x8B] = gMovementActionFuncs_AcroEndWheelieMoveRight,
    [0x8C] = gMovementActionFuncs_WalkNormalDiagonalUpLeft,
    [0x8D] = gMovementActionFuncs_WalkNormalDiagonalUpRight,
    [0x8E] = gMovementActionFuncs_WalkNormalDiagonalDownLeft,
    [0x8F] = gMovementActionFuncs_WalkNormalDiagonalDownRight,
    [0x90] = gMovementActionFuncs_WalkSlowDiagonalUpLeft,
    [0x91] = gMovementActionFuncs_WalkSlowDiagonalUpRight,
    [0x92] = gMovementActionFuncs_WalkSlowDiagonalDownLeft,
    [0x93] = gMovementActionFuncs_WalkSlowDiagonalDownRight,
    [0x94] = gMovementActionFuncs_StoreAndLockAnim,
    [0x95] = gMovementActionFuncs_FreeAndUnlockAnim,
    [0x96] = gMovementActionFuncs_WalkLeftAffine,
    [0x97] = gMovementActionFuncs_WalkRightAffine,
    [0x98] = gMovementActionFuncs_Levitate,
    [0x99] = gMovementActionFuncs_StopLevitate,
    [0x9A] = gMovementActionFuncs_DestroyExtraTaskIfAtTop,
    [0x9B] = gMovementActionFuncs_Figure8,
    [0x9C] = gMovementActionFuncs_FlyUp,
    [0x9D] = gMovementActionFuncs_FlyDown,
};

u8 (*const gMovementActionFuncs_FaceDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FaceDown_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FaceUp_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FaceLeft_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FaceRight_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gUnknown_0850DEE8[])(u8) = {
    GetMoveDirectionAnimNum,
    GetMoveDirectionFastAnimNum,
    GetMoveDirectionFastAnimNum,
    GetMoveDirectionFasterAnimNum,
    GetMoveDirectionFastestAnimNum,
};

u8 (*const gMovementActionFuncs_WalkSlowDiagonalUpLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkSlowDiagonalUpLeft_Step0,
    MovementAction_WalkSlowDiagonalUpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowDiagonalUpRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkSlowDiagonalUpRight_Step0,
    MovementAction_WalkSlowDiagonalUpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowDiagonalDownLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkSlowDiagonalDownLeft_Step0,
    MovementAction_WalkSlowDiagonalDownLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowDiagonalDownRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkSlowDiagonalDownRight_Step0,
    MovementAction_WalkSlowDiagonalDownRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkSlowDown_Step0,
    MovementAction_WalkSlowDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkSlowUp_Step0,
    MovementAction_WalkSlowUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkSlowLeft_Step0,
    MovementAction_WalkSlowLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkSlowRight_Step0,
    MovementAction_WalkSlowRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDiagonalUpLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkNormalDiagonalUpLeft_Step0,
    MovementAction_WalkNormalDiagonalUpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDiagonalUpRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkNormalDiagonalUpRight_Step0,
    MovementAction_WalkNormalDiagonalUpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDiagonalDownLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkNormalDiagonalDownLeft_Step0,
    MovementAction_WalkNormalDiagonalDownLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDiagonalDownRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkNormalDiagonalDownRight_Step0,
    MovementAction_WalkNormalDiagonalDownRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkNormalDown_Step0,
    MovementAction_WalkNormalDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkNormalUp_Step0,
    MovementAction_WalkNormalUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkNormalLeft_Step0,
    MovementAction_WalkNormalLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkNormalRight_Step0,
    MovementAction_WalkNormalRight_Step1,
    MovementAction_PauseSpriteAnim,
};

const s16 gUnknown_0850DFBC[] = {0, 1, 1};
const s16 gUnknown_0850DFC2[] = {0, 0, 1};

u8 (*const gMovementActionFuncs_Jump2Down[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Jump2Down_Step0,
    MovementAction_Jump2Down_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Jump2Up[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Jump2Up_Step0,
    MovementAction_Jump2Up_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Jump2Left[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Jump2Left_Step0,
    MovementAction_Jump2Left_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Jump2Right[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Jump2Right_Step0,
    MovementAction_Jump2Right_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Delay1[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Delay1_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Delay2[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Delay2_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Delay4[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Delay4_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Delay8[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Delay8_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Delay16[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Delay16_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_WalkFastDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkFastDown_Step0,
    MovementAction_WalkFastDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkFastUp_Step0,
    MovementAction_WalkFastUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkFastLeft_Step0,
    MovementAction_WalkFastLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkFastRight_Step0,
    MovementAction_WalkFastRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceSlowDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowDown_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceSlowUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowUp_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceSlowLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowLeft_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceSlowRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowRight_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceNormalDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceNormalUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceNormalLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceNormalRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastestDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastestDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastestUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastestUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastestLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastestLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastestRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastestRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_RideWaterCurrentDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_RideWaterCurrentDown_Step0,
    MovementAction_RideWaterCurrentDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_RideWaterCurrentUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_RideWaterCurrentUp_Step0,
    MovementAction_RideWaterCurrentUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_RideWaterCurrentLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_RideWaterCurrentLeft_Step0,
    MovementAction_RideWaterCurrentLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_RideWaterCurrentRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_RideWaterCurrentRight_Step0,
    MovementAction_RideWaterCurrentRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastestDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkFastestDown_Step0,
    MovementAction_WalkFastestDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastestUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkFastestUp_Step0,
    MovementAction_WalkFastestUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastestLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkFastestLeft_Step0,
    MovementAction_WalkFastestLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastestRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkFastestRight_Step0,
    MovementAction_WalkFastestRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_SlideDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_SlideDown_Step0,
    MovementAction_SlideDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_SlideUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_SlideUp_Step0,
    MovementAction_SlideUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_SlideLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_SlideLeft_Step0,
    MovementAction_SlideLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_SlideRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_SlideRight_Step0,
    MovementAction_SlideRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_PlayerRunDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_PlayerRunDown_Step0,
    MovementAction_PlayerRunDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_PlayerRunUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_PlayerRunUp_Step0,
    MovementAction_PlayerRunUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_PlayerRunLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_PlayerRunLeft_Step0,
    MovementAction_PlayerRunLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_PlayerRunRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_PlayerRunRight_Step0,
    MovementAction_PlayerRunRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_StartAnimInDirection[])(struct EventObject *, struct Sprite *) = {
    MovementAction_StartAnimInDirection_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpSpecialDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpSpecialDown_Step0,
    MovementAction_JumpSpecialDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpSpecialUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpSpecialUp_Step0,
    MovementAction_JumpSpecialUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpSpecialLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpSpecialLeft_Step0,
    MovementAction_JumpSpecialLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpSpecialRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpSpecialRight_Step0,
    MovementAction_JumpSpecialRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FacePlayer[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FacePlayer_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceAwayPlayer[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FaceAwayPlayer_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_LockFacingDirection[])(struct EventObject *, struct Sprite *) = {
    MovementAction_LockFacingDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_UnlockFacingDirection[])(struct EventObject *, struct Sprite *) = {
    MovementAction_UnlockFacingDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpDown_Step0,
    MovementAction_JumpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpUp_Step0,
    MovementAction_JumpUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpLeft_Step0,
    MovementAction_JumpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpRight_Step0,
    MovementAction_JumpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpInPlaceDown_Step0,
    MovementAction_JumpInPlaceDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpInPlaceUp_Step0,
    MovementAction_JumpInPlaceUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpInPlaceLeft_Step0,
    MovementAction_JumpInPlaceLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpInPlaceRight_Step0,
    MovementAction_JumpInPlaceRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceDownUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpInPlaceDownUp_Step0,
    MovementAction_JumpInPlaceDownUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceUpDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpInPlaceUpDown_Step0,
    MovementAction_JumpInPlaceUpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceLeftRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpInPlaceLeftRight_Step0,
    MovementAction_JumpInPlaceLeftRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceRightLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_JumpInPlaceRightLeft_Step0,
    MovementAction_JumpInPlaceRightLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceOriginalDirection[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FaceOriginalDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_NurseJoyBowDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_NurseJoyBowDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_EnableJumpLandingGroundEffect[])(struct EventObject *, struct Sprite *) = {
    MovementAction_EnableJumpLandingGroundEffect_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_DisableJumpLandingGroundEffect[])(struct EventObject *, struct Sprite *) = {
    MovementAction_DisableJumpLandingGroundEffect_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_DisableAnimation[])(struct EventObject *, struct Sprite *) = {
    MovementAction_DisableAnimation_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_RestoreAnimation[])(struct EventObject *, struct Sprite *) = {
    MovementAction_RestoreAnimation_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_SetInvisible[])(struct EventObject *, struct Sprite *) = {
    MovementAction_SetInvisible_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_SetVisible[])(struct EventObject *, struct Sprite *) = {
    MovementAction_SetVisible_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_EmoteExclamationMark[])(struct EventObject *, struct Sprite *) = {
    MovementAction_EmoteExclamationMark_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_EmoteQuestionMark[])(struct EventObject *, struct Sprite *) = {
    MovementAction_EmoteQuestionMark_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_EmoteHeart[])(struct EventObject *, struct Sprite *) = {
    MovementAction_EmoteHeart_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_RevealTrainer[])(struct EventObject *, struct Sprite *) = {
    MovementAction_RevealTrainer_Step0,
    MovementAction_RevealTrainer_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_RockSmashBreak[])(struct EventObject *, struct Sprite *) = {
    MovementAction_RockSmashBreak_Step0,
    MovementAction_RockSmashBreak_Step1,
    MovementAction_RockSmashBreak_Step2,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_CutTree[])(struct EventObject *, struct Sprite *) = {
    MovementAction_CutTree_Step0,
    MovementAction_CutTree_Step1,
    MovementAction_CutTree_Step2,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_SetFixedPriority[])(struct EventObject *, struct Sprite *) = {
    MovementAction_SetFixedPriority_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_ClearFixedPriority[])(struct EventObject *, struct Sprite *) = {
    MovementAction_ClearFixedPriority_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_InitAffineAnim[])(struct EventObject *, struct Sprite *) = {
    MovementAction_InitAffineAnim_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_ClearAffineAnim[])(struct EventObject *, struct Sprite *) = {
    MovementAction_ClearAffineAnim_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Unknown1[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Unknown1_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Unknown2[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Unknown2_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_WalkDownStartAffine[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkDownStartAffine_Step0,
    MovementAction_WalkDownStartAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkDownAffine[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkDownAffine_Step0,
    MovementAction_WalkDownAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkLeftAffine[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkLeftAffine_Step0,
    MovementAction_WalkLeftAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkRightAffine[])(struct EventObject *, struct Sprite *) = {
    MovementAction_WalkRightAffine_Step0,
    MovementAction_WalkRightAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieFaceDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceDown_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieFaceUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceUp_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieFaceLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceLeft_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieFaceRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceRight_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroPopWheelieDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroPopWheelieUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroPopWheelieLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroPopWheelieRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieFaceDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieFaceUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieFaceLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieFaceRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroUnusedAcroActionDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_UnusedAcroActionDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroUnusedAcroActionUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_UnusedAcroActionUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroUnusedAcroActionLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_UnusedAcroActionLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroUnusedAcroActionRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_UnusedAcroActionRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Figure8[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Figure8_Step0,
    MovementAction_Figure8_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopFaceDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceDown_Step0,
    MovementAction_AcroWheelieHopFaceDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopFaceUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceUp_Step0,
    MovementAction_AcroWheelieHopFaceUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopFaceLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceLeft_Step0,
    MovementAction_AcroWheelieHopFaceLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopFaceRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceRight_Step0,
    MovementAction_AcroWheelieHopFaceRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieHopDown_Step0,
    MovementAction_AcroWheelieHopDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieHopUp_Step0,
    MovementAction_AcroWheelieHopUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieHopLeft_Step0,
    MovementAction_AcroWheelieHopLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieHopRight_Step0,
    MovementAction_AcroWheelieHopRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieJumpDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpDown_Step0,
    MovementAction_AcroWheelieJumpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieJumpUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpUp_Step0,
    MovementAction_AcroWheelieJumpUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieJumpLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpLeft_Step0,
    MovementAction_AcroWheelieJumpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieJumpRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpRight_Step0,
    MovementAction_AcroWheelieJumpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieInPlaceDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieInPlaceUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieInPlaceLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieInPlaceRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieMoveDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveDown_Step0,
    MovementAction_AcroPopWheelieMoveDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieMoveUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveUp_Step0,
    MovementAction_AcroPopWheelieMoveUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieMoveLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveLeft_Step0,
    MovementAction_AcroPopWheelieMoveLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieMoveRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveRight_Step0,
    MovementAction_AcroPopWheelieMoveRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieMoveDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveDown_Step0,
    MovementAction_AcroWheelieMoveDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieMoveUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveUp_Step0,
    MovementAction_AcroWheelieMoveUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieMoveLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveLeft_Step0,
    MovementAction_AcroWheelieMoveLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieMoveRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveRight_Step0,
    MovementAction_AcroWheelieMoveRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieMoveDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroEndWheelieMoveDown_Step0,
    MovementAction_AcroEndWheelieMoveDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieMoveUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroEndWheelieMoveUp_Step0,
    MovementAction_AcroEndWheelieMoveUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieMoveLeft[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroEndWheelieMoveLeft_Step0,
    MovementAction_AcroEndWheelieMoveLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieMoveRight[])(struct EventObject *, struct Sprite *) = {
    MovementAction_AcroEndWheelieMoveRight_Step0,
    MovementAction_AcroEndWheelieMoveRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Levitate[])(struct EventObject *, struct Sprite *) = {
    MovementAction_Levitate_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_StopLevitate[])(struct EventObject *, struct Sprite *) = {
    MovementAction_StopLevitate_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_DestroyExtraTaskIfAtTop[])(struct EventObject *, struct Sprite *) = {
    MovementAction_DestroyExtraTaskIfAtTop_Step0,
    MovementAction_Finish,
};
# 1092 "src/event_object_movement.c" 2



static void ClearEventObject(struct EventObject *eventObject)
{
    *eventObject = (struct EventObject){};
    eventObject->localId = 0xFF;
    eventObject->mapNum = 0xFF;
    eventObject->mapGroup = 0xFF;
    eventObject->movementActionId = 0xFF;
}

static void ClearAllEventObjects(void)
{
    u8 i;

    for (i = 0; i < 16; i++)
        ClearEventObject(&gEventObjects[i]);
}

void ResetEventObjects(void)
{
    ClearLinkPlayerEventObjects();
    ClearAllEventObjects();
    ClearPlayerAvatarInfo();
    CreateReflectionEffectSprites();
}

static void CreateReflectionEffectSprites(void)
{
    u8 spriteId = CreateSpriteAtEnd(gFieldEffectObjectTemplatePointers[21], 0, 0, 31);
    gSprites[spriteId].oam.affineMode = 1;
    InitSpriteAffineAnim(&gSprites[spriteId]);
    StartSpriteAffineAnim(&gSprites[spriteId], 0);
    gSprites[spriteId].invisible = 1;

    spriteId = CreateSpriteAtEnd(gFieldEffectObjectTemplatePointers[21], 0, 0, 31);
    gSprites[spriteId].oam.affineMode = 1;
    InitSpriteAffineAnim(&gSprites[spriteId]);
    StartSpriteAffineAnim(&gSprites[spriteId], 1);
    gSprites[spriteId].invisible = 1;
}

u8 GetFirstInactiveEventObjectId(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (!gEventObjects[i].active)
            break;
    }

    return i;
}

u8 GetEventObjectIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroupId)
{
    if (localId < 0xFF)
    {
        return GetEventObjectIdByLocalIdAndMapInternal(localId, mapNum, mapGroupId);
    }
    return GetEventObjectIdByLocalId(localId);
}

bool8 TryGetEventObjectIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroupId, u8 *eventObjectId)
{
    *eventObjectId = GetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroupId);
    if (*eventObjectId == 16)
        return 1;
    else
        return 0;
}

u8 GetEventObjectIdByXY(s16 x, s16 y)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gEventObjects[i].active && gEventObjects[i].currentCoords.x == x && gEventObjects[i].currentCoords.y == y)
            break;
    }

    return i;
}

static u8 GetEventObjectIdByLocalIdAndMapInternal(u8 localId, u8 mapNum, u8 mapGroupId)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gEventObjects[i].active && gEventObjects[i].localId == localId && gEventObjects[i].mapNum == mapNum && gEventObjects[i].mapGroup == mapGroupId)
            return i;
    }

    return 16;
}

static u8 GetEventObjectIdByLocalId(u8 localId)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gEventObjects[i].active && gEventObjects[i].localId == localId)
            return i;
    }

    return 16;
}
# 1258 "src/event_object_movement.c"
static __attribute__((naked)) u8 InitEventObjectStateFromTemplate(struct EventObjectTemplate *template, u8 mapId, u8 mapGroupId)
{
    asm(".syntax unified\n" "\tpush {r4-r7,lr}\n" "\tmov r7, r9\n" "\tmov r6, r8\n" "\tpush {r6,r7}\n" "\tsub sp, 0x4\n" "\tadds r5, r0, 0\n" "\tlsls r1, 24\n" "\tlsrs r6, r1, 24\n" "\tlsls r2, 24\n" "\tlsrs r7, r2, 24\n" "\tldrb r0, [r5]\n" "\tadds r1, r6, 0\n" "\tadds r2, r7, 0\n" "\tmov r3, sp\n" "\tbl GetAvailableEventObjectId\n" "\tlsls r0, 24\n" "\tcmp r0, 0\n" "\tbeq _0808D66E\n" "\tmovs r0, 0x10\n" "\tb _0808D762\n" "_0808D66E:\n" "\tmov r0, sp\n" "\tldrb r1, [r0]\n" "\tlsls r0, r1, 3\n" "\tadds r0, r1\n" "\tlsls r0, 2\n" "\tldr r1, =gEventObjects\n" "\tadds r4, r0, r1\n" "\tadds r0, r4, 0\n" "\tbl ClearEventObject\n" "\tldrh r3, [r5, 0x4]\n" "\tadds r3, 0x7\n" "\tlsls r3, 16\n" "\tlsrs r3, 16\n" "\tldrh r2, [r5, 0x6]\n" "\tadds r2, 0x7\n" "\tlsls r2, 16\n" "\tlsrs r2, 16\n" "\tldrb r0, [r4]\n" "\tmovs r1, 0x1\n" "\torrs r0, r1\n" "\tmovs r1, 0x4\n" "\torrs r0, r1\n" "\tstrb r0, [r4]\n" "\tldrb r0, [r5, 0x1]\n" "\tstrb r0, [r4, 0x5]\n" "\tldrb r0, [r5, 0x9]\n" "\tstrb r0, [r4, 0x6]\n" "\tldrb r0, [r5]\n" "\tstrb r0, [r4, 0x8]\n" "\tstrb r6, [r4, 0x9]\n" "\tstrb r7, [r4, 0xA]\n" "\tstrh r3, [r4, 0xC]\n" "\tstrh r2, [r4, 0xE]\n" "\tstrh r3, [r4, 0x10]\n" "\tstrh r2, [r4, 0x12]\n" "\tstrh r3, [r4, 0x14]\n" "\tstrh r2, [r4, 0x16]\n" "\tldrb r0, [r5, 0x8]\n" "\tmovs r7, 0xF\n" "\tadds r1, r7, 0\n" "\tands r1, r0\n" "\tldrb r2, [r4, 0xB]\n" "\tmovs r0, 0x10\n" "\tnegs r0, r0\n" "\tmov r8, r0\n" "\tands r0, r2\n" "\torrs r0, r1\n" "\tstrb r0, [r4, 0xB]\n" "\tldrb r1, [r5, 0x8]\n" "\tlsls r1, 4\n" "\tands r0, r7\n" "\torrs r0, r1\n" "\tstrb r0, [r4, 0xB]\n" "\tldrb r1, [r5, 0xA]\n" "\tlsls r1, 28\n" "\tmovs r0, 0xF\n" "\tmov r9, r0\n" "\tlsrs r1, 28\n" "\tldrb r2, [r4, 0x19]\n" "\tmov r0, r8\n" "\tands r0, r2\n" "\torrs r0, r1\n" "\tstrb r0, [r4, 0x19]\n" "\tldrb r1, [r5, 0xA]\n" "\tlsrs r1, 4\n" "\tlsls r1, 4\n" "\tands r0, r7\n" "\torrs r0, r1\n" "\tstrb r0, [r4, 0x19]\n" "\tldrh r0, [r5, 0xC]\n" "\tstrb r0, [r4, 0x7]\n" "\tldrh r0, [r5, 0xE]\n" "\tstrb r0, [r4, 0x1D]\n" "\tldr r1, =gInitialMovementTypeFacingDirections\n" "\tldrb r0, [r5, 0x9]\n" "\tadds r0, r1\n" "\tldrb r1, [r0]\n" "\tadds r0, r4, 0\n" "\tadds r0, 0x20\n" "\tstrb r1, [r0]\n" "\tldrb r1, [r0]\n" "\tadds r0, r4, 0\n" "\tbl SetEventObjectDirection\n" "\tadds r0, r4, 0\n" "\tbl SetEventObjectDynamicGraphicsId\n" "\tldr r1, =gRangedMovementTypes\n" "\tldrb r0, [r4, 0x6]\n" "\tadds r0, r1\n" "\tldrb r0, [r0]\n" "\tcmp r0, 0\n" "\tbeq _0808D75E\n" "\tldrb r2, [r4, 0x19]\n" "\tadds r0, r7, 0\n" "\tands r0, r2\n" "\tcmp r0, 0\n" "\tbne _0808D746\n" "\tlsls r0, r2, 28\n" "\tlsrs r0, 28\n" "\tadds r0, 0x1\n" "\tmov r1, r9\n" "\tands r0, r1\n" "\tmov r1, r8\n" "\tands r1, r2\n" "\torrs r1, r0\n" "\tstrb r1, [r4, 0x19]\n" "_0808D746:\n" "\tldrb r2, [r4, 0x19]\n" "\tmovs r0, 0xF0\n" "\tands r0, r2\n" "\tcmp r0, 0\n" "\tbne _0808D75E\n" "\tlsrs r1, r2, 4\n" "\tadds r1, 0x1\n" "\tlsls r1, 4\n" "\tadds r0, r7, 0\n" "\tands r0, r2\n" "\torrs r0, r1\n" "\tstrb r0, [r4, 0x19]\n" "_0808D75E:\n" "\tmov r0, sp\n" "\tldrb r0, [r0]\n" "_0808D762:\n" "\tadd sp, 0x4\n" "\tpop {r3,r4}\n" "\tmov r8, r3\n" "\tmov r9, r4\n" "\tpop {r4-r7}\n" "\tpop {r1}\n" "\tbx r1\n" ".pool" "\n.syntax divided")
# 1410 "src/event_object_movement.c"
                        ;
}


u8 Unref_TryInitLocalEventObject(u8 localId)
{
    u8 i;
    u8 eventObjectCount;
    struct EventObjectTemplate *template;

    if (gMapHeader.events != ((void *)0))
    {
        if (InBattlePyramid())
        {
            eventObjectCount = GetNumBattlePyramidEventObjects();
        }
        else if (InTrainerHill())
        {
            eventObjectCount = 2;
        }
        else
        {
            eventObjectCount = gMapHeader.events->eventObjectCount;
        }
        for (i = 0; i < eventObjectCount; i++)
        {
            template = &gSaveBlock1Ptr->eventObjectTemplates[i];
            if (template->localId == localId && !FlagGet(template->flagId))
            {
                return InitEventObjectStateFromTemplate(template, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup);
            }
        }
    }
    return 16;
}

static bool8 GetAvailableEventObjectId(u16 localId, u8 mapNum, u8 mapGroup, u8 *eventObjectId)





{
    u8 i = 0;

    for (i = 0; i < 16; i++)
    {
        if (!gEventObjects[i].active)
            break;
        if (gEventObjects[i].localId == localId && gEventObjects[i].mapNum == mapNum && gEventObjects[i].mapGroup == mapGroup)
            return 1;
    }
    if (i >= 16)
        return 1;
    *eventObjectId = i;
    do
    {
        if (gEventObjects[i].active && gEventObjects[i].localId == localId && gEventObjects[i].mapNum == mapNum && gEventObjects[i].mapGroup == mapGroup)
            return 1;
        i++;
    } while (i < 16);
    return 0;
}

static void RemoveEventObject(struct EventObject *eventObject)
{
    eventObject->active = 0;
    RemoveEventObjectInternal(eventObject);
}

void RemoveEventObjectByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 eventObjectId;
    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        FlagSet(GetEventObjectFlagIdByEventObjectId(eventObjectId));
        RemoveEventObject(&gEventObjects[eventObjectId]);
    }
}

static void RemoveEventObjectInternal(struct EventObject *eventObject)
{
    struct SpriteFrameImage image;
    image.size = GetEventObjectGraphicsInfo(eventObject->graphicsId)->size;
    gSprites[eventObject->spriteId].images = &image;
    DestroySprite(&gSprites[eventObject->spriteId]);
}

void RemoveAllEventObjectsExceptPlayer(void)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        if (i != gPlayerAvatar.eventObjectId)
            RemoveEventObject(&gEventObjects[i]);
    }
}

static u8 TrySetupEventObjectSprite(struct EventObjectTemplate *eventObjectTemplate, struct SpriteTemplate *spriteTemplate, u8 mapNum, u8 mapGroup, s16 cameraX, s16 cameraY)
{
    u8 spriteId;
    u8 paletteSlot;
    u8 eventObjectId;
    struct Sprite *sprite;
    struct EventObject *eventObject;
    const struct EventObjectGraphicsInfo *graphicsInfo;

    eventObjectId = InitEventObjectStateFromTemplate(eventObjectTemplate, mapNum, mapGroup);
    if (eventObjectId == 16)
        return 16;

    eventObject = &gEventObjects[eventObjectId];
    graphicsInfo = GetEventObjectGraphicsInfo(eventObject->graphicsId);
    paletteSlot = graphicsInfo->paletteSlot;
    if (paletteSlot == 0)
    {
        LoadPlayerObjectReflectionPalette(graphicsInfo->paletteTag1, 0);
    }
    else if (paletteSlot == 10)
    {
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag1, 10);
    }
    else if (paletteSlot >= 16)
    {
        paletteSlot -= 16;
        sub_808EAB0(graphicsInfo->paletteTag1, paletteSlot);
    }

    if (eventObject->movementType == 0x4C)
        eventObject->invisible = 1;

    *(u16 *)&spriteTemplate->paletteTag = 0xFFFF;
    spriteId = CreateSprite(spriteTemplate, 0, 0, 0);
    if (spriteId == 64)
    {
        gEventObjects[eventObjectId].active = 0;
        return 16;
    }

    sprite = &gSprites[spriteId];
    sub_8092FF0(eventObject->currentCoords.x + cameraX, eventObject->currentCoords.y + cameraY, &sprite->pos1.x, &sprite->pos1.y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->pos1.x += 8;
    sprite->pos1.y += 16 + sprite->centerToCornerVecY;
    sprite->oam.paletteNum = paletteSlot;
    sprite->coordOffsetEnabled = 1;
    sprite->data[0] = eventObjectId;
    eventObject->spriteId = spriteId;
    eventObject->inanimate = graphicsInfo->inanimate;
    if (!eventObject->inanimate)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(eventObject->facingDirection));

    SetObjectSubpriorityByZCoord(eventObject->previousElevation, sprite, 1);
    UpdateEventObjectVisibility(eventObject, sprite);
    return eventObjectId;
}

static u8 TrySpawnEventObjectTemplate(struct EventObjectTemplate *eventObjectTemplate, u8 mapNum, u8 mapGroup, s16 cameraX, s16 cameraY)
{
    u8 eventObjectId;
    struct SpriteTemplate spriteTemplate;
    struct SpriteFrameImage spriteFrameImage;
    const struct EventObjectGraphicsInfo *graphicsInfo;
    const struct SubspriteTable *subspriteTables = ((void *)0);

    graphicsInfo = GetEventObjectGraphicsInfo(eventObjectTemplate->graphicsId);
    MakeObjectTemplateFromEventObjectTemplate(eventObjectTemplate, &spriteTemplate, &subspriteTables);
    spriteFrameImage.size = graphicsInfo->size;
    spriteTemplate.images = &spriteFrameImage;
    eventObjectId = TrySetupEventObjectSprite(eventObjectTemplate, &spriteTemplate, mapNum, mapGroup, cameraX, cameraY);
    if (eventObjectId == 16)
        return 16;

    gSprites[gEventObjects[eventObjectId].spriteId].images = graphicsInfo->images;
    if (subspriteTables)
        SetSubspriteTables(&gSprites[gEventObjects[eventObjectId].spriteId], subspriteTables);

    return eventObjectId;
}

u8 SpawnSpecialEventObject(struct EventObjectTemplate *eventObjectTemplate)
{
    s16 cameraX;
    s16 cameraY;

    GetEventObjectMovingCameraOffset(&cameraX, &cameraY);
    return TrySpawnEventObjectTemplate(eventObjectTemplate, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, cameraX, cameraY);
}

u8 SpawnSpecialEventObjectParameterized(u8 graphicsId, u8 movementBehavior, u8 localId, s16 x, s16 y, u8 z)
{
    struct EventObjectTemplate eventObjectTemplate;

    x -= 7;
    y -= 7;
    eventObjectTemplate.localId = localId;
    eventObjectTemplate.graphicsId = graphicsId;
    eventObjectTemplate.unk2 = 0;
    eventObjectTemplate.x = x;
    eventObjectTemplate.y = y;
    eventObjectTemplate.elevation = z;
    eventObjectTemplate.movementType = movementBehavior;
    eventObjectTemplate.movementRangeX = 0;
    eventObjectTemplate.movementRangeY = 0;
    eventObjectTemplate.trainerType = 0;
    eventObjectTemplate.trainerRange_berryTreeId = 0;
    return SpawnSpecialEventObject(&eventObjectTemplate);
}

u8 TrySpawnEventObject(u8 localId, u8 mapNum, u8 mapGroup)
{
    struct EventObjectTemplate *eventObjectTemplate;
    s16 cameraX, cameraY;

    eventObjectTemplate = GetEventObjectTemplateByLocalIdAndMap(localId, mapNum, mapGroup);
    if (!eventObjectTemplate)
        return 16;

    GetEventObjectMovingCameraOffset(&cameraX, &cameraY);
    return TrySpawnEventObjectTemplate(eventObjectTemplate, mapNum, mapGroup, cameraX, cameraY);
}

static void MakeObjectTemplateFromEventObjectGraphicsInfo(u16 graphicsId, void (*callback)(struct Sprite *), struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    const struct EventObjectGraphicsInfo *graphicsInfo = GetEventObjectGraphicsInfo(graphicsId);

    spriteTemplate->tileTag = graphicsInfo->tileTag;
    spriteTemplate->paletteTag = graphicsInfo->paletteTag1;
    spriteTemplate->oam = graphicsInfo->oam;
    spriteTemplate->anims = graphicsInfo->anims;
    spriteTemplate->images = graphicsInfo->images;
    spriteTemplate->affineAnims = graphicsInfo->affineAnims;
    spriteTemplate->callback = callback;
    *subspriteTables = graphicsInfo->subspriteTables;
}

static void MakeObjectTemplateFromEventObjectGraphicsInfoWithCallbackIndex(u16 graphicsId, u16 callbackIndex, struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    MakeObjectTemplateFromEventObjectGraphicsInfo(graphicsId, sMovementTypeCallbacks[callbackIndex], spriteTemplate, subspriteTables);
}

static void MakeObjectTemplateFromEventObjectTemplate(struct EventObjectTemplate *eventObjectTemplate, struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    MakeObjectTemplateFromEventObjectGraphicsInfoWithCallbackIndex(eventObjectTemplate->graphicsId, eventObjectTemplate->movementType, spriteTemplate, subspriteTables);
}

u8 AddPseudoEventObject(u16 graphicsId, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority)
{
    struct SpriteTemplate *spriteTemplate;
    const struct SubspriteTable *subspriteTables;
    struct Sprite *sprite;
    u8 spriteId;

    spriteTemplate = Alloc(sizeof(struct SpriteTemplate));
    MakeObjectTemplateFromEventObjectGraphicsInfo(graphicsId, callback, spriteTemplate, &subspriteTables);
    if (spriteTemplate->paletteTag != 0xFFFF)
    {
        LoadEventObjectPalette(spriteTemplate->paletteTag);
    }
    spriteId = CreateSprite(spriteTemplate, x, y, subpriority);
    Free(spriteTemplate);

    if (spriteId != 64 && subspriteTables != ((void *)0))
    {
        sprite = &gSprites[spriteId];
        SetSubspriteTables(sprite, subspriteTables);
        sprite->subspriteMode = 2;
    }
    return spriteId;
}

u8 sprite_new(u8 graphicsId, u8 a1, s16 x, s16 y, u8 z, u8 direction)
{
    u8 spriteId;
    struct Sprite *sprite;
    struct SpriteTemplate spriteTemplate;
    const struct SubspriteTable *subspriteTables;
    const struct EventObjectGraphicsInfo *graphicsInfo;

    graphicsInfo = GetEventObjectGraphicsInfo(graphicsId);
    MakeObjectTemplateFromEventObjectGraphicsInfo(graphicsId, UpdateEventObjectSpriteSubpriorityAndVisibility, &spriteTemplate, &subspriteTables);
    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    x += 7;
    y += 7;
    sub_80930E0(&x, &y, 8, 16);
    spriteId = CreateSpriteAtEnd(&spriteTemplate, x, y, 0);
    if (spriteId != 64)
    {
        sprite = &gSprites[spriteId];
        sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
        sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
        sprite->pos1.y += sprite->centerToCornerVecY;
        sprite->oam.paletteNum = graphicsInfo->paletteSlot;
        if (sprite->oam.paletteNum >= 16)
        {
            sprite->oam.paletteNum -= 16;
        }
        sprite->coordOffsetEnabled = 1;
        sprite->data[0] = a1;
        sprite->data[1] = z;
        if (graphicsInfo->paletteSlot == 10)
        {
            LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
        }
        else if (graphicsInfo->paletteSlot >= 16)
        {
            sub_808EAB0(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot | 0xf0);
        }
        if (subspriteTables != ((void *)0))
        {
            SetSubspriteTables(sprite, subspriteTables);
            sprite->subspriteMode = 2;
        }
        InitObjectPriorityByZCoord(sprite, z);
        SetObjectSubpriorityByZCoord(z, sprite, 1);
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(direction));
    }
    return spriteId;
}

void TrySpawnEventObjects(s16 cameraX, s16 cameraY)
{
    u8 i;
    u8 objectCount;

    if (gMapHeader.events != ((void *)0))
    {
        s16 left = gSaveBlock1Ptr->pos.x - 2;
        s16 right = gSaveBlock1Ptr->pos.x + 17;
        s16 top = gSaveBlock1Ptr->pos.y;
        s16 bottom = gSaveBlock1Ptr->pos.y + 16;

        if (InBattlePyramid())
        {
            objectCount = GetNumBattlePyramidEventObjects();
        }
        else if (InTrainerHill())
        {
            objectCount = 2;
        }
        else
        {
            objectCount = gMapHeader.events->eventObjectCount;
        }

        for (i = 0; i < objectCount; i++)
        {
            struct EventObjectTemplate *template = &gSaveBlock1Ptr->eventObjectTemplates[i];
            s16 npcX = template->x + 7;
            s16 npcY = template->y + 7;

            if (top <= npcY && bottom >= npcY && left <= npcX && right >= npcX
                && !FlagGet(template->flagId))
                TrySpawnEventObjectTemplate(template, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, cameraX, cameraY);
        }
    }
}

void RemoveEventObjectsOutsideView(void)
{
    u8 i, j;
    bool8 isActiveLinkPlayer;

    for (i = 0; i < 16; i++)
    {
        for (j = 0, isActiveLinkPlayer = 0; j < (size_t)(sizeof(gLinkPlayerEventObjects) / sizeof((gLinkPlayerEventObjects)[0])); j++)
        {
            if (gLinkPlayerEventObjects[j].active && i == gLinkPlayerEventObjects[j].eventObjId)
                isActiveLinkPlayer = 1;
        }
        if (!isActiveLinkPlayer)
        {
            struct EventObject *eventObject = &gEventObjects[i];

            if (eventObject->active && !eventObject->isPlayer)
                RemoveEventObjectIfOutsideView(eventObject);
        }
    }
}

static void RemoveEventObjectIfOutsideView(struct EventObject *eventObject)
{
    s16 left = gSaveBlock1Ptr->pos.x - 2;
    s16 right = gSaveBlock1Ptr->pos.x + 17;
    s16 top = gSaveBlock1Ptr->pos.y;
    s16 bottom = gSaveBlock1Ptr->pos.y + 16;

    if (eventObject->currentCoords.x >= left && eventObject->currentCoords.x <= right
     && eventObject->currentCoords.y >= top && eventObject->currentCoords.y <= bottom)
        return;
    if (eventObject->initialCoords.x >= left && eventObject->initialCoords.x <= right
     && eventObject->initialCoords.y >= top && eventObject->initialCoords.y <= bottom)
        return;
    RemoveEventObject(eventObject);
}

void sub_808E16C(s16 x, s16 y)
{
    u8 i;

    ClearPlayerAvatarInfo();
    for (i = 0; i < 16; i++)
    {
        if (gEventObjects[i].active)
        {
            sub_808E1B8(i, x, y);
        }
    }
    CreateReflectionEffectSprites();
}

static void sub_808E1B8(u8 eventObjectId, s16 x, s16 y)
{
    u8 spriteId;
    u8 paletteSlot;
    struct Sprite *sprite;
    struct EventObject *eventObject;
    struct SpriteTemplate spriteTemplate;
    struct SpriteFrameImage spriteFrameImage;
    const struct SubspriteTable *subspriteTables;
    const struct EventObjectGraphicsInfo *graphicsInfo;


    for (spriteId = 0; spriteId < (size_t)(sizeof(gLinkPlayerEventObjects) / sizeof((gLinkPlayerEventObjects)[0])); spriteId++)
    {
        if (gLinkPlayerEventObjects[spriteId].active && eventObjectId == gLinkPlayerEventObjects[spriteId].eventObjId)
        {
            return;
        }
    }


    eventObject = &gEventObjects[eventObjectId];
    subspriteTables = ((void *)0);
    graphicsInfo = GetEventObjectGraphicsInfo(eventObject->graphicsId);
    spriteFrameImage.size = graphicsInfo->size;
    MakeObjectTemplateFromEventObjectGraphicsInfoWithCallbackIndex(eventObject->graphicsId, eventObject->movementType, &spriteTemplate, &subspriteTables);
    spriteTemplate.images = &spriteFrameImage;
    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    paletteSlot = graphicsInfo->paletteSlot;
    if (paletteSlot == 0)
    {
        LoadPlayerObjectReflectionPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
    }
    else if (paletteSlot == 10)
    {
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
    }
    else if (paletteSlot >= 16)
    {
        paletteSlot -= 16;
        sub_808EAB0(graphicsInfo->paletteTag1, paletteSlot);
    }
    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    spriteId = CreateSprite(&spriteTemplate, 0, 0, 0);
    if (spriteId != 64)
    {
        sprite = &gSprites[spriteId];
        sub_8092FF0(x + eventObject->currentCoords.x, y + eventObject->currentCoords.y, &sprite->pos1.x, &sprite->pos1.y);
        sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
        sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
        sprite->pos1.x += 8;
        sprite->pos1.y += 16 + sprite->centerToCornerVecY;
        sprite->images = graphicsInfo->images;
        if (eventObject->movementType == 0xB)
        {
            SetPlayerAvatarEventObjectIdAndObjectId(eventObjectId, spriteId);
            eventObject->warpArrowSpriteId = CreateWarpArrowSprite();
        }
        if (subspriteTables != ((void *)0))
        {
            SetSubspriteTables(sprite, subspriteTables);
        }
        sprite->oam.paletteNum = paletteSlot;
        sprite->coordOffsetEnabled = 1;
        sprite->data[0] = eventObjectId;
        eventObject->spriteId = spriteId;
        if (!eventObject->inanimate && eventObject->movementType != 0xB)
        {
            StartSpriteAnim(sprite, GetFaceDirectionAnimNum(eventObject->facingDirection));
        }
        sub_808E38C(eventObject);
        SetObjectSubpriorityByZCoord(eventObject->previousElevation, sprite, 1);
    }
}

static void sub_808E38C(struct EventObject *eventObject)
{
    eventObject->singleMovementActive = 0;
    eventObject->triggerGroundEffectsOnMove = 1;
    eventObject->hasShadow = 0;
    eventObject->hasReflection = 0;
    eventObject->inShortGrass = 0;
    eventObject->inShallowFlowingWater = 0;
    eventObject->inSandPile = 0;
    eventObject->inHotSprings = 0;
    EventObjectClearHeldMovement(eventObject);
}

static void SetPlayerAvatarEventObjectIdAndObjectId(u8 eventObjectId, u8 spriteId)
{
    gPlayerAvatar.eventObjectId = eventObjectId;
    gPlayerAvatar.spriteId = spriteId;
    gPlayerAvatar.gender = GetPlayerAvatarGenderByGraphicsId(gEventObjects[eventObjectId].graphicsId);
    SetPlayerAvatarExtraStateTransition(gEventObjects[eventObjectId].graphicsId, 0x20);
}

void EventObjectSetGraphicsId(struct EventObject *eventObject, u8 graphicsId)
{
    const struct EventObjectGraphicsInfo *graphicsInfo;
    struct Sprite *sprite;
    u8 paletteSlot;

    graphicsInfo = GetEventObjectGraphicsInfo(graphicsId);
    sprite = &gSprites[eventObject->spriteId];
    paletteSlot = graphicsInfo->paletteSlot;
    if (paletteSlot == 0)
    {
        PatchObjectPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
    }
    else if (paletteSlot == 10)
    {
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
    }
    else if (paletteSlot >= 16)
    {
        paletteSlot -= 16;
        sub_808EAB0(graphicsInfo->paletteTag1, paletteSlot);
    }
    sprite->oam.shape = graphicsInfo->oam->shape;
    sprite->oam.size = graphicsInfo->oam->size;
    sprite->images = graphicsInfo->images;
    sprite->anims = graphicsInfo->anims;
    sprite->subspriteTables = graphicsInfo->subspriteTables;
    sprite->oam.paletteNum = paletteSlot;
    eventObject->inanimate = graphicsInfo->inanimate;
    eventObject->graphicsId = graphicsId;
    SetSpritePosToMapCoords(eventObject->currentCoords.x, eventObject->currentCoords.y, &sprite->pos1.x, &sprite->pos1.y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->pos1.x += 8;
    sprite->pos1.y += 16 + sprite->centerToCornerVecY;
    if (eventObject->trackedByCamera)
    {
        CameraObjectReset1();
    }
}

void EventObjectSetGraphicsIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, u8 graphicsId)
{
    u8 eventObjectId;

    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        EventObjectSetGraphicsId(&gEventObjects[eventObjectId], graphicsId);
    }
}

void EventObjectTurn(struct EventObject *eventObject, u8 direction)
{
    SetEventObjectDirection(eventObject, direction);
    if (!eventObject->inanimate)
    {
        StartSpriteAnim(&gSprites[eventObject->spriteId], GetFaceDirectionAnimNum(eventObject->facingDirection));
        SeekSpriteAnim(&gSprites[eventObject->spriteId], 0);
    }
}

void EventObjectTurnByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, u8 direction)
{
    u8 eventObjectId;

    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        EventObjectTurn(&gEventObjects[eventObjectId], direction);
    }
}

void PlayerObjectTurn(struct PlayerAvatar *playerAvatar, u8 direction)
{
    EventObjectTurn(&gEventObjects[playerAvatar->eventObjectId], direction);
}

static void get_berry_tree_graphics(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 berryStage;
    u8 berryId;

    eventObject->invisible = 1;
    sprite->invisible = 1;
    berryStage = GetStageByBerryTreeId(eventObject->trainerRange_berryTreeId);
    if (berryStage != 0)
    {
        eventObject->invisible = 0;
        sprite->invisible = 0;
        berryId = GetBerryTypeByBerryTreeId(eventObject->trainerRange_berryTreeId) - 1;
        berryStage--;
        if (berryId > (((175 - 133) + 1)))
            berryId = 0;

        EventObjectSetGraphicsId(eventObject, gBerryTreeEventObjectGraphicsIdTablePointers[berryId][berryStage]);
        sprite->images = gBerryTreePicTablePointers[berryId];
        sprite->oam.paletteNum = gBerryTreePaletteSlotTablePointers[berryId][berryStage];
        StartSpriteAnim(sprite, berryStage);
    }
}

const struct EventObjectGraphicsInfo *GetEventObjectGraphicsInfo(u8 graphicsId)
{
    u8 bard;

    if (graphicsId >= 240)
    {
        graphicsId = VarGetEventObjectGraphicsId(graphicsId - 240);
    }
    if (graphicsId == 69)
    {
        bard = GetCurrentMauvilleOldMan();
        return gMauvilleOldManGraphicsInfoPointers[bard];
    }
    if (graphicsId >= 239)
    {
        graphicsId = 5;
    }
    return gEventObjectGraphicsInfoPointers[graphicsId];
}

static void SetEventObjectDynamicGraphicsId(struct EventObject *eventObject)
{
    if (eventObject->graphicsId >= 240)
    {
        eventObject->graphicsId = VarGetEventObjectGraphicsId(eventObject->graphicsId - 240);
    }
}

void npc_by_local_id_and_map_set_field_1_bit_x20(u8 localId, u8 mapNum, u8 mapGroup, u8 state)
{
    u8 eventObjectId;

    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        gEventObjects[eventObjectId].invisible = state;
    }
}

void EventObjectGetLocalIdAndMap(struct EventObject *eventObject, void *localId, void *mapNum, void *mapGroup)
{
    *(u8*)(localId) = eventObject->localId;
    *(u8*)(mapNum) = eventObject->mapNum;
    *(u8*)(mapGroup) = eventObject->mapGroup;
}

void sub_808E75C(s16 x, s16 y)
{
    u8 eventObjectId;
    struct EventObject *eventObject;

    eventObjectId = GetEventObjectIdByXY(x, y);
    if (eventObjectId != 16)
    {
        eventObject = &gEventObjects[eventObjectId];
        eventObject->triggerGroundEffectsOnMove = 1;
    }
}

void sub_808E78C(u8 localId, u8 mapNum, u8 mapGroup, u8 subpriority)
{
    u8 eventObjectId;
    struct EventObject *eventObject;
    struct Sprite *sprite;

    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        eventObject = &gEventObjects[eventObjectId];
        sprite = &gSprites[eventObject->spriteId];
        eventObject->fixedPriority = 1;
        sprite->subpriority = subpriority;
    }
}

void sub_808E7E4(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 eventObjectId;
    struct EventObject *eventObject;

    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        eventObject = &gEventObjects[eventObjectId];
        eventObject->fixedPriority = 0;
        eventObject->triggerGroundEffectsOnMove = 1;
    }
}

void sub_808E82C(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y)
{
    u8 eventObjectId;
    struct Sprite *sprite;

    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        sprite = &gSprites[gEventObjects[eventObjectId].spriteId];
        sprite->pos2.x = x;
        sprite->pos2.y = y;
    }
}

void FreeAndReserveObjectSpritePalettes(void)
{
    FreeAllSpritePalettes();
    gReservedSpritePaletteCount = 12;
}

static void LoadEventObjectPalette(u16 paletteTag)
{
    u16 i = FindEventObjectPaletteIndexByTag(paletteTag);

    if (i != 0x11FF)
    {
        sub_808E8F4(&sEventObjectSpritePalettes[i]);
    }
}

void Unused_LoadEventObjectPaletteSet(u16 *paletteTags)
{
    u8 i;

    for (i = 0; paletteTags[i] != 0x11FF; i++)
    {
        LoadEventObjectPalette(paletteTags[i]);
    }
}

static u8 sub_808E8F4(const struct SpritePalette *spritePalette)
{
    if (IndexOfSpritePaletteTag(spritePalette->tag) != 0xFF)
    {
        return 0xFF;
    }
    return LoadSpritePalette(spritePalette);
}

void PatchObjectPalette(u16 paletteTag, u8 paletteSlot)
{
    u8 paletteIndex = FindEventObjectPaletteIndexByTag(paletteTag);

    LoadPalette(sEventObjectSpritePalettes[paletteIndex].data, 16 * paletteSlot + 0x100, 0x20);
}

void PatchObjectPaletteRange(const u16 *paletteTags, u8 minSlot, u8 maxSlot)
{
    while (minSlot < maxSlot)
    {
        PatchObjectPalette(*paletteTags, minSlot);
        paletteTags++;
        minSlot++;
    }
}

static u8 FindEventObjectPaletteIndexByTag(u16 tag)
{
    u8 i;

    for (i = 0; sEventObjectSpritePalettes[i].tag != 0x11FF; i++)
    {
        if (sEventObjectSpritePalettes[i].tag == tag)
        {
            return i;
        }
    }
    return 0xFF;
}

void LoadPlayerObjectReflectionPalette(u16 tag, u8 slot)
{
    u8 i;

    PatchObjectPalette(tag, slot);
    for (i = 0; gPlayerReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gPlayerReflectionPaletteSets[i].tag == tag)
        {
            PatchObjectPalette(gPlayerReflectionPaletteSets[i].data[sCurrentReflectionType], gReflectionEffectPaletteMap[slot]);
            return;
        }
    }
}

void LoadSpecialObjectReflectionPalette(u16 tag, u8 slot)
{
    u8 i;

    sCurrentSpecialObjectPaletteTag = tag;
    PatchObjectPalette(tag, slot);
    for (i = 0; gSpecialObjectReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gSpecialObjectReflectionPaletteSets[i].tag == tag)
        {
            PatchObjectPalette(gSpecialObjectReflectionPaletteSets[i].data[sCurrentReflectionType], gReflectionEffectPaletteMap[slot]);
            return;
        }
    }
}

static void sub_808EAB0(u16 tag, u8 slot)
{
    PatchObjectPalette(tag, slot);
}

void unref_sub_808EAC4(struct EventObject *eventObject, s16 x, s16 y)
{
    eventObject->previousCoords.x = eventObject->currentCoords.x;
    eventObject->previousCoords.y = eventObject->currentCoords.y;
    eventObject->currentCoords.x += x;
    eventObject->currentCoords.y += y;
}

void ShiftEventObjectCoords(struct EventObject *eventObject, s16 x, s16 y)
{
    eventObject->previousCoords.x = eventObject->currentCoords.x;
    eventObject->previousCoords.y = eventObject->currentCoords.y;
    eventObject->currentCoords.x = x;
    eventObject->currentCoords.y = y;
}

static void SetEventObjectCoords(struct EventObject *eventObject, s16 x, s16 y)
{
    eventObject->previousCoords.x = x;
    eventObject->previousCoords.y = y;
    eventObject->currentCoords.x = x;
    eventObject->currentCoords.y = y;
}

void MoveEventObjectToMapCoords(struct EventObject *eventObject, s16 x, s16 y)
{
    struct Sprite *sprite;
    const struct EventObjectGraphicsInfo *graphicsInfo;

    sprite = &gSprites[eventObject->spriteId];
    graphicsInfo = GetEventObjectGraphicsInfo(eventObject->graphicsId);
    SetEventObjectCoords(eventObject, x, y);
    SetSpritePosToMapCoords(eventObject->currentCoords.x, eventObject->currentCoords.y, &sprite->pos1.x, &sprite->pos1.y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->pos1.x += 8;
    sprite->pos1.y += 16 + sprite->centerToCornerVecY;
    sub_808E38C(eventObject);
    if (eventObject->trackedByCamera)
        CameraObjectReset1();
}

void TryMoveEventObjectToMapCoords(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y)
{
    u8 eventObjectId;
    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        x += 7;
        y += 7;
        MoveEventObjectToMapCoords(&gEventObjects[eventObjectId], x, y);
    }
}

void ShiftStillEventObjectCoords(struct EventObject *eventObject)
{
    ShiftEventObjectCoords(eventObject, eventObject->currentCoords.x, eventObject->currentCoords.y);
}

void UpdateEventObjectCoordsForCameraUpdate(void)
{
    u8 i;
    s16 dx;
    s16 dy;

    if (gCamera.active)
    {
        dx = gCamera.x;
        dy = gCamera.y;
        for (i = 0; i < 16; i++)
        {
            if (gEventObjects[i].active)
            {
                gEventObjects[i].initialCoords.x -= dx;
                gEventObjects[i].initialCoords.y -= dy;
                gEventObjects[i].currentCoords.x -= dx;
                gEventObjects[i].currentCoords.y -= dy;
                gEventObjects[i].previousCoords.x -= dx;
                gEventObjects[i].previousCoords.y -= dy;
            }
        }
    }
}

u8 GetEventObjectIdByXYZ(u16 x, u16 y, u8 z)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        if (gEventObjects[i].active)
        {
            if (gEventObjects[i].currentCoords.x == x && gEventObjects[i].currentCoords.y == y && EventObjectDoesZCoordMatch(&gEventObjects[i], z))
            {
                return i;
            }
        }
    }
    return 16;
}

static bool8 EventObjectDoesZCoordMatch(struct EventObject *eventObject, u8 z)
{
    if (eventObject->currentElevation != 0 && z != 0 && eventObject->currentElevation != z)
    {
        return 0;
    }
    return 1;
}

void UpdateEventObjectsForCameraUpdate(s16 x, s16 y)
{
    UpdateEventObjectCoordsForCameraUpdate();
    TrySpawnEventObjects(x, y);
    RemoveEventObjectsOutsideView();
}

u8 AddCameraObject(u8 linkedSpriteId)
{
    u8 spriteId = CreateSprite(&gCameraSpriteTemplate, 0, 0, 4);

    gSprites[spriteId].invisible = 1;
    gSprites[spriteId].data[0] = linkedSpriteId;
    return spriteId;
}

static void ObjectCB_CameraObject(struct Sprite *sprite)
{
    void (*callbacks[(size_t)(sizeof(gCameraObjectFuncs) / sizeof((gCameraObjectFuncs)[0]))])(struct Sprite *);

    memcpy(callbacks, gCameraObjectFuncs, sizeof gCameraObjectFuncs);
    callbacks[sprite->data[1]](sprite);
}

static void CameraObject_0(struct Sprite *sprite)
{
    sprite->pos1.x = gSprites[sprite->data[0]].pos1.x;
    sprite->pos1.y = gSprites[sprite->data[0]].pos1.y;
    sprite->invisible = 1;
    sprite->data[1] = 1;
    CameraObject_1(sprite);
}

static void CameraObject_1(struct Sprite *sprite)
{
    s16 x = gSprites[sprite->data[0]].pos1.x;
    s16 y = gSprites[sprite->data[0]].pos1.y;

    sprite->data[2] = x - sprite->pos1.x;
    sprite->data[3] = y - sprite->pos1.y;
    sprite->pos1.x = x;
    sprite->pos1.y = y;
}

static void CameraObject_2(struct Sprite *sprite)
{
    sprite->pos1.x = gSprites[sprite->data[0]].pos1.x;
    sprite->pos1.y = gSprites[sprite->data[0]].pos1.y;
    sprite->data[2] = 0;
    sprite->data[3] = 0;
}

static struct Sprite *FindCameraObject(void)
{
    u8 i;

    for (i = 0; i < 64; i++)
    {
        if (gSprites[i].inUse && gSprites[i].callback == ObjectCB_CameraObject)
        {
            return &gSprites[i];
        }
    }
    return ((void *)0);
}

void CameraObjectReset1(void)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject != ((void *)0))
    {
        cameraObject->data[1] = 0;
        cameraObject->callback(cameraObject);
    }
}

void CameraObjectSetFollowedObjectId(u8 objectId)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject != ((void *)0))
    {
        cameraObject->data[0] = objectId;
        CameraObjectReset1();
    }
}

u8 CameraObjectGetFollowedObjectId(void)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject == ((void *)0))
    {
        return 64;
    }
    return cameraObject->data[0];
}

void CameraObjectReset2(void)
{
    FindCameraObject()->data[1] = 2;
}

u8 CopySprite(struct Sprite *sprite, s16 x, s16 y, u8 subpriority)
{
    u8 i;

    for (i = 0; i < 64; i++)
    {
        if (!gSprites[i].inUse)
        {
            gSprites[i] = *sprite;
            gSprites[i].pos1.x = x;
            gSprites[i].pos1.y = y;
            gSprites[i].subpriority = subpriority;
            break;
        }
    }
    return i;
}

u8 CreateCopySpriteAt(struct Sprite *sprite, s16 x, s16 y, u8 subpriority)
{
    s16 i;

    for (i = 64 - 1; i > -1; i--)
    {
        if (!gSprites[i].inUse)
        {
            gSprites[i] = *sprite;
            gSprites[i].pos1.x = x;
            gSprites[i].pos1.y = y;
            gSprites[i].subpriority = subpriority;
            return i;
        }
    }
    return 64;
}

void SetEventObjectDirection(struct EventObject *eventObject, u8 direction)
{
    s8 d2;
    eventObject->previousMovementDirection = eventObject->facingDirection;
    if (!eventObject->facingDirectionLocked)
    {
        d2 = direction;
        eventObject->facingDirection = d2;
    }
    eventObject->movementDirection = direction;
}

static const u8 *GetEventObjectScriptPointerByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    return GetEventObjectTemplateByLocalIdAndMap(localId, mapNum, mapGroup)->script;
}

const u8 *GetEventObjectScriptPointerByEventObjectId(u8 eventObjectId)
{
    return GetEventObjectScriptPointerByLocalIdAndMap(gEventObjects[eventObjectId].localId, gEventObjects[eventObjectId].mapNum, gEventObjects[eventObjectId].mapGroup);
}

static u16 GetEventObjectFlagIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    return GetEventObjectTemplateByLocalIdAndMap(localId, mapNum, mapGroup)->flagId;
}

static u16 GetEventObjectFlagIdByEventObjectId(u8 eventObjectId)
{
    return GetEventObjectFlagIdByLocalIdAndMap(gEventObjects[eventObjectId].localId, gEventObjects[eventObjectId].mapNum, gEventObjects[eventObjectId].mapGroup);
}

u8 sub_808F080(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 eventObjectId;

    if (TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        return 0xFF;
    }
    return gEventObjects[eventObjectId].trainerType;
}

u8 sub_808F0BC(u8 eventObjectId)
{
    return gEventObjects[eventObjectId].trainerType;
}

u8 sub_808F0D4(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 eventObjectId;

    if (TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        return 0xFF;
    }
    return gEventObjects[eventObjectId].trainerRange_berryTreeId;
}

u8 EventObjectGetBerryTreeId(u8 eventObjectId)
{
    return gEventObjects[eventObjectId].trainerRange_berryTreeId;
}

static struct EventObjectTemplate *GetEventObjectTemplateByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    struct EventObjectTemplate *templates;
    const struct MapHeader *mapHeader;
    u8 count;

    if (gSaveBlock1Ptr->location.mapNum == mapNum && gSaveBlock1Ptr->location.mapGroup == mapGroup)
    {
        templates = gSaveBlock1Ptr->eventObjectTemplates;
        count = gMapHeader.events->eventObjectCount;
    }
    else
    {
        mapHeader = Overworld_GetMapHeaderByGroupAndId(mapGroup, mapNum);
        templates = mapHeader->events->eventObjects;
        count = mapHeader->events->eventObjectCount;
    }
    return FindEventObjectTemplateByLocalId(localId, templates, count);
}

static struct EventObjectTemplate *FindEventObjectTemplateByLocalId(u8 localId, struct EventObjectTemplate *templates, u8 count)
{
    u8 i;

    for (i = 0; i < count; i++)
    {
        if (templates[i].localId == localId)
        {
            return &templates[i];
        }
    }
    return ((void *)0);
}

struct EventObjectTemplate *GetBaseTemplateForEventObject(const struct EventObject *eventObject)
{
    int i;

    if (eventObject->mapNum != gSaveBlock1Ptr->location.mapNum || eventObject->mapGroup != gSaveBlock1Ptr->location.mapGroup)
    {
        return ((void *)0);
    }
    for (i = 0; i < 64; i++)
    {
        if (eventObject->localId == gSaveBlock1Ptr->eventObjectTemplates[i].localId)
        {
            return &gSaveBlock1Ptr->eventObjectTemplates[i];
        }
    }
    return ((void *)0);
}

void OverrideTemplateCoordsForEventObject(const struct EventObject *eventObject)
{
    struct EventObjectTemplate *eventObjectTemplate;

    eventObjectTemplate = GetBaseTemplateForEventObject(eventObject);
    if (eventObjectTemplate != ((void *)0))
    {
        eventObjectTemplate->x = eventObject->currentCoords.x - 7;
        eventObjectTemplate->y = eventObject->currentCoords.y - 7;
    }
}

static void OverrideEventObjectTemplateScript(const struct EventObject *eventObject, const u8 *script)
{
    struct EventObjectTemplate *eventObjectTemplate;

    eventObjectTemplate = GetBaseTemplateForEventObject(eventObject);
    if (eventObjectTemplate)
        eventObjectTemplate->script = script;
}

void TryOverrideTemplateCoordsForEventObject(const struct EventObject *eventObject, u8 movementType)
{
    struct EventObjectTemplate *eventObjectTemplate;

    eventObjectTemplate = GetBaseTemplateForEventObject(eventObject);
    if (eventObjectTemplate != ((void *)0))
    {
        eventObjectTemplate->movementType = movementType;
    }
}

void TryOverrideEventObjectTemplateCoords(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 eventObjectId;
    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
        OverrideTemplateCoordsForEventObject(&gEventObjects[eventObjectId]);
}

void OverrideSecretBaseDecorationSpriteScript(u8 localId, u8 mapNum, u8 mapGroup, u8 decorationCategory)
{
    u8 eventObjectId;
    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        switch (decorationCategory)
        {
        case DECORCAT_DOLL:
            OverrideEventObjectTemplateScript(&gEventObjects[eventObjectId], SecretBase_EventScript_DollInteract);
            break;
        case DECORCAT_CUSHION:
            OverrideEventObjectTemplateScript(&gEventObjects[eventObjectId], SecretBase_EventScript_CushionInteract);
            break;
        }
    }
}

void InitEventObjectPalettes(u8 palSlot)
{
    FreeAndReserveObjectSpritePalettes();
    sCurrentSpecialObjectPaletteTag = 0x11FF;
    sCurrentReflectionType = palSlot;
    if (palSlot == 1)
    {
        PatchObjectPaletteRange(gObjectPaletteTagSets[sCurrentReflectionType], 0, 6);
        gReservedSpritePaletteCount = 8;
    }
    else
    {
        PatchObjectPaletteRange(gObjectPaletteTagSets[sCurrentReflectionType], 0, 10);
    }
}

u16 GetObjectPaletteTag(u8 palSlot)
{
    u8 i;

    if (palSlot < 10)
    {
        return gObjectPaletteTagSets[sCurrentReflectionType][palSlot];
    }
    for (i = 0; gSpecialObjectReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gSpecialObjectReflectionPaletteSets[i].tag == sCurrentSpecialObjectPaletteTag)
        {
            return gSpecialObjectReflectionPaletteSets[i].data[sCurrentReflectionType];
        }
    }
    return 0x11FF;
}

static u8 MovementType_None_callback(struct EventObject *, struct Sprite *);void MovementType_None(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_None_callback);}static u8 MovementType_None_callback(struct EventObject *eventObject, struct Sprite *sprite){ return 0;}
static u8 MovementType_WanderAround_callback(struct EventObject *, struct Sprite *);void MovementType_WanderAround(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WanderAround_callback);}static u8 MovementType_WanderAround_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WanderAround[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_WanderAround_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_WanderAround_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WanderAround_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (!EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

bool8 MovementType_WanderAround_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_WanderAround_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[4];
    u8 chosenDirection;

    memcpy(directions, gStandardDirections, sizeof directions);
    chosenDirection = directions[Random() & 3];
    SetEventObjectDirection(eventObject, chosenDirection);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(eventObject, chosenDirection))
    {
        sprite->data[1] = 1;
    }
    return 1;
}

bool8 MovementType_WanderAround_Step5(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkNormalMovementAction(eventObject->movementDirection));
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

bool8 MovementType_WanderAround_Step6(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

bool8 EventObjectIsTrainerAndCloseToPlayer(struct EventObject *eventObject)
{
    s16 playerX;
    s16 playerY;
    s16 objX;
    s16 objY;
    s16 minX;
    s16 maxX;
    s16 minY;
    s16 maxY;

    if (!TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_WATERING)))
    {
        return 0;
    }
    if (eventObject->trainerType != 1 && eventObject->trainerType != 3)
    {
        return 0;
    }
    PlayerGetDestCoords(&playerX, &playerY);
    objX = eventObject->currentCoords.x;
    objY = eventObject->currentCoords.y;
    minX = objX - eventObject->trainerRange_berryTreeId;
    minY = objY - eventObject->trainerRange_berryTreeId;
    maxX = objX + eventObject->trainerRange_berryTreeId;
    maxY = objY + eventObject->trainerRange_berryTreeId;
    if (minX > playerX || maxX < playerX || minY > playerY || maxY < playerY)
    {
        return 0;
    }
    return 1;
}

u8 GetVectorDirection(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    if (absdx > absdy)
    {
        direction = 4;
        if (dx < 0)
        {
            direction = 3;
        }
    }
    else
    {
        direction = 1;
        if (dy < 0)
        {
            direction = 2;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_SouthNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = 1;
    if (dy < 0)
    {
        direction = 2;
    }
    return direction;
}

u8 GetLimitedVectorDirection_WestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = 4;
    if (dx < 0)
    {
        direction = 3;
    }
    return direction;
}

u8 GetLimitedVectorDirection_WestNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 4)
        {
            direction = 2;
        }
    }
    else if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 1)
        {
            direction = 2;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_EastNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 3)
        {
            direction = 2;
        }
    }
    else if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 1)
        {
            direction = 2;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_WestSouth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 4)
        {
            direction = 1;
        }
    }
    else if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 2)
        {
            direction = 1;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_EastSouth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 3)
        {
            direction = 1;
        }
    }
    else if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 2)
        {
            direction = 1;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_SouthNorthWest(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 GetLimitedVectorDirection_SouthNorthEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 GetLimitedVectorDirection_NorthWestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 GetLimitedVectorDirection_SouthWestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 TryGetTrainerEncounterDirection(struct EventObject *eventObject, u8 movementType)
{
    s16 dx, dy;
    s16 absdx, absdy;

    if (!EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        return 0;
    }
    PlayerGetDestCoords(&dx, &dy);
    dx -= eventObject->currentCoords.x;
    dy -= eventObject->currentCoords.y;
    absdx = dx;
    absdy = dy;
    if (absdx < 0)
    {
        absdx = -absdx;
    }
    if (absdy < 0)
    {
        absdy = -absdy;
    }
    return gGetVectorDirectionFuncs[movementType](dx, dy, absdx, absdy);
}

static u8 MovementType_LookAround_callback(struct EventObject *, struct Sprite *);void MovementType_LookAround(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_LookAround_callback);}static u8 MovementType_LookAround_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_LookAround[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_LookAround_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_LookAround_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_LookAround_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_LookAround_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_LookAround_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gStandardDirections, sizeof directions);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_ANY);
    if (direction == 0)
        direction = directions[Random() & 3];

    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_WanderUpAndDown_callback(struct EventObject *, struct Sprite *);void MovementType_WanderUpAndDown(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WanderUpAndDown_callback);}static u8 MovementType_WanderUpAndDown_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WanderUpAndDown[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_WanderUpAndDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (!EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_WanderUpAndDown_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndDownDirections, sizeof directions);
    direction = directions[Random() & 1];
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(eventObject, direction))
    {
        sprite->data[1] = 1;
    }
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step5(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkNormalMovementAction(eventObject->movementDirection));
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step6(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_WanderLeftAndRight_callback(struct EventObject *, struct Sprite *);void MovementType_WanderLeftAndRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WanderLeftAndRight_callback);}static u8 MovementType_WanderLeftAndRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WanderLeftAndRight[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_WanderLeftAndRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (!EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_WanderLeftAndRight_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gLeftAndRightDirections, sizeof directions);
    direction = directions[Random() & 1];
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(eventObject, direction))
    {
        sprite->data[1] = 1;
    }
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step5(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkNormalMovementAction(eventObject->movementDirection));
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step6(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_FaceDirection_callback(struct EventObject *, struct Sprite *);void MovementType_FaceDirection(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceDirection_callback);}static u8 MovementType_FaceDirection_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDirection[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceDirection_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDirection_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        sprite->data[1] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDirection_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->singleMovementActive = 0;
    return 0;
}

static bool8 EventObjectCB2_BerryTree(struct EventObject *eventObject, struct Sprite *sprite);
extern bool8 (*const gMovementTypeFuncs_BerryTreeGrowth[])(struct EventObject *eventObject, struct Sprite *sprite);
void MovementType_BerryTreeGrowth(struct Sprite *sprite)
{
    struct EventObject *eventObject;

    eventObject = &gEventObjects[sprite->data[0]];
    if (!(sprite->data[7] & 1))
    {
        get_berry_tree_graphics(eventObject, sprite);
        sprite->data[7] |= 1;
    }
    UpdateEventObjectCurrentMovement(eventObject, sprite, EventObjectCB2_BerryTree);
}
static bool8 EventObjectCB2_BerryTree(struct EventObject *eventObject, struct Sprite *sprite)
{
    return gMovementTypeFuncs_BerryTreeGrowth[sprite->data[1]](eventObject, sprite);
}

bool8 MovementType_BerryTreeGrowth_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 berryStage;
    ClearEventObjectMovement(eventObject, sprite);
    eventObject->invisible = 1;
    sprite->invisible = 1;
    berryStage = GetStageByBerryTreeId(eventObject->trainerRange_berryTreeId);
    if (berryStage == 0)
    {
        if (!(sprite->data[7] & 4) && sprite->animNum == 4)
        {
            gFieldEffectArguments[0] = eventObject->currentCoords.x;
            gFieldEffectArguments[1] = eventObject->currentCoords.y;
            gFieldEffectArguments[2] = sprite->subpriority - 1;
            gFieldEffectArguments[3] = sprite->oam.priority;
            FieldEffectStart(23);
            sprite->animNum = berryStage;
        }
        return 0;
    }
    eventObject->invisible = 0;
    sprite->invisible = 0;
    berryStage --;
    if (sprite->animNum != berryStage)
    {
        sprite->data[1] = 2;
        return 1;
    }
    get_berry_tree_graphics(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, 0x39);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_BerryTreeGrowth_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        sprite->data[1] = 0;
        return 1;
    }
    return 0;
}

bool8 MovementType_BerryTreeGrowth_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 3;
    sprite->data[2] = 0;
    sprite->data[7] |= 2;
    gFieldEffectArguments[0] = eventObject->currentCoords.x;
    gFieldEffectArguments[1] = eventObject->currentCoords.y;
    gFieldEffectArguments[2] = sprite->subpriority - 1;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(23);
    return 1;
}

bool8 MovementType_BerryTreeGrowth_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->data[2]++;
    eventObject->invisible = (sprite->data[2] & 0x02) >> 1;
    sprite->animPaused = 1;
    if (sprite->data[2] > 64)
    {
        get_berry_tree_graphics(eventObject, sprite);
        sprite->data[1] = 4;
        sprite->data[2] = 0;
        return 1;
    }
    return 0;
}

bool8 MovementType_BerryTreeGrowth_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->data[2]++;
    eventObject->invisible = (sprite->data[2] & 0x02) >> 1;
    sprite->animPaused = 1;
    if (sprite->data[2] > 64)
    {
        sprite->data[1] = 0;
        sprite->data[7] &= ~0x0002;
        return 1;
    }
    return 0;
}

static u8 MovementType_FaceDownAndUp_callback(struct EventObject *, struct Sprite *);void MovementType_FaceDownAndUp(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceDownAndUp_callback);}static u8 MovementType_FaceDownAndUp_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownAndUp[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceDownAndUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownAndUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownAndUp_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownAndUp_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownAndUp_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndDownDirections, sizeof gUpAndDownDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_NORTH_SOUTH);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceLeftAndRight_callback(struct EventObject *, struct Sprite *);void MovementType_FaceLeftAndRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceLeftAndRight_callback);}static u8 MovementType_FaceLeftAndRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceLeftAndRight[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceLeftAndRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceLeftAndRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceLeftAndRight_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceLeftAndRight_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceLeftAndRight_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gLeftAndRightDirections, sizeof gLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpAndLeft_callback(struct EventObject *, struct Sprite *);void MovementType_FaceUpAndLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceUpAndLeft_callback);}static u8 MovementType_FaceUpAndLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceUpAndLeft[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceUpAndLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceUpAndLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceUpAndLeft_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceUpAndLeft_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceUpAndLeft_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndLeftDirections, sizeof gUpAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_NORTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpAndRight_callback(struct EventObject *, struct Sprite *);void MovementType_FaceUpAndRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceUpAndRight_callback);}static u8 MovementType_FaceUpAndRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceUpAndRight[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceUpAndRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceUpAndRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceUpAndRight_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceUpAndRight_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceUpAndRight_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndRightDirections, sizeof gUpAndRightDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_NORTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownAndLeft_callback(struct EventObject *, struct Sprite *);void MovementType_FaceDownAndLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceDownAndLeft_callback);}static u8 MovementType_FaceDownAndLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownAndLeft[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceDownAndLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownAndLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownAndLeft_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownAndLeft_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownAndLeft_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gDownAndLeftDirections, sizeof gDownAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_SOUTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownAndRight_callback(struct EventObject *, struct Sprite *);void MovementType_FaceDownAndRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceDownAndRight_callback);}static u8 MovementType_FaceDownAndRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownAndRight[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceDownAndRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownAndRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownAndRight_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownAndRight_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownAndRight_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gDownAndRightDirections, sizeof gDownAndRightDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_SOUTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownUpAndLeft_callback(struct EventObject *, struct Sprite *);void MovementType_FaceDownUpAndLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceDownUpAndLeft_callback);}static u8 MovementType_FaceDownUpAndLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownUpAndLeft[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceDownUpAndLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownUpAndLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownUpAndLeft_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownUpAndLeft_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownUpAndLeft_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownUpAndLeftDirections, sizeof gDownUpAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_NORTH_SOUTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownUpAndRight_callback(struct EventObject *, struct Sprite *);void MovementType_FaceDownUpAndRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceDownUpAndRight_callback);}static u8 MovementType_FaceDownUpAndRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownUpAndRight[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceDownUpAndRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownUpAndRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownUpAndRight_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownUpAndRight_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownUpAndRight_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownUpAndRightDirections, sizeof gDownUpAndRightDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_NORTH_SOUTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpRightAndLeft_callback(struct EventObject *, struct Sprite *);void MovementType_FaceUpRightAndLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceUpRightAndLeft_callback);}static u8 MovementType_FaceUpRightAndLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceUpLeftAndRight[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceUpLeftAndRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceUpLeftAndRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceUpLeftAndRight_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceUpLeftAndRight_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceUpLeftAndRight_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gUpLeftAndRightDirections, sizeof gUpLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_NORTH_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownRightAndLeft_callback(struct EventObject *, struct Sprite *);void MovementType_FaceDownRightAndLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_FaceDownRightAndLeft_callback);}static u8 MovementType_FaceDownRightAndLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownLeftAndRight[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_FaceDownLeftAndRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownLeftAndRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownLeftAndRight_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownLeftAndRight_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownLeftAndRight_Step4(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownLeftAndRightDirections, sizeof gDownLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_SOUTH_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_RotateCounterclockwise_callback(struct EventObject *, struct Sprite *);void MovementType_RotateCounterclockwise(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_RotateCounterclockwise_callback);}static u8 MovementType_RotateCounterclockwise_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_RotateCounterclockwise[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_RotateCounterclockwise_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_RotateCounterclockwise_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, 48);
        sprite->data[1] = 2;
    }
    return 0;
}

bool8 MovementType_RotateCounterclockwise_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_RotateCounterclockwise_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[5];
    memcpy(directions, gCounterclockwiseDirections, sizeof gCounterclockwiseDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_ANY);
    if (direction == 0)
    {
        direction = directions[eventObject->facingDirection];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 0;
    return 1;
}

static u8 MovementType_RotateClockwise_callback(struct EventObject *, struct Sprite *);void MovementType_RotateClockwise(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_RotateClockwise_callback);}static u8 MovementType_RotateClockwise_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_RotateClockwise[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_RotateClockwise_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_RotateClockwise_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        SetMovementDelay(sprite, 48);
        sprite->data[1] = 2;
    }
    return 0;
}

bool8 MovementType_RotateClockwise_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || EventObjectIsTrainerAndCloseToPlayer(eventObject))
    {
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_RotateClockwise_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[5];
    memcpy(directions, gClockwiseDirections, sizeof gClockwiseDirections);
    direction = TryGetTrainerEncounterDirection(eventObject, RUNFOLLOW_ANY);
    if (direction == 0)
    {
        direction = directions[eventObject->facingDirection];
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 0;
    return 1;
}

static u8 MovementType_WalkBackAndForth_callback(struct EventObject *, struct Sprite *);void MovementType_WalkBackAndForth(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkBackAndForth_callback);}static u8 MovementType_WalkBackAndForth_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkBackAndForth[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_WalkBackAndForth_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_WalkBackAndForth_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 direction;

    direction = gInitialMovementTypeFacingDirections[eventObject->movementType];
    if (eventObject->directionSequenceIndex)
    {
        direction = GetOppositeDirection(direction);
    }
    SetEventObjectDirection(eventObject, direction);
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WalkBackAndForth_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    bool8 collisionState;
    u8 movementActionId;

    if (eventObject->directionSequenceIndex && eventObject->initialCoords.x == eventObject->currentCoords.x && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 0;
        SetEventObjectDirection(eventObject, GetOppositeDirection(eventObject->movementDirection));
    }
    collisionState = GetCollisionInDirection(eventObject, eventObject->movementDirection);
    movementActionId = GetWalkNormalMovementAction(eventObject->movementDirection);
    if (collisionState == 1)
    {
        eventObject->directionSequenceIndex++;
        SetEventObjectDirection(eventObject, GetOppositeDirection(eventObject->movementDirection));
        movementActionId = GetWalkNormalMovementAction(eventObject->movementDirection);
        collisionState = GetCollisionInDirection(eventObject, eventObject->movementDirection);
    }
    if (collisionState)
    {
        movementActionId = GetWalkInPlaceNormalMovementAction(eventObject->facingDirection);
    }
    EventObjectSetSingleMovement(eventObject, sprite, movementActionId);
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 3;
    return 1;
}

bool8 MovementType_WalkBackAndForth_Step3(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

bool8 MovementType_WalkSequence_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MoveNextDirectionInSequence(struct EventObject *eventObject, struct Sprite *sprite, u8 *route)
{
    u8 collisionState;
    u8 movementActionId;

    if (eventObject->directionSequenceIndex == 3 && eventObject->initialCoords.x == eventObject->currentCoords.x && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 0;
    }
    SetEventObjectDirection(eventObject, route[eventObject->directionSequenceIndex]);
    movementActionId = GetWalkNormalMovementAction(eventObject->movementDirection);
    collisionState = GetCollisionInDirection(eventObject, eventObject->movementDirection);
    if (collisionState == 1)
    {
        eventObject->directionSequenceIndex++;
        SetEventObjectDirection(eventObject, route[eventObject->directionSequenceIndex]);
        movementActionId = GetWalkNormalMovementAction(eventObject->movementDirection);
        collisionState = GetCollisionInDirection(eventObject, eventObject->movementDirection);
    }
    if (collisionState)
    {
        movementActionId = GetWalkInPlaceNormalMovementAction(eventObject->facingDirection);
    }
    EventObjectSetSingleMovement(eventObject, sprite, movementActionId);
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WalkSequence_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_WalkSequenceUpRightLeftDown_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceUpRightLeftDown(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceUpRightLeftDown_callback);}static u8 MovementType_WalkSequenceUpRightLeftDown_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpRightLeftDown[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceUpRightLeftDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpRightLeftDownDirections)];
    memcpy(directions, gUpRightLeftDownDirections, sizeof(gUpRightLeftDownDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceRightLeftDownUp_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceRightLeftDownUp(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceRightLeftDownUp_callback);}static u8 MovementType_WalkSequenceRightLeftDownUp_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightLeftDownUp[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceRightLeftDownUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightLeftDownUpDirections)];
    memcpy(directions, gRightLeftDownUpDirections, sizeof(gRightLeftDownUpDirections));
    if (eventObject->directionSequenceIndex == 1 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceDownUpRightLeft_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceDownUpRightLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceDownUpRightLeft_callback);}static u8 MovementType_WalkSequenceDownUpRightLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownUpRightLeft[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceDownUpRightLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownUpRightLeftDirections)];
    memcpy(directions, gDownUpRightLeftDirections, sizeof(gDownUpRightLeftDirections));
    if (eventObject->directionSequenceIndex == 1 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftDownUpRight_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceLeftDownUpRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceLeftDownUpRight_callback);}static u8 MovementType_WalkSequenceLeftDownUpRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftDownUpRight[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceLeftDownUpRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftDownUpRightDirections)];
    memcpy(directions, gLeftDownUpRightDirections, sizeof(gLeftDownUpRightDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceUpLeftRightDown_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceUpLeftRightDown(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceUpLeftRightDown_callback);}static u8 MovementType_WalkSequenceUpLeftRightDown_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpLeftRightDown[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceUpLeftRightDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpLeftRightDownDirections)];
    memcpy(directions, gUpLeftRightDownDirections, sizeof(gUpLeftRightDownDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftRightDownUp_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceLeftRightDownUp(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceLeftRightDownUp_callback);}static u8 MovementType_WalkSequenceLeftRightDownUp_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftRightDownUp[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceLeftRightDownUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftRightDownUpDirections)];
    memcpy(directions, gLeftRightDownUpDirections, sizeof(gLeftRightDownUpDirections));
    if (eventObject->directionSequenceIndex == 1 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceDownUpLeftRight_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceDownUpLeftRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceDownUpLeftRight_callback);}static u8 MovementType_WalkSequenceDownUpLeftRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownUpLeftRight[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceDownUpLeftRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gStandardDirections)];
    memcpy(directions, gStandardDirections, sizeof(gStandardDirections));
    if (eventObject->directionSequenceIndex == 1 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceRightDownUpLeft_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceRightDownUpLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceRightDownUpLeft_callback);}static u8 MovementType_WalkSequenceRightDownUpLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightDownUpLeft[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceRightDownUpLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightDownUpLeftDirections)];
    memcpy(directions, gRightDownUpLeftDirections, sizeof(gRightDownUpLeftDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftUpDownRight_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceLeftUpDownRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceLeftUpDownRight_callback);}static u8 MovementType_WalkSequenceLeftUpDownRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftUpDownRight[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceLeftUpDownRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftUpDownRightDirections)];
    memcpy(directions, gLeftUpDownRightDirections, sizeof(gLeftUpDownRightDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceUpDownRightLeft_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceUpDownRightLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceUpDownRightLeft_callback);}static u8 MovementType_WalkSequenceUpDownRightLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpDownRightLeft[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceUpDownRightLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpDownRightLeftDirections)];
    memcpy(directions, gUpDownRightLeftDirections, sizeof(gUpDownRightLeftDirections));
    if (eventObject->directionSequenceIndex == 1 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceRightLeftUpDown_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceRightLeftUpDown(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceRightLeftUpDown_callback);}static u8 MovementType_WalkSequenceRightLeftUpDown_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightLeftUpDown[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceRightLeftUpDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightLeftUpDownDirections)];
    memcpy(directions, gRightLeftUpDownDirections, sizeof(gRightLeftUpDownDirections));
    if (eventObject->directionSequenceIndex == 1 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceDownRightLeftUp_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceDownRightLeftUp(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceDownRightLeftUp_callback);}static u8 MovementType_WalkSequenceDownRightLeftUp_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownRightLeftUp[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceDownRightLeftUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownRightLeftUpDirections)];
    memcpy(directions, gDownRightLeftUpDirections, sizeof(gDownRightLeftUpDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceRightUpDownLeft_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceRightUpDownLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceRightUpDownLeft_callback);}static u8 MovementType_WalkSequenceRightUpDownLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightUpDownLeft[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceRightUpDownLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightUpDownLeftDirections)];
    memcpy(directions, gRightUpDownLeftDirections, sizeof(gRightUpDownLeftDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceUpDownLeftRight_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceUpDownLeftRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceUpDownLeftRight_callback);}static u8 MovementType_WalkSequenceUpDownLeftRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpDownLeftRight[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceUpDownLeftRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpDownLeftRightDirections)];
    memcpy(directions, gUpDownLeftRightDirections, sizeof(gUpDownLeftRightDirections));
    if (eventObject->directionSequenceIndex == 1 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftRightUpDown_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceLeftRightUpDown(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceLeftRightUpDown_callback);}static u8 MovementType_WalkSequenceLeftRightUpDown_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftRightUpDown[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceLeftRightUpDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftRightUpDownDirections)];
    memcpy(directions, gLeftRightUpDownDirections, sizeof(gLeftRightUpDownDirections));
    if (eventObject->directionSequenceIndex == 1 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceDownLeftRightUp_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceDownLeftRightUp(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceDownLeftRightUp_callback);}static u8 MovementType_WalkSequenceDownLeftRightUp_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownLeftRightUp[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceDownLeftRightUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownLeftRightUpDirections)];
    memcpy(directions, gDownLeftRightUpDirections, sizeof(gDownLeftRightUpDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceUpLeftDownRight_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceUpLeftDownRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceUpLeftDownRight_callback);}static u8 MovementType_WalkSequenceUpLeftDownRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpLeftDownRight[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceUpLeftDownRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpLeftDownRightDirections)];
    memcpy(directions, gUpLeftDownRightDirections, sizeof(gUpLeftDownRightDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceDownRightUpLeft_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceDownRightUpLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceDownRightUpLeft_callback);}static u8 MovementType_WalkSequenceDownRightUpLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownRightUpLeft[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceDownRightUpLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownRightUpLeftDirections)];
    memcpy(directions, gDownRightUpLeftDirections, sizeof(gDownRightUpLeftDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftDownRightUp_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceLeftDownRightUp(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceLeftDownRightUp_callback);}static u8 MovementType_WalkSequenceLeftDownRightUp_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftDownRightUp[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceLeftDownRightUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftDownRightUpDirections)];
    memcpy(directions, gLeftDownRightUpDirections, sizeof(gLeftDownRightUpDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceRightUpLeftDown_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceRightUpLeftDown(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceRightUpLeftDown_callback);}static u8 MovementType_WalkSequenceRightUpLeftDown_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightUpLeftDown[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceRightUpLeftDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightUpLeftDownDirections)];
    memcpy(directions, gRightUpLeftDownDirections, sizeof(gRightUpLeftDownDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceUpRightDownLeft_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceUpRightDownLeft(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceUpRightDownLeft_callback);}static u8 MovementType_WalkSequenceUpRightDownLeft_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpRightDownLeft[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceUpRightDownLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpRightDownLeftDirections)];
    memcpy(directions, gUpRightDownLeftDirections, sizeof(gUpRightDownLeftDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceDownLeftUpRight_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceDownLeftUpRight(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceDownLeftUpRight_callback);}static u8 MovementType_WalkSequenceDownLeftUpRight_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownLeftUpRight[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceDownLeftUpRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownLeftUpRightDirections)];
    memcpy(directions, gDownLeftUpRightDirections, sizeof(gDownLeftUpRightDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.y == eventObject->currentCoords.y)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftUpRightDown_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceLeftUpRightDown(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceLeftUpRightDown_callback);}static u8 MovementType_WalkSequenceLeftUpRightDown_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftUpRightDown[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceLeftUpRightDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftUpRightDownDirections)];
    memcpy(directions, gLeftUpRightDownDirections, sizeof(gLeftUpRightDownDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_WalkSequenceRightDownLeftUp_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSequenceRightDownLeftUp(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSequenceRightDownLeftUp_callback);}static u8 MovementType_WalkSequenceRightDownLeftUp_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightDownLeftUp[sprite->data[1]](eventObject, sprite);}

u8 MovementType_WalkSequenceRightDownLeftUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightDownLeftUpDirections)];
    memcpy(directions, gRightDownLeftUpDirections, sizeof(gRightDownLeftUpDirections));
    if (eventObject->directionSequenceIndex == 2 && eventObject->initialCoords.x == eventObject->currentCoords.x)
    {
        eventObject->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(eventObject, sprite, directions);
}

static u8 MovementType_CopyPlayer_callback(struct EventObject *, struct Sprite *);void MovementType_CopyPlayer(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_CopyPlayer_callback);}static u8 MovementType_CopyPlayer_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_CopyPlayer[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_CopyPlayer_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    if (eventObject->directionSequenceIndex == 0)
    {
        eventObject->directionSequenceIndex = GetPlayerFacingDirection();
    }
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_CopyPlayer_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (gEventObjects[gPlayerAvatar.eventObjectId].movementActionId == 0xFF || gPlayerAvatar.tileTransitionState == T_TILE_CENTER)
    {
        return 0;
    }
    return gCopyPlayerMovementFuncs[PlayerGetCopyableMovement()](eventObject, sprite, GetPlayerMovementDirection(), ((void *)0));
}

bool8 MovementType_CopyPlayer_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        eventObject->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

bool8 CopyablePlayerMovement_None(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    return 0;
}

bool8 CopyablePlayerMovement_FaceDirection(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, playerDirection)));
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_GoSpeed0(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    if (EventObjectIsFarawayIslandMew(eventObject))
    {
        direction = GetMewMoveDirection();
        if (direction == 0)
        {
            direction = playerDirection;
            direction = state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, direction);
            EventObjectMoveDestCoords(eventObject, direction, &x, &y);
            EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(direction));
            eventObject->singleMovementActive = 1;
            sprite->data[1] = 2;
            return 1;
        }
    }
    else
    {
        direction = state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, direction);
    }
    EventObjectMoveDestCoords(eventObject, direction, &x, &y);
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkNormalMovementAction(direction));
    if (GetCollisionAtCoords(eventObject, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(direction));
    }
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_GoSpeed1(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, direction);
    EventObjectMoveDestCoords(eventObject, direction, &x, &y);
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkFastMovementAction(direction));
    if (GetCollisionAtCoords(eventObject, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(direction));
    }
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_GoSpeed2(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, direction);
    EventObjectMoveDestCoords(eventObject, direction, &x, &y);
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkFastestMovementAction(direction));
    if (GetCollisionAtCoords(eventObject, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(direction));
    }
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_Slide(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, direction);
    EventObjectMoveDestCoords(eventObject, direction, &x, &y);
    EventObjectSetSingleMovement(eventObject, sprite, GetSlideMovementAction(direction));
    if (GetCollisionAtCoords(eventObject, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(direction));
    }
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 cph_IM_DIFFERENT(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, direction);
    EventObjectSetSingleMovement(eventObject, sprite, GetJumpInPlaceMovementAction(direction));
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_GoSpeed4(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, direction);
    EventObjectMoveDestCoords(eventObject, direction, &x, &y);
    EventObjectSetSingleMovement(eventObject, sprite, GetJumpMovementAction(direction));
    if (GetCollisionAtCoords(eventObject, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(direction));
    }
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_Jump(struct EventObject *eventObject, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[eventObject->movementType], eventObject->directionSequenceIndex, direction);
    x = eventObject->currentCoords.x;
    y = eventObject->currentCoords.y;
    MoveCoordsInDirection(direction, &x, &y, 2, 2);
    EventObjectSetSingleMovement(eventObject, sprite, GetJump2MovementAction(direction));
    if (GetCollisionAtCoords(eventObject, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(direction));
    }
    eventObject->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static u8 MovementType_CopyPlayerInGrass_callback(struct EventObject *, struct Sprite *);void MovementType_CopyPlayerInGrass(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_CopyPlayerInGrass_callback);}static u8 MovementType_CopyPlayerInGrass_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_CopyPlayerInGrass[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_CopyPlayerInGrass_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (gEventObjects[gPlayerAvatar.eventObjectId].movementActionId == 0xFF || gPlayerAvatar.tileTransitionState == T_TILE_CENTER)
    {
        return 0;
    }
    return gCopyPlayerMovementFuncs[PlayerGetCopyableMovement()](eventObject, sprite, GetPlayerMovementDirection(), MetatileBehavior_IsPokeGrass);
}

void MovementType_TreeDisguise(struct Sprite *sprite)
{
    struct EventObject *eventObject;

    eventObject = &gEventObjects[sprite->data[0]];
    if (eventObject->directionSequenceIndex == 0 || (eventObject->directionSequenceIndex == 1 && !sprite->data[7]))
    {
        EventObjectGetLocalIdAndMap(eventObject, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
        eventObject->fieldEffectSpriteId = FieldEffectStart(28);
        eventObject->directionSequenceIndex = 1;
        sprite->data[7]++;
    }
    UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_Disguise_Callback);
}

static bool8 MovementType_Disguise_Callback(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    return 0;
}

void MovementType_MountainDisguise(struct Sprite *sprite)
{
    struct EventObject *eventObject;

    eventObject = &gEventObjects[sprite->data[0]];
    if (eventObject->directionSequenceIndex == 0 || (eventObject->directionSequenceIndex == 1 && !sprite->data[7]))
    {
        EventObjectGetLocalIdAndMap(eventObject, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
        eventObject->fieldEffectSpriteId = FieldEffectStart(29);
        eventObject->directionSequenceIndex = 1;
        sprite->data[7]++;
    }
    UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_Disguise_Callback);
}

void MovementType_Hidden(struct Sprite *sprite)
{
    if (!sprite->data[7])
    {
        gEventObjects[sprite->data[0]].fixedPriority = 1;
        sprite->subspriteMode = 2;
        sprite->oam.priority = 3;
        sprite->data[7]++;
    }
    UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_Hidden_Callback);
}

static bool8 MovementType_Hidden_Callback(struct EventObject *eventObject, struct Sprite *sprite)
{
    return gMovementTypeFuncs_Hidden[sprite->data[1]](eventObject, sprite);
}

bool8 MovementType_Hidden_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    return 0;
}

bool8 MovementType_MoveInPlace_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        sprite->data[1] = 0;
    }
    return 0;
}

static u8 MovementType_WalkInPlace_callback(struct EventObject *, struct Sprite *);void MovementType_WalkInPlace(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkInPlace_callback);}static u8 MovementType_WalkInPlace_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkInPlace[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_WalkInPlace_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkInPlaceNormalMovementAction(eventObject->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_WalkSlowlyInPlace_callback(struct EventObject *, struct Sprite *);void MovementType_WalkSlowlyInPlace(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_WalkSlowlyInPlace_callback);}static u8 MovementType_WalkSlowlyInPlace_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSlowlyInPlace[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_WalkSlowlyInPlace_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkInPlaceSlowMovementAction(eventObject->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_JogInPlace_callback(struct EventObject *, struct Sprite *);void MovementType_JogInPlace(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_JogInPlace_callback);}static u8 MovementType_JogInPlace_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_JogInPlace[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_JogInPlace_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkInPlaceFastMovementAction(eventObject->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_RunInPlace_callback(struct EventObject *, struct Sprite *);void MovementType_RunInPlace(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_RunInPlace_callback);}static u8 MovementType_RunInPlace_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_RunInPlace[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_RunInPlace_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, GetWalkInPlaceFastestMovementAction(eventObject->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_Invisible_callback(struct EventObject *, struct Sprite *);void MovementType_Invisible(struct Sprite *sprite){ UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, MovementType_Invisible_callback);}static u8 MovementType_Invisible_callback(struct EventObject *eventObject, struct Sprite *sprite){ return gMovementTypeFuncs_Invisible[sprite->data[1]](eventObject, sprite);}

bool8 MovementType_Invisible_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    ClearEventObjectMovement(eventObject, sprite);
    EventObjectSetSingleMovement(eventObject, sprite, GetFaceDirectionMovementAction(eventObject->facingDirection));
    eventObject->invisible = 1;
    sprite->data[1] = 1;
    return 1;
}
bool8 MovementType_Invisible_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (EventObjectExecSingleMovementAction(eventObject, sprite))
    {
        sprite->data[1] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementType_Invisible_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->singleMovementActive = 0;
    return 0;
}

static void ClearEventObjectMovement(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->singleMovementActive = 0;
    eventObject->heldMovementActive = 0;
    eventObject->heldMovementFinished = 0;
    eventObject->movementActionId = 0xFF;
    sprite->data[1] = 0;
}

u8 GetFaceDirectionAnimNum(u8 direction)
{
    return gFaceDirectionAnimNums[direction];
}

u8 GetMoveDirectionAnimNum(u8 direction)
{
    return gMoveDirectionAnimNums[direction];
}

u8 GetMoveDirectionFastAnimNum(u8 direction)
{
    return gMoveDirectionFastAnimNums[direction];
}

u8 GetMoveDirectionFasterAnimNum(u8 direction)
{
    return gMoveDirectionFasterAnimNums[direction];
}

u8 GetMoveDirectionFastestAnimNum(u8 direction)
{
    return gMoveDirectionFastestAnimNums[direction];
}

u8 GetJumpSpecialDirectionAnimNum(u8 direction)
{
    return gJumpSpecialDirectionAnimNums[direction];
}

u8 GetAcroWheelieDirectionAnimNum(u8 direction)
{
    return gAcroWheelieDirectionAnimNums[direction];
}

u8 Unref_GetAnimNums_08375633(u8 direction)
{
    return gUnrefAnimNums_08375633[direction];
}

u8 GetAcroEndWheelieDirectionAnimNum(u8 direction)
{
    return gAcroEndWheelieDirectionAnimNums[direction];
}

u8 GetAcroUnusedActionDirectionAnimNum(u8 direction)
{
    return gAcroUnusedActionDirectionAnimNums[direction];
}

u8 GetAcroWheeliePedalDirectionAnimNum(u8 direction)
{
    return gAcroWheeliePedalDirectionAnimNums[direction];
}

u8 GetFishingDirectionAnimNum(u8 direction)
{
    return gFishingDirectionAnimNums[direction];
}

u8 GetFishingNoCatchDirectionAnimNum(u8 direction)
{
    return gFishingNoCatchDirectionAnimNums[direction];
}

u8 GetFishingBiteDirectionAnimNum(u8 direction)
{
    return gFishingBiteDirectionAnimNums[direction];
}

u8 GetRunningDirectionAnimNum(u8 direction)
{
    return gRunningDirectionAnimNums[direction];
}

static const struct UnkStruct_085094AC *sub_8092A4C(const union AnimCmd *const *anims)
{
    const struct UnkStruct_085094AC *retval;

    for (retval = gUnknown_085094AC; retval->anims != ((void *)0); retval++)
    {
        if (retval->anims == anims)
        {
            return retval;
        }
    }
    return ((void *)0);
}

void npc_apply_anim_looping(struct EventObject *eventObject, struct Sprite *sprite, u8 animNum)
{
    const struct UnkStruct_085094AC *unk85094AC;

    if (!eventObject->inanimate)
    {
        sprite->animNum = animNum;
        unk85094AC = sub_8092A4C(sprite->anims);
        if (unk85094AC != ((void *)0))
        {
            if (sprite->animCmdIndex == unk85094AC->animPos[0])
            {
                sprite->animCmdIndex = unk85094AC->animPos[3];
            }
            else if (sprite->animCmdIndex == unk85094AC->animPos[1])
            {
                sprite->animCmdIndex = unk85094AC->animPos[2];
            }
        }
        SeekSpriteAnim(sprite, sprite->animCmdIndex);
    }
}

void obj_npc_animation_step(struct EventObject *eventObject, struct Sprite *sprite, u8 animNum)
{
    const struct UnkStruct_085094AC *unk85094AC;

    if (!eventObject->inanimate)
    {
        u8 animPos;

        sprite->animNum = animNum;
        unk85094AC = sub_8092A4C(sprite->anims);
        if (unk85094AC != ((void *)0))
        {
            animPos = unk85094AC->animPos[1];
            if (sprite->animCmdIndex <= unk85094AC->animPos[0])
            {
                animPos = unk85094AC->animPos[0];
            }
            SeekSpriteAnim(sprite, animPos);
        }
    }
}



u8 GetDirectionToFace(s16 x1, s16 y1, s16 x2, s16 y2)
{
    if (x1 > x2)
    {
        return 3;
    }
    if (x1 < x2)
    {
        return 4;
    }
    if (y1 > y2)
    {
        return 2;
    }
    return 1;
}

void SetTrainerMovementType(struct EventObject *eventObject, u8 movementType)
{
    eventObject->movementType = movementType;
    eventObject->directionSequenceIndex = 0;
    eventObject->playerCopyableMovement = 0;
    gSprites[eventObject->spriteId].callback = sMovementTypeCallbacks[movementType];
    gSprites[eventObject->spriteId].data[1] = 0;
}

u8 GetTrainerFacingDirectionMovementType(u8 direction)
{
    return gTrainerFacingDirectionMovementTypes[direction];
}

static u8 GetCollisionInDirection(struct EventObject *eventObject, u8 direction)
{
    s16 x;
    s16 y;
    x = eventObject->currentCoords.x;
    y = eventObject->currentCoords.y;
    MoveCoords(direction, &x, &y);
    return GetCollisionAtCoords(eventObject, x, y, direction);
}

u8 GetCollisionAtCoords(struct EventObject *eventObject, s16 x, s16 y, u32 dirn)
{
    u8 direction;

    direction = dirn;
    if (IsCoordOutsideEventObjectMovementRange(eventObject, x, y))
        return 1;
    else if (MapGridIsImpassableAt(x, y) || GetMapBorderIdAt(x, y) == -1 || IsMetatileDirectionallyImpassable(eventObject, x, y, direction))
        return 2;
    else if (eventObject->trackedByCamera && !CanCameraMoveInDirection(direction))
        return 2;
    else if (IsZCoordMismatchAt(eventObject->currentElevation, x, y))
        return 3;
    else if (DoesObjectCollideWithObjectAt(eventObject, x, y))
        return 4;
    return 0;
}

u8 GetCollisionFlagsAtCoords(struct EventObject *eventObject, s16 x, s16 y, u8 direction)
{
    u8 flags = 0;

    if (IsCoordOutsideEventObjectMovementRange(eventObject, x, y))
        flags |= 1;
    if (MapGridIsImpassableAt(x, y) || GetMapBorderIdAt(x, y) == -1 || IsMetatileDirectionallyImpassable(eventObject, x, y, direction) || (eventObject->trackedByCamera && !CanCameraMoveInDirection(direction)))
        flags |= 2;
    if (IsZCoordMismatchAt(eventObject->currentElevation, x, y))
        flags |= 4;
    if (DoesObjectCollideWithObjectAt(eventObject, x, y))
        flags |= 8;
    return flags;
}

static bool8 IsCoordOutsideEventObjectMovementRange(struct EventObject *eventObject, s16 x, s16 y)
{
    s16 left;
    s16 right;
    s16 top;
    s16 bottom;

    if (eventObject->range.as_nybbles.x != 0)
    {
        left = eventObject->initialCoords.x - eventObject->range.as_nybbles.x;
        right = eventObject->initialCoords.x + eventObject->range.as_nybbles.x;
        if (left > x || right < x)
        {
            return 1;
        }
    }
    if (eventObject->range.as_nybbles.y != 0)
    {
        top = eventObject->initialCoords.y - eventObject->range.as_nybbles.y;
        bottom = eventObject->initialCoords.y + eventObject->range.as_nybbles.y;
        if (top > y || bottom < y)
        {
            return 1;
        }
    }
    return 0;
}

static bool8 IsMetatileDirectionallyImpassable(struct EventObject *eventObject, s16 x, s16 y, u8 direction)
{
    if (gOppositeDirectionBlockedMetatileFuncs[direction - 1](eventObject->currentMetatileBehavior)
        || gDirectionBlockedMetatileFuncs[direction - 1](MapGridGetMetatileBehaviorAt(x, y)))
    {
        return 1;
    }
    return 0;
}

static bool8 DoesObjectCollideWithObjectAt(struct EventObject *eventObject, s16 x, s16 y)
{
    u8 i;
    struct EventObject *curObject;

    for (i = 0; i < 16; i++)
    {
        curObject = &gEventObjects[i];
        if (curObject->active && curObject != eventObject)
        {
            if ((curObject->currentCoords.x == x && curObject->currentCoords.y == y) || (curObject->previousCoords.x == x && curObject->previousCoords.y == y))
            {
                if (AreZCoordsCompatible(eventObject->currentElevation, curObject->currentElevation))
                {
                    return 1;
                }
            }
        }
    }
    return 0;
}

bool8 IsBerryTreeSparkling(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 eventObjectId;

    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId)
        && gSprites[gEventObjects[eventObjectId].spriteId].data[7] & 2)
    {
        return 1;
    }

    return 0;
}

void sub_8092EF0(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 eventObjectId;

    if (!TryGetEventObjectIdByLocalIdAndMap(localId, mapNum, mapGroup, &eventObjectId))
    {
        gSprites[gEventObjects[eventObjectId].spriteId].data[7] |= 0x04;
    }
}

void MoveCoords(u8 direction, s16 *x, s16 *y)
{
    *x += sDirectionToVectors[direction].x;
    *y += sDirectionToVectors[direction].y;
}

void sub_8092F60(u8 direction, s16 *x, s16 *y)
{
    *x += sDirectionToVectors[direction].x << 4;
    *y += sDirectionToVectors[direction].y << 4;
}

static void MoveCoordsInDirection(u32 dir, s16 *x, s16 *y, s16 deltaX, s16 deltaY)
{
    u8 direction = dir;
    s16 dx2 = (u16)deltaX;
    s16 dy2 = (u16)deltaY;
    if (sDirectionToVectors[direction].x > 0)
        *x += dx2;
    if (sDirectionToVectors[direction].x < 0)
        *x -= dx2;
    if (sDirectionToVectors[direction].y > 0)
        *y += dy2;
    if (sDirectionToVectors[direction].y < 0)
        *y -= dy2;
}

void sub_8092FF0(s16 x, s16 y, s16 *destX, s16 *destY)
{
    *destX = (x - gSaveBlock1Ptr->pos.x) << 4;
    *destY = (y - gSaveBlock1Ptr->pos.y) << 4;
    *destX -= gTotalCameraPixelOffsetX;
    *destY -= gTotalCameraPixelOffsetY;
}

void SetSpritePosToMapCoords(s16 mapX, s16 mapY, s16 *destX, s16 *destY)
{
    s16 dx = -gTotalCameraPixelOffsetX - gFieldCamera.x;
    s16 dy = -gTotalCameraPixelOffsetY - gFieldCamera.y;
    if (gFieldCamera.x > 0)
        dx += 1 << 4;

    if (gFieldCamera.x < 0)
        dx -= 1 << 4;

    if (gFieldCamera.y > 0)
        dy += 1 << 4;

    if (gFieldCamera.y < 0)
        dy -= 1 << 4;

    *destX = ((mapX - gSaveBlock1Ptr->pos.x) << 4) + dx;
    *destY = ((mapY - gSaveBlock1Ptr->pos.y) << 4) + dy;
}

void sub_80930E0(s16 *x, s16 *y, s16 dx, s16 dy)
{
    SetSpritePosToMapCoords(*x, *y, x, y);
    *x += dx;
    *y += dy;
}

static void GetEventObjectMovingCameraOffset(s16 *x, s16 *y)
{
    *x = 0;
    *y = 0;
    if (gFieldCamera.x > 0)
    {
        (*x)++;
    }
    if (gFieldCamera.x < 0)
    {
        (*x) --;
    }
    if (gFieldCamera.y > 0)
    {
        (*y)++;
    }
    if (gFieldCamera.y < 0)
    {
        (*y) --;
    }
}

void EventObjectMoveDestCoords(struct EventObject *eventObject, u32 direction, s16 *x, s16 *y)
{
    u8 newDirn = direction;
    *x = eventObject->currentCoords.x;
    *y = eventObject->currentCoords.y;
    MoveCoords(newDirn, x, y);
}

bool8 EventObjectIsMovementOverridden(struct EventObject *eventObject)
{
    if (eventObject->singleMovementActive || eventObject->heldMovementActive)
        return 1;

    return 0;
}

bool8 EventObjectIsHeldMovementActive(struct EventObject *eventObject)
{
    if (eventObject->heldMovementActive && eventObject->movementActionId != 0xFF)
        return 1;

    return 0;
}

bool8 EventObjectSetHeldMovement(struct EventObject *eventObject, u8 movementActionId)
{
    if (EventObjectIsMovementOverridden(eventObject))
        return 1;

    UnfreezeEventObject(eventObject);
    eventObject->movementActionId = movementActionId;
    eventObject->heldMovementActive = 1;
    eventObject->heldMovementFinished = 0;
    gSprites[eventObject->spriteId].data[2] = 0;
    return 0;
}

void EventObjectForceSetHeldMovement(struct EventObject *eventObject, u8 movementActionId)
{
    EventObjectClearHeldMovementIfActive(eventObject);
    EventObjectSetHeldMovement(eventObject, movementActionId);
}

void EventObjectClearHeldMovementIfActive(struct EventObject *eventObject)
{
    if (eventObject->heldMovementActive)
        EventObjectClearHeldMovement(eventObject);
}

void EventObjectClearHeldMovement(struct EventObject *eventObject)
{
    eventObject->movementActionId = 0xFF;
    eventObject->heldMovementActive = 0;
    eventObject->heldMovementFinished = 0;
    gSprites[eventObject->spriteId].data[1] = 0;
    gSprites[eventObject->spriteId].data[2] = 0;
}

u8 EventObjectCheckHeldMovementStatus(struct EventObject *eventObject)
{
    if (eventObject->heldMovementActive)
        return eventObject->heldMovementFinished;

    return 16;
}

u8 EventObjectClearHeldMovementIfFinished(struct EventObject *eventObject)
{
    u8 heldMovementStatus = EventObjectCheckHeldMovementStatus(eventObject);
    if (heldMovementStatus != 0 && heldMovementStatus != 16)
        EventObjectClearHeldMovementIfActive(eventObject);

    return heldMovementStatus;
}

u8 EventObjectGetHeldMovementActionId(struct EventObject *eventObject)
{
    if (eventObject->heldMovementActive)
        return eventObject->movementActionId;

    return 0xFF;
}

void UpdateEventObjectCurrentMovement(struct EventObject *eventObject, struct Sprite *sprite, bool8 (*callback)(struct EventObject *, struct Sprite *))
{
    DoGroundEffects_OnSpawn(eventObject, sprite);
    TryEnableEventObjectAnim(eventObject, sprite);
    if (EventObjectIsHeldMovementActive(eventObject))
    {
        EventObjectExecHeldMovementAction(eventObject, sprite);
    }
    else if (!eventObject->frozen)
    {
        while (callback(eventObject, sprite));
    }
    DoGroundEffects_OnBeginStep(eventObject, sprite);
    DoGroundEffects_OnFinishStep(eventObject, sprite);
    UpdateEventObjectSpriteAnimPause(eventObject, sprite);
    UpdateEventObjectVisibility(eventObject, sprite);
    EventObjectUpdateSubpriority(eventObject, sprite);
}
# 5184 "src/event_object_movement.c"
u8 GetFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gFaceDirectionMovementActions), sizeof(gFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkSlowMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkSlowMovementActions)]; direction = idx; memcpy(animIds, (gWalkSlowMovementActions), sizeof(gWalkSlowMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkNormalMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkNormalMovementActions)]; direction = idx; memcpy(animIds, (gWalkNormalMovementActions), sizeof(gWalkNormalMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkFastMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkFastMovementActions)]; direction = idx; memcpy(animIds, (gWalkFastMovementActions), sizeof(gWalkFastMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetRideWaterCurrentMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gRideWaterCurrentMovementActions)]; direction = idx; memcpy(animIds, (gRideWaterCurrentMovementActions), sizeof(gRideWaterCurrentMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkFastestMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkFastestMovementActions)]; direction = idx; memcpy(animIds, (gWalkFastestMovementActions), sizeof(gWalkFastestMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetSlideMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gSlideMovementActions)]; direction = idx; memcpy(animIds, (gSlideMovementActions), sizeof(gSlideMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetPlayerRunMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gPlayerRunMovementActions)]; direction = idx; memcpy(animIds, (gPlayerRunMovementActions), sizeof(gPlayerRunMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJump2MovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJump2MovementActions)]; direction = idx; memcpy(animIds, (gJump2MovementActions), sizeof(gJump2MovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJumpInPlaceMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJumpInPlaceMovementActions)]; direction = idx; memcpy(animIds, (gJumpInPlaceMovementActions), sizeof(gJumpInPlaceMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJumpInPlaceTurnAroundMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJumpInPlaceTurnAroundMovementActions)]; direction = idx; memcpy(animIds, (gJumpInPlaceTurnAroundMovementActions), sizeof(gJumpInPlaceTurnAroundMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJumpMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJumpMovementActions)]; direction = idx; memcpy(animIds, (gJumpMovementActions), sizeof(gJumpMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJumpSpecialMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJumpSpecialMovementActions)]; direction = idx; memcpy(animIds, (gJumpSpecialMovementActions), sizeof(gJumpSpecialMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkInPlaceSlowMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkInPlaceSlowMovementActions)]; direction = idx; memcpy(animIds, (gWalkInPlaceSlowMovementActions), sizeof(gWalkInPlaceSlowMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkInPlaceNormalMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkInPlaceNormalMovementActions)]; direction = idx; memcpy(animIds, (gWalkInPlaceNormalMovementActions), sizeof(gWalkInPlaceNormalMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkInPlaceFastMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkInPlaceFastMovementActions)]; direction = idx; memcpy(animIds, (gWalkInPlaceFastMovementActions), sizeof(gWalkInPlaceFastMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkInPlaceFastestMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkInPlaceFastestMovementActions)]; direction = idx; memcpy(animIds, (gWalkInPlaceFastestMovementActions), sizeof(gWalkInPlaceFastestMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};

bool8 EventObjectFaceOppositeDirection(struct EventObject *eventObject, u8 direction)
{
    return EventObjectSetHeldMovement(eventObject, GetFaceDirectionMovementAction(GetOppositeDirection(direction)));
}

u8 GetAcroWheelieFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieFaceDirectionMovementActions), sizeof(gAcroWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroPopWheelieFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroPopWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroPopWheelieFaceDirectionMovementActions), sizeof(gAcroPopWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroEndWheelieFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroEndWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroEndWheelieFaceDirectionMovementActions), sizeof(gAcroEndWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieHopFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieHopFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieHopFaceDirectionMovementActions), sizeof(gAcroWheelieHopFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieHopDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieHopDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieHopDirectionMovementActions), sizeof(gAcroWheelieHopDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieJumpDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieJumpDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieJumpDirectionMovementActions), sizeof(gAcroWheelieJumpDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieInPlaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieInPlaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieInPlaceDirectionMovementActions), sizeof(gAcroWheelieInPlaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroPopWheelieMoveDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroPopWheelieMoveDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroPopWheelieMoveDirectionMovementActions), sizeof(gAcroPopWheelieMoveDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieMoveDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieMoveDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieMoveDirectionMovementActions), sizeof(gAcroWheelieMoveDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroEndWheelieMoveDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroEndWheelieMoveDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroEndWheelieMoveDirectionMovementActions), sizeof(gAcroEndWheelieMoveDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};

u8 GetOppositeDirection(u8 direction)
{
    u8 directions[sizeof gOppositeDirections];

    memcpy(directions, gOppositeDirections, sizeof gOppositeDirections);
    if (direction < 1 || direction > (sizeof gOppositeDirections))
    {
        return direction;
    }
    return directions[direction - 1];
}

static u32 zffu_offset_calc(u8 a0, u8 a1)
{
    return gUnknown_0850DC2F[a0 - 1][a1 - 1];
}

static u32 state_to_direction(u8 a0, u32 a1, u32 a2)
{
    u32 zffuOffset;
    u8 a1_2;
    u8 a2_2;

    a1_2 = a1;
    a2_2 = a2;
    if (a1_2 == 0 || a2_2 == 0 || a1_2 > 4 || a2_2 > 4)
    {
        return 0;
    }
    zffuOffset = zffu_offset_calc(a1_2, a2);
    return gUnknown_0850DC3F[a0 - 1][zffuOffset - 1];
}

static void EventObjectExecHeldMovementAction(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (gMovementActionFuncs[eventObject->movementActionId][sprite->data[2]](eventObject, sprite))
    {
        eventObject->heldMovementFinished = 1;
    }
}

static bool8 EventObjectExecSingleMovementAction(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (gMovementActionFuncs[eventObject->movementActionId][sprite->data[2]](eventObject, sprite))
    {
        eventObject->movementActionId = 0xFF;
        sprite->data[2] = 0;
        return 1;
    }
    return 0;
}

static void EventObjectSetSingleMovement(struct EventObject *eventObject, struct Sprite *sprite, u8 animId)
{
    eventObject->movementActionId = animId;
    sprite->data[2] = 0;
}

static void FaceDirection(struct EventObject *eventObject, struct Sprite *sprite, u8 direction)
{
    SetEventObjectDirection(eventObject, direction);
    ShiftStillEventObjectCoords(eventObject);
    obj_npc_animation_step(eventObject, sprite, GetMoveDirectionAnimNum(eventObject->facingDirection));
    sprite->animPaused = 1;
    sprite->data[2] = 1;
}

bool8 MovementAction_FaceDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    FaceDirection(eventObject, sprite, 1);
    return 1;
}

bool8 MovementAction_FaceUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    FaceDirection(eventObject, sprite, 2);
    return 1;
}

bool8 MovementAction_FaceLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    FaceDirection(eventObject, sprite, 3);
    return 1;
}

bool8 MovementAction_FaceRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    FaceDirection(eventObject, sprite, 4);
    return 1;
}

void npc_apply_direction(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 speed)
{
    s16 x;
    s16 y;

    x = eventObject->currentCoords.x;
    y = eventObject->currentCoords.y;
    SetEventObjectDirection(eventObject, direction);
    MoveCoords(direction, &x, &y);
    ShiftEventObjectCoords(eventObject, x, y);
    oamt_npc_ministep_reset(sprite, direction, speed);
    sprite->animPaused = 0;
    if (gLockedAnimEventObjects != ((void *)0) && FindLockedEventObjectIndex(eventObject) != 16)
    {
        sprite->animPaused = 1;
    }
    eventObject->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}

void do_go_anim(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 speed)
{
    u8 (*functions[(size_t)(sizeof(gUnknown_0850DEE8) / sizeof((gUnknown_0850DEE8)[0]))])(u8);

    memcpy(functions, gUnknown_0850DEE8, sizeof gUnknown_0850DEE8);
    npc_apply_direction(eventObject, sprite, direction, speed);
    npc_apply_anim_looping(eventObject, sprite, functions[speed](eventObject->facingDirection));
}

void StartRunningAnim(struct EventObject *eventObject, struct Sprite *sprite, u8 direction)
{
    npc_apply_direction(eventObject, sprite, direction, 1);
    npc_apply_anim_looping(eventObject, sprite, GetRunningDirectionAnimNum(eventObject->facingDirection));
}

bool8 npc_obj_ministep_stop_on_arrival(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (obj_npc_ministep(sprite))
    {
        ShiftStillEventObjectCoords(eventObject);
        eventObject->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

void sub_8093AF0(struct EventObject *eventObject, struct Sprite *sprite, u8 direction)
{
    s16 x;
    s16 y;

    x = eventObject->currentCoords.x;
    y = eventObject->currentCoords.y;
    SetEventObjectDirection(eventObject, direction);
    MoveCoords(direction, &x, &y);
    ShiftEventObjectCoords(eventObject, x, y);
    sub_80976DC(sprite, direction);
    sprite->animPaused = 0;
    eventObject->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}

void sub_8093B60(struct EventObject *eventObject, struct Sprite *sprite, u8 direction)
{
    sub_8093AF0(eventObject, sprite, direction);
    npc_apply_anim_looping(eventObject, sprite, GetMoveDirectionAnimNum(eventObject->facingDirection));
}

bool8 an_walk_any_2(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80976EC(sprite))
    {
        ShiftStillEventObjectCoords(eventObject);
        eventObject->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDiagonalUpLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 7);
    return MovementAction_WalkSlowDiagonalUpLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkSlowDiagonalUpLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDiagonalUpRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 8);
    return MovementAction_WalkSlowDiagonalUpRight_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkSlowDiagonalUpRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDiagonalDownLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 5);
    return MovementAction_WalkSlowDiagonalDownLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkSlowDiagonalDownLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDiagonalDownRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 6);
    return MovementAction_WalkSlowDiagonalDownRight_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkSlowDiagonalDownRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 1);
    return MovementAction_WalkSlowDown_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkSlowDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 2);
    return MovementAction_WalkSlowUp_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkSlowUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 3);
    return MovementAction_WalkSlowLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkSlowLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 4);
    return MovementAction_WalkSlowRight_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkSlowRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDiagonalUpLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 7, 0);
    return MovementAction_WalkNormalDiagonalUpLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkNormalDiagonalUpLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDiagonalUpRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 8, 0);
    return MovementAction_WalkNormalDiagonalUpRight_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkNormalDiagonalUpRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDiagonalDownLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 5, 0);
    return MovementAction_WalkNormalDiagonalDownLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkNormalDiagonalDownLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDiagonalDownRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 6, 0);
    return MovementAction_WalkNormalDiagonalDownRight_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkNormalDiagonalDownRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 1, 0);
    return MovementAction_WalkNormalDown_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkNormalDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 2, 0);
    return MovementAction_WalkNormalUp_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkNormalUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 3, 0);
    return MovementAction_WalkNormalLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkNormalLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 4, 0);
    return MovementAction_WalkNormalRight_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkNormalRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8093FC4(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 speed, u8 a5)
{
    s16 displacements[(size_t)(sizeof(gUnknown_0850DFBC) / sizeof((gUnknown_0850DFBC)[0]))];
    s16 x;
    s16 y;

    memcpy(displacements, gUnknown_0850DFBC, sizeof gUnknown_0850DFBC);
    x = 0;
    y = 0;
    SetEventObjectDirection(eventObject, direction);
    MoveCoordsInDirection(direction, &x, &y, displacements[speed], displacements[speed]);
    ShiftEventObjectCoords(eventObject, eventObject->currentCoords.x + x, eventObject->currentCoords.y + y);
    sub_809783C(sprite, direction, speed, a5);
    sprite->data[2] = 1;
    sprite->animPaused = 0;
    eventObject->triggerGroundEffectsOnMove = 1;
    eventObject->disableCoveringGroundEffects = 1;
}

void maybe_shadow_1(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 speed, u8 a4)
{
    sub_8093FC4(eventObject, sprite, direction, speed, a4);
    npc_apply_anim_looping(eventObject, sprite, GetMoveDirectionAnimNum(eventObject->facingDirection));
    DoShadowFieldEffect(eventObject);
}

u8 sub_80940C4(struct EventObject *eventObject, struct Sprite *sprite, u8 callback(struct Sprite *))
{
    s16 displacements[(size_t)(sizeof(gUnknown_0850DFC2) / sizeof((gUnknown_0850DFC2)[0]))];
    s16 x;
    s16 y;
    u8 result;

    memcpy(displacements, gUnknown_0850DFC2, sizeof gUnknown_0850DFC2);
    result = callback(sprite);
    if (result == 1 && displacements[sprite->data[4]] != 0)
    {
        x = 0;
        y = 0;
        MoveCoordsInDirection(eventObject->movementDirection, &x, &y, displacements[sprite->data[4]], displacements[sprite->data[4]]);
        ShiftEventObjectCoords(eventObject, eventObject->currentCoords.x + x, eventObject->currentCoords.y + y);
        eventObject->triggerGroundEffectsOnMove = 1;
        eventObject->disableCoveringGroundEffects = 1;
    }
    else if (result == 0xFF)
    {
        ShiftStillEventObjectCoords(eventObject);
        eventObject->triggerGroundEffectsOnStop = 1;
        eventObject->landingJump = 1;
        sprite->animPaused = 1;
    }
    return result;
}

u8 sub_8094188(struct EventObject *eventObject, struct Sprite *sprite)
{
    return sub_80940C4(eventObject, sprite, sub_809785C);
}

u8 sub_809419C(struct EventObject *eventObject, struct Sprite *sprite)
{
    return sub_80940C4(eventObject, sprite, sub_80978E4);
}

bool8 sub_80941B0(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_8094188(eventObject, sprite) == 0xFF)
    {
        return 1;
    }
    return 0;
}

bool8 sub_80941C8(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_809419C(eventObject, sprite) == 0xFF)
    {
        return 1;
    }
    return 0;
}

bool8 sub_80941E0(struct EventObject *eventObject, struct Sprite *sprite)
{
    switch (sub_8094188(eventObject, sprite))
    {
        case 255:
            return 1;
        case 1:
            SetEventObjectDirection(eventObject, GetOppositeDirection(eventObject->movementDirection));
            obj_npc_animation_step(eventObject, sprite, GetMoveDirectionAnimNum(eventObject->facingDirection));
        default:
            return 0;
    }
}

bool8 MovementAction_Jump2Down_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 1, 2, 0);
    return MovementAction_Jump2Down_Step1(eventObject, sprite);
}

bool8 MovementAction_Jump2Down_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Jump2Up_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 2, 2, 0);
    return MovementAction_Jump2Up_Step1(eventObject, sprite);
}

bool8 MovementAction_Jump2Up_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Jump2Left_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 3, 2, 0);
    return MovementAction_Jump2Left_Step1(eventObject, sprite);
}

bool8 MovementAction_Jump2Left_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Jump2Right_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 4, 2, 0);
    return MovementAction_Jump2Right_Step1(eventObject, sprite);
}

bool8 MovementAction_Jump2Right_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}


void sub_8094390(struct Sprite *sprite, u16 duration)
{
    sprite->data[2] = 1;
    sprite->data[3] = duration;
}

bool8 MovementAction_Delay_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (-- sprite->data[3] == 0)
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Delay1_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094390(sprite, 1);
    return MovementAction_Delay_Step1(eventObject, sprite);
}

bool8 MovementAction_Delay2_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094390(sprite, 2);
    return MovementAction_Delay_Step1(eventObject, sprite);
}

bool8 MovementAction_Delay4_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094390(sprite, 4);
    return MovementAction_Delay_Step1(eventObject, sprite);
}

bool8 MovementAction_Delay8_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094390(sprite, 8);
    return MovementAction_Delay_Step1(eventObject, sprite);
}

bool8 MovementAction_Delay16_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094390(sprite, 16);
    return MovementAction_Delay_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 1, 1);
    return MovementAction_WalkFastDown_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 2, 1);
    return MovementAction_WalkFastUp_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 3, 1);
    return MovementAction_WalkFastLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 4, 1);
    return MovementAction_WalkFastRight_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}


void sub_8094554(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 animNum, u16 duration)
{
    SetEventObjectDirection(eventObject, direction);
    npc_apply_anim_looping(eventObject, sprite, animNum);
    sprite->animPaused = 0;
    sprite->data[2] = 1;
    sprite->data[3] = duration;
}

bool8 MovementAction_WalkInPlace_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (-- sprite->data[3] == 0)
    {
        sprite->data[2] = 2;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkInPlaceSlow_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sprite->data[3] & 1)
    {
        sprite->animDelayCounter++;
    }
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceSlowDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 1, GetMoveDirectionAnimNum(1), 32);
    return MovementAction_WalkInPlaceSlow_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceSlowUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 2, GetMoveDirectionAnimNum(2), 32);
    return MovementAction_WalkInPlaceSlow_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceSlowLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 3, GetMoveDirectionAnimNum(3), 32);
    return MovementAction_WalkInPlaceSlow_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceSlowRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 4, GetMoveDirectionAnimNum(4), 32);
    return MovementAction_WalkInPlaceSlow_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceNormalDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 1, GetMoveDirectionAnimNum(1), 16);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceNormalUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 2, GetMoveDirectionAnimNum(2), 16);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceNormalLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 3, GetMoveDirectionAnimNum(3), 16);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceNormalRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 4, GetMoveDirectionAnimNum(4), 16);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceFastDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 1, GetMoveDirectionFastAnimNum(1), 8);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceFastUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 2, GetMoveDirectionFastAnimNum(2), 8);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceFastLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 3, GetMoveDirectionFastAnimNum(3), 8);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceFastRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 4, GetMoveDirectionFastAnimNum(4), 8);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceFastestDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 1, GetMoveDirectionFasterAnimNum(1), 4);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceFastestUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 2, GetMoveDirectionFasterAnimNum(2), 4);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceFastestLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 3, GetMoveDirectionFasterAnimNum(3), 4);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkInPlaceFastestRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 4, GetMoveDirectionFasterAnimNum(4), 4);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_RideWaterCurrentDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 1, 2);
    return MovementAction_RideWaterCurrentDown_Step1(eventObject, sprite);
}

bool8 MovementAction_RideWaterCurrentDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_RideWaterCurrentUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 2, 2);
    return MovementAction_RideWaterCurrentUp_Step1(eventObject, sprite);
}

bool8 MovementAction_RideWaterCurrentUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_RideWaterCurrentLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 3, 2);
    return MovementAction_RideWaterCurrentLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_RideWaterCurrentLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_RideWaterCurrentRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 4, 2);
    return MovementAction_RideWaterCurrentRight_Step1(eventObject, sprite);
}

bool8 MovementAction_RideWaterCurrentRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastestDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 1, 3);
    return MovementAction_WalkFastestDown_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastestDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastestUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 2, 3);
    return MovementAction_WalkFastestUp_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastestUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastestLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 3, 3);
    return MovementAction_WalkFastestLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastestLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastestRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 4, 3);
    return MovementAction_WalkFastestRight_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkFastestRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_SlideDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 1, 4);
    return MovementAction_SlideDown_Step1(eventObject, sprite);
}

bool8 MovementAction_SlideDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_SlideUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 2, 4);
    return MovementAction_SlideUp_Step1(eventObject, sprite);
}

bool8 MovementAction_SlideUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_SlideLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 3, 4);
    return MovementAction_SlideLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_SlideLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_SlideRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 4, 4);
    return MovementAction_SlideRight_Step1(eventObject, sprite);
}

bool8 MovementAction_SlideRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_PlayerRunDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartRunningAnim(eventObject, sprite, 1);
    return MovementAction_PlayerRunDown_Step1(eventObject, sprite);
}

bool8 MovementAction_PlayerRunDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_PlayerRunUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartRunningAnim(eventObject, sprite, 2);
    return MovementAction_PlayerRunUp_Step1(eventObject, sprite);
}

bool8 MovementAction_PlayerRunUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_PlayerRunLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartRunningAnim(eventObject, sprite, 3);
    return MovementAction_PlayerRunLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_PlayerRunLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_PlayerRunRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartRunningAnim(eventObject, sprite, 4);
    return MovementAction_PlayerRunRight_Step1(eventObject, sprite);
}

bool8 MovementAction_PlayerRunRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void StartSpriteAnimInDirection(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 animNum)
{
    SetAndStartSpriteAnim(sprite, animNum, 0);
    SetEventObjectDirection(eventObject, direction);
    sprite->data[2] = 1;
}

bool8 MovementAction_StartAnimInDirection_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, eventObject->movementDirection, sprite->animNum);
    return 0;
}

bool8 MovementAction_WaitSpriteAnim(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8094DE4(struct EventObject *eventObject, struct Sprite *sprite, u8 direction)
{
    sub_8093FC4(eventObject, sprite, direction, 1, 0);
    StartSpriteAnim(sprite, GetJumpSpecialDirectionAnimNum(direction));
}

bool8 MovementAction_JumpSpecialDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094DE4(eventObject, sprite, 1);
    return MovementAction_JumpSpecialDown_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpSpecialDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941C8(eventObject, sprite))
    {
        sprite->data[2] = 2;
        eventObject->landingJump = 0;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpSpecialUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094DE4(eventObject, sprite, 2);
    return MovementAction_JumpSpecialUp_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpSpecialUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941C8(eventObject, sprite))
    {
        sprite->data[2] = 2;
        eventObject->landingJump = 0;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpSpecialLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094DE4(eventObject, sprite, 3);
    return MovementAction_JumpSpecialLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpSpecialLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941C8(eventObject, sprite))
    {
        sprite->data[2] = 2;
        eventObject->landingJump = 0;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpSpecialRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094DE4(eventObject, sprite, 4);
    return MovementAction_JumpSpecialRight_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpSpecialRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941C8(eventObject, sprite))
    {
        sprite->data[2] = 2;
        eventObject->landingJump = 0;
        return 1;
    }
    return 0;
}

bool8 MovementAction_FacePlayer_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 playerObjectId;

    if (!TryGetEventObjectIdByLocalIdAndMap(0xFF, 0, 0, &playerObjectId))
    {
        FaceDirection(eventObject, sprite, GetDirectionToFace(eventObject->currentCoords.x, eventObject->currentCoords.y, gEventObjects[playerObjectId].currentCoords.x, gEventObjects[playerObjectId].currentCoords.y));
    }
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_FaceAwayPlayer_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    u8 playerObjectId;

    if (!TryGetEventObjectIdByLocalIdAndMap(0xFF, 0, 0, &playerObjectId))
    {
        FaceDirection(eventObject, sprite, GetOppositeDirection(GetDirectionToFace(eventObject->currentCoords.x, eventObject->currentCoords.y, gEventObjects[playerObjectId].currentCoords.x, gEventObjects[playerObjectId].currentCoords.y)));
    }
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_LockFacingDirection_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->facingDirectionLocked = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_UnlockFacingDirection_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->facingDirectionLocked = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_JumpDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 1, 1, 2);
    return MovementAction_JumpDown_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 2, 1, 2);
    return MovementAction_JumpUp_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 3, 1, 2);
    return MovementAction_JumpLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 4, 1, 2);
    return MovementAction_JumpRight_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 1, 0, 0);
    return MovementAction_JumpInPlaceDown_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpInPlaceDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 2, 0, 0);
    return MovementAction_JumpInPlaceUp_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpInPlaceUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 3, 0, 0);
    return MovementAction_JumpInPlaceLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpInPlaceLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 4, 0, 0);
    return MovementAction_JumpInPlaceRight_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpInPlaceRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceDownUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 1, 0, 2);
    return MovementAction_JumpInPlaceDownUp_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpInPlaceDownUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941E0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceUpDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 2, 0, 2);
    return MovementAction_JumpInPlaceUpDown_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpInPlaceUpDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941E0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceLeftRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 3, 0, 2);
    return MovementAction_JumpInPlaceLeftRight_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpInPlaceLeftRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941E0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceRightLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    maybe_shadow_1(eventObject, sprite, 4, 0, 2);
    return MovementAction_JumpInPlaceRightLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_JumpInPlaceRightLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941E0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_FaceOriginalDirection_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    FaceDirection(eventObject, sprite, gInitialMovementTypeFacingDirections[eventObject->movementType]);
    return 1;
}

bool8 MovementAction_NurseJoyBowDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 1, 0x14);
    return 0;
}

bool8 MovementAction_EnableJumpLandingGroundEffect_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->disableJumpLandingGroundEffect = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_DisableJumpLandingGroundEffect_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->disableJumpLandingGroundEffect = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_DisableAnimation_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->inanimate = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_RestoreAnimation_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->inanimate = GetEventObjectGraphicsInfo(eventObject->graphicsId)->inanimate;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_SetInvisible_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->invisible = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_SetVisible_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->invisible = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_EmoteExclamationMark_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectGetLocalIdAndMap(eventObject, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(0);
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_EmoteQuestionMark_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectGetLocalIdAndMap(eventObject, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(33);
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_EmoteHeart_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    EventObjectGetLocalIdAndMap(eventObject, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(46);
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_RevealTrainer_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (eventObject->movementType == 0x3F)
    {
        sub_80B4578(eventObject);
        return 0;
    }
    if (eventObject->movementType != 0x39 && eventObject->movementType != 0x3A)
    {
        sprite->data[2] = 2;
        return 1;
    }
    sub_8155D78(eventObject);
    sprite->data[2] = 1;
    return MovementAction_RevealTrainer_Step1(eventObject, sprite);
}

bool8 MovementAction_RevealTrainer_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_8155DA0(eventObject))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_RockSmashBreak_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    SetAndStartSpriteAnim(sprite, 1, 0);
    sprite->data[2] = 1;
    return 0;
}

bool8 MovementAction_RockSmashBreak_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        SetMovementDelay(sprite, 32);
        sprite->data[2] = 2;
    }
    return 0;
}

bool8 MovementAction_RockSmashBreak_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->invisible ^= 1;
    if (WaitForMovementDelay(sprite))
    {
        eventObject->invisible = 1;
        sprite->data[2] = 3;
    }
    return 0;
}

bool8 MovementAction_CutTree_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    SetAndStartSpriteAnim(sprite, 1, 0);
    sprite->data[2] = 1;
    return 0;
}

bool8 MovementAction_CutTree_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        SetMovementDelay(sprite, 32);
        sprite->data[2] = 2;
    }
    return 0;
}

bool8 MovementAction_CutTree_Step2(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->invisible ^= 1;
    if (WaitForMovementDelay(sprite))
    {
        eventObject->invisible = 1;
        sprite->data[2] = 3;
    }
    return 0;
}

bool8 MovementAction_SetFixedPriority_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->fixedPriority = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_ClearFixedPriority_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->fixedPriority = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_InitAffineAnim_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->oam.affineMode = 3;
    InitSpriteAffineAnim(sprite);
    sprite->affineAnimPaused = 1;
    sprite->subspriteMode = 0;
    return 1;
}

bool8 MovementAction_ClearAffineAnim_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    FreeOamMatrix(sprite->oam.matrixNum);
    sprite->oam.affineMode = 0;
    CalcCenterToCornerVec(sprite, sprite->oam.shape, sprite->oam.size, sprite->oam.affineMode);
    return 1;
}

bool8 MovementAction_Unknown1_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->unk3_3 = 1;
    return 1;
}

bool8 MovementAction_Unknown2_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    eventObject->unk3_3 = 0;
    return 1;
}

bool8 MovementAction_WalkDownStartAffine_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 1);
    sprite->affineAnimPaused = 0;
    StartSpriteAffineAnimIfDifferent(sprite, 0);
    return MovementAction_WalkDownStartAffine_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkDownStartAffine_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkDownAffine_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8093B60(eventObject, sprite, 1);
    sprite->affineAnimPaused = 0;
    ChangeSpriteAffineAnimIfDifferent(sprite, 1);
    return MovementAction_WalkDownAffine_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkDownAffine_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (an_walk_any_2(eventObject, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkLeftAffine_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 3, 1);
    sprite->affineAnimPaused = 0;
    ChangeSpriteAffineAnimIfDifferent(sprite, 2);
    return MovementAction_WalkLeftAffine_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkLeftAffine_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkRightAffine_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    do_go_anim(eventObject, sprite, 4, 1);
    sprite->affineAnimPaused = 0;
    ChangeSpriteAffineAnimIfDifferent(sprite, 3);
    return MovementAction_WalkRightAffine_Step1(eventObject, sprite);
}

bool8 MovementAction_WalkRightAffine_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static void sub_80958C0(struct EventObject *eventObject, struct Sprite *sprite, u8 direction)
{
    SetEventObjectDirection(eventObject, direction);
    ShiftStillEventObjectCoords(eventObject);
    obj_npc_animation_step(eventObject, sprite, GetAcroWheeliePedalDirectionAnimNum(direction));
    sprite->animPaused = 1;
    sprite->data[2] = 1;
}

bool8 MovementAction_AcroWheelieFaceDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_80958C0(eventObject, sprite, 1);
    return 1;
}

bool8 MovementAction_AcroWheelieFaceUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_80958C0(eventObject, sprite, 2);
    return 1;
}

bool8 MovementAction_AcroWheelieFaceLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_80958C0(eventObject, sprite, 3);
    return 1;
}

bool8 MovementAction_AcroWheelieFaceRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_80958C0(eventObject, sprite, 4);
    return 1;
}

bool8 MovementAction_AcroPopWheelieDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 1, GetAcroWheelieDirectionAnimNum(1));
    return 0;
}

bool8 MovementAction_AcroPopWheelieUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 2, GetAcroWheelieDirectionAnimNum(2));
    return 0;
}

bool8 MovementAction_AcroPopWheelieLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 3, GetAcroWheelieDirectionAnimNum(3));
    return 0;
}

bool8 MovementAction_AcroPopWheelieRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 4, GetAcroWheelieDirectionAnimNum(4));
    return 0;
}

bool8 MovementAction_AcroEndWheelieFaceDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 1, GetAcroEndWheelieDirectionAnimNum(1));
    return 0;
}

bool8 MovementAction_AcroEndWheelieFaceUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 2, GetAcroEndWheelieDirectionAnimNum(2));
    return 0;
}

bool8 MovementAction_AcroEndWheelieFaceLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 3, GetAcroEndWheelieDirectionAnimNum(3));
    return 0;
}

bool8 MovementAction_AcroEndWheelieFaceRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 4, GetAcroEndWheelieDirectionAnimNum(4));
    return 0;
}

bool8 MovementAction_UnusedAcroActionDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 1, GetAcroUnusedActionDirectionAnimNum(1));
    return 0;
}

bool8 MovementAction_UnusedAcroActionUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 2, GetAcroUnusedActionDirectionAnimNum(2));
    return 0;
}

bool8 MovementAction_UnusedAcroActionLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 3, GetAcroUnusedActionDirectionAnimNum(3));
    return 0;
}

bool8 MovementAction_UnusedAcroActionRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(eventObject, sprite, 4, GetAcroUnusedActionDirectionAnimNum(4));
    return 0;
}

void sub_8095AF0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8097750(sprite);
    sprite->animPaused = 0;
}

bool8 sub_8095B0C(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_8097758(sprite))
    {
        ShiftStillEventObjectCoords(eventObject);
        eventObject->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Figure8_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095AF0(eventObject, sprite);
    sprite->data[2] = 1;
    return MovementAction_Figure8_Step1(eventObject, sprite);
}

bool8 MovementAction_Figure8_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_8095B0C(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8095B84(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 speed, u8 a4)
{
    sub_8093FC4(eventObject, sprite, direction, speed, a4);
    StartSpriteAnimIfDifferent(sprite, GetAcroWheelieDirectionAnimNum(direction));
    DoShadowFieldEffect(eventObject);
}

bool8 MovementAction_AcroWheelieHopFaceDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 1, 0, 1);
    return MovementAction_AcroWheelieHopFaceDown_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieHopFaceDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopFaceUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 2, 0, 1);
    return MovementAction_AcroWheelieHopFaceUp_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieHopFaceUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopFaceLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 3, 0, 1);
    return MovementAction_AcroWheelieHopFaceLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieHopFaceLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopFaceRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 4, 0, 1);
    return MovementAction_AcroWheelieHopFaceRight_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieHopFaceRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 1, 1, 1);
    return MovementAction_AcroWheelieHopDown_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieHopDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 2, 1, 1);
    return MovementAction_AcroWheelieHopUp_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieHopUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 3, 1, 1);
    return MovementAction_AcroWheelieHopLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieHopLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 4, 1, 1);
    return MovementAction_AcroWheelieHopRight_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieHopRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieJumpDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 1, 2, 0);
    return MovementAction_AcroWheelieJumpDown_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieJumpDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieJumpUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 2, 2, 0);
    return MovementAction_AcroWheelieJumpUp_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieJumpUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieJumpLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 3, 2, 0);
    return MovementAction_AcroWheelieJumpLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieJumpLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieJumpRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8095B84(eventObject, sprite, 4, 2, 0);
    return MovementAction_AcroWheelieJumpRight_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieJumpRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sub_80941B0(eventObject, sprite))
    {
        eventObject->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieInPlaceDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 1, GetAcroWheeliePedalDirectionAnimNum(1), 8);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieInPlaceUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 2, GetAcroWheeliePedalDirectionAnimNum(2), 8);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieInPlaceLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 3, GetAcroWheeliePedalDirectionAnimNum(3), 8);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieInPlaceRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8094554(eventObject, sprite, 4, GetAcroWheeliePedalDirectionAnimNum(4), 8);
    return MovementAction_WalkInPlace_Step1(eventObject, sprite);
}

void sub_80960C8(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 speed)
{
    npc_apply_direction(eventObject, sprite, direction, speed);
    StartSpriteAnim(sprite, GetAcroWheelieDirectionAnimNum(eventObject->facingDirection));
    SeekSpriteAnim(sprite, 0);
}

bool8 MovementAction_AcroPopWheelieMoveDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_80960C8(eventObject, sprite, 1, 1);
    return MovementAction_AcroPopWheelieMoveDown_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroPopWheelieMoveDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroPopWheelieMoveUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_80960C8(eventObject, sprite, 2, 1);
    return MovementAction_AcroPopWheelieMoveUp_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroPopWheelieMoveUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroPopWheelieMoveLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_80960C8(eventObject, sprite, 3, 1);
    return MovementAction_AcroPopWheelieMoveLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroPopWheelieMoveLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroPopWheelieMoveRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_80960C8(eventObject, sprite, 4, 1);
    return MovementAction_AcroPopWheelieMoveRight_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroPopWheelieMoveRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8096200(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 speed)
{
    npc_apply_direction(eventObject, sprite, direction, speed);
    npc_apply_anim_looping(eventObject, sprite, GetAcroWheeliePedalDirectionAnimNum(eventObject->facingDirection));
}

bool8 MovementAction_AcroWheelieMoveDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096200(eventObject, sprite, 1, 1);
    return MovementAction_AcroWheelieMoveDown_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieMoveDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieMoveUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096200(eventObject, sprite, 2, 1);
    return MovementAction_AcroWheelieMoveUp_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieMoveUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieMoveLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096200(eventObject, sprite, 3, 1);
    return MovementAction_AcroWheelieMoveLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieMoveLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieMoveRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096200(eventObject, sprite, 4, 1);
    return MovementAction_AcroWheelieMoveRight_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroWheelieMoveRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8096330(struct EventObject *eventObject, struct Sprite *sprite, u8 direction, u8 speed)
{
    npc_apply_direction(eventObject, sprite, direction, speed);
    StartSpriteAnim(sprite, GetAcroEndWheelieDirectionAnimNum(eventObject->facingDirection));
    SeekSpriteAnim(sprite, 0);
}

bool8 MovementAction_AcroEndWheelieMoveDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096330(eventObject, sprite, 1, 1);
    return MovementAction_AcroEndWheelieMoveDown_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroEndWheelieMoveDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroEndWheelieMoveUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096330(eventObject, sprite, 2, 1);
    return MovementAction_AcroEndWheelieMoveUp_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroEndWheelieMoveUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroEndWheelieMoveLeft_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096330(eventObject, sprite, 3, 1);
    return MovementAction_AcroEndWheelieMoveLeft_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroEndWheelieMoveLeft_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroEndWheelieMoveRight_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096330(eventObject, sprite, 4, 1);
    return MovementAction_AcroEndWheelieMoveRight_Step1(eventObject, sprite);
}

bool8 MovementAction_AcroEndWheelieMoveRight_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(eventObject, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Levitate_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    CreateLevitateMovementTask(eventObject);
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_StopLevitate_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    DestroyExtraMovementTask(eventObject->warpArrowSpriteId);
    sprite->pos2.y = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_DestroyExtraTaskIfAtTop_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (sprite->pos2.y == 0)
    {
        DestroyExtraMovementTask(eventObject->warpArrowSpriteId);
        sprite->data[2] = 1;
        return 1;
    }
    return 0;
}

u8 MovementAction_Finish(struct EventObject *eventObject, struct Sprite *sprite)
{
    return 1;
}

bool8 MovementAction_PauseSpriteAnim(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->animPaused = 1;
    return 1;
}

static void UpdateEventObjectSpriteAnimPause(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (eventObject->disableAnim)
    {
        sprite->animPaused = 1;
    }
}

static void TryEnableEventObjectAnim(struct EventObject *eventObject, struct Sprite *sprite)
{
    if (eventObject->enableAnim)
    {
        sprite->animPaused = 0;
        eventObject->disableAnim = 0;
        eventObject->enableAnim = 0;
    }
}

static void UpdateEventObjectVisibility(struct EventObject *eventObject, struct Sprite *sprite)
{
    sub_8096530(eventObject, sprite);
    UpdateEventObjSpriteVisibility(eventObject, sprite);
}

static void sub_8096530(struct EventObject *eventObject, struct Sprite *sprite)
{
    u16 x, y;
    u16 x2, y2;
    const struct EventObjectGraphicsInfo *graphicsInfo;

    eventObject->offScreen = 0;
    graphicsInfo = GetEventObjectGraphicsInfo(eventObject->graphicsId);
    if (sprite->coordOffsetEnabled)
    {
        x = sprite->pos1.x + sprite->pos2.x + sprite->centerToCornerVecX + gSpriteCoordOffsetX;
        y = sprite->pos1.y + sprite->pos2.y + sprite->centerToCornerVecY + gSpriteCoordOffsetY;
    }
    else
    {
        x = sprite->pos1.x + sprite->pos2.x + sprite->centerToCornerVecX;
        y = sprite->pos1.y + sprite->pos2.y + sprite->centerToCornerVecY;
    }
    x2 = graphicsInfo->width;
    x2 += x;
    y2 = y;
    y2 += graphicsInfo->height;
    if ((s16)x >= 0x100 || (s16)x2 < -0x10)
    {
        eventObject->offScreen = 1;
    }
    if ((s16)y >= 0xB0 || (s16)y2 < -0x10)
    {
        eventObject->offScreen = 1;
    }
}

static void UpdateEventObjSpriteVisibility(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->invisible = 0;
    if (eventObject->invisible || eventObject->offScreen)
    {
        sprite->invisible = 1;
    }
}

static void GetAllGroundEffectFlags_OnSpawn(struct EventObject *eventObj, u32 *flags)
{
    EventObjectUpdateMetatileBehaviors(eventObj);
    GetGroundEffectFlags_Reflection(eventObj, flags);
    GetGroundEffectFlags_TallGrassOnSpawn(eventObj, flags);
    GetGroundEffectFlags_LongGrassOnSpawn(eventObj, flags);
    GetGroundEffectFlags_SandHeap(eventObj, flags);
    GetGroundEffectFlags_ShallowFlowingWater(eventObj, flags);
    GetGroundEffectFlags_ShortGrass(eventObj, flags);
    GetGroundEffectFlags_HotSprings(eventObj, flags);
}

static void GetAllGroundEffectFlags_OnBeginStep(struct EventObject *eventObj, u32 *flags)
{
    EventObjectUpdateMetatileBehaviors(eventObj);
    GetGroundEffectFlags_Reflection(eventObj, flags);
    GetGroundEffectFlags_TallGrassOnBeginStep(eventObj, flags);
    GetGroundEffectFlags_LongGrassOnBeginStep(eventObj, flags);
    GetGroundEffectFlags_Tracks(eventObj, flags);
    GetGroundEffectFlags_SandHeap(eventObj, flags);
    GetGroundEffectFlags_ShallowFlowingWater(eventObj, flags);
    GetGroundEffectFlags_Puddle(eventObj, flags);
    GetGroundEffectFlags_ShortGrass(eventObj, flags);
    GetGroundEffectFlags_HotSprings(eventObj, flags);
}

static void GetAllGroundEffectFlags_OnFinishStep(struct EventObject *eventObj, u32 *flags)
{
    EventObjectUpdateMetatileBehaviors(eventObj);
    GetGroundEffectFlags_ShallowFlowingWater(eventObj, flags);
    GetGroundEffectFlags_SandHeap(eventObj, flags);
    GetGroundEffectFlags_Puddle(eventObj, flags);
    GetGroundEffectFlags_Ripple(eventObj, flags);
    GetGroundEffectFlags_ShortGrass(eventObj, flags);
    GetGroundEffectFlags_HotSprings(eventObj, flags);
    GetGroundEffectFlags_Seaweed(eventObj, flags);
    GetGroundEffectFlags_JumpLanding(eventObj, flags);
}

static void EventObjectUpdateMetatileBehaviors(struct EventObject *eventObj)
{
    eventObj->previousMetatileBehavior = MapGridGetMetatileBehaviorAt(eventObj->previousCoords.x, eventObj->previousCoords.y);
    eventObj->currentMetatileBehavior = MapGridGetMetatileBehaviorAt(eventObj->currentCoords.x, eventObj->currentCoords.y);
}

static void GetGroundEffectFlags_Reflection(struct EventObject *eventObj, u32 *flags)
{
    u32 reflectionFlags[2] = { (1 << 5), (1 << 4) };
    u8 type = EventObjectCheckForReflectiveSurface(eventObj);

    if (type)
    {
        if (!eventObj->hasReflection)
        {
            eventObj->hasReflection = 0;
            eventObj->hasReflection = 1;
            *flags |= reflectionFlags[type - 1];
        }
    }
    else
    {
        eventObj->hasReflection = 0;
    }
}

static void GetGroundEffectFlags_TallGrassOnSpawn(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsTallGrass(eventObj->currentMetatileBehavior))
        *flags |= (1 << 0);
}

static void GetGroundEffectFlags_TallGrassOnBeginStep(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsTallGrass(eventObj->currentMetatileBehavior))
        *flags |= (1 << 1);
}

static void GetGroundEffectFlags_LongGrassOnSpawn(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsLongGrass(eventObj->currentMetatileBehavior))
        *flags |= (1 << 2);
}

static void GetGroundEffectFlags_LongGrassOnBeginStep(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsLongGrass(eventObj->currentMetatileBehavior))
        *flags |= (1 << 3);
}

static void GetGroundEffectFlags_Tracks(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsDeepSand(eventObj->previousMetatileBehavior))
    {
        *flags |= (1 << 8);
    }
    else if (MetatileBehavior_IsSandOrDeepSand(eventObj->previousMetatileBehavior)
             || MetatileBehavior_IsFootprints(eventObj->previousMetatileBehavior))
    {
        *flags |= (1 << 7);
    }
}

static void GetGroundEffectFlags_SandHeap(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsDeepSand(eventObj->currentMetatileBehavior)
        && MetatileBehavior_IsDeepSand(eventObj->previousMetatileBehavior))
    {
        if (!eventObj->inSandPile)
        {
            eventObj->inSandPile = 0;
            eventObj->inSandPile = 1;
            *flags |= (1 << 11);
        }
    }
    else
    {
        eventObj->inSandPile = 0;
    }
}

static void GetGroundEffectFlags_ShallowFlowingWater(struct EventObject *eventObj, u32 *flags)
{
    if ((MetatileBehavior_IsShallowFlowingWater(eventObj->currentMetatileBehavior)
         && MetatileBehavior_IsShallowFlowingWater(eventObj->previousMetatileBehavior))
        || (MetatileBehavior_IsPacifidlogLog(eventObj->currentMetatileBehavior)
            && MetatileBehavior_IsPacifidlogLog(eventObj->previousMetatileBehavior)))
    {
        if (!eventObj->inShallowFlowingWater)
        {
            eventObj->inShallowFlowingWater = 0;
            eventObj->inShallowFlowingWater = 1;
            *flags |= (1 << 6);
        }
    }
    else
    {
        eventObj->inShallowFlowingWater = 0;
    }
}

static void GetGroundEffectFlags_Puddle(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsPuddle(eventObj->currentMetatileBehavior)
        && MetatileBehavior_IsPuddle(eventObj->previousMetatileBehavior))
    {
        *flags |= (1 << 10);
    }
}

static void GetGroundEffectFlags_Ripple(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_HasRipples(eventObj->currentMetatileBehavior))
        *flags |= (1 << 9);
}

static void GetGroundEffectFlags_ShortGrass(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsShortGrass(eventObj->currentMetatileBehavior)
        && MetatileBehavior_IsShortGrass(eventObj->previousMetatileBehavior))
    {
        if (!eventObj->inShortGrass)
        {
            eventObj->inShortGrass = 0;
            eventObj->inShortGrass = 1;
            *flags |= (1 << 17);
        }
    }
    else
    {
        eventObj->inShortGrass = 0;
    }
}

static void GetGroundEffectFlags_HotSprings(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsHotSprings(eventObj->currentMetatileBehavior)
        && MetatileBehavior_IsHotSprings(eventObj->previousMetatileBehavior))
    {
        if (!eventObj->inHotSprings)
        {
            eventObj->inHotSprings = 0;
            eventObj->inHotSprings = 1;
            *flags |= (1 << 18);
        }
    }
    else
    {
        eventObj->inHotSprings = 0;
    }
}

static void GetGroundEffectFlags_Seaweed(struct EventObject *eventObj, u32 *flags)
{
    if (MetatileBehavior_IsSeaweed(eventObj->currentMetatileBehavior))
        *flags |= (1 << 19);
}

static void GetGroundEffectFlags_JumpLanding(struct EventObject *eventObj, u32 *flags)
{
    typedef bool8 (*MetatileFunc)(u8);

    static const MetatileFunc metatileFuncs[] = {
        MetatileBehavior_IsTallGrass,
        MetatileBehavior_IsLongGrass,
        MetatileBehavior_IsPuddle,
        MetatileBehavior_IsSurfableWaterOrUnderwater,
        MetatileBehavior_IsShallowFlowingWater,
        MetatileBehavior_IsATile,
    };

    static const u32 jumpLandingFlags[] = {
        (1 << 12),
        (1 << 13),
        (1 << 14),
        (1 << 15),
        (1 << 14),
        (1 << 16),
    };

    if (eventObj->landingJump && !eventObj->disableJumpLandingGroundEffect)
    {
        u8 i;

        for (i = 0; i < (size_t)(sizeof(metatileFuncs) / sizeof((metatileFuncs)[0])); i++)
        {
            if (metatileFuncs[i](eventObj->currentMetatileBehavior))
            {
                *flags |= jumpLandingFlags[i];
                return;
            }
        }
    }
}

static u8 EventObjectCheckForReflectiveSurface(struct EventObject *eventObj)
{
    const struct EventObjectGraphicsInfo *info = GetEventObjectGraphicsInfo(eventObj->graphicsId);


    s16 width = (info->width + 8) >> 4;
    s16 height = (info->height + 8) >> 4;
    s16 i;
    s16 j;
    u8 result;
    u8 b;
    s16 one;







    for (i = 0, one = 1; i < height; i++)
    {
        b = MapGridGetMetatileBehaviorAt(eventObj->currentCoords.x, eventObj->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        b = MapGridGetMetatileBehaviorAt(eventObj->previousCoords.x, eventObj->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        for (j = 1; j < width; j++)
        {
            b = MapGridGetMetatileBehaviorAt(eventObj->currentCoords.x + j, eventObj->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(eventObj->currentCoords.x - j, eventObj->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(eventObj->previousCoords.x + j, eventObj->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(eventObj->previousCoords.x - j, eventObj->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        }
    }
    return 0;


}

static u8 GetReflectionTypeByMetatileBehavior(u32 behavior)
{
    if (MetatileBehavior_IsIce(behavior))
        return 1;
    else if (MetatileBehavior_IsReflective(behavior))
        return 2;
    else
        return 0;
}

u8 GetLedgeJumpDirection(s16 x, s16 y, u8 z)
{
    static bool8 (*const unknown_08376040[])(u8) = {
        MetatileBehavior_IsJumpSouth,
        MetatileBehavior_IsJumpNorth,
        MetatileBehavior_IsJumpWest,
        MetatileBehavior_IsJumpEast,
    };

    u8 b;
    u8 index = z;

    if (index == 0)
        return 0;
    else if (index > 4)
        index -= 4;

    index--;
    b = MapGridGetMetatileBehaviorAt(x, y);

    if (unknown_08376040[index](b) == 1)
        return index + 1;

    return 0;
}

static void SetEventObjectSpriteOamTableForLongGrass(struct EventObject *eventObj, struct Sprite *sprite)
{
    if (eventObj->disableCoveringGroundEffects)
        return;

    if (!MetatileBehavior_IsLongGrass(eventObj->currentMetatileBehavior))
        return;

    if (!MetatileBehavior_IsLongGrass(eventObj->previousMetatileBehavior))
        return;

    sprite->subspriteTableNum = 4;

    if (ZCoordToPriority(eventObj->previousElevation) == 1)
        sprite->subspriteTableNum = 5;
}

bool8 IsZCoordMismatchAt(u8 z, s16 x, s16 y)
{
    u8 mapZ;

    if (z == 0)
        return 0;

    mapZ = MapGridGetZCoordAt(x, y);

    if (mapZ == 0 || mapZ == 0xF)
        return 0;

    if (mapZ != z)
        return 1;

    return 0;
}

static const u8 sUnknown_08376050[] = {
    0x73, 0x73, 0x53, 0x73, 0x53, 0x73, 0x53, 0x73, 0x53, 0x73, 0x53, 0x73, 0x53, 0x00, 0x00, 0x73
};



static const u8 sEventObjectPriorities_08376060[] = {
    2, 2, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 0, 0, 2
};





static const u8 sEventObjectPriorities_08376070[] = {
    1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 0, 0, 1,
};

void UpdateEventObjectZCoordAndPriority(struct EventObject *eventObj, struct Sprite *sprite)
{
    if (eventObj->fixedPriority)
        return;

    EventObjectUpdateZCoord(eventObj);

    sprite->subspriteTableNum = sEventObjectPriorities_08376070[eventObj->previousElevation];
    sprite->oam.priority = sEventObjectPriorities_08376060[eventObj->previousElevation];
}

static void InitObjectPriorityByZCoord(struct Sprite *sprite, u8 z)
{
    sprite->subspriteTableNum = sEventObjectPriorities_08376070[z];
    sprite->oam.priority = sEventObjectPriorities_08376060[z];
}

u8 ZCoordToPriority(u8 z)
{
    return sEventObjectPriorities_08376060[z];
}

void EventObjectUpdateZCoord(struct EventObject *eventObj)
{
    u8 z = MapGridGetZCoordAt(eventObj->currentCoords.x, eventObj->currentCoords.y);
    u8 z2 = MapGridGetZCoordAt(eventObj->previousCoords.x, eventObj->previousCoords.y);

    if (z == 0xF || z2 == 0xF)
        return;

    eventObj->currentElevation = z;

    if (z != 0 && z != 0xF)
        eventObj->previousElevation = z;
}

void SetObjectSubpriorityByZCoord(u8 a, struct Sprite *sprite, u8 b)
{
    s32 tmp = sprite->centerToCornerVecY;
    u32 tmpa = *(u16 *)&sprite->pos1.y;
    u32 tmpb = *(u16 *)&gSpriteCoordOffsetY;
    s32 tmp2 = (tmpa - tmp) + tmpb;
    u16 tmp3 = (0x10 - ((((u32)tmp2 + 8) & 0xFF) >> 4)) * 2;
    sprite->subpriority = tmp3 + sUnknown_08376050[a] + b;
}

static void EventObjectUpdateSubpriority(struct EventObject *eventObj, struct Sprite *sprite)
{
    if (eventObj->fixedPriority)
        return;

    SetObjectSubpriorityByZCoord(eventObj->previousElevation, sprite, 1);
}

bool8 AreZCoordsCompatible(u8 a, u8 b)
{
    if (a == 0 || b == 0)
        return 1;

    if (a != b)
        return 0;

    return 1;
}

void GroundEffect_SpawnOnTallGrass(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = eventObj->localId << 8 | eventObj->mapNum;
    gFieldEffectArguments[5] = eventObj->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 1;
    FieldEffectStart(4);
}

void GroundEffect_StepOnTallGrass(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = eventObj->localId << 8 | eventObj->mapNum;
    gFieldEffectArguments[5] = eventObj->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 0;
    FieldEffectStart(4);
}

void GroundEffect_SpawnOnLongGrass(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = eventObj->localId << 8 | eventObj->mapNum;
    gFieldEffectArguments[5] = eventObj->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 1;
    FieldEffectStart(17);
}

void GroundEffect_StepOnLongGrass(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = (eventObj->localId << 8) | eventObj->mapNum;
    gFieldEffectArguments[5] = eventObj->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 0;
    FieldEffectStart(17);
}

void GroundEffect_WaterReflection(struct EventObject *eventObj, struct Sprite *sprite)
{
    SetUpReflection(eventObj, sprite, 0);
}

void GroundEffect_IceReflection(struct EventObject *eventObj, struct Sprite *sprite)
{
    SetUpReflection(eventObj, sprite, 1);
}

void GroundEffect_FlowingWater(struct EventObject *eventObj, struct Sprite *sprite)
{
    StartFieldEffectForEventObject(34, eventObj);
}

static void (*const sGroundEffectTracksFuncs[])(struct EventObject *eventObj, struct Sprite *sprite, u8 a) = {
    DoTracksGroundEffect_None,
    DoTracksGroundEffect_Footprints,
    DoTracksGroundEffect_BikeTireTracks,
};

void GroundEffect_SandTracks(struct EventObject *eventObj, struct Sprite *sprite)
{
    const struct EventObjectGraphicsInfo *info = GetEventObjectGraphicsInfo(eventObj->graphicsId);
    sGroundEffectTracksFuncs[info->tracks](eventObj, sprite, 0);
}

void GroundEffect_DeepSandTracks(struct EventObject *eventObj, struct Sprite *sprite)
{
    const struct EventObjectGraphicsInfo *info = GetEventObjectGraphicsInfo(eventObj->graphicsId);
    sGroundEffectTracksFuncs[info->tracks](eventObj, sprite, 1);
}

static void DoTracksGroundEffect_None(struct EventObject *eventObj, struct Sprite *sprite, u8 a)
{
}

static void DoTracksGroundEffect_Footprints(struct EventObject *eventObj, struct Sprite *sprite, u8 a)
{

    u16 sandFootprints_FieldEffectData[2] = {
        13,
        24
    };

    gFieldEffectArguments[0] = eventObj->previousCoords.x;
    gFieldEffectArguments[1] = eventObj->previousCoords.y;
    gFieldEffectArguments[2] = 149;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = eventObj->facingDirection;
    FieldEffectStart(sandFootprints_FieldEffectData[a]);
}

static void DoTracksGroundEffect_BikeTireTracks(struct EventObject *eventObj, struct Sprite *sprite, u8 a)
{






    static const u8 bikeTireTracks_Transitions[4][4] = {
        1, 2, 7, 8,
        1, 2, 6, 5,
        5, 8, 3, 4,
        6, 7, 3, 4,
    };

    if (eventObj->currentCoords.x != eventObj->previousCoords.x || eventObj->currentCoords.y != eventObj->previousCoords.y)
    {
        gFieldEffectArguments[0] = eventObj->previousCoords.x;
        gFieldEffectArguments[1] = eventObj->previousCoords.y;
        gFieldEffectArguments[2] = 149;
        gFieldEffectArguments[3] = 2;
        gFieldEffectArguments[4] =
            bikeTireTracks_Transitions[eventObj->previousMovementDirection][eventObj->facingDirection - 5];
        FieldEffectStart(35);
    }
}

void GroundEffect_Ripple(struct EventObject *eventObj, struct Sprite *sprite)
{
    DoRippleFieldEffect(eventObj, sprite);
}

void GroundEffect_StepOnPuddle(struct EventObject *eventObj, struct Sprite *sprite)
{
    StartFieldEffectForEventObject(15, eventObj);
}

void GroundEffect_SandHeap(struct EventObject *eventObj, struct Sprite *sprite)
{
    StartFieldEffectForEventObject(39, eventObj);
}

void GroundEffect_JumpOnTallGrass(struct EventObject *eventObj, struct Sprite *sprite)
{
    u8 spriteId;

    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = 2;
    FieldEffectStart(12);

    spriteId = FindTallGrassFieldEffectSpriteId(
        eventObj->localId,
        eventObj->mapNum,
        eventObj->mapGroup,
        eventObj->currentCoords.x,
        eventObj->currentCoords.y);

    if (spriteId == 64)
        GroundEffect_SpawnOnTallGrass(eventObj, sprite);
}

void GroundEffect_JumpOnLongGrass(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = 2;
    FieldEffectStart(18);
}

void GroundEffect_JumpOnShallowWater(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(16);
}

void GroundEffect_JumpOnWater(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(14);
}

void GroundEffect_JumpLandingDust(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = eventObj->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(10);
}

void GroundEffect_ShortGrass(struct EventObject *eventObj, struct Sprite *sprite)
{
    StartFieldEffectForEventObject(41, eventObj);
}

void GroundEffect_HotSprings(struct EventObject *eventObj, struct Sprite *sprite)
{
    StartFieldEffectForEventObject(42, eventObj);
}

void GroundEffect_Seaweed(struct EventObject *eventObj, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    FieldEffectStart(53);
}

static void (*const sGroundEffectFuncs[])(struct EventObject *eventObj, struct Sprite *sprite) = {
    GroundEffect_SpawnOnTallGrass,
    GroundEffect_StepOnTallGrass,
    GroundEffect_SpawnOnLongGrass,
    GroundEffect_StepOnLongGrass,
    GroundEffect_WaterReflection,
    GroundEffect_IceReflection,
    GroundEffect_FlowingWater,
    GroundEffect_SandTracks,
    GroundEffect_DeepSandTracks,
    GroundEffect_Ripple,
    GroundEffect_StepOnPuddle,
    GroundEffect_SandHeap,
    GroundEffect_JumpOnTallGrass,
    GroundEffect_JumpOnLongGrass,
    GroundEffect_JumpOnShallowWater,
    GroundEffect_JumpOnWater,
    GroundEffect_JumpLandingDust,
    GroundEffect_ShortGrass,
    GroundEffect_HotSprings,
    GroundEffect_Seaweed
};

static void DoFlaggedGroundEffects(struct EventObject *eventObj, struct Sprite *sprite, u32 flags)
{
    u8 i;

    if (EventObjectIsFarawayIslandMew(eventObj) == 1 && !sub_81D4A58(eventObj))
        return;

    for (i = 0; i < (size_t)(sizeof(sGroundEffectFuncs) / sizeof((sGroundEffectFuncs)[0])); i++, flags >>= 1)
        if (flags & 1)
            sGroundEffectFuncs[i](eventObj, sprite);
}

void filters_out_some_ground_effects(struct EventObject *eventObj, u32 *flags)
{
    if (eventObj->disableCoveringGroundEffects)
    {
        eventObj->inShortGrass = 0;
        eventObj->inSandPile = 0;
        eventObj->inShallowFlowingWater = 0;
        eventObj->inHotSprings = 0;
        *flags &= ~((1 << 18)
                  | (1 << 17)
                  | (1 << 11)
                  | (1 << 6)
                  | (1 << 1));
    }
}

void FilterOutStepOnPuddleGroundEffectIfJumping(struct EventObject *eventObj, u32 *flags)
{
    if (eventObj->landingJump)
        *flags &= ~(1 << 10);
}

static void DoGroundEffects_OnSpawn(struct EventObject *eventObj, struct Sprite *sprite)
{
    u32 flags;

    if (eventObj->triggerGroundEffectsOnMove)
    {
        flags = 0;
        UpdateEventObjectZCoordAndPriority(eventObj, sprite);
        GetAllGroundEffectFlags_OnSpawn(eventObj, &flags);
        SetEventObjectSpriteOamTableForLongGrass(eventObj, sprite);
        DoFlaggedGroundEffects(eventObj, sprite, flags);
        eventObj->triggerGroundEffectsOnMove = 0;
        eventObj->disableCoveringGroundEffects = 0;
    }
}

static void DoGroundEffects_OnBeginStep(struct EventObject *eventObj, struct Sprite *sprite)
{
    u32 flags;

    if (eventObj->triggerGroundEffectsOnMove)
    {
        flags = 0;
        UpdateEventObjectZCoordAndPriority(eventObj, sprite);
        GetAllGroundEffectFlags_OnBeginStep(eventObj, &flags);
        SetEventObjectSpriteOamTableForLongGrass(eventObj, sprite);
        filters_out_some_ground_effects(eventObj, &flags);
        DoFlaggedGroundEffects(eventObj, sprite, flags);
        eventObj->triggerGroundEffectsOnMove = 0;
        eventObj->disableCoveringGroundEffects = 0;
    }
}

static void DoGroundEffects_OnFinishStep(struct EventObject *eventObj, struct Sprite *sprite)
{
    u32 flags;

    if (eventObj->triggerGroundEffectsOnStop)
    {
        flags = 0;
        UpdateEventObjectZCoordAndPriority(eventObj, sprite);
        GetAllGroundEffectFlags_OnFinishStep(eventObj, &flags);
        SetEventObjectSpriteOamTableForLongGrass(eventObj, sprite);
        FilterOutStepOnPuddleGroundEffectIfJumping(eventObj, &flags);
        DoFlaggedGroundEffects(eventObj, sprite, flags);
        eventObj->triggerGroundEffectsOnStop = 0;
        eventObj->landingJump = 0;
    }
}

bool8 FreezeEventObject(struct EventObject *eventObject)
{
    if (eventObject->heldMovementActive || eventObject->frozen)
    {
        return 1;
    }
    else
    {
        eventObject->frozen = 1;
        eventObject->spriteAnimPausedBackup = gSprites[eventObject->spriteId].animPaused;
        eventObject->spriteAffineAnimPausedBackup = gSprites[eventObject->spriteId].affineAnimPaused;
        gSprites[eventObject->spriteId].animPaused = 1;
        gSprites[eventObject->spriteId].affineAnimPaused = 1;
        return 0;
    }
}

void FreezeEventObjects(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
        if (gEventObjects[i].active && i != gPlayerAvatar.eventObjectId)
            FreezeEventObject(&gEventObjects[i]);
}

void FreezeEventObjectsExceptOne(u8 eventObjectId)
{
    u8 i;
    for (i = 0; i < 16; i++)
        if (i != eventObjectId && gEventObjects[i].active && i != gPlayerAvatar.eventObjectId)
            FreezeEventObject(&gEventObjects[i]);
}

void UnfreezeEventObject(struct EventObject *eventObject)
{
    if (eventObject->active && eventObject->frozen)
    {
        eventObject->frozen = 0;
        gSprites[eventObject->spriteId].animPaused = eventObject->spriteAnimPausedBackup;
        gSprites[eventObject->spriteId].affineAnimPaused = eventObject->spriteAffineAnimPausedBackup;
    }
}

void UnfreezeEventObjects(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
        if (gEventObjects[i].active)
            UnfreezeEventObject(&gEventObjects[i]);
}

static void Step1(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += sDirectionToVectors[dir].x;
    sprite->pos1.y += sDirectionToVectors[dir].y;
}

static void Step2(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += 2 * (u16) sDirectionToVectors[dir].x;
    sprite->pos1.y += 2 * (u16) sDirectionToVectors[dir].y;
}

static void Step3(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += 2 * (u16) sDirectionToVectors[dir].x + (u16) sDirectionToVectors[dir].x;
    sprite->pos1.y += 2 * (u16) sDirectionToVectors[dir].y + (u16) sDirectionToVectors[dir].y;
}

static void Step4(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += 4 * (u16) sDirectionToVectors[dir].x;
    sprite->pos1.y += 4 * (u16) sDirectionToVectors[dir].y;
}

static void Step8(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += 8 * (u16) sDirectionToVectors[dir].x;
    sprite->pos1.y += 8 * (u16) sDirectionToVectors[dir].y;
}

static void oamt_npc_ministep_reset(struct Sprite *sprite, u8 direction, u8 a3)
{
    sprite->data[3] = direction;
    sprite->data[4] = a3;
    sprite->data[5] = 0;
}

typedef void (*SpriteStepFunc)(struct Sprite *sprite, u8 direction);

static const SpriteStepFunc gUnknown_0850E6C4[] = {
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
};

static const SpriteStepFunc gUnknown_0850E704[] = {
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
};

static const SpriteStepFunc gUnknown_0850E724[] = {
    Step2,
    Step3,
    Step3,
    Step2,
    Step3,
    Step3,
};

static const SpriteStepFunc gUnknown_0850E73C[] = {
    Step4,
    Step4,
    Step4,
    Step4,
};

static const SpriteStepFunc gUnknown_0850E74C[] = {
    Step8,
    Step8,
};

static const SpriteStepFunc *const gUnknown_0850E754[] = {
    gUnknown_0850E6C4,
    gUnknown_0850E704,
    gUnknown_0850E724,
    gUnknown_0850E73C,
    gUnknown_0850E74C,
};

static const s16 gUnknown_0850E768[] = {
    16, 8, 6, 4, 2
};

bool8 obj_npc_ministep(struct Sprite *sprite)
{
    if (sprite->data[5] >= gUnknown_0850E768[sprite->data[4]])
        return 0;

    gUnknown_0850E754[sprite->data[4]][sprite->data[5]](sprite, sprite->data[3]);

    sprite->data[5]++;

    if (sprite->data[5] < gUnknown_0850E768[sprite->data[4]])
        return 0;

    return 1;
}

void sub_80976DC(struct Sprite *sprite, u8 direction)
{
    sprite->data[3] = direction;
    sprite->data[4] = 0;
    sprite->data[5] = 0;
}

bool8 sub_80976EC(struct Sprite *sprite)
{
    if (!(sprite->data[4] & 1))
    {
        Step1(sprite, sprite->data[3]);
        sprite->data[5]++;
    }

    sprite->data[4]++;

    if (sprite->data[5] > 15)
        return 1;
    else
        return 0;
}

static const s8 gUnknown_0850E772[] = {
    1, 2, 2, 2, 2, 2, 2, 2,
    2, 2, 2, 1, 2, 2, 1, 2,
    2, 1, 2, 2, 1, 2, 1, 1,
    2, 1, 1, 2, 1, 1, 2, 1,
    1, 2, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1,
    0, 1, 1, 1, 0, 1, 1, 0,
    1, 0, 1, 0, 1, 0, 0, 0,
    0, 1, 0, 0, 0, 0, 0, 0,
};

static const s8 gUnknown_0850E7BA[] = {
     0, 0, 1, 0, 0, 1, 0, 0,
     1, 0, 1, 1, 0, 1, 1, 0,
     1, 1, 0, 1, 1, 0, 1, 1,
     0, 0, 1, 0, 0, 1, 0, 0,
     1, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, -1, 0, 0, -1, 0, 0,
    -1, 0, -1, -1, 0, -1, -1, 0,
    -1, -1, -1, -1, -1, -1, -1, -2,
};

s16 sub_8097728(s16 a1)
{
    return gUnknown_0850E7BA[a1];
}

s16 sub_809773C(s16 a1)
{
    return gUnknown_0850E772[a1];
}

void sub_8097750(struct Sprite *sprite)
{
    sprite->data[6] = 0;
    sprite->data[7] = 0;
}

bool8 sub_8097758(struct Sprite *sprite)
{
    bool8 result = 0;

    switch(sprite->data[7])
    {
        case 0:
            sprite->pos2.x += sub_809773C(sprite->data[6]);
            sprite->pos2.y += sub_8097728(sprite->data[6]);
            break;
        case 1:
            sprite->pos2.x -= sub_809773C(0x47 - sprite->data[6]);
            sprite->pos2.y += sub_8097728(0x47 - sprite->data[6]);
            break;
        case 2:
            sprite->pos2.x -= sub_809773C(sprite->data[6]);
            sprite->pos2.y += sub_8097728(sprite->data[6]);
            break;
        case 3:
            sprite->pos2.x += sub_809773C(0x47 - sprite->data[6]);
            sprite->pos2.y += sub_8097728(0x47 - sprite->data[6]);
            break;
    }
    if(++sprite->data[6] == 0x48)
    {
        sprite->data[6] = 0;
        sprite->data[7]++;
    }
    if(sprite->data[7] == 0x4)
    {
        sprite->pos2.y = 0;
        sprite->pos2.x = 0;
        result = 1;
    }
    return result;
}

static const s8 gUnknown_0850E802[] = {
    -4, -6, -8, -10, -11, -12, -12, -12, -11, -10, -9, -8, -6, -4, 0, 0
};

static const s8 gUnknown_0850E812[] = {
    0, -2, -3, -4, -5, -6, -6, -6, -5, -5, -4, -3, -2, 0, 0, 0
};

static const s8 gUnknown_0850E822[] = {
    -2, -4, -6, -8, -9, -10, -10, -10, -9, -8, -6, -5, -3, -2, 0, 0
};

static const s8 *const gUnknown_0850E834[] = {
    gUnknown_0850E802,
    gUnknown_0850E812,
    gUnknown_0850E822
};

s16 sub_8097820(s16 a1, u8 a2)
{
    return gUnknown_0850E834[a2][a1];
}

void sub_809783C(struct Sprite *sprite, u8 a2, u8 a3, u8 a4)
{
    sprite->data[3] = a2;
    sprite->data[4] = a3;
    sprite->data[5] = a4;
    sprite->data[6] = 0;
}

static const s16 gUnknown_0850E840[] = {
    16, 16, 32,
};

static const u8 gUnknown_0850E846[] = {
    0, 0, 1,
};

u8 sub_809785C(struct Sprite *sprite)
{
    s16 v5[3];
    u8 v6[3];
    u8 v2;

    memcpy(v5, gUnknown_0850E840, 6);
    memcpy(v6, gUnknown_0850E846, 3);
    v2 = 0;

    if (sprite->data[4])
        Step1(sprite, sprite->data[3]);

    sprite->pos2.y = sub_8097820(sprite->data[6] >> v6[sprite->data[4]], sprite->data[5]);

    sprite->data[6]++;

    if (sprite->data[6] == (v5[sprite->data[4]] >> 1))
        v2 = 1;

    if (sprite->data[6] >= v5[sprite->data[4]])
    {
        sprite->pos2.y = 0;
        v2 = -1;
    }

    return v2;
}

static const s16 gUnknown_0850E84A[] = {
    32, 32, 64,
};

static const u8 gUnknown_0850E850[] = {
    1, 1, 2,
};

u8 sub_80978E4(struct Sprite *sprite)
{
    s16 v5[3];
    u8 v6[3];
    u8 v2;

    memcpy(v5, gUnknown_0850E84A, 6);
    memcpy(v6, gUnknown_0850E850, 3);
    v2 = 0;

    if (sprite->data[4] && !(sprite->data[6] & 1))
        Step1(sprite, sprite->data[3]);

    sprite->pos2.y = sub_8097820(sprite->data[6] >> v6[sprite->data[4]], sprite->data[5]);

    sprite->data[6]++;

    if (sprite->data[6] == (v5[sprite->data[4]] >> 1))
        v2 = 1;

    if (sprite->data[6] >= v5[sprite->data[4]])
    {
        sprite->pos2.y = 0;
        v2 = -1;
    }

    return v2;
}

static void SetMovementDelay(struct Sprite *sprite, s16 timer)
{
    sprite->data[3] = timer;
}

static bool8 WaitForMovementDelay(struct Sprite *sprite)
{
    sprite->data[3]--;

    if (sprite->data[3] == 0)
        return 1;
    else
        return 0;
}

void SetAndStartSpriteAnim(struct Sprite *sprite, u8 animNum, u8 animCmdIndex)
{
    sprite->animNum = animNum;
    sprite->animPaused = 0;
    SeekSpriteAnim(sprite, animCmdIndex);
}

bool8 SpriteAnimEnded(struct Sprite *sprite)
{
    if (sprite->animEnded)
        return 1;
    else
        return 0;
}

void UpdateEventObjectSpriteVisibility(struct Sprite *sprite, bool8 invisible)
{
    u16 x, y;
    s16 x2, y2;

    sprite->invisible = invisible;

    if (sprite->coordOffsetEnabled)
    {
        x = sprite->pos1.x + sprite->pos2.x + sprite->centerToCornerVecX + gSpriteCoordOffsetX;
        y = sprite->pos1.y + sprite->pos2.y + sprite->centerToCornerVecY + gSpriteCoordOffsetY;
    }
    else
    {
        x = sprite->pos1.x + sprite->pos2.x + sprite->centerToCornerVecX;
        y = sprite->pos1.y + sprite->pos2.y + sprite->centerToCornerVecY;
    }

    x2 = x - (sprite->centerToCornerVecX >> 1);
    y2 = y - (sprite->centerToCornerVecY >> 1);

    if ((s16)x > 255 || x2 < -16)
        sprite->invisible = 1;
    if ((s16)y > 175 || y2 < -16)
        sprite->invisible = 1;
}

static void UpdateEventObjectSpriteSubpriorityAndVisibility(struct Sprite *sprite)
{
    sub_8097D68(sprite);
    SetObjectSubpriorityByZCoord(sprite->data[1], sprite, 1);
    UpdateEventObjectSpriteVisibility(sprite, sprite->data[2]);
}

void sub_8097AF0(void)
{
    int i;

    for(i = 0; i < 64; i++)
    {
        struct Sprite *sprite = &gSprites[i];
        if(sprite->inUse && sprite->callback == UpdateEventObjectSpriteSubpriorityAndVisibility)
            DestroySprite(sprite);
    }
}

int sub_8097B2C(u8 var)
{
    int i;

    for(i = 0; i < 64; i++)
    {
        struct Sprite *sprite = &gSprites[i];
        if(sprite->inUse && sprite->callback == UpdateEventObjectSpriteSubpriorityAndVisibility && (u8)sprite->data[0] == var)
            return i;
    }
    return 64;
}

void sub_8097B78(u8 var1, u8 var2)
{
    u8 spriteId = sub_8097B2C(var1);

    if(spriteId != 64)
        StartSpriteAnim(&gSprites[spriteId], GetFaceDirectionAnimNum(var2));
}

void sub_8097BB4(u8 var1, u8 graphicsId)
{
    int spriteId = sub_8097B2C(var1);

    if(spriteId != 64)
    {
        struct Sprite *sprite = &gSprites[spriteId];
        const struct EventObjectGraphicsInfo *graphicsInfo = GetEventObjectGraphicsInfo(graphicsId);
        u16 tileNum = sprite->oam.tileNum;

        sprite->oam = *graphicsInfo->oam;
        sprite->oam.tileNum = tileNum;
        sprite->oam.paletteNum = graphicsInfo->paletteSlot;
        sprite->images = graphicsInfo->images;

        if(graphicsInfo->subspriteTables == ((void *)0))
        {
            sprite->subspriteTables = ((void *)0);
            sprite->subspriteTableNum = 0;
            sprite->subspriteMode = 0;
        }
        else
        {
            SetSubspriteTables(sprite, graphicsInfo->subspriteTables);
            sprite->subspriteMode = 2;
        }
        StartSpriteAnim(sprite, 0);
    }
}

void sub_8097C44(u8 var, bool32 var2)
{
    u8 spriteId = sub_8097B2C(var);

    if(spriteId == 64)
        return;

    if(var2)
        gSprites[spriteId].data[2] = 1;
    else
        gSprites[spriteId].data[2] = 0;
}

bool32 sub_8097C8C(u8 var)
{
    u8 spriteId = sub_8097B2C(var);

    if(spriteId == 64)
        return 0;

    return (gSprites[spriteId].data[2] == 1);
}

void sub_8097CC4(u8 var1, u8 var2)
{
    u8 spriteId = sub_8097B2C(var1);

    if(spriteId != 64)
    {
        gSprites[spriteId].data[3] = var2;
        gSprites[spriteId].data[4] = 0;
    }
}

void sub_8097CF4(struct Sprite *sprite)
{
    switch(sprite->data[4])
    {
        case 0:
            sprite->pos2.y = 0;
            sprite->data[4]++;
        case 1:
            sprite->pos2.y -= 8;
            if(sprite->pos2.y == -160)
            {
                sprite->pos2.y = 0;
                sprite->data[2] = 1;
                sprite->data[3] = 0;
                sprite->data[4] = 0;
            }
    }
}

void sub_8097D30(struct Sprite *sprite)
{
    switch(sprite->data[4])
    {
        case 0:
            sprite->pos2.y = -160;
            sprite->data[4]++;
        case 1:
            sprite->pos2.y += 8;
            if(sprite->pos2.y == 0)
            {
                sprite->data[3] = 0;
                sprite->data[4] = 0;
            }
    }
}

static void sub_8097D68(struct Sprite *sprite)
{
    switch(sprite->data[3])
    {
        case 1:
            sub_8097D30(sprite);
            break;
        case 2:
            sub_8097CF4(sprite);
            break;
        case 0:
            break;
        default:
            sprite->data[3] = 0;
            break;
    }
}

bool32 sub_8097D9C(u8 var)
{
    u8 spriteId = sub_8097B2C(var);

    if(spriteId == 64)
        return 0;

    if(gSprites[spriteId].data[3] != 0)
        return 1;

    return 0;
}

u32 StartFieldEffectForEventObject(u8 fieldEffectId, struct EventObject *eventObject)
{
    EventObjectGetLocalIdAndMap(eventObject, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    return FieldEffectStart(fieldEffectId);
}

void DoShadowFieldEffect(struct EventObject *eventObject)
{
    if (!eventObject->hasShadow)
    {
        eventObject->hasShadow = 1;
        StartFieldEffectForEventObject(3, eventObject);
    }
}

static void DoRippleFieldEffect(struct EventObject *eventObject, struct Sprite *sprite)
{
    const struct EventObjectGraphicsInfo *graphicsInfo = GetEventObjectGraphicsInfo(eventObject->graphicsId);
    gFieldEffectArguments[0] = sprite->pos1.x;
    gFieldEffectArguments[1] = sprite->pos1.y + (graphicsInfo->height >> 1) - 2;
    gFieldEffectArguments[2] = 151;
    gFieldEffectArguments[3] = 3;
    FieldEffectStart(5);
}

u8 (*const gMovementActionFuncs_StoreAndLockAnim[])(struct EventObject *, struct Sprite *) = {
    MovementAction_StoreAndLockAnim_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_FreeAndUnlockAnim[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FreeAndUnlockAnim_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_FlyUp[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FlyUp_Step0,
    MovementAction_FlyUp_Step1,
    MovementAction_Fly_Finish,
};

u8 (*const gMovementActionFuncs_FlyDown[])(struct EventObject *, struct Sprite *) = {
    MovementAction_FlyDown_Step0,
    MovementAction_FlyDown_Step1,
    MovementAction_Fly_Finish,
};

u8 MovementAction_StoreAndLockAnim_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    u32 one;
    bool32 ableToStore = 0;
    if (gLockedAnimEventObjects == ((void *)0))
    {
        gLockedAnimEventObjects = AllocZeroed(sizeof(struct LockedAnimEventObjects));
        gLockedAnimEventObjects->eventObjectIds[0] = eventObject->localId;

        gLockedAnimEventObjects->count = (one = 1);
        ableToStore = one;
    }
    else
    {
        u8 i;
        u8 firstFreeSlot;
        bool32 found;
        for (firstFreeSlot = 16, found = 0, i = 0; i < 16; i++)
        {
            if (firstFreeSlot == 16 && gLockedAnimEventObjects->eventObjectIds[i] == 0)
                firstFreeSlot = i;

            if (gLockedAnimEventObjects->eventObjectIds[i] == eventObject->localId)
            {
                found = 1;
                break;
            }
        }

        if (!found && firstFreeSlot != 16)
        {
            gLockedAnimEventObjects->eventObjectIds[firstFreeSlot] = eventObject->localId;
            gLockedAnimEventObjects->count++;
            ableToStore = 1;
        }
    }

    if (ableToStore == 1)
    {
        eventObject->inanimate = 1;
        eventObject->facingDirectionLocked = 1;
    }

    sprite->data[2] = 1;
    return 1;
}

u8 MovementAction_FreeAndUnlockAnim_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    bool32 ableToStore;
    u8 index;

    sprite->data[2] = 1;
    if (gLockedAnimEventObjects != ((void *)0))
    {
        ableToStore = 0;
        index = FindLockedEventObjectIndex(eventObject);
        if (index != 16)
        {
            gLockedAnimEventObjects->eventObjectIds[index] = 0;
            gLockedAnimEventObjects->count--;
            ableToStore = 1;
        }
        if (gLockedAnimEventObjects->count == 0)
            { Free(gLockedAnimEventObjects); gLockedAnimEventObjects = ((void *)0); };
        if (ableToStore == 1)
        {
            eventObject->inanimate = GetEventObjectGraphicsInfo(eventObject->graphicsId)->inanimate;
            eventObject->facingDirectionLocked = 0;
            sprite->animPaused = 0;
        }
    }

    return 1;
}

u8 FindLockedEventObjectIndex(struct EventObject *eventObject)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        if (gLockedAnimEventObjects->eventObjectIds[i] == eventObject->localId)
            return i;
    }
    return 16;
}

void CreateLevitateMovementTask(struct EventObject *eventObject)
{
    u8 taskId = CreateTask(ApplyLevitateMovement, 0xFF);
    struct Task *task = &gTasks[taskId];

    StoreWordInTwoHalfwords(&task->data[0], (u32)eventObject);
    eventObject->warpArrowSpriteId = taskId;
    task->data[3] = 0xFFFF;
}

static void ApplyLevitateMovement(u8 taskId)
{
    struct EventObject *eventObject;
    struct Sprite *sprite;
    struct Task *task = &gTasks[taskId];

    LoadWordFromTwoHalfwords(&task->data[0], (u32 *)&eventObject);
    sprite = &gSprites[eventObject->spriteId];

    if(!(task->data[2] & 0x3))
        sprite->pos2.y += task->data[3];

    if(!(task->data[2] & 0xF))
        task->data[3] = -task->data[3];

    task->data[2]++;
}

void DestroyExtraMovementTask(u8 taskId)
{
    struct EventObject *eventObject;
    struct Task *task = &gTasks[taskId];

    LoadWordFromTwoHalfwords(&task->data[0], (u32 *)&eventObject);
    DestroyTask(taskId);
}

void sub_8098074(u8 var1, u8 var2)
{
    u8 i;

    for(i = 0; i < 16; i++)
    {
        if(i != var1 && i != var2 &&
            gEventObjects[i].active && i != gPlayerAvatar.eventObjectId)
                FreezeEventObject(&gEventObjects[i]);
    }
}

u8 MovementAction_FlyUp_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->pos2.y = 0;
    sprite->data[2]++;
    return 0;
}

u8 MovementAction_FlyUp_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->pos2.y -= 8;

    if(sprite->pos2.y == -160)
        sprite->data[2]++;
    return 0;
}

u8 MovementAction_FlyDown_Step0(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->pos2.y = -160;
    sprite->data[2]++;
    return 0;
}

u8 MovementAction_FlyDown_Step1(struct EventObject *eventObject, struct Sprite *sprite)
{
    sprite->pos2.y += 8;

    if(!sprite->pos2.y)
        sprite->data[2]++;
    return 0;
}


u8 MovementAction_Fly_Finish(struct EventObject *eventObject, struct Sprite *sprite)
{
    return 1;
}
