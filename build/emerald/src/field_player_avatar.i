# 1 "src/field_player_avatar.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/field_player_avatar.c"
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
# 2 "src/field_player_avatar.c" 2
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
# 3 "src/field_player_avatar.c" 2
# 1 "include/bike.h" 1





struct BikeHistoryInputInfo
{
    u32 dirHistoryMatch;
    u32 abStartSelectHistoryMatch;
    u32 dirHistoryMask;
    u32 abStartSelectHistoryMask;
    const u8 *dirTimerHistoryList;
    const u8 *abStartSelectHistoryList;
    u32 direction;
};


enum
{
    SPEED_STANDING,
    SPEED_NORMAL,
    SPEED_FAST,
    SPEED_FASTER,
    SPEED_FASTEST,
};


enum
{
    MACH_TRANS_FACE_DIRECTION,
    MACH_TRANS_TURN_DIRECTION,
    MACH_TRANS_KEEP_MOVING,
    MACH_TRANS_START_MOVING
};


enum
{
    ACRO_STATE_NORMAL,
    ACRO_STATE_TURNING,
    ACRO_STATE_WHEELIE_STANDING,
    ACRO_STATE_BUNNY_HOP,
    ACRO_STATE_WHEELIE_MOVING,
    ACRO_STATE_SIDE_JUMP,
    ACRO_STATE_TURN_JUMP,
};


enum
{
    ACRO_TRANS_FACE_DIRECTION,
    ACRO_TRANS_TURN_DIRECTION,
    ACRO_TRANS_MOVING,
    ACRO_TRANS_NORMAL_TO_WHEELIE,
    ACRO_TRANS_WHEELIE_TO_NORMAL,
    ACRO_TRANS_WHEELIE_IDLE,
    ACRO_TRANS_WHEELIE_HOPPING_STANDING,
    ACRO_TRANS_WHEELIE_HOPPING_MOVING,
    ACRO_TRANS_SIDE_JUMP,
    ACRO_TRANS_TURN_JUMP,
    ACRO_TRANS_WHEELIE_MOVING,
    ACRO_TRANS_WHEELIE_RISING_MOVING,
    ACRO_TRANS_WHEELIE_LOWERING_MOVING,
};


extern bool8 gUnusedBikeCameraAheadPanback;


void MovePlayerOnBike(u8 direction, u16 newKeys, u16 heldKeys);
void Bike_TryAcroBikeHistoryUpdate(u16 newKeys, u16 heldKeys);
bool8 RS_IsRunningDisallowed(u8 tile);
bool8 IsBikingDisallowedByPlayer(void);
bool8 player_should_look_direction_be_enforced_upon_movement(void);
void GetOnOffBike(u8 transitionFlags);
void BikeClearState(int newDirHistory, int newAbStartHistory);
void Bike_UpdateBikeCounterSpeed(u8 counter);
s16 GetPlayerSpeed(void);
void Bike_HandleBumpySlopeJump(void);
bool32 IsRunningDisallowed(u8 metatile);
# 4 "src/field_player_avatar.c" 2
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
# 5 "src/field_player_avatar.c" 2
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
# 6 "src/field_player_avatar.c" 2
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
# 7 "src/field_player_avatar.c" 2
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
# 8 "src/field_player_avatar.c" 2
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
# 9 "src/field_player_avatar.c" 2
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
# 10 "src/field_player_avatar.c" 2
# 1 "include/fieldmap.h" 1
# 12 "include/fieldmap.h"
# 1 "include/main.h" 1
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
# 11 "src/field_player_avatar.c" 2
# 1 "include/menu.h" 1




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
# 6 "include/menu.h" 2
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
# 7 "include/menu.h" 2
# 1 "include/window.h" 1





enum
{
    WINDOW_BG,
    WINDOW_TILEMAP_LEFT,
    WINDOW_TILEMAP_TOP,
    WINDOW_WIDTH,
    WINDOW_HEIGHT,
    WINDOW_PALETTE_NUM,
    WINDOW_BASE_BLOCK,
    WINDOW_TILE_DATA
};

struct WindowTemplate
{
    u8 bg;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 paletteNum;
    u16 baseBlock;
};
# 40 "include/window.h"
struct Window
{
    struct WindowTemplate window;
    u8 *tileData;
};

bool16 InitWindows(const struct WindowTemplate *templates);
u16 AddWindow(const struct WindowTemplate *template);
int AddWindowWithoutTileMap(const struct WindowTemplate *template);
void RemoveWindow(u8 windowId);
void FreeAllWindowBuffers(void);
void CopyWindowToVram(u8 windowId, u8 mode);
void CopyWindowRectToVram(u32 windowId, u32 mode, u32 x, u32 y, u32 w, u32 h);
void PutWindowTilemap(u8 windowId);
void PutWindowRectTilemapOverridePalette(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 palette);
void ClearWindowTilemap(u8 windowId);
void PutWindowRectTilemap(u8 windowId, u8 x, u8 y, u8 width, u8 height);
void BlitBitmapToWindow(u8 windowId, const u8 *pixels, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight);
void FillWindowPixelRect(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void CopyToWindowPixelBuffer(u8 windowId, const void *src, u16 size, u16 tileOffset);
void FillWindowPixelBuffer(u8 windowId, u8 fillValue);
void ScrollWindow(u8 windowId, u8 direction, u8 distance, u8 fillValue);
void CallWindowFunction(u8 windowId, void ( *func)(u8, u8, u8, u8, u8, u8));
bool8 SetWindowAttribute(u8 windowId, u8 attributeId, u32 value);
u32 GetWindowAttribute(u8 windowId, u8 attributeId);
u16 AddWindow8Bit(const struct WindowTemplate *template);
void FillWindowPixelBuffer8Bit(u8 windowId, u8 fillValue);
void FillWindowPixelRect8Bit(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow4BitTo8Bit(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight, u8 paletteNum);
void CopyWindowToVram8Bit(u8 windowId, u8 mode);

extern struct Window gWindows[];
extern void* gUnknown_03002F70[];
extern u32 filler_03002F58;
extern u32 filler_03002F5C;
extern u32 filler_03002F64;
# 8 "include/menu.h" 2




struct MenuAction
{
    const u8 *text;
    union {
        void (*void_u8)(u8);
        u8 (*u8_void)(void);
    } func;
};

extern const u16 gUnknown_0860F074[];

void FreeAllOverworldWindowBuffers(void);
void InitStandardTextBoxWindows(void);
void sub_8197200(void);
u16 RunTextPrintersAndIsPrinter0Active(void);
void sub_81973A4(void);
void DrawDialogueFrame(u8 windowId, bool8 copyToVram);
void ClearStdWindowAndFrame(u8 windowId, bool8 copyToVram);
u16 AddTextPrinterParameterized2(u8 windowId, u8 fontId, const u8 *str, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 fgColor, u8 bgColor, u8 shadowColor);
void PrintPlayerNameOnWindow(u8, const u8*, u16, u16);
void DisplayItemMessageOnField(u8 taskId, const u8 *src, TaskFunc callback);
void ClearDialogWindowAndFrame(u8 windowId, bool8 copyToVram);
void SetStandardWindowBorderStyle(u8 windowId, bool8 copyToVram);
void DisplayYesNoMenuDefaultYes(void);
u32 GetPlayerTextSpeed(void);
u8 GetPlayerTextSpeedDelay(void);
void Menu_LoadStdPalAt(u16 arg0);
void AddTextPrinterWithCallbackForMessage(bool8 a1, void (*callback)(struct TextPrinterTemplate *, u16));
void sub_8199DF0(u32 bg, u8 a1, int a2, int a3);
void AddTextPrinterParameterized3(u8 windowId, u8 fontId, u8 left, u8 top, const u8 *color, s8 speed, const u8 *str);
void ClearStdWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
void SetWindowTemplateFields(struct WindowTemplate* template, u8 priority, u8 tilemapLeft, u8 tilemapTop, u8 width, u8 height, u8 palNum, u16 baseBlock);
void DrawStdFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 tileStart, u8 palette);
void schedule_bg_copy_tilemap_to_vram(u8 bgNum);
void PrintMenuTable(u8 windowId, u8 itemCount, const struct MenuAction *strs);
u8 InitMenuInUpperLeftCornerPlaySoundWhenAPressed(u8 windowId, u8 numItems, u8 initialCursorPos);
u8 Menu_GetCursorPos(void);
s8 Menu_ProcessInput(void);
s8 Menu_ProcessInputNoWrap(void);
void blit_move_info_icon(u8 winId, u8 a2, u16 x, u16 y);
void reset_temp_tile_data_buffers(void);
void *decompress_and_copy_tile_data_to_vram(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
bool8 free_temp_tile_data_buffers_if_possible(void);
struct WindowTemplate CreateWindowTemplate(u8 bg, u8 left, u8 top, u8 width, u8 height, u8 paletteNum, u16 baseBlock);
void CreateYesNoMenu(const struct WindowTemplate *windowTemplate, u16 borderFirstTileNum, u8 borderPalette, u8 initialCursorPos);
void DecompressAndLoadBgGfxUsingHeap(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
s8 Menu_ProcessInputNoWrapClearOnChoose(void);
s8 ProcessMenuInput_other(void);
void do_scheduled_bg_tilemap_copies_to_vram(void);
void clear_scheduled_bg_copies_to_vram(void);
void AddTextPrinterParameterized4(u8 windowId, u8 fontId, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, const u8 *color, s8 speed, const u8 *str);
void DrawDialogFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 a2, u8 a3);
void sub_81995E4(u8 windowId, u8 optionsNo, const struct MenuAction *actions, const u8 *actionIds);
void ClearDialogWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
u16 sub_8198AA4(u8, u8, u8, u8, u8, u8, u16);
void *malloc_and_decompress(const void *src, u32 *sizeOut);
u16 copy_decompressed_tile_data_to_vram(u8 bgId, const void *src, u16 size, u16 offset, u8 mode);
void AddTextPrinterForMessage(bool8 allowSkippingDelayWithButtonPress);
void AddItemMenuActionTextPrinters(u8 windowId, u8 fontId, u8 left, u8 top, u8 letterSpacing, u8 lineHeight, u8 itemCount, const struct MenuAction *strs, const u8 *a8);
void sub_8198DBC(u8 windowId, u8 fontId, u8 left, u8 top, u8 a4, u8 itemCount, u8 itemCount2, const struct MenuAction *strs, const u8 *a8);
u8 sub_8199944(u8 windowId, u8 optionWidth, u8 columns, u8 rows, u8 initialCursorPos);
u8 sub_8199134(s8, s8);
u8 GetStartMenuWindowId(void);
void sub_819A2BC(u8, u8);
u8 Menu_MoveCursor(s8 cursorDelta);
u8 Menu_MoveCursorNoWrapAround(s8 cursorDelta);
void DrawStdWindowFrame(u8 windowId, bool8 CopyToVram);
u8 sub_81979C4(u8 a1);
u8 sub_81983AC(u8 windowId, u8 fontId, u8 left, u8 top, u8 cursorHeight, u8 numChoices, u8 initialCursorPos);
void sub_819786C(u8 windowId, bool8 copyToVram);
void AddTextPrinterForMessage_2(bool8 allowSkippingDelayWithButtonPress);
void RemoveStartMenuWindow(void);
void DisplayYesNoMenuWithDefault(u8 initialCursorPos);
void sub_819A344(u8 a0, u8 *dest, u8 color);
void RemoveMapNamePopUpWindow(void);
u8 GetMapNamePopUpWindowId(void);
u8 AddMapNamePopUpWindow(void);
void AddTextPrinterParameterized5(u8 windowId, u8 fontId, const u8 *str, u8 left, u8 top, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 letterSpacing, u8 lineSpacing);
void sub_8199C30(u8 bgId, u8 left, u8 top, u8 width, u8 height, u8 palette);
void sub_8199D3C(void *ptr, int delta, int width, int height, bool32 is8BPP);
void sub_8198204(const u8 *string, const u8 *string2, u8 a3, u8 a4, bool8 copyToVram);
void sub_8197AE8(bool8 copyToVram);
void PrintMenuGridTable(u8 windowId, u8 optionWidth, u8 columns, u8 rows, const struct MenuAction *strs);
s8 Menu_ProcessInputGridLayout(void);
u8 InitMenuInUpperLeftCorner(u8 windowId, u8 itemCount, u8 initialCursorPos, bool8 APressMuted);
s8 Menu_ProcessInputNoWrapAround_other(void);
void sub_8199CBC(u8 bgId, u16 *dest, u8 left, u8 top, u8 width, u8 height);
u8 sub_81980F0(u8 bg, u8 xPos, u8 yPos, u8 palette, u16 baseTile);
void sub_8198314(void);
void sub_8198180(const u8 *string, u8 a2, bool8 copyToVram);
void ResetBgPositions(void);
void AddTextPrinterWithCustomSpeedForMessage(bool8 allowSkippingDelayWithButtonPress, u8 speed);
void sub_8198C78(void);
void PrintTextArray(u8 windowId, u8 fontId, u8 left, u8 top, u8 lineHeight, u8 itemCount, const struct MenuAction *strs);
# 12 "src/field_player_avatar.c" 2
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
# 13 "src/field_player_avatar.c" 2
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
# 14 "src/field_player_avatar.c" 2
# 1 "include/party_menu.h" 1






enum
{
    AILMENT_NONE,
    AILMENT_PSN,
    AILMENT_PRZ,
    AILMENT_SLP,
    AILMENT_FRZ,
    AILMENT_BRN,
    AILMENT_PKRS,
    AILMENT_FNT
};

enum
{
    PARTY_CHOOSE_MON,
    PARTY_MUST_CHOOSE_MON,
    PARTY_CANT_SWITCH,
    PARTY_USE_ITEM_ON,
    PARTY_ABILITY_PREVENTS,
    PARTY_GIVE_ITEM,
};

struct Struct203CEC8
{
    MainCallback exitCallback;
    TaskFunc unk4;
    u8 unk8_0:4;
    u8 mode:2;
    u8 unk8_2:2;
    s8 slotId;
    s8 unkA;
    u8 unkB;
    u16 unkC;
    s16 unkE;
    s16 unk10;
};

extern struct Struct203CEC8 gUnknown_0203CEC8;
extern u8 gUnknown_0203CEE8;
extern u8 gUnknown_0203CEE9;
extern MainCallback gPostMenuFieldCallback;
extern u8 gSelectedOrderFromParty[4];
extern u8 gUnknown_0203CF00[3];

extern void (*gUnknown_03006328)(u8, TaskFunc);

extern const u16 gTutorMoves[];

void sub_81B0FCC(u8 slot, u8 b);
bool8 IsMultiBattle(void);
u8 GetCursorSelectionMonId(void);
u8 sub_81B1360(void);
void sub_81B1370(u8 taskId);
u8* GetMonNickname(struct Pokemon *mon, u8 *dest);
u8 sub_81B1B5C(const u8* str, u8 b);
bool8 sub_81B1BD4(void);
void sub_81B1F18(u8 taskId, u8 slot, s8 c, s16 HPDifference, TaskFunc func);
u8 pokemon_ailments_get_primary(u32 status);
u8 GetMonAilment(struct Pokemon *mon);
void display_pokemon_menu_message(u32 stringID);
void sub_81B47E0(u8 taskId);
bool8 FieldCallback_PrepareFadeInFromMenu(void);
void sub_81B58A8(void);
void LoadHeldItemIcons(void);
void sub_81B5D4C(u8 *a, u8 *b, u8 c);
void sub_81B617C(void);
void ItemUseCB_Medicine(u8 taskId, TaskFunc task);
void sub_81B67C8(u8 taskId, TaskFunc task);
void dp05_ether(u8 taskId, TaskFunc task);
void dp05_pp_up(u8 taskId, TaskFunc task);
u16 ItemIdToBattleMoveId(u16 item);
bool8 IsMoveHm(u16 move);
bool8 MonKnowsMove(struct Pokemon *mon, u16 move);
void sub_81B6DC4(u8 taskId, TaskFunc task);
void dp05_rare_candy(u8 taskId, TaskFunc task);
void sub_81B79E8(u8 taskId, TaskFunc task);
void sub_81B7C74(u8 taskId, TaskFunc task);
u8 GetItemEffectType(u16 item);
void CB2_PartyMenuFromStartMenu(void);
void sub_81B7F60(void);
void sub_81B8448(void);
void InitChooseHalfPartyForBattle(u8 unused);
void sub_81B8558(void);
void sub_81B8904(u8 initArg, MainCallback callback);
void sub_81B892C(void);
void sub_81B8958(void);
void OpenPartyMenuInBattle(u8 arg);
void sub_81B89F0(void);
void sub_81B8C68(void);
void sub_81B8D64(u8 battlerId, u8 multiplayerFlag);
void sub_81B8E80(u8 battlerId, u8 unk, u8 arrayIndex);
void sub_81B8FB0(u8 slot, u8 slot2);
u8 pokemon_order_func(u8 slot);
void sub_81B9150(void);
void sub_81B9328(void);
bool8 hm_add_c3_without_phase_2(void);
void sub_81B9404(void);
void sub_81B94B0(void);
void sub_81B951C(void);
void sub_81B9620(void);
void sub_81B95E0(void);
void sub_81B98DC(void);
void sub_81B9918(void);
void sub_81B9770(void);
void sub_81B9718(void);
void sub_81B96D0(void);
void sub_81B968C(void);
# 15 "src/field_player_avatar.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);





void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 16 "src/field_player_avatar.c" 2
# 1 "include/rotating_gate.h" 1



void RotatingGatePuzzleCameraUpdate(s16, s16);
void RotatingGate_InitPuzzleAndGraphics(void);
u32 CheckForRotatingGatePuzzleCollision(u8, s16, s16);
bool32 CheckForRotatingGatePuzzleCollisionWithoutAnimation(u8, s16, s16);
# 17 "src/field_player_avatar.c" 2
# 1 "include/script.h" 1



struct ScriptContext;

typedef bool8 (*ScrCmdFunc)(struct ScriptContext *);
typedef u8 Script[];

struct ScriptContext
{
    u8 stackDepth;
    u8 mode;
    u8 comparisonResult;
    u8 (*nativePtr)(void);
    const u8 *scriptPtr;
    const u8 *stack[20];
    ScrCmdFunc *cmdTable;
    ScrCmdFunc *cmdTableEnd;
    u32 data[4];
};



void InitScriptContext(struct ScriptContext *ctx, void *cmdTable, void *cmdTableEnd);
u8 SetupBytecodeScript(struct ScriptContext *ctx, const u8 *ptr);
void SetupNativeScript(struct ScriptContext *ctx, bool8 (*ptr)(void));
void StopScript(struct ScriptContext *ctx);
bool8 RunScriptCommand(struct ScriptContext *ctx);
u8 ScriptPush(struct ScriptContext *ctx, const u8 *ptr);
const u8 *ScriptPop(struct ScriptContext *ctx);
void ScriptJump(struct ScriptContext *ctx, const u8 *ptr);
void ScriptCall(struct ScriptContext *ctx, const u8 *ptr);
void ScriptReturn(struct ScriptContext *ctx);
u16 ScriptReadHalfword(struct ScriptContext *ctx);
u32 ScriptReadWord(struct ScriptContext *ctx);
void ScriptContext2_Enable(void);
void ScriptContext2_Disable(void);
bool8 ScriptContext2_IsEnabled(void);
void ScriptContext1_Init(void);
bool8 ScriptContext1_IsScriptSetUp(void);
bool8 ScriptContext2_RunScript(void);
void ScriptContext1_SetupScript(const u8 *ptr);
void ScriptContext1_Stop(void);
void EnableBothScriptContexts(void);
void ScriptContext2_RunNewScript(const u8 *ptr);
u8 *MapHeaderGetScriptTable(u8 tag);
void MapHeaderRunScriptType(u8 tag);
u8 *MapHeaderCheckScriptTable(u8 tag);
void RunOnLoadMapScript(void);
void RunOnTransitionMapScript(void);
void RunOnResumeMapScript(void);
void RunOnReturnToFieldMapScript(void);
void RunOnDiveWarpMapScript(void);
bool8 TryRunOnFrameMapScript(void);
void TryRunOnWarpIntoMapScript(void);
u32 CalculateRamScriptChecksum(void);
void ClearRamScript(void);
bool8 InitRamScript(const u8 *script, u16 scriptSize, u8 mapGroup, u8 mapNum, u8 objectId);
const u8 *GetRamScript(u8 objectId, const u8 *script);
bool32 ValidateSavedRamScript(void);
u8 *GetSavedRamScriptIfValid(void);
void InitRamScript_NoEventObject(u8 *script, u16 scriptSize);


void sub_809BE48(u16 npcId);
# 18 "src/field_player_avatar.c" 2
# 1 "include/sound.h" 1



void InitMapMusic(void);
void MapMusicMain(void);
void ResetMapMusic(void);
u16 GetCurrentMapMusic(void);
void PlayNewMapMusic(u16 songNum);
void StopMapMusic(void);
void FadeOutMapMusic(u8 speed);
void FadeOutAndPlayNewMapMusic(u16 songNum, u8 speed);
void FadeOutAndFadeInNewMapMusic(u16 songNum, u8 fadeOutSpeed, u8 fadeInSpeed);
void FadeInNewMapMusic(u16 songNum, u8 speed);
bool8 IsNotWaitingForBGMStop(void);
void PlayFanfareByFanfareNum(u8 fanfareNum);
bool8 WaitFanfare(bool8 stop);
void StopFanfareByFanfareNum(u8 fanfareNum);
void PlayFanfare(u16 songNum);
bool8 IsFanfareTaskInactive(void);
void FadeInNewBGM(u16 songNum, u8 speed);
void FadeOutBGMTemporarily(u8 speed);
bool8 IsBGMPausedOrStopped(void);
void FadeInBGM(u8 speed);
void FadeOutBGM(u8 speed);
bool8 IsBGMStopped(void);
void PlayCry1(u16 species, s8 pan);
void PlayCry2(u16 species, s8 pan, s8 volume, u8 priority);
void PlayCry3(u16 species, s8 pan, u8 mode);
void PlayCry4(u16 species, s8 pan, u8 mode);
void PlayCry5(u16 species, u8 mode);
void PlayCry6(u16 species, s8 pan, u8 mode);
void PlayCryInternal(u16 species, s8 pan, s8 volume, u8 priority, u8 mode);
bool8 IsCryFinished(void);
void StopCryAndClearCrySongs(void);
void StopCry(void);
bool8 IsCryPlayingOrClearCrySongs(void);
bool8 IsCryPlaying(void);
void PlayBGM(u16 songNum);
void PlaySE(u16 songNum);
void PlaySE12WithPanning(u16 songNum, s8 pan);
void PlaySE1WithPanning(u16 songNum, s8 pan);
void PlaySE2WithPanning(u16 songNum, s8 pan);
void SE12PanpotControl(s8 pan);
bool8 IsSEPlaying(void);
bool8 IsBGMPlaying(void);
bool8 IsSpecialSEPlaying(void);
# 19 "src/field_player_avatar.c" 2
# 1 "include/sprite.h" 1
# 20 "src/field_player_avatar.c" 2
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
# 21 "src/field_player_avatar.c" 2
# 1 "include/task.h" 1
# 22 "src/field_player_avatar.c" 2
# 1 "include/tv.h" 1






extern u8 *const gTVStringVarPtrs[3];

void ClearTVShowData(void);
void sub_80EE184(void);
void sub_80EE35C(u16 foeSpecies, u16 species, u8 moveIdx, const u16 *movePtr, u16 betterMove);
void sub_80EE8C8(u16 winStreak, u8 facility);
void DoTVShow(void);
void DoTVShowInSearchOfTrainers(void);
void sub_80EDCE8(void);
void sub_80EE2CC(void);
void sub_80EE72C(void);
void sub_80EED10(void);
void sub_80EED34(void);
void sub_80EED60(u16 delta);
void sub_80F01B8(void);
void ReceiveTvShowsData(void *src, u32 size, u8 masterIdx);
void sub_80EE4DC(struct Pokemon *pokemon, u8 ribbonMonDataIdx);
u32 GetPlayerIDAsU32(void);
bool8 GetPriceReduction(u8 newsKind);
void sub_80F14F8(TVShow *shows);
size_t CountDigits(int value);
u8 GetRibbonCount(struct Pokemon *pokemon);
void AlertTVThatPlayerPlayedSlotMachine(u16 nCoinsSpent);
void AlertTVThatPlayerPlayedRoulette(u16 nCoinsSpent);
void AlertTVOfNewCoinTotal(u16 nCoinsPaidOut);
void sub_80EEA70(void);
void sub_80EDB44(void);
void sub_80EDC60(const u16 *words);
void sub_80EDA80(void);
void ReceivePokeNewsData(void *src, u32 size, u8 masterIdx);
void sub_80F0BB8(void);
void sub_80ED950(bool8 flag);
void sub_80EEC80(void);
void sub_80EECA4(void);
void sub_80EECC8(void);
void sub_80EECEC(void);
void sub_80F1208(TVShow *shows);
void sub_80EE44C(u8 nMonsCaught, u8 nPkblkUsed);
void sub_80F14F8(TVShow *shows);
size_t sub_80EF370(int value);
bool8 Put3CheersForPokeblocksOnTheAir(const u8 *partnersName, u8 flavor, u8 unused, u8 sheen, u8 language);
void SetPokemonAnglerSpecies(u16 species);
void UpdateTVShowsPerDay(u16 days);
void PutPokemonTodayCaughtOnAir(void);
void TV_PutSecretBaseVisitOnTheAir(void);
void PutBattleUpdateOnTheAir(u8 opponentLinkPlayerId, u16 move, u16 speciesPlayer, u16 speciesOpponent);
void BravoTrainerPokemonProfile_BeforeInterview1(u16 move);
void InterviewBefore(void);
void InterviewAfter(void);
void UpdateTVScreensOnMap(int, int);
void TV_PrintIntToStringVar(u8 varIdx, int value);
void SaveRecordedItemPurchasesForTVShow(void);
bool8 sub_80EE818(void);
void sub_80EE8C8(u16 winStreak, u8 facilityAndMode);
void BravoTrainerPokemonProfile_BeforeInterview2(u8 contestStandingPlace);
void ContestLiveUpdates_BeforeInterview_1(u8 a0);
void ContestLiveUpdates_BeforeInterview_2(u8 a0);
void ContestLiveUpdates_BeforeInterview_3(u8 a0);
void ContestLiveUpdates_BeforeInterview_4(u16 a0);
void ContestLiveUpdates_BeforeInterview_5(u8 a0, u8 a1);
void ResetGabbyAndTy(void);
# 23 "src/field_player_avatar.c" 2
# 1 "include/wild_encounter.h" 1
# 9 "include/wild_encounter.h"
struct WildPokemon
{
    u8 minLevel;
    u8 maxLevel;
    u16 species;
};

struct WildPokemonInfo
{
    u8 encounterRate;
    const struct WildPokemon *wildPokemon;
};

struct WildPokemonHeader
{
    u8 mapGroup;
    u8 mapNum;
    const struct WildPokemonInfo *landMonsInfo;
    const struct WildPokemonInfo *waterMonsInfo;
    const struct WildPokemonInfo *rockSmashMonsInfo;
    const struct WildPokemonInfo *fishingMonsInfo;
};

extern const struct WildPokemonHeader gWildMonHeaders[];

void DisableWildEncounters(bool8 disabled);
bool8 StandardWildEncounter(u16 currMetaTileBehavior, u16 previousMetaTileBehavior);
void ScrSpecial_RockSmashWildEncounter(void);
bool8 SweetScentWildEncounter(void);
bool8 DoesCurrentMapHaveFishingMons(void);
void FishingWildEncounter(u8 rod);
u16 GetLocalWildMon(bool8 *isWaterMon);
u16 GetLocalWaterMon(void);
bool8 UpdateRepelCounter(void);
# 24 "src/field_player_avatar.c" 2
# 1 "include/constants/abilities.h" 1
# 25 "src/field_player_avatar.c" 2
# 1 "include/constants/event_objects.h" 1
# 26 "src/field_player_avatar.c" 2
# 1 "include/constants/event_object_movement_constants.h" 1
# 27 "src/field_player_avatar.c" 2
# 1 "include/constants/field_effects.h" 1
# 28 "src/field_player_avatar.c" 2
# 1 "include/constants/flags.h" 1
# 29 "src/field_player_avatar.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 30 "src/field_player_avatar.c" 2
# 1 "include/constants/moves.h" 1
# 31 "src/field_player_avatar.c" 2
# 1 "include/constants/songs.h" 1
# 32 "src/field_player_avatar.c" 2
# 1 "include/constants/species.h" 1
# 33 "src/field_player_avatar.c" 2

static __attribute__((section("ewram_data"))) u8 gUnknown_0203734C = 0;
__attribute__((section("ewram_data"))) struct EventObject gEventObjects[16] = {};
__attribute__((section("ewram_data"))) struct PlayerAvatar gPlayerAvatar = {};



static u8 EventObjectCB2_NoMovement2();
static bool8 TryInterruptEventObjectSpecialAnim(struct EventObject *, u8);
static void npc_clear_strange_bits(struct EventObject *);
static void MovePlayerAvatarUsingKeypadInput(u8, u16, u16);
static void PlayerAllowForcedMovementIfMovingSameDirection();
static bool8 TryDoMetatileBehaviorForcedMovement();
static u8 GetForcedMovementByMetatileBehavior();

static bool8 ForcedMovement_None(void);
static bool8 ForcedMovement_Slip(void);
static bool8 ForcedMovement_WalkSouth(void);
static bool8 ForcedMovement_WalkNorth(void);
static bool8 ForcedMovement_WalkWest(void);
static bool8 ForcedMovement_WalkEast(void);
static bool8 ForcedMovement_PushedSouthByCurrent(void);
static bool8 ForcedMovement_PushedNorthByCurrent(void);
static bool8 ForcedMovement_PushedWestByCurrent(void);
static bool8 ForcedMovement_PushedEastByCurrent(void);
static bool8 ForcedMovement_SlideSouth(void);
static bool8 ForcedMovement_SlideNorth(void);
static bool8 ForcedMovement_SlideWest(void);
static bool8 ForcedMovement_SlideEast(void);
static bool8 ForcedMovement_0xBB(void);
static bool8 ForcedMovement_0xBC(void);
static bool8 ForcedMovement_MuddySlope(void);

static void MovePlayerNotOnBike(u8, u16);
static u8 CheckMovementInputNotOnBike(u8);
static void PlayerNotOnBikeNotMoving(u8, u16);
static void PlayerNotOnBikeTurningInPlace(u8, u16);
static void PlayerNotOnBikeMoving(u8, u16);
static u8 CheckForPlayerAvatarCollision(u8);
static u8 sub_808B028(u8);
static u8 sub_808B164(struct EventObject *, s16, s16, u8, u8);
static bool8 sub_808B1BC(s16, s16, u8);
static bool8 ShouldJumpLedge(s16, s16, u8);
static u8 sub_808B238(s16, s16, u8);
static void check_acro_bike_metatile(s16, s16, u8, u8 *);

static void DoPlayerAvatarTransition(void);
static void PlayerAvatarTransition_Dummy(struct EventObject *a);
static void PlayerAvatarTransition_Normal(struct EventObject *a);
static void PlayerAvatarTransition_MachBike(struct EventObject *a);
static void PlayerAvatarTransition_AcroBike(struct EventObject *a);
static void PlayerAvatarTransition_Surfing(struct EventObject *a);
static void PlayerAvatarTransition_Underwater(struct EventObject *a);
static void PlayerAvatarTransition_ReturnToField(struct EventObject *a);

static bool8 player_is_anim_in_certain_ranges(void);
static bool8 sub_808B618(void);
static bool8 PlayerIsAnimActive(void);
static bool8 PlayerCheckIfAnimFinishedOrInactive(void);

static void PlayerRun(u8);
static void PlayerNotOnBikeCollide(u8);
static void PlayerNotOnBikeCollideWithFarawayIslandMew(u8);

static void PlayCollisionSoundIfNotFacingWarp(u8 a);

static void sub_808C280(struct EventObject *);

static void StartStrengthAnim(u8, u8);
static void Task_BumpBoulder(u8 taskId);
static u8 sub_808C3A4(struct Task *task, struct EventObject *playerObject, struct EventObject *strengthObject);
static u8 do_boulder_dust(struct Task *task, struct EventObject *playerObject, struct EventObject *strengthObject);
static u8 sub_808C484(struct Task *task, struct EventObject *playerObject, struct EventObject *strengthObject);

static void DoPlayerMatJump(void);
static void DoPlayerAvatarSecretBaseMatJump(u8 taskId);
static u8 PlayerAvatar_DoSecretBaseMatJump(struct Task *task, struct EventObject *eventObject);

static void DoPlayerMatSpin(void);
static void PlayerAvatar_DoSecretBaseMatSpin(u8 taskId);
static bool8 PlayerAvatar_SecretBaseMatSpinStep0(struct Task *task, struct EventObject *eventObject);
static bool8 PlayerAvatar_SecretBaseMatSpinStep1(struct Task *task, struct EventObject *eventObject);
static bool8 PlayerAvatar_SecretBaseMatSpinStep2(struct Task *task, struct EventObject *eventObject);
static bool8 PlayerAvatar_SecretBaseMatSpinStep3(struct Task *task, struct EventObject *eventObject);

static void sub_808C750(u8);
static void taskFF_0805D1D4(u8 taskId);
static void sub_808C814(u8 taskId);

static void Task_Fishing(u8 taskId);
static u8 Fishing1(struct Task *task);
static u8 Fishing2(struct Task *task);
static u8 Fishing3(struct Task *task);
static u8 Fishing4(struct Task *task);
static u8 Fishing5(struct Task *task);
static u8 Fishing6(struct Task *task);
static u8 Fishing7(struct Task *task);
static u8 Fishing8(struct Task *task);
static u8 Fishing9(struct Task *task);
static u8 Fishing10(struct Task *task);
static u8 Fishing11(struct Task *task);
static u8 Fishing12(struct Task *task);
static u8 Fishing13(struct Task *task);
static u8 Fishing14(struct Task *task);
static u8 Fishing15(struct Task *task);
static u8 Fishing16(struct Task *task);
static void AlignFishingAnimationFrames(void);

static u8 sub_808D38C(struct EventObject *object, s16 *a1);



static bool8 (*const sForcedMovementTestFuncs[])(u8) =
{
    MetatileBehavior_IsTrickHouseSlipperyFloor,
    MetatileBehavior_IsIce_2,
    MetatileBehavior_IsWalkSouth,
    MetatileBehavior_IsWalkNorth,
    MetatileBehavior_IsWalkWest,
    MetatileBehavior_IsWalkEast,
    MetatileBehavior_IsSouthwardCurrent,
    MetatileBehavior_IsNorthwardCurrent,
    MetatileBehavior_IsWestwardCurrent,
    MetatileBehavior_IsEastwardCurrent,
    MetatileBehavior_IsSlideSouth,
    MetatileBehavior_IsSlideNorth,
    MetatileBehavior_IsSlideWest,
    MetatileBehavior_IsSlideEast,
    MetatileBehavior_IsWaterfall,
    MetatileBehavior_IsSecretBaseJumpMat,
    MetatileBehavior_IsSecretBaseSpinMat,
    MetatileBehavior_IsMuddySlope,
};

static bool8 (*const sForcedMovementFuncs[])(void) =
{
    ForcedMovement_None,
    ForcedMovement_Slip,
    ForcedMovement_Slip,
    ForcedMovement_WalkSouth,
    ForcedMovement_WalkNorth,
    ForcedMovement_WalkWest,
    ForcedMovement_WalkEast,
    ForcedMovement_PushedSouthByCurrent,
    ForcedMovement_PushedNorthByCurrent,
    ForcedMovement_PushedWestByCurrent,
    ForcedMovement_PushedEastByCurrent,
    ForcedMovement_SlideSouth,
    ForcedMovement_SlideNorth,
    ForcedMovement_SlideWest,
    ForcedMovement_SlideEast,
    ForcedMovement_PushedSouthByCurrent,
    ForcedMovement_0xBB,
    ForcedMovement_0xBC,
    ForcedMovement_MuddySlope,
};

static void (*const gUnknown_08497490[])(u8, u16) =
{
    PlayerNotOnBikeNotMoving,
    PlayerNotOnBikeTurningInPlace,
    PlayerNotOnBikeMoving,
};

static bool8 (*const gUnknown_0849749C[])(u8) =
{
    MetatileBehavior_IsBumpySlope,
    MetatileBehavior_IsIsolatedVerticalRail,
    MetatileBehavior_IsIsolatedHorizontalRail,
    MetatileBehavior_IsVerticalRail,
    MetatileBehavior_IsHorizontalRail,
};

static const u8 gUnknown_084974B0[] = {9, 10, 11, 12, 13, 0, 0, 0};

static void (*const gUnknown_084974B8[])(struct EventObject *) =
{
    PlayerAvatarTransition_Normal,
    PlayerAvatarTransition_MachBike,
    PlayerAvatarTransition_AcroBike,
    PlayerAvatarTransition_Surfing,
    PlayerAvatarTransition_Underwater,
    PlayerAvatarTransition_ReturnToField,
    PlayerAvatarTransition_Dummy,
    PlayerAvatarTransition_Dummy,
};

static bool8 (*const sArrowWarpMetatileBehaviorChecks[])(u8) =
{
    MetatileBehavior_IsSouthArrowWarp,
    MetatileBehavior_IsNorthArrowWarp,
    MetatileBehavior_IsWestArrowWarp,
    MetatileBehavior_IsEastArrowWarp,
};

static const u8 sRivalAvatarGfxIds[][2] =
{
    {100, 105},
    {101, 106},
    {102, 107},
    {103, 108},
    {111, 112},
    {104, 109},
    {137, 138},
    {191, 192}
};

static const u8 sPlayerAvatarGfxIds[][2] =
{
    {0, 89},
    {1, 90},
    {63, 91},
    {2, 92},
    {111, 112},
    {3, 93},
    {137, 138},
    {191, 192},
};

static const u8 sFRLGAvatarGfxIds[] = {230, 231};

static const u8 sRSAvatarGfxIds[] = {235, 236};

static const u8 gUnknown_0849750C[2][5][2] =
{

    {
        {0, 1},
        {1, 2},
        {63, 4},
        {2, 8},
        {111, 16},
    },

    {
        {89, 1},
        {90, 2},
        {91, 4},
        {92, 8},
        {112, 16},
    }
};

static bool8 (*const sArrowWarpMetatileBehaviorChecks2[])(u8) =
{
    MetatileBehavior_IsSouthArrowWarp,
    MetatileBehavior_IsNorthArrowWarp,
    MetatileBehavior_IsWestArrowWarp,
    MetatileBehavior_IsEastArrowWarp,
};

static bool8 (*const gUnknown_08497530[])(struct Task *, struct EventObject *, struct EventObject *) =
{
    sub_808C3A4,
    do_boulder_dust,
    sub_808C484,
};

static bool8 (*const sPlayerAvatarSecretBaseMatJump[])(struct Task *, struct EventObject *) =
{
    PlayerAvatar_DoSecretBaseMatJump,
};

static bool8 (*const sPlayerAvatarSecretBaseMatSpin[])(struct Task *, struct EventObject *) =
{
    PlayerAvatar_SecretBaseMatSpinStep0,
    PlayerAvatar_SecretBaseMatSpinStep1,
    PlayerAvatar_SecretBaseMatSpinStep2,
    PlayerAvatar_SecretBaseMatSpinStep3,
};



void MovementType_Player(struct Sprite *sprite)
{
    UpdateEventObjectCurrentMovement(&gEventObjects[sprite->data[0]], sprite, EventObjectCB2_NoMovement2);
}

static u8 EventObjectCB2_NoMovement2(void)
{
    return 0;
}

void player_step(u8 direction, u16 newKeys, u16 heldKeys)
{
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    sub_808C280(playerEventObj);
    if (gPlayerAvatar.preventStep == 0)
    {
        Bike_TryAcroBikeHistoryUpdate(newKeys, heldKeys);
        if (TryInterruptEventObjectSpecialAnim(playerEventObj, direction) == 0)
        {
            npc_clear_strange_bits(playerEventObj);
            DoPlayerAvatarTransition();
            if (TryDoMetatileBehaviorForcedMovement() == 0)
            {
                MovePlayerAvatarUsingKeypadInput(direction, newKeys, heldKeys);
                PlayerAllowForcedMovementIfMovingSameDirection();
            }
        }
    }
}

static bool8 TryInterruptEventObjectSpecialAnim(struct EventObject *playerEventObj, u8 direction)
{
    u8 r5 = direction;
    u8 r6 = direction;
    r6++; r6--;

    if (EventObjectIsMovementOverridden(playerEventObj)
     && !EventObjectClearHeldMovementIfFinished(playerEventObj))
    {
        u8 heldMovementActionId = EventObjectGetHeldMovementActionId(playerEventObj);
        if (heldMovementActionId > 0x18 && heldMovementActionId < 0x1D)
        {
            if (direction == 0)
            {
                return 1;
            }

            if (playerEventObj->movementDirection != r5)
            {
                EventObjectClearHeldMovement(playerEventObj);
                return 0;
            }

            if (!sub_808B028(r6))
            {
                EventObjectClearHeldMovement(playerEventObj);
                return 0;
            }
        }

        return 1;
    }

    return 0;
}

static void npc_clear_strange_bits(struct EventObject *eventObj)
{
    eventObj->inanimate = 0;
    eventObj->disableAnim = 0;
    eventObj->facingDirectionLocked = 0;
    gPlayerAvatar.flags &= ~(1 << PLAYER_AVATAR_STATE_WATERING);
}

static void MovePlayerAvatarUsingKeypadInput(u8 direction, u16 newKeys, u16 heldKeys)
{
    if ((gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_MACH_BIKE))
     || (gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_ACRO_BIKE)))
        MovePlayerOnBike(direction, newKeys, heldKeys);
    else
        MovePlayerNotOnBike(direction, heldKeys);
}

static void PlayerAllowForcedMovementIfMovingSameDirection(void)
{
    if (gPlayerAvatar.runningState == MOVING)
        gPlayerAvatar.flags &= ~(1 << PLAYER_AVATAR_STATE_FIELD_MOVE);
}

static bool8 TryDoMetatileBehaviorForcedMovement(void)
{
    return sForcedMovementFuncs[GetForcedMovementByMetatileBehavior()]();
}

static u8 GetForcedMovementByMetatileBehavior(void)
{
    u8 i;

    if (!(gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_FIELD_MOVE)))
    {
        u8 metatileBehavior = gEventObjects[gPlayerAvatar.eventObjectId].currentMetatileBehavior;

        for (i = 0; i < 18; i++)
        {
            if (sForcedMovementTestFuncs[i](metatileBehavior))
                return i + 1;
        }
    }
    return 0;
}

static bool8 ForcedMovement_None(void)
{
    if (gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_FISHING))
    {
        struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

        playerEventObj->facingDirectionLocked = 0;
        playerEventObj->enableAnim = 1;
        SetEventObjectDirection(playerEventObj, playerEventObj->facingDirection);
        gPlayerAvatar.flags &= ~(1 << PLAYER_AVATAR_STATE_FISHING);
    }
    return 0;
}

static u8 DoForcedMovement(u8 direction, void (*b)(u8))
{
    struct PlayerAvatar *playerAvatar = &gPlayerAvatar;
    u8 collisionType = CheckForPlayerAvatarCollision(direction);

    playerAvatar->flags |= (1 << PLAYER_AVATAR_STATE_FISHING);
    if (collisionType != 0)
    {
        ForcedMovement_None();
        if (collisionType <= 4)
        {
            return 0;
        }
        else
        {
            if (collisionType == COLLISION_LEDGE_JUMP)
                PlayerJumpLedge(direction);
            playerAvatar->flags |= (1 << PLAYER_AVATAR_STATE_FISHING);
            playerAvatar->runningState = MOVING;
            return 1;
        }
    }
    else
    {
        playerAvatar->runningState = MOVING;
        b(direction);
        return 1;
    }
}

static u8 DoForcedMovementInCurrentDirection(void (*a)(u8))
{
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    playerEventObj->disableAnim = 1;
    return DoForcedMovement(playerEventObj->movementDirection, a);
}

static bool8 ForcedMovement_Slip(void)
{
    return DoForcedMovementInCurrentDirection(PlayerGoSpeed2);
}

static bool8 ForcedMovement_WalkSouth(void)
{
    return DoForcedMovement(1, PlayerGoSpeed1);
}

static bool8 ForcedMovement_WalkNorth(void)
{
    return DoForcedMovement(2, PlayerGoSpeed1);
}

static bool8 ForcedMovement_WalkWest(void)
{
    return DoForcedMovement(3, PlayerGoSpeed1);
}

static bool8 ForcedMovement_WalkEast(void)
{
    return DoForcedMovement(4, PlayerGoSpeed1);
}

static bool8 ForcedMovement_PushedSouthByCurrent(void)
{
    return DoForcedMovement(1, PlayerRideWaterCurrent);
}

static bool8 ForcedMovement_PushedNorthByCurrent(void)
{
    return DoForcedMovement(2, PlayerRideWaterCurrent);
}

static bool8 ForcedMovement_PushedWestByCurrent(void)
{
    return DoForcedMovement(3, PlayerRideWaterCurrent);
}

static bool8 ForcedMovement_PushedEastByCurrent(void)
{
    return DoForcedMovement(4, PlayerRideWaterCurrent);
}

u8 ForcedMovement_Slide(u8 direction, void (*b)(u8))
{
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    playerEventObj->disableAnim = 1;
    playerEventObj->facingDirectionLocked = 1;
    return DoForcedMovement(direction, b);
}

static bool8 ForcedMovement_SlideSouth(void)
{
    return ForcedMovement_Slide(1, PlayerGoSpeed2);
}

static bool8 ForcedMovement_SlideNorth(void)
{
    return ForcedMovement_Slide(2, PlayerGoSpeed2);
}

static bool8 ForcedMovement_SlideWest(void)
{
    return ForcedMovement_Slide(3, PlayerGoSpeed2);
}

static bool8 ForcedMovement_SlideEast(void)
{
    return ForcedMovement_Slide(4, PlayerGoSpeed2);
}

static bool8 ForcedMovement_0xBB(void)
{
    DoPlayerMatJump();
    return 1;
}

static bool8 ForcedMovement_0xBC(void)
{
    DoPlayerMatSpin();
    return 1;
}

static bool8 ForcedMovement_MuddySlope(void)
{
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    if (playerEventObj->movementDirection != 2 || GetPlayerSpeed() <= 3)
    {
        Bike_UpdateBikeCounterSpeed(0);
        playerEventObj->facingDirectionLocked = 1;
        return DoForcedMovement(1, PlayerGoSpeed2);
    }
    else
    {
        return 0;
    }
}

static void MovePlayerNotOnBike(u8 direction, u16 heldKeys)
{
    gUnknown_08497490[CheckMovementInputNotOnBike(direction)](direction, heldKeys);
}

static u8 CheckMovementInputNotOnBike(u8 direction)
{
    if (direction == 0)
    {
        gPlayerAvatar.runningState = NOT_MOVING;
        return 0;
    }
    else if (direction != GetPlayerMovementDirection() && gPlayerAvatar.runningState != MOVING)
    {
        gPlayerAvatar.runningState = TURN_DIRECTION;
        return 1;
    }
    else
    {
        gPlayerAvatar.runningState = MOVING;
        return 2;
    }
}

static void PlayerNotOnBikeNotMoving(u8 direction, u16 heldKeys)
{
    PlayerFaceDirection(GetPlayerFacingDirection());
}

static void PlayerNotOnBikeTurningInPlace(u8 direction, u16 heldKeys)
{
    PlayerTurnInPlace(direction);
}

static void PlayerNotOnBikeMoving(u8 direction, u16 heldKeys)
{
    u8 r0 = CheckForPlayerAvatarCollision(direction);

    if (r0 != 0)
    {
        if (r0 == 6)
        {
            PlayerJumpLedge(direction);
            return;
        }
        else if (r0 == 4 && IsPlayerCollidingWithFarawayIslandMew(direction) != 0)
        {
            PlayerNotOnBikeCollideWithFarawayIslandMew(direction);
            return;
        }
        else
        {
            u8 r4 = r0 - 5;

            if (r4 > 3)
            {
                PlayerNotOnBikeCollide(direction);
                return;
            }
            else
            {
                return;
            }
        }
    }

    if (gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_SURFING))
    {

        PlayerGoSpeed2(direction);
        return;
    }

    if (!(gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_UNDERWATER)) && (heldKeys & 0x0002) && FlagGet(((0x500 + 0x356 + 0xA) + 0x60))
     && IsRunningDisallowed(gEventObjects[gPlayerAvatar.eventObjectId].currentMetatileBehavior) == 0)
    {
        PlayerRun(direction);
        gPlayerAvatar.flags |= (1 << PLAYER_AVATAR_STATE_WATERING);
        return;
    }
    else
    {
        PlayerGoSpeed1(direction);
    }
}

static u8 CheckForPlayerAvatarCollision(u8 direction)
{
    s16 x, y;
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    x = playerEventObj->currentCoords.x;
    y = playerEventObj->currentCoords.y;
    MoveCoords(direction, &x, &y);
    return CheckForEventObjectCollision(playerEventObj, x, y, direction, MapGridGetMetatileBehaviorAt(x, y));
}

static u8 sub_808B028(u8 direction)
{
    s16 x, y;
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    x = playerEventObj->currentCoords.x;
    y = playerEventObj->currentCoords.y;
    MoveCoords(direction, &x, &y);
    return sub_808B164(playerEventObj, x, y, direction, MapGridGetMetatileBehaviorAt(x, y));
}

u8 CheckForEventObjectCollision(struct EventObject *a, s16 x, s16 y, u8 direction, u8 e)
{
    u8 collision;

    collision = GetCollisionAtCoords(a, x, y, direction);
    if (collision == 3 && sub_808B1BC(x, y, direction))
        return 5;
    if (ShouldJumpLedge(x, y, direction))
    {
        IncrementGameStat(43);
        return COLLISION_LEDGE_JUMP;
    }
    if (collision == 4 && sub_808B238(x, y, direction))
        return 7;

    if (collision == 0)
    {
        if (CheckForRotatingGatePuzzleCollision(direction, x, y))
            return 8;
        check_acro_bike_metatile(x, y, e, &collision);
    }
    return collision;
}

static u8 sub_808B164(struct EventObject *a, s16 x, s16 y, u8 direction, u8 e)
{
    u8 collision = GetCollisionAtCoords(a, x, y, direction);

    if (collision == 0)
    {
        if (CheckForRotatingGatePuzzleCollisionWithoutAnimation(direction, x, y) != 0)
            return 8;
        check_acro_bike_metatile(x, y, e, &collision);
    }
    return collision;
}

static bool8 sub_808B1BC(s16 x, s16 y, u8 direction)
{
    if ((gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_SURFING))
     && MapGridGetZCoordAt(x, y) == 3
     && GetEventObjectIdByXYZ(x, y, 3) == 16)
    {
        sub_808C750(direction);
        return 1;
    }
    else
    {
        return 0;
    }
}

static bool8 ShouldJumpLedge(s16 x, s16 y, u8 z)
{
    if (GetLedgeJumpDirection(x, y, z) != 0)
        return 1;
    else
        return 0;
}

static u8 sub_808B238(s16 x, s16 y, u8 direction)
{
    if (FlagGet(((0x500 + 0x356 + 0xA) + 0x29)))
    {
        u8 eventObjectId = GetEventObjectIdByXY(x, y);

        if (eventObjectId != 16 && gEventObjects[eventObjectId].graphicsId == 87)
        {
            x = gEventObjects[eventObjectId].currentCoords.x;
            y = gEventObjects[eventObjectId].currentCoords.y;
            MoveCoords(direction, &x, &y);
            if (GetCollisionAtCoords(&gEventObjects[eventObjectId], x, y, direction) == 0
             && MetatileBehavior_IsNonAnimDoor(MapGridGetMetatileBehaviorAt(x, y)) == 0)
            {
                StartStrengthAnim(eventObjectId, direction);
                return 1;
            }
        }
    }
    return 0;
}

static void check_acro_bike_metatile(s16 unused1, s16 unused2, u8 c, u8 *d)
{
    u8 i;

    for (i = 0; i < 5; i++)
    {
        if (gUnknown_0849749C[i](c))
        {
            *d = gUnknown_084974B0[i];
            return;
        }
    }
}

bool8 IsPlayerCollidingWithFarawayIslandMew(u8 direction)
{
    u8 mewObjectId;
    struct EventObject *object;
    s16 playerX;
    s16 playerY;
    s16 mewPrevX;

    object = &gEventObjects[gPlayerAvatar.eventObjectId];
    playerX = object->currentCoords.x;
    playerY = object->currentCoords.y;

    MoveCoords(direction, &playerX, &playerY);
    mewObjectId = GetEventObjectIdByLocalIdAndMap(1, ((57 | (26 << 8)) & 0xFF), ((57 | (26 << 8)) >> 8));
    if (mewObjectId == 16)
        return 0;

    object = &gEventObjects[mewObjectId];
    mewPrevX = object->previousCoords.x;

    if (mewPrevX == playerX)
    {
        if (object->previousCoords.y != playerY
            || object->currentCoords.x != mewPrevX
            || object->currentCoords.y != object->previousCoords.y)
        {
            if (object->previousCoords.x == playerX &&
                object->previousCoords.y == playerY)
                return 1;
        }
    }
    return 0;
}

void SetPlayerAvatarTransitionFlags(u16 transitionFlags)
{
    gPlayerAvatar.unk1 |= transitionFlags;
    DoPlayerAvatarTransition();
}

static void DoPlayerAvatarTransition(void)
{
    u8 i;
    u8 flags = gPlayerAvatar.unk1;

    if (flags != 0)
    {
        for (i = 0; i < 8; i++, flags >>= 1)
        {
            if (flags & 1)
                gUnknown_084974B8[i](&gEventObjects[gPlayerAvatar.eventObjectId]);
        }
        gPlayerAvatar.unk1 = 0;
    }
}

static void PlayerAvatarTransition_Dummy(struct EventObject *eventObj)
{

}

static void PlayerAvatarTransition_Normal(struct EventObject *eventObj)
{
    EventObjectSetGraphicsId(eventObj, GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_NORMAL));
    EventObjectTurn(eventObj, eventObj->movementDirection);
    SetPlayerAvatarStateMask((1 << PLAYER_AVATAR_STATE_NORMAL));
}

static void PlayerAvatarTransition_MachBike(struct EventObject *eventObj)
{
    EventObjectSetGraphicsId(eventObj, GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_MACH_BIKE));
    EventObjectTurn(eventObj, eventObj->movementDirection);
    SetPlayerAvatarStateMask((1 << PLAYER_AVATAR_STATE_MACH_BIKE));
    BikeClearState(0, 0);
}

static void PlayerAvatarTransition_AcroBike(struct EventObject *eventObj)
{
    EventObjectSetGraphicsId(eventObj, GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_ACRO_BIKE));
    EventObjectTurn(eventObj, eventObj->movementDirection);
    SetPlayerAvatarStateMask((1 << PLAYER_AVATAR_STATE_ACRO_BIKE));
    BikeClearState(0, 0);
    Bike_HandleBumpySlopeJump();
}

static void PlayerAvatarTransition_Surfing(struct EventObject *eventObj)
{
    u8 spriteId;

    EventObjectSetGraphicsId(eventObj, GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_SURFING));
    EventObjectTurn(eventObj, eventObj->movementDirection);
    SetPlayerAvatarStateMask((1 << PLAYER_AVATAR_STATE_SURFING));
    gFieldEffectArguments[0] = eventObj->currentCoords.x;
    gFieldEffectArguments[1] = eventObj->currentCoords.y;
    gFieldEffectArguments[2] = gPlayerAvatar.eventObjectId;
    spriteId = FieldEffectStart(8);
    eventObj->fieldEffectSpriteId = spriteId;
    sub_81555AC(spriteId, 1);
}

static void PlayerAvatarTransition_Underwater(struct EventObject *eventObj)
{
    EventObjectSetGraphicsId(eventObj, GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_UNDERWATER));
    EventObjectTurn(eventObj, eventObj->movementDirection);
    SetPlayerAvatarStateMask((1 << PLAYER_AVATAR_STATE_UNDERWATER));
    eventObj->fieldEffectSpriteId = sub_8155800(eventObj->spriteId);
}

static void PlayerAvatarTransition_ReturnToField(struct EventObject *eventObj)
{
    gPlayerAvatar.flags |= (1 << PLAYER_AVATAR_STATE_FIELD_MOVE);
}

void sub_808B578(void)
{
    gPlayerAvatar.tileTransitionState = T_NOT_MOVING;
    if (PlayerIsAnimActive())
    {
        if (!PlayerCheckIfAnimFinishedOrInactive())
        {
            if (!player_is_anim_in_certain_ranges())
                gPlayerAvatar.tileTransitionState = T_TILE_TRANSITION;
        }
        else
        {
            if (!sub_808B618())
                gPlayerAvatar.tileTransitionState = T_TILE_CENTER;
        }
    }
}

static bool8 player_is_anim_in_certain_ranges(void)
{
    u8 movementActionId = gEventObjects[gPlayerAvatar.eventObjectId].movementActionId;

    if (movementActionId <= 0x3
     || (movementActionId >= 0x10 && movementActionId <= 0x14)
     || (movementActionId >= 0x19 && movementActionId <= 0x28)
     || (movementActionId >= 0x64 && movementActionId <= 0x6F)
     || (movementActionId >= 0x7C && movementActionId <= 0x7F))
        return 1;
    else
        return 0;
}

static bool8 sub_808B618(void)
{
    if (player_is_anim_in_certain_ranges() && gPlayerAvatar.runningState != TURN_DIRECTION)
        return 1;
    else
        return 0;
}

static bool8 PlayerIsAnimActive(void)
{
    return EventObjectIsMovementOverridden(&gEventObjects[gPlayerAvatar.eventObjectId]);
}

static bool8 PlayerCheckIfAnimFinishedOrInactive(void)
{
    return EventObjectCheckHeldMovementStatus(&gEventObjects[gPlayerAvatar.eventObjectId]);
}

static void PlayerSetCopyableMovement(u8 a)
{
    gEventObjects[gPlayerAvatar.eventObjectId].playerCopyableMovement = a;
}

u8 PlayerGetCopyableMovement(void)
{
    return gEventObjects[gPlayerAvatar.eventObjectId].playerCopyableMovement;
}

static void sub_808B6BC(u8 a)
{
    EventObjectForceSetHeldMovement(&gEventObjects[gPlayerAvatar.eventObjectId], a);
}

void PlayerSetAnimId(u8 movementActionId, u8 copyableMovement)
{
    if (!PlayerIsAnimActive())
    {
        PlayerSetCopyableMovement(copyableMovement);
        EventObjectSetHeldMovement(&gEventObjects[gPlayerAvatar.eventObjectId], movementActionId);
    }
}


void PlayerGoSpeed1(u8 a)
{
    PlayerSetAnimId(GetWalkNormalMovementAction(a), 2);
}


void PlayerGoSpeed2(u8 a)
{
    PlayerSetAnimId(GetWalkFastMovementAction(a), 2);
}

void PlayerRideWaterCurrent(u8 a)
{
    PlayerSetAnimId(GetRideWaterCurrentMovementAction(a), 2);
}


void PlayerGoSpeed4(u8 a)
{
    PlayerSetAnimId(GetWalkFastestMovementAction(a), 2);
}

static void PlayerRun(u8 a)
{
    PlayerSetAnimId(GetPlayerRunMovementAction(a), 2);
}

void PlayerOnBikeCollide(u8 a)
{
    PlayCollisionSoundIfNotFacingWarp(a);
    PlayerSetAnimId(GetWalkInPlaceNormalMovementAction(a), 2);
}

void PlayerOnBikeCollideWithFarawayIslandMew(u8 a)
{
    PlayerSetAnimId(GetWalkInPlaceNormalMovementAction(a), 2);
}

static void PlayerNotOnBikeCollide(u8 a)
{
    PlayCollisionSoundIfNotFacingWarp(a);
    PlayerSetAnimId(GetWalkInPlaceSlowMovementAction(a), 2);
}

static void PlayerNotOnBikeCollideWithFarawayIslandMew(u8 a)
{
    PlayerSetAnimId(GetWalkInPlaceSlowMovementAction(a), 2);
}

void PlayerFaceDirection(u8 direction)
{
    PlayerSetAnimId(GetFaceDirectionMovementAction(direction), 1);
}

void PlayerTurnInPlace(u8 direction)
{
    PlayerSetAnimId(GetWalkInPlaceFastMovementAction(direction), 1);
}

void PlayerJumpLedge(u8 direction)
{
    PlaySE(10);
    PlayerSetAnimId(GetJump2MovementAction(direction), 8);
}

void sub_808B864(void)
{
    if (gPlayerAvatar.tileTransitionState == T_TILE_CENTER || gPlayerAvatar.tileTransitionState == T_NOT_MOVING)
    {
        if (player_should_look_direction_be_enforced_upon_movement())
            sub_808B6BC(GetFaceDirectionMovementAction(gEventObjects[gPlayerAvatar.eventObjectId].facingDirection));
    }
}


void PlayerIdleWheelie(u8 direction)
{
    PlayerSetAnimId(GetAcroWheelieFaceDirectionMovementAction(direction), 1);
}


void PlayerStartWheelie(u8 direction)
{
    PlayerSetAnimId(GetAcroPopWheelieFaceDirectionMovementAction(direction), 1);
}


void PlayerEndWheelie(u8 direction)
{
    PlayerSetAnimId(GetAcroEndWheelieFaceDirectionMovementAction(direction), 1);
}


void PlayerStandingHoppingWheelie(u8 a)
{
    PlaySE(34);
    PlayerSetAnimId(GetAcroWheelieHopFaceDirectionMovementAction(a), 1);
}


void PlayerMovingHoppingWheelie(u8 a)
{
    PlaySE(34);
    PlayerSetAnimId(GetAcroWheelieHopDirectionMovementAction(a), 2);
}


void PlayerLedgeHoppingWheelie(u8 a)
{
    PlaySE(34);
    PlayerSetAnimId(GetAcroWheelieJumpDirectionMovementAction(a), 8);
}


void PlayerAcroTurnJump(u8 direction)
{
    PlaySE(34);
    PlayerSetAnimId(GetJumpInPlaceTurnAroundMovementAction(direction), 1);
}

void sub_808B980(u8 direction)
{
    PlaySE(7);
    PlayerSetAnimId(GetAcroWheelieInPlaceDirectionMovementAction(direction), 2);
}

void sub_808B9A4(u8 direction)
{
    PlayerSetAnimId(GetAcroPopWheelieMoveDirectionMovementAction(direction), 2);
}

void sub_808B9BC(u8 direction)
{
    PlayerSetAnimId(GetAcroWheelieMoveDirectionMovementAction(direction), 2);
}

void sub_808B9D4(u8 direction)
{
    PlayerSetAnimId(GetAcroEndWheelieMoveDirectionMovementAction(direction), 2);
}

static void PlayCollisionSoundIfNotFacingWarp(u8 a)
{
    s16 x, y;
    u8 metatileBehavior = gEventObjects[gPlayerAvatar.eventObjectId].currentMetatileBehavior;

    if (!sArrowWarpMetatileBehaviorChecks[a - 1](metatileBehavior))
    {
        if (a == 2)
        {
            PlayerGetDestCoords(&x, &y);
            MoveCoords(2, &x, &y);
            if (MetatileBehavior_IsWarpDoor(MapGridGetMetatileBehaviorAt(x, y)))
                return;
        }
        PlaySE(7);
    }
}

void GetXYCoordsOneStepInFrontOfPlayer(s16 *x, s16 *y)
{
    *x = gEventObjects[gPlayerAvatar.eventObjectId].currentCoords.x;
    *y = gEventObjects[gPlayerAvatar.eventObjectId].currentCoords.y;
    MoveCoords(GetPlayerFacingDirection(), x, y);
}

void PlayerGetDestCoords(s16 *x, s16 *y)
{
    *x = gEventObjects[gPlayerAvatar.eventObjectId].currentCoords.x;
    *y = gEventObjects[gPlayerAvatar.eventObjectId].currentCoords.y;
}

u8 player_get_pos_including_state_based_drift(s16 *x, s16 *y)
{
    struct EventObject *object = &gEventObjects[gPlayerAvatar.eventObjectId];

    if (object->heldMovementActive && !object->heldMovementFinished && !gSprites[object->spriteId].data[2])
    {
        *x = object->currentCoords.x;
        *y = object->currentCoords.y;

        switch (object->movementActionId)
        {
            case 0x8:
            case 0x35:
                (*y)++;
                return 1;
            case 0x9:
            case 0x36:
                (*y)--;
                return 1;
            case 0xA:
            case 0x37:
                (*x)--;
                return 1;
            case 0xB:
            case 0x38:
                (*x)++;
                return 1;
        }
    }

    *x = -1;
    *y = -1;
    return 0;
}

u8 GetPlayerFacingDirection(void)
{
    return gEventObjects[gPlayerAvatar.eventObjectId].facingDirection;
}

u8 GetPlayerMovementDirection(void)
{
    return gEventObjects[gPlayerAvatar.eventObjectId].movementDirection;
}

u8 PlayerGetZCoord(void)
{
    return gEventObjects[gPlayerAvatar.eventObjectId].previousElevation;
}

void sub_808BC90(s16 x, s16 y)
{
    MoveEventObjectToMapCoords(&gEventObjects[gPlayerAvatar.eventObjectId], x, y);
}

u8 TestPlayerAvatarFlags(u8 a)
{
    return gPlayerAvatar.flags & a;
}

u8 sub_808BCD0(void)
{
    return gPlayerAvatar.flags;
}

u8 GetPlayerAvatarObjectId(void)
{
    return gPlayerAvatar.spriteId;
}

void sub_808BCE8(void)
{
    ForcedMovement_None();
}

void sub_808BCF4(void)
{
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    npc_clear_strange_bits(playerEventObj);
    SetEventObjectDirection(playerEventObj, playerEventObj->facingDirection);
    if (TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_MACH_BIKE) | (1 << PLAYER_AVATAR_STATE_ACRO_BIKE)))
    {
        Bike_HandleBumpySlopeJump();
        Bike_UpdateBikeCounterSpeed(0);
    }
}

u8 GetRivalAvatarGraphicsIdByStateIdAndGender(u8 state, u8 gender)
{
    return sRivalAvatarGfxIds[state][gender];
}

u8 GetPlayerAvatarGraphicsIdByStateIdAndGender(u8 state, u8 gender)
{
    return sPlayerAvatarGfxIds[state][gender];
}

u8 GetFRLGAvatarGraphicsIdByGender(u8 gender)
{
    return sFRLGAvatarGfxIds[gender];
}

u8 GetRSAvatarGraphicsIdByGender(u8 gender)
{
    return sRSAvatarGfxIds[gender];
}

u8 GetPlayerAvatarGraphicsIdByStateId(u8 state)
{
    return GetPlayerAvatarGraphicsIdByStateIdAndGender(state, gPlayerAvatar.gender);
}

u8 unref_GetRivalAvatarGenderByGraphicsId(u8 gfxId)
{
    switch (gfxId)
    {
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 112:
    case 138:
    case 192:
        return 1;
    default:
        return 0;
    }
}

u8 GetPlayerAvatarGenderByGraphicsId(u8 gfxId)
{
    switch (gfxId)
    {
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 112:
    case 138:
    case 192:
        return 1;
    default:
        return 0;
    }
}

bool8 PartyHasMonWithSurf(void)
{
    u8 i;

    if (!TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_SURFING)))
    {
        for (i = 0; i < 6; i++)
        {
            if (GetMonData(&gPlayerParty[i], 11) == 0)
                break;
            if (MonKnowsMove(&gPlayerParty[i], 57))
                return 1;
        }
    }
    return 0;
}

bool8 IsPlayerSurfingNorth(void)
{
    if (GetPlayerMovementDirection() == 2 && TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_SURFING)))
        return 1;
    else
        return 0;
}

bool8 IsPlayerFacingSurfableFishableWater(void)
{
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];
    s16 x = playerEventObj->currentCoords.x;
    s16 y = playerEventObj->currentCoords.y;

    MoveCoords(playerEventObj->facingDirection, &x, &y);
    if (GetCollisionAtCoords(playerEventObj, x, y, playerEventObj->facingDirection) == 3 && PlayerGetZCoord() == 3
     && MetatileBehavior_IsSurfableFishableWater(MapGridGetMetatileBehaviorAt(x, y)))
        return 1;
    else
        return 0;
}

void ClearPlayerAvatarInfo(void)
{
    memset(&gPlayerAvatar, 0, sizeof(struct PlayerAvatar));
}

void SetPlayerAvatarStateMask(u8 flags)
{
    gPlayerAvatar.flags &= ((1 << PLAYER_AVATAR_STATE_WATERING) | (1 << PLAYER_AVATAR_STATE_FISHING) | (1 << PLAYER_AVATAR_STATE_FIELD_MOVE));
    gPlayerAvatar.flags |= flags;
}

static u8 GetPlayerAvatarStateTransitionByGraphicsId(u8 graphicsId, u8 gender)
{
    u8 i;

    for (i = 0; i < 5; i++)
    {
        if (gUnknown_0849750C[gender][i][0] == graphicsId)
            return gUnknown_0849750C[gender][i][1];
    }
    return 1;
}

u8 GetPlayerAvatarGraphicsIdByCurrentState(void)
{
    u8 i;
    u8 r5 = gPlayerAvatar.flags;

    for (i = 0; i < 5; i++)
    {
        if (gUnknown_0849750C[gPlayerAvatar.gender][i][1] & r5)
            return gUnknown_0849750C[gPlayerAvatar.gender][i][0];
    }
    return 0;
}

void SetPlayerAvatarExtraStateTransition(u8 graphicsId, u8 b)
{
    u8 unk = GetPlayerAvatarStateTransitionByGraphicsId(graphicsId, gPlayerAvatar.gender);

    gPlayerAvatar.unk1 |= unk | b;
    DoPlayerAvatarTransition();
}

void InitPlayerAvatar(s16 x, s16 y, u8 direction, u8 gender)
{
    struct EventObjectTemplate playerEventObjTemplate;
    u8 eventObjectId;
    struct EventObject *eventObject;

    playerEventObjTemplate.localId = 0xFF;
    playerEventObjTemplate.graphicsId = GetPlayerAvatarGraphicsIdByStateIdAndGender(PLAYER_AVATAR_STATE_NORMAL, gender);
    playerEventObjTemplate.x = x - 7;
    playerEventObjTemplate.y = y - 7;
    playerEventObjTemplate.elevation = 0;
    playerEventObjTemplate.movementType = 0xB;
    playerEventObjTemplate.movementRangeX = 0;
    playerEventObjTemplate.movementRangeY = 0;
    playerEventObjTemplate.trainerType = 0;
    playerEventObjTemplate.trainerRange_berryTreeId = 0;
    playerEventObjTemplate.script = ((void *)0);
    playerEventObjTemplate.flagId = 0;
    eventObjectId = SpawnSpecialEventObject(&playerEventObjTemplate);
    eventObject = &gEventObjects[eventObjectId];
    eventObject->isPlayer = 1;
    eventObject->warpArrowSpriteId = CreateWarpArrowSprite();
    EventObjectTurn(eventObject, direction);
    ClearPlayerAvatarInfo();
    gPlayerAvatar.runningState = NOT_MOVING;
    gPlayerAvatar.tileTransitionState = T_NOT_MOVING;
    gPlayerAvatar.eventObjectId = eventObjectId;
    gPlayerAvatar.spriteId = eventObject->spriteId;
    gPlayerAvatar.gender = gender;
    SetPlayerAvatarStateMask((1 << PLAYER_AVATAR_STATE_FIELD_MOVE) | (1 << PLAYER_AVATAR_STATE_NORMAL));
}

void sub_808C0A8(u8 a)
{
    gEventObjects[gPlayerAvatar.eventObjectId].invisible = a;
    if (TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_SURFING)))
        gSprites[gEventObjects[gPlayerAvatar.eventObjectId].fieldEffectSpriteId].invisible = a;
}

void sub_808C114(void)
{
    EventObjectSetGraphicsId(&gEventObjects[gPlayerAvatar.eventObjectId], GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_FIELD_MOVE));
    StartSpriteAnim(&gSprites[gPlayerAvatar.spriteId], 0);
}

void sub_808C15C(u8 direction)
{
    EventObjectSetGraphicsId(&gEventObjects[gPlayerAvatar.eventObjectId], GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_FISHING));
    StartSpriteAnim(&gSprites[gPlayerAvatar.spriteId], GetFishingDirectionAnimNum(direction));
}

void sub_808C1B4(u8 direction)
{
    EventObjectSetGraphicsId(&gEventObjects[gPlayerAvatar.eventObjectId], GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_ACRO_BIKE));
    StartSpriteAnim(&gSprites[gPlayerAvatar.spriteId], GetAcroWheelieDirectionAnimNum(direction));
    SeekSpriteAnim(&gSprites[gPlayerAvatar.spriteId], 1);
}

void sub_808C228(u8 direction)
{
    EventObjectSetGraphicsId(&gEventObjects[gPlayerAvatar.eventObjectId], GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_WATERING));
    StartSpriteAnim(&gSprites[gPlayerAvatar.spriteId], GetFaceDirectionAnimNum(direction));
}

static void sub_808C280(struct EventObject *eventObject)
{
    s16 x;
    s16 y;
    u8 direction;
    u8 metatileBehavior = eventObject->currentMetatileBehavior;

    for (x = 0, direction = 1; x < 4; x++, direction++)
    {
        if (sArrowWarpMetatileBehaviorChecks2[x](metatileBehavior) && direction == eventObject->movementDirection)
        {
            x = eventObject->currentCoords.x;
            y = eventObject->currentCoords.y;
            MoveCoords(direction, &x, &y);
            ShowWarpArrowSprite(eventObject->warpArrowSpriteId, direction, x, y);
            return;
        }
    }
    SetSpriteInvisible(eventObject->warpArrowSpriteId);
}



static void StartStrengthAnim(u8 a, u8 b)
{
    u8 taskId = CreateTask(Task_BumpBoulder, 0xFF);

    gTasks[taskId].data[1] = a;
    gTasks[taskId].data[2] = b;
    Task_BumpBoulder(taskId);
}

static void Task_BumpBoulder(u8 taskId)
{
    while (gUnknown_08497530[gTasks[taskId].data[0]](&gTasks[taskId],
                                                     &gEventObjects[gPlayerAvatar.eventObjectId],
                                                     &gEventObjects[gTasks[taskId].data[1]]))
        ;
}

static bool8 sub_808C3A4(struct Task *task, struct EventObject *playerObject, struct EventObject *strengthObject)
{
    ScriptContext2_Enable();
    gPlayerAvatar.preventStep = 1;
    task->data[0]++;
    return 0;
}

static bool8 do_boulder_dust(struct Task *task, struct EventObject *playerObject, struct EventObject *strengthObject)
{
    if (EventObjectIsHeldMovementActive(playerObject))
    {
        EventObjectClearHeldMovementIfFinished(playerObject);
    }

    if (EventObjectIsHeldMovementActive(strengthObject))
    {
        EventObjectClearHeldMovementIfFinished(strengthObject);
    }

    if (!EventObjectIsMovementOverridden(playerObject)
     && !EventObjectIsMovementOverridden(strengthObject))
    {
        EventObjectClearHeldMovementIfFinished(playerObject);
        EventObjectClearHeldMovementIfFinished(strengthObject);
        EventObjectSetHeldMovement(playerObject, GetWalkInPlaceNormalMovementAction((u8)task->data[2]));
        EventObjectSetHeldMovement(strengthObject, GetWalkSlowMovementAction((u8)task->data[2]));
        gFieldEffectArguments[0] = strengthObject->currentCoords.x;
        gFieldEffectArguments[1] = strengthObject->currentCoords.y;
        gFieldEffectArguments[2] = strengthObject->previousElevation;
        gFieldEffectArguments[3] = gSprites[strengthObject->spriteId].oam.priority;
        FieldEffectStart(10);
        PlaySE(214);
        task->data[0]++;
    }
    return 0;
}

static bool8 sub_808C484(struct Task *task, struct EventObject *playerObject, struct EventObject *strengthObject)
{
    if (EventObjectCheckHeldMovementStatus(playerObject)
     && EventObjectCheckHeldMovementStatus(strengthObject))
    {
        EventObjectClearHeldMovementIfFinished(playerObject);
        EventObjectClearHeldMovementIfFinished(strengthObject);
        gPlayerAvatar.preventStep = 0;
        ScriptContext2_Disable();
        DestroyTask(FindTaskIdByFunc(Task_BumpBoulder));
    }
    return 0;
}



static void DoPlayerMatJump(void)
{
    DoPlayerAvatarSecretBaseMatJump(CreateTask(DoPlayerAvatarSecretBaseMatJump, 0xFF));
}

static void DoPlayerAvatarSecretBaseMatJump(u8 taskId)
{
    while (sPlayerAvatarSecretBaseMatJump[gTasks[taskId].data[0]](&gTasks[taskId], &gEventObjects[gPlayerAvatar.eventObjectId]))
        ;
}


static u8 PlayerAvatar_DoSecretBaseMatJump(struct Task *task, struct EventObject *eventObject)
{
    gPlayerAvatar.preventStep = 1;
    if (EventObjectClearHeldMovementIfFinished(eventObject))
    {
        PlaySE(10);
        EventObjectSetHeldMovement(eventObject, GetJumpInPlaceMovementAction(eventObject->facingDirection));
        task->data[1]++;
        if (task->data[1] > 1)
        {
            gPlayerAvatar.preventStep = 0;
            gPlayerAvatar.unk1 |= 0x20;
            DestroyTask(FindTaskIdByFunc(DoPlayerAvatarSecretBaseMatJump));
        }
    }
    return 0;
}



static void DoPlayerMatSpin(void)
{
    u8 taskId = CreateTask(PlayerAvatar_DoSecretBaseMatSpin, 0xFF);

    PlayerAvatar_DoSecretBaseMatSpin(taskId);
}

static void PlayerAvatar_DoSecretBaseMatSpin(u8 taskId)
{
    while (sPlayerAvatarSecretBaseMatSpin[gTasks[taskId].data[0]](&gTasks[taskId], &gEventObjects[gPlayerAvatar.eventObjectId]))
        ;
}

static bool8 PlayerAvatar_SecretBaseMatSpinStep0(struct Task *task, struct EventObject *eventObject)
{
    task->data[0]++;
    task->data[1] = eventObject->movementDirection;
    gPlayerAvatar.preventStep = 1;
    ScriptContext2_Enable();
    PlaySE(45);
    return 1;
}

static bool8 PlayerAvatar_SecretBaseMatSpinStep1(struct Task *task, struct EventObject *eventObject)
{
    u8 directions[] = {3, 4, 2, 1};

    if (EventObjectClearHeldMovementIfFinished(eventObject))
    {
        u8 direction;

        EventObjectSetHeldMovement(eventObject, GetFaceDirectionMovementAction(direction = directions[eventObject->movementDirection - 1]));
        if (direction == (u8)task->data[1])
            task->data[2]++;
        task->data[0]++;
        if (task->data[2] > 3 && direction == GetOppositeDirection(task->data[1]))
            task->data[0]++;
    }
    return 0;
}

static bool8 PlayerAvatar_SecretBaseMatSpinStep2(struct Task *task, struct EventObject *eventObject)
{
    const u8 actions[] = {
        0x10,
        0x10,
        0x11,
        0x12,
        0x13,
    };

    if (EventObjectClearHeldMovementIfFinished(eventObject))
    {
        EventObjectSetHeldMovement(eventObject, actions[task->data[2]]);
        task->data[0] = 1;
    }
    return 0;
}

static bool8 PlayerAvatar_SecretBaseMatSpinStep3(struct Task *task, struct EventObject *eventObject)
{
    if (EventObjectClearHeldMovementIfFinished(eventObject))
    {
        EventObjectSetHeldMovement(eventObject, GetWalkSlowMovementAction(GetOppositeDirection(task->data[1])));
        ScriptContext2_Disable();
        gPlayerAvatar.preventStep = 0;
        DestroyTask(FindTaskIdByFunc(PlayerAvatar_DoSecretBaseMatSpin));
    }
    return 0;
}



static void sub_808C750(u8 a)
{
    u8 taskId;

    ScriptContext2_Enable();
    Overworld_ClearSavedMusic();
    Overworld_ChangeMusicToDefault();
    gPlayerAvatar.flags &= ~(1 << PLAYER_AVATAR_STATE_SURFING);
    gPlayerAvatar.flags |= (1 << PLAYER_AVATAR_STATE_NORMAL);
    gPlayerAvatar.preventStep = 1;
    taskId = CreateTask(taskFF_0805D1D4, 0xFF);
    gTasks[taskId].data[0] = a;
    taskFF_0805D1D4(taskId);
}

static void taskFF_0805D1D4(u8 taskId)
{
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    if (EventObjectIsMovementOverridden(playerEventObj))
    {
        if (!EventObjectClearHeldMovementIfFinished(playerEventObj))
            return;
    }
    sub_81555AC(playerEventObj->fieldEffectSpriteId, 2);
    EventObjectSetHeldMovement(playerEventObj, GetJumpSpecialMovementAction((u8)gTasks[taskId].data[0]));
    gTasks[taskId].func = sub_808C814;
}

static void sub_808C814(u8 taskId)
{
    struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

    if (EventObjectClearHeldMovementIfFinished(playerEventObj))
    {
        EventObjectSetGraphicsId(playerEventObj, GetPlayerAvatarGraphicsIdByStateId(PLAYER_AVATAR_STATE_NORMAL));
        EventObjectSetHeldMovement(playerEventObj, GetFaceDirectionMovementAction(playerEventObj->facingDirection));
        gPlayerAvatar.preventStep = 0;
        ScriptContext2_Disable();
        DestroySprite(&gSprites[playerEventObj->fieldEffectSpriteId]);
        DestroyTask(taskId);
    }
}

static bool8 (*const sFishingStateFuncs[])(struct Task *) =
{
    Fishing1,
    Fishing2,
    Fishing3,
    Fishing4,
    Fishing5,
    Fishing6,
    Fishing7,
    Fishing8,
    Fishing9,
    Fishing10,
    Fishing11,
    Fishing12,
    Fishing13,
    Fishing14,
    Fishing15,
    Fishing16,
};
# 1711 "src/field_player_avatar.c"
void StartFishing(u8 rod)
{
    u8 taskId = CreateTask(Task_Fishing, 0xFF);

    gTasks[taskId].data[15] = rod;
    Task_Fishing(taskId);
}

static void Task_Fishing(u8 taskId)
{
    while (sFishingStateFuncs[gTasks[taskId].data[0]](&gTasks[taskId]))
        ;
}

static bool8 Fishing1(struct Task *task)
{
    ScriptContext2_Enable();
    gPlayerAvatar.preventStep = 1;
    task->data[0]++;
    return 0;
}

static bool8 Fishing2(struct Task *task)
{
    struct EventObject *playerEventObj;
    const s16 arr1[] = {1, 1, 1};
    const s16 arr2[] = {1, 3, 6};

    task->data[12] = 0;
    task->data[13] = arr1[task->data[15]] + (Random() % arr2[task->data[15]]);
    task->data[14] = gEventObjects[gPlayerAvatar.eventObjectId].graphicsId;
    playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];
    EventObjectClearHeldMovementIfActive(playerEventObj);
    playerEventObj->enableAnim = 1;
    sub_808C15C(playerEventObj->facingDirection);
    task->data[0]++;
    return 0;
}

static bool8 Fishing3(struct Task *task)
{
    AlignFishingAnimationFrames();


    task->data[1]++;
    if (task->data[1] >= 60)
        task->data[0]++;
    return 0;
}

static bool8 Fishing4(struct Task *task)
{
    u32 randVal;

    sub_819786C(0, 1);
    task->data[0]++;
    task->data[1] = 0;
    task->data[2] = 0;
    randVal = Random();
    randVal %= 10;
    task->data[3] = randVal + 1;
    if (task->data[12] == 0)
        task->data[3] = randVal + 4;
    if (task->data[3] >= 10)
        task->data[3] = 10;
    return 1;
}


static bool8 Fishing5(struct Task *task)
{
    const u8 dot[] = _("·");

    AlignFishingAnimationFrames();
    task->data[1]++;
    if (gMain.newKeys & 0x0001)
    {
        task->data[0] = 11;
        if (task->data[12] != 0)
            task->data[0] = 12;
        return 1;
    }
    else
    {
        if (task->data[1] >= 20)
        {
            task->data[1] = 0;
            if (task->data[2] >= task->data[3])
            {
                task->data[0]++;
                if (task->data[12] != 0)
                    task->data[0]++;
                task->data[12]++;
            }
            else
            {
                AddTextPrinterParameterized(0, 1, dot, task->data[2] * 8, 1, 0, ((void *)0));
                task->data[2]++;
            }
        }
        return 0;
    }
}


static bool8 Fishing6(struct Task *task)
{
    bool8 bite;

    AlignFishingAnimationFrames();
    task->data[0]++;
    bite = 0;

    if (!DoesCurrentMapHaveFishingMons())
    {
        task->data[0] = 11;
    }
    else
    {
        if (!GetMonData(&gPlayerParty[0], 6))
        {
            u8 ability = GetMonAbility(&gPlayerParty[0]);
            if (ability == 21 || ability == 60)
            {
                if (Random() % 100 > 14)
                {
                    bite = 1;
                }
            }
        }

        if (!bite)
        {
            if (Random() & 1)
            {
                task->data[0] = 11;
            }
            else
            {
                bite = 1;
            }
        }

        if (bite == 1)
        {
            StartSpriteAnim(&gSprites[gPlayerAvatar.spriteId], GetFishingBiteDirectionAnimNum(GetPlayerFacingDirection()));
        }
    }
    return 1;
}


static bool8 Fishing7(struct Task *task)
{
    AlignFishingAnimationFrames();
    AddTextPrinterParameterized(0, 1, gText_OhABite, 0, 17, 0, ((void *)0));
    task->data[0]++;
    task->data[1] = 0;
    return 0;
}


static bool8 Fishing8(struct Task *task)
{
    const s16 reelTimeouts[3] = {36, 33, 30};

    AlignFishingAnimationFrames();
    task->data[1]++;
    if (task->data[1] >= reelTimeouts[task->data[15]])
        task->data[0] = 12;
    else if (gMain.newKeys & 0x0001)
        task->data[0]++;
    return 0;
}


static bool8 Fishing9(struct Task *task)
{
    const s16 arr[][2] =
    {
        {0, 0},
        {40, 10},
        {70, 30}
    };

    AlignFishingAnimationFrames();
    task->data[0]++;
    if (task->data[12] < task->data[13])
    {
        task->data[0] = 3;
    }
    else if (task->data[12] < 2)
    {

        s16 probability = Random() % 100;

        if (arr[task->data[15]][task->data[12]] > probability)
            task->data[0] = 3;
    }
    return 0;
}

static bool8 Fishing10(struct Task *task)
{
    AlignFishingAnimationFrames();
    FillWindowPixelBuffer(0, ((1) | ((1) << 4)));
    AddTextPrinterParameterized2(0, 1, gText_PokemonOnHook, 1, 0, 2, 1, 3);
    task->data[0]++;
    task->data[1] = 0;
    return 0;
}

static bool8 Fishing11(struct Task *task)
{
    if (task->data[1] == 0)
        AlignFishingAnimationFrames();

    RunTextPrinters();

    if (task->data[1] == 0)
    {
        if (!IsTextPrinterActive(0))
        {
            struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

            EventObjectSetGraphicsId(playerEventObj, task->data[14]);
            EventObjectTurn(playerEventObj, playerEventObj->movementDirection);
            if (gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_SURFING))
                sub_8155604(gEventObjects[gPlayerAvatar.eventObjectId].fieldEffectSpriteId, 0, 0);
            gSprites[gPlayerAvatar.spriteId].pos2.x = 0;
            gSprites[gPlayerAvatar.spriteId].pos2.y = 0;
            ClearDialogWindowAndFrame(0, 1);
            task->data[1]++;
            return 0;
        }
    }

    if (task->data[1] != 0)
    {
        gPlayerAvatar.preventStep = 0;
        ScriptContext2_Disable();
        FishingWildEncounter(task->data[15]);
        sub_80ED950(1);
        DestroyTask(FindTaskIdByFunc(Task_Fishing));
    }
    return 0;
}


static bool8 Fishing12(struct Task *task)
{
    AlignFishingAnimationFrames();
    StartSpriteAnim(&gSprites[gPlayerAvatar.spriteId], GetFishingNoCatchDirectionAnimNum(GetPlayerFacingDirection()));
    FillWindowPixelBuffer(0, ((1) | ((1) << 4)));
    AddTextPrinterParameterized2(0, 1, gText_NotEvenANibble, 1, 0, 2, 1, 3);
    task->data[0] = 13;
    return 1;
}


static bool8 Fishing13(struct Task *task)
{
    AlignFishingAnimationFrames();
    StartSpriteAnim(&gSprites[gPlayerAvatar.spriteId], GetFishingNoCatchDirectionAnimNum(GetPlayerFacingDirection()));
    FillWindowPixelBuffer(0, ((1) | ((1) << 4)));
    AddTextPrinterParameterized2(0, 1, gText_ItGotAway, 1, 0, 2, 1, 3);
    task->data[0]++;
    return 1;
}


static bool8 Fishing14(struct Task *task)
{
    AlignFishingAnimationFrames();
    task->data[0]++;
    return 0;
}

static bool8 Fishing15(struct Task *task)
{
    AlignFishingAnimationFrames();
    if (gSprites[gPlayerAvatar.spriteId].animEnded)
    {
        struct EventObject *playerEventObj = &gEventObjects[gPlayerAvatar.eventObjectId];

        EventObjectSetGraphicsId(playerEventObj, task->data[14]);
        EventObjectTurn(playerEventObj, playerEventObj->movementDirection);
        if (gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_SURFING))
            sub_8155604(gEventObjects[gPlayerAvatar.eventObjectId].fieldEffectSpriteId, 0, 0);
        gSprites[gPlayerAvatar.spriteId].pos2.x = 0;
        gSprites[gPlayerAvatar.spriteId].pos2.y = 0;
        task->data[0]++;
    }
    return 0;
}

static bool8 Fishing16(struct Task *task)
{
    RunTextPrinters();
    if (!IsTextPrinterActive(0))
    {
        gPlayerAvatar.preventStep = 0;
        ScriptContext2_Disable();
        UnfreezeEventObjects();
        ClearDialogWindowAndFrame(0, 1);
        sub_80ED950(0);
        DestroyTask(FindTaskIdByFunc(Task_Fishing));
    }
    return 0;
}





static void AlignFishingAnimationFrames(void)
{
    struct Sprite *playerSprite = &gSprites[gPlayerAvatar.spriteId];
    u8 animCmdIndex;
    u8 animType;

    AnimateSprite(playerSprite);
    playerSprite->pos2.x = 0;
    playerSprite->pos2.y = 0;
    animCmdIndex = playerSprite->animCmdIndex;
    if (playerSprite->anims[playerSprite->animNum][animCmdIndex].type == -1)
    {
        animCmdIndex--;
    }
    else
    {
        playerSprite->animDelayCounter++;
        if (playerSprite->anims[playerSprite->animNum][animCmdIndex].type == -1)
            animCmdIndex--;
    }
    animType = playerSprite->anims[playerSprite->animNum][animCmdIndex].type;
    if (animType == 1 || animType == 2 || animType == 3)
    {
        playerSprite->pos2.x = 8;
        if (GetPlayerFacingDirection() == 3)
            playerSprite->pos2.x = -8;
    }
    if (animType == 5)
        playerSprite->pos2.y = -8;
    if (animType == 10 || animType == 11)
        playerSprite->pos2.y = 8;
    if (gPlayerAvatar.flags & (1 << PLAYER_AVATAR_STATE_SURFING))
        sub_8155604(gEventObjects[gPlayerAvatar.eventObjectId].fieldEffectSpriteId, 1, playerSprite->pos2.y);
}

void sub_808D074(u8 a0)
{
    gUnknown_0203734C = a0;
}

static u8 sub_808D080(void)
{
    if (gUnknown_0203734C == 0)
    {
        return 1;
    }
    return gUnknown_0203734C;
}

static void sub_808D094(u8 taskId)
{
    struct EventObject *object = &gEventObjects[gPlayerAvatar.eventObjectId];
    struct Sprite *sprite = &gSprites[object->spriteId];
    s16 *data = gTasks[taskId].data;

    switch (data[0])
    {
        case 0:
            if (!EventObjectClearHeldMovementIfFinished(object))
            {
                return;
            }

            sub_808D074(object->facingDirection);
            data[1] = 0;
            data[2] = 1;
            data[3] = (u16)(sprite->pos1.y + sprite->pos2.y) * 16;
            sprite->pos2.y = 0;
            CameraObjectReset2();
            object->fixedPriority = 1;
            sprite->oam.priority = 0;
            sprite->subpriority = 0;
            sprite->subspriteMode = 0;
            data[0]++;
        case 1:
            sub_808D38C(object, &data[1]);
            data[3] -= data[2];
            data[2] += 3;
            sprite->pos1.y = data[3] >> 4;
            if (sprite->pos1.y + (s16)gTotalCameraPixelOffsetY < -32)
            {
                data[0]++;
            }
            break;
        case 2:
            DestroyTask(taskId);
            break;
    }
}

static void sub_808D1FC(u8 taskId);

void sub_808D194(void)
{
    sub_808D1FC(CreateTask(sub_808D1FC, 0));
}

bool32 sub_808D1B4(void)
{
    return FuncIsActiveTask(sub_808D1FC);
}

void sub_808D1C8(void)
{
    sub_808D094(CreateTask(sub_808D094, 0));
}

bool32 sub_808D1E8(void)
{
    return FuncIsActiveTask(sub_808D094);
}

static const u8 gUnknown_084975BC[] = {1, 3, 4, 2, 1};

static void sub_808D1FC(u8 taskId)
{
    struct EventObject *object = &gEventObjects[gPlayerAvatar.eventObjectId];
    struct Sprite *sprite = &gSprites[object->spriteId];
    s16 *data = gTasks[taskId].data;

    switch (data[0])
    {
        case 0:
            data[5] = sub_808D080();
            EventObjectForceSetHeldMovement(object, GetFaceDirectionMovementAction(gUnknown_084975BC[data[5]]));
            data[1] = 0;
            data[2] = 116;
            data[4] = sprite->pos1.y;
            data[6] = sprite->oam.priority;
            data[7] = sprite->subpriority;
            data[3] = -((u16)sprite->pos2.y + 32) * 16;
            sprite->pos2.y = 0;
            CameraObjectReset2();
            object->fixedPriority = 1;
            sprite->oam.priority = 1;
            sprite->subpriority = 0;
            sprite->subspriteMode = 0;
            data[0]++;
        case 1:
            sub_808D38C(object, &data[1]);
            data[3] += data[2];
            data[2] -= 3;
            if (data[2] < 4)
            {
                data[2] = 4;
            }
            sprite->pos1.y = data[3] >> 4;
            if (sprite->pos1.y >= data[4])
            {
                sprite->pos1.y = data[4];
                data[8] = 0;
                data[0]++;
            }
            break;
        case 2:
            sub_808D38C(object, &data[1]);
            data[8]++;
            if (data[8] > 8)
            {
                data[0]++;
            }
            break;
        case 3:
            if (data[5] == sub_808D38C(object, &data[1]))
            {
                object->fixedPriority = 0;
                sprite->oam.priority = data[6];
                sprite->subpriority = data[7];
                CameraObjectReset1();
                DestroyTask(taskId);
            }
            break;
    }
}

static u8 sub_808D38C(struct EventObject *object, s16 *a1)
{
    if (*a1 < 8 && ++(*a1) < 8)
    {
        return object->facingDirection;
    }

    if (!EventObjectCheckHeldMovementStatus(object))
    {
        return object->facingDirection;
    }

    EventObjectForceSetHeldMovement(object, GetFaceDirectionMovementAction(gUnknown_084975BC[object->facingDirection]));
    *a1 = 0;
    return gUnknown_084975BC[object->facingDirection];
}
