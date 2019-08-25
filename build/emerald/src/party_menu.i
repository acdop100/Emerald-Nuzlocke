# 1 "src/party_menu.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/party_menu.c"
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
# 2 "src/party_menu.c" 2
# 1 "include/alloc.h" 1
# 15 "include/alloc.h"
extern u8 gHeap[];

void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 3 "src/party_menu.c" 2
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
# 4 "src/party_menu.c" 2
# 1 "include/battle_anim.h" 1



# 1 "include/battle.h" 1
# 5 "include/battle_anim.h" 2
# 1 "include/constants/battle_anim.h" 1
# 6 "include/battle_anim.h" 2
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
# 7 "include/battle_anim.h" 2

enum
{
    BG_ANIM_SCREEN_SIZE,
    BG_ANIM_AREA_OVERFLOW_MODE,
    BG_ANIM_MOSAIC,
    BG_ANIM_CHAR_BASE_BLOCK,
    BG_ANIM_PRIORITY,
    BG_ANIM_PALETTES_MODE,
    BG_ANIM_SCREEN_BASE_BLOCK,
};

struct BattleAnimBgData
{
    u8 *bgTiles;
    u16 *bgTilemap;
    u8 paletteId;
    u8 bgId;
    u16 tilesOffset;
    u16 unused;
};

struct BattleAnimBackground
{
    const u32 *image;
    const u32 *palette;
    const u32 *tilemap;
};



extern void (*gAnimScriptCallback)(void);
extern bool8 gAnimScriptActive;
extern u8 gAnimVisualTaskCount;
extern u8 gAnimSoundTaskCount;
extern struct DisableStruct *gAnimDisableStructPtr;
extern s32 gAnimMoveDmg;
extern u16 gAnimMovePower;
extern u8 gAnimFriendship;
extern u16 gWeatherMoveAnim;
extern s16 gBattleAnimArgs[8];
extern u8 gAnimMoveTurn;
extern u8 gBattleAnimAttacker;
extern u8 gBattleAnimTarget;
extern u16 gAnimBattlerSpecies[4];
extern u8 gUnknown_02038440;

void ClearBattleAnimationVars(void);
void DoMoveAnim(u16 move);
void LaunchBattleAnimation(const u8 *const animsTable[], u16 tableId, bool8 isMoveAnim);
void DestroyAnimSprite(struct Sprite *sprite);
void DestroyAnimVisualTask(u8 taskId);
void DestroyAnimSoundTask(u8 taskId);
bool8 IsBattlerSpriteVisible(u8 battlerId);
void MoveBattlerSpriteToBG(u8 battlerId, bool8 toBG_2, bool8 setSpriteInvisible);
bool8 IsContest(void);
s8 BattleAnimAdjustPanning(s8 pan);
s8 BattleAnimAdjustPanning2(s8 pan);
s16 KeepPanInRange(s16 a, int oldPan);
s16 CalculatePanIncrement(s16 sourcePan, s16 targetPan, s16 incrementPan);
void sub_80A4720(u16 a, u16 *b, u32 c, u8 d);
void sub_80A477C(bool8);


void SetAnimBgAttribute(u8 bgId, u8 attributeId, u8 value);
void sub_8118FBC(int bgId, u8 arg1, u8 arg2, u8 battlerPosition, u8 arg4, u8 *arg5, u16 *arg6, u16 arg7);
void HandleIntroSlide(u8 terrainId);
int GetAnimBgAttribute(u8 bgId, u8 attributeId);


void TranslateSpriteInEllipseOverDuration(struct Sprite *sprite);
void sub_80A8AEC(struct Sprite *sprite);
void sub_80A8A6C(struct Sprite *sprite);
void sub_80A8E30(struct Sprite *sprite);
void sub_80A8B64(struct Sprite *sprite);
void SetAverageBattlerPositions(u8 battlerId, bool8 respectMonPicOffsets, s16 *x, s16 *y);
void DestroySpriteAndMatrix(struct Sprite *sprite);
void TranslateSpriteLinearFixedPoint(struct Sprite *sprite);
void InitSpritePosToAnimAttacker(struct Sprite *sprite, bool8 respectMonPicOffsets);
void InitSpritePosToAnimTarget(struct Sprite *sprite, bool8 respectMonPicOffsets);
void StartAnimLinearTranslation(struct Sprite *sprite);
void InitAnimArcTranslation(struct Sprite *sprite);
bool8 AnimTranslateLinear(struct Sprite *sprite);
void TranslateAnimSpriteToTargetMonLocation(struct Sprite *sprite);
void sub_80A8EE4(struct Sprite *sprite);
u8 GetBattlerSpriteCoord2(u8 battlerId, u8 attributeId);
void sub_80A6FD4(struct Sprite *sprite);
u16 ArcTan2Neg(s16 a, s16 b);
void TrySetSpriteRotScale(struct Sprite *sprite, bool8 a2, s16 xScale, s16 yScale, u16 rotation);
void RunStoredCallbackWhenAffineAnimEnds(struct Sprite *sprite);
void TranslateSpriteLinearAndFlicker(struct Sprite *sprite);
void SetSpriteCoordsToAnimAttackerCoords(struct Sprite *sprite);
void RunStoredCallbackWhenAnimEnds(struct Sprite *sprite);
void SetAnimSpriteInitialXOffset(struct Sprite *sprite, s16 a2);
s16 GetBattlerSpriteCoordAttr(u8 battlerId, u8 a2);
u8 GetBattlerYCoordWithElevation(u8 battlerId);
void WaitAnimForDuration(struct Sprite *sprite);
void sub_80A7938(struct Sprite *sprite);
void InitAnimLinearTranslation(struct Sprite *sprite);
void sub_80A6F98(struct Sprite *sprite);
u8 GetBattlerSpriteBGPriority(u8 battlerId);
void *LoadPointerFromVars(s16 bottom, s16 top);
void StorePointerInVars(s16 *bottom, s16 *top, const void *ptr);
void sub_80A8278(void);
void sub_80A6B30(struct BattleAnimBgData*);
void sub_80A6B90(struct BattleAnimBgData*, u32 arg1);
u8 GetBattlerSpriteSubpriority(u8 battlerId);
bool8 TranslateAnimHorizontalArc(struct Sprite *sprite);
void sub_80A6630(struct Sprite *sprite);
void TranslateMonSpriteLinearFixedPoint(struct Sprite *sprite);
void ResetSpriteRotScale(u8 spriteId);
void SetSpriteRotScale(u8 spriteId, s16 xScale, s16 yScale, u16 rotation);
void InitSpriteDataForLinearTranslation(struct Sprite *sprite);
void PrepareBattlerSpriteForRotScale(u8 spriteId, u8 objMode);
void SetBattlerSpriteYOffsetFromRotation(u8 spriteId);
u32 sub_80A75AC(u8 a1, u8 a2, u8 a3, u8 a4, u8 a5, u8 a6, u8 a7);
u32 sub_80A76C4(u8 a1, u8 a2, u8 a3, u8 a4);
u8 sub_80A77AC(u8 a1);
s16 CloneBattlerSpriteWithBlend(u8);
void obj_delete_but_dont_free_vram(struct Sprite*);
u8 sub_80A89C8(int, u8, int);
void sub_80A6D60(struct BattleAnimBgData*, const void*, u32);
void AnimLoadCompressedBgGfx(u32, const u32*, u32);
void sub_80A6DAC(bool8);
void TranslateSpriteInGrowingCircleOverDuration(struct Sprite *);
void sub_80A653C(struct Sprite *);
void SetBattlerSpriteYOffsetFromYScale(u8 spriteId);
void sub_80A805C(struct Task *task, u8 a2, s16 a3, s16 a4, s16 a5, s16 a6, u16 a7);
u8 sub_80A80C8(struct Task *task);
void sub_80A8EE4(struct Sprite *);
void DestroyAnimSpriteAndDisableBlend(struct Sprite *);
void AnimLoadCompressedBgTilemap(u32 bgId, const void *src);
void InitAnimFastLinearTranslationWithSpeed(struct Sprite *sprite);
bool8 AnimFastTranslateLinear(struct Sprite *sprite);
void InitAndRunAnimFastLinearTranslation(struct Sprite *sprite);
void TranslateMonSpriteLinear(struct Sprite *sprite);
void TranslateSpriteLinear(struct Sprite *sprite);
void sub_80A77C8(struct Sprite *sprite);
void sub_80A7000(struct Sprite *sprite);
void TranslateSpriteInCircleOverDuration(struct Sprite *sprite);
void SetGreyscaleOrOriginalPalette(u16 a1, bool8 a2);
void PrepareAffineAnimInTaskData(struct Task *task, u8 spriteId, const union AffineAnimCmd *affineAnimCmds);
bool8 RunAffineAnimFromTaskData(struct Task *task);
void sub_80A78AC(struct Sprite *sprite);
void sub_80A6BFC(struct BattleAnimBgData *unk, u8 unused);
u8 sub_80A8394(u16 species, bool8 isBackpic, u8 a3, s16 x, s16 y, u8 subpriority, u32 personality, u32 trainerId, u32 battlerId, u32 a10);
void sub_80A749C(struct Sprite *sprite);
void sub_80A6DEC(struct Sprite *sprite);
void DestroyAnimVisualTaskAndDisableBlend(u8 taskId);
void DestroySpriteAndFreeResources_(struct Sprite *sprite);
void SetBattlerSpriteYOffsetFromOtherYScale(u8 spriteId, u8 otherSpriteId);
u8 GetBattlerSide(u8 battler);
u8 GetBattlerPosition(u8 battler);
u8 GetBattlerAtPosition(u8 position);

enum
{
    BATTLER_COORD_X,
    BATTLER_COORD_Y,
    BATTLER_COORD_X_2,
    BATTLER_COORD_Y_PIC_OFFSET,
    BATTLER_COORD_Y_PIC_OFFSET_DEFAULT,
};

enum
{
    BATTLER_COORD_ATTR_HEIGHT,
    BATTLER_COORD_ATTR_WIDTH,
    BATTLER_COORD_ATTR_TOP,
    BATTLER_COORD_ATTR_BOTTOM,
    BATTLER_COORD_ATTR_LEFT,
    BATTLER_COORD_ATTR_RIGHT,
    BATTLER_COORD_ATTR_RAW_BOTTOM,
};

u8 GetBattlerSpriteCoord(u8 battlerId, u8 attributeId);

bool8 IsBattlerSpritePresent(u8 battlerId);
void sub_80A6C68(u32 arg0);
u8 GetAnimBattlerSpriteId(u8 wantedBattler);
bool8 IsDoubleBattle(void);
u8 sub_80A6D94(void);
u8 GetBattlerSpriteBGPriorityRank(u8 battlerId);
void StoreSpriteCallbackInData6(struct Sprite *sprite, void (*spriteCallback)(struct Sprite*));
void SetSpritePrimaryCoordsFromSecondaryCoords(struct Sprite *sprite);
u8 GetBattlerSpriteDefault_Y(u8 battlerId);
u8 GetSubstituteSpriteDefault_Y(u8 battlerId);


void sub_80A64EC(struct Sprite *sprite);
void sub_80A718C(struct Sprite *sprite);
# 208 "include/battle_anim.h"
void LaunchStatusAnimation(u8 battlerId, u8 statusAnimId);


void sub_81152DC(u8 taskId);


void sub_8172EF0(u8 battler, struct Pokemon *mon);
u8 ItemIdToBallId(u16 itemId);
u8 AnimateBallOpenParticles(u8 x, u8 y, u8 priority, u8 subpriority, u8 ballId);
u8 LaunchBallFadeMonTask(bool8 unFadeLater, u8 battlerId, u32 selectedPalettes, u8 ballId);


void sub_8116EB4(u8);
void sub_8117854(u8 taskId, int unused, u16 arg2, u8 battler1, u8 arg4, u8 arg5, u8 arg6, u8 arg7, const u32 *arg8, const u32 *arg9, const u32 *palette);


void sub_810310C(u8 battler, struct Sprite* sprite);
void AnimMoveTwisterParticle(struct Sprite* sprite);


void sub_8108C94(struct Sprite *sprite);


void sub_810E2C8(struct Sprite *sprite);


u8 sub_807521C(s16 x, s16 y, u8 a3);

u32 UnpackSelectedBattleAnimPalettes(s16);

u8 GetBattlerSpriteFinal_Y(u8, u16, u8);

extern const struct OamData gUnknown_08524944;
extern const struct OamData gUnknown_08524A8C;
extern const struct OamData gUnknown_08524904;
extern const struct OamData gUnknown_085249C4;
extern const struct OamData gUnknown_0852490C;
extern const struct OamData gUnknown_08524934;
extern const struct OamData gUnknown_08524974;
extern const struct OamData gUnknown_0852499C;
extern const struct OamData gUnknown_085249CC;
extern const struct OamData gUnknown_08524914;
extern const struct OamData gUnknown_0852496C;
extern const struct OamData gUnknown_08524A34;
extern const struct OamData gUnknown_08524A3C;
extern const struct OamData gUnknown_08524A94;
extern const struct OamData gUnknown_08524954;
extern const struct OamData gUnknown_08524AE4;
extern const struct OamData gUnknown_085249D4;
extern const struct OamData gUnknown_08524A9C;
extern const struct OamData gUnknown_08524ADC;
extern const struct OamData gUnknown_08524B14;
extern const struct OamData gUnknown_08524A54;
extern const struct OamData gUnknown_08524A14;
extern const struct OamData gUnknown_08524A1C;
extern const struct OamData gUnknown_085249BC;
extern const struct OamData gUnknown_08524AF4;
extern const struct OamData gUnknown_085249DC;
extern const struct OamData gUnknown_08524AFC;
extern const struct OamData gUnknown_08524B1C;
extern const struct OamData gUnknown_08524A04;
extern const struct OamData gUnknown_08524A2C;
extern const struct OamData gUnknown_08524AEC;
extern const struct OamData gUnknown_08524964;
extern const struct OamData gUnknown_08524B24;
extern const struct OamData gUnknown_08524A24;
extern const struct OamData gUnknown_08524AC4;
extern const struct OamData gUnknown_08524A84;
extern const struct OamData gUnknown_08524A64;
extern const struct OamData gUnknown_0852491C;
extern const struct OamData gUnknown_0852495C;
extern const struct OamData gUnknown_0852497C;
extern const struct OamData gUnknown_085249F4;
extern const struct OamData gUnknown_0852493C;
extern const struct OamData gUnknown_08524A5C;
extern const struct OamData gUnknown_08524A74;

extern const struct CompressedSpriteSheet gBattleAnimPicTable[];
extern const struct CompressedSpritePalette gBattleAnimPaletteTable[];
# 5 "src/party_menu.c" 2
# 1 "include/battle_controllers.h" 1



enum
{
    REQUEST_ALL_BATTLE,
    REQUEST_SPECIES_BATTLE,
    REQUEST_HELDITEM_BATTLE,
    REQUEST_MOVES_PP_BATTLE,
    REQUEST_MOVE1_BATTLE,
    REQUEST_MOVE2_BATTLE,
    REQUEST_MOVE3_BATTLE,
    REQUEST_MOVE4_BATTLE,
    REQUEST_PP_DATA_BATTLE,
    REQUEST_PPMOVE1_BATTLE,
    REQUEST_PPMOVE2_BATTLE,
    REQUEST_PPMOVE3_BATTLE,
    REQUEST_PPMOVE4_BATTLE,
    REQUEST_UNUSED_13_BATTLE,
    REQUEST_UNUSED_14_BATTLE,
    REQUEST_UNUSED_15_BATTLE,
    REQUEST_UNUSED_16_BATTLE,
    REQUEST_OTID_BATTLE,
    REQUEST_EXP_BATTLE,
    REQUEST_HP_EV_BATTLE,
    REQUEST_ATK_EV_BATTLE,
    REQUEST_DEF_EV_BATTLE,
    REQUEST_SPEED_EV_BATTLE,
    REQUEST_SPATK_EV_BATTLE,
    REQUEST_SPDEF_EV_BATTLE,
    REQUEST_FRIENDSHIP_BATTLE,
    REQUEST_POKERUS_BATTLE,
    REQUEST_MET_LOCATION_BATTLE,
    REQUEST_MET_LEVEL_BATTLE,
    REQUEST_MET_GAME_BATTLE,
    REQUEST_POKEBALL_BATTLE,
    REQUEST_ALL_IVS_BATTLE,
    REQUEST_HP_IV_BATTLE,
    REQUEST_ATK_IV_BATTLE,
    REQUEST_DEF_IV_BATTLE,
    REQUEST_SPEED_IV_BATTLE,
    REQUEST_SPATK_IV_BATTLE,
    REQUEST_SPDEF_IV_BATTLE,
    REQUEST_PERSONALITY_BATTLE,
    REQUEST_CHECKSUM_BATTLE,
    REQUEST_STATUS_BATTLE,
    REQUEST_LEVEL_BATTLE,
    REQUEST_HP_BATTLE,
    REQUEST_MAX_HP_BATTLE,
    REQUEST_ATK_BATTLE,
    REQUEST_DEF_BATTLE,
    REQUEST_SPEED_BATTLE,
    REQUEST_SPATK_BATTLE,
    REQUEST_SPDEF_BATTLE,
    REQUEST_COOL_BATTLE,
    REQUEST_BEAUTY_BATTLE,
    REQUEST_CUTE_BATTLE,
    REQUEST_SMART_BATTLE,
    REQUEST_TOUGH_BATTLE,
    REQUEST_SHEEN_BATTLE,
    REQUEST_COOL_RIBBON_BATTLE,
    REQUEST_BEAUTY_RIBBON_BATTLE,
    REQUEST_CUTE_RIBBON_BATTLE,
    REQUEST_SMART_RIBBON_BATTLE,
    REQUEST_TOUGH_RIBBON_BATTLE,
};
# 86 "include/battle_controllers.h"
struct UnusedControllerStruct
{
    u8 field_0:7;
    u8 flag_x80:1;
};

struct HpAndStatus
{
    u16 hp;
    u32 status;
};

struct MovePpInfo
{
    u16 moves[4];
    u8 pp[4];
    u8 ppBonuses;
};

struct ChooseMoveStruct
{
    u16 moves[4];
    u8 currentPp[4];
    u8 maxPp[4];
    u16 species;
    u8 monType1;
    u8 monType2;
};

enum
{
    CONTROLLER_GETMONDATA,
    CONTROLLER_GETRAWMONDATA,
    CONTROLLER_SETMONDATA,
    CONTROLLER_SETRAWMONDATA,
    CONTROLLER_LOADMONSPRITE,
    CONTROLLER_SWITCHINANIM,
    CONTROLLER_RETURNMONTOBALL,
    CONTROLLER_DRAWTRAINERPIC,
    CONTROLLER_TRAINERSLIDE,
    CONTROLLER_TRAINERSLIDEBACK,
    CONTROLLER_FAINTANIMATION,
    CONTROLLER_PALETTEFADE,
    CONTROLLER_SUCCESSBALLTHROWANIM,
    CONTROLLER_BALLTHROWANIM,
    CONTROLLER_PAUSE,
    CONTROLLER_MOVEANIMATION,
    CONTROLLER_PRINTSTRING,
    CONTROLLER_PRINTSTRINGPLAYERONLY,
    CONTROLLER_CHOOSEACTION,
    CONTROLLER_UNKNOWNYESNOBOX,
    CONTROLLER_CHOOSEMOVE,
    CONTROLLER_OPENBAG,
    CONTROLLER_CHOOSEPOKEMON,
    CONTROLLER_23,
    CONTROLLER_HEALTHBARUPDATE,
    CONTROLLER_EXPUPDATE,
    CONTROLLER_STATUSICONUPDATE,
    CONTROLLER_STATUSANIMATION,
    CONTROLLER_STATUSXOR,
    CONTROLLER_DATATRANSFER,
    CONTROLLER_DMA3TRANSFER,
    CONTROLLER_31,
    CONTROLLER_32,
    CONTROLLER_TWORETURNVALUES,
    CONTROLLER_CHOSENMONRETURNVALUE,
    CONTROLLER_ONERETURNVALUE,
    CONTROLLER_ONERETURNVALUE_DUPLICATE,
    CONTROLLER_37,
    CONTROLLER_38,
    CONTROLLER_39,
    CONTROLLER_40,
    CONTROLLER_HITANIMATION,
    CONTROLLER_42,
    CONTROLLER_EFFECTIVENESSSOUND,
    CONTROLLER_PLAYFANFAREORBGM,
    CONTROLLER_FAINTINGCRY,
    CONTROLLER_INTROSLIDE,
    CONTROLLER_INTROTRAINERBALLTHROW,
    CONTROLLER_DRAWPARTYSTATUSSUMMARY,
    CONTROLLER_HIDEPARTYSTATUSSUMMARY,
    CONTROLLER_ENDBOUNCE,
    CONTROLLER_SPRITEINVISIBILITY,
    CONTROLLER_BATTLEANIMATION,
    CONTROLLER_LINKSTANDBYMSG,
    CONTROLLER_RESETACTIONMOVESELECTION,
    CONTROLLER_55,

    CONTROLLER_TERMINATOR_NOP,
    CONTROLLER_CMDS_COUNT
};

extern struct UnusedControllerStruct gUnknown_02022D0C;


void HandleLinkBattleSetup(void);
void SetUpBattleVarsAndBirchZigzagoon(void);
void sub_8032768(void);
void sub_8033648(void);
void PrepareBufferDataTransferLink(u8 bufferId, u16 size, u8 *data);


void BtlController_EmitGetMonData(u8 bufferId, u8 requestId, u8 monToCheck);
void BtlController_EmitGetRawMonData(u8 bufferId, u8 monId, u8 bytes);
void BtlController_EmitSetMonData(u8 bufferId, u8 requestId, u8 monToCheck, u8 bytes, void *data);
void BtlController_EmitSetRawMonData(u8 bufferId, u8 monId, u8 bytes, void *data);
void BtlController_EmitLoadMonSprite(u8 bufferId);
void BtlController_EmitSwitchInAnim(u8 bufferId, u8 partyId, bool8 dontClearSubstituteBit);
void BtlController_EmitReturnMonToBall(u8 bufferId, u8 arg1);
void BtlController_EmitDrawTrainerPic(u8 bufferId);
void BtlController_EmitTrainerSlide(u8 bufferId);
void BtlController_EmitTrainerSlideBack(u8 bufferId);
void BtlController_EmitFaintAnimation(u8 bufferId);
void BtlController_EmitPaletteFade(u8 bufferId);
void BtlController_EmitSuccessBallThrowAnim(u8 bufferId);
void BtlController_EmitBallThrowAnim(u8 bufferId, u8 caseId);
void BtlController_EmitPause(u8 bufferId, u8 toWait, void *data);
void BtlController_EmitMoveAnimation(u8 bufferId, u16 move, u8 turnOfMove, u16 movePower, s32 dmg, u8 friendship, struct DisableStruct *disableStructPtr, u8 multihit);
void BtlController_EmitPrintString(u8 bufferId, u16 stringId);
void BtlController_EmitPrintSelectionString(u8 bufferId, u16 stringId);
void BtlController_EmitChooseAction(u8 bufferId, u8 arg1, u16 arg2);
void BtlController_EmitUnknownYesNoBox(u8 bufferId);
void BtlController_EmitChooseMove(u8 bufferId, bool8 isDoubleBattle, bool8 NoPpNumber, struct ChooseMoveStruct *movePpData);
void BtlController_EmitChooseItem(u8 bufferId, u8* arg1);
void BtlController_EmitChoosePokemon(u8 bufferId, u8 caseId, u8 arg2, u8 abilityId, u8* arg4);
void BtlController_EmitCmd23(u8 bufferId);
void BtlController_EmitHealthBarUpdate(u8 bufferId, u16 hpValue);
void BtlController_EmitExpUpdate(u8 bufferId, u8 partyId, u16 expPoints);
void BtlController_EmitStatusIconUpdate(u8 bufferId, u32 status1, u32 status2);
void BtlController_EmitStatusAnimation(u8 bufferId, bool8 status2, u32 status);
void BtlController_EmitStatusXor(u8 bufferId, u8 b);
void BtlController_EmitDataTransfer(u8 bufferId, u16 size, void *data);
void BtlController_EmitDMA3Transfer(u8 bufferId, void *dst, u16 size, void *data);
void BtlController_EmitPlayBGM(u8 bufferId, u16 songId, void *unusedDumbDataParameter);
void BtlController_EmitCmd32(u8 bufferId, u16 size, void *c);
void BtlController_EmitTwoReturnValues(u8 bufferId, u8 arg1, u16 arg2);
void BtlController_EmitChosenMonReturnValue(u8 bufferId, u8 b, u8 *c);
void BtlController_EmitOneReturnValue(u8 bufferId, u16 arg1);
void BtlController_EmitOneReturnValue_Duplicate(u8 bufferId, u16 b);
void BtlController_EmitCmd37(u8 bufferId);
void BtlController_EmitCmd38(u8 bufferId, u8 b);
void BtlController_EmitCmd39(u8 bufferId);
void BtlController_EmitCmd40(u8 bufferId);
void BtlController_EmitHitAnimation(u8 bufferId);
void BtlController_EmitCmd42(u8 bufferId);
void BtlController_EmitPlaySE(u8 bufferId, u16 songId);
void BtlController_EmitPlayFanfareOrBGM(u8 bufferId, u16 songId, bool8 playBGM);
void BtlController_EmitFaintingCry(u8 bufferId);
void BtlController_EmitIntroSlide(u8 bufferId, u8 terrainId);
void BtlController_EmitIntroTrainerBallThrow(u8 bufferId);
void BtlController_EmitDrawPartyStatusSummary(u8 bufferId, struct HpAndStatus* hpAndStatus, u8 arg2);
void BtlController_EmitHidePartyStatusSummary(u8 bufferId);
void BtlController_EmitEndBounceEffect(u8 bufferId);
void BtlController_EmitSpriteInvisibility(u8 bufferId, bool8 isInvisible);
void BtlController_EmitBattleAnimation(u8 bufferId, u8 animationId, u16 argument);
void BtlController_EmitLinkStandbyMsg(u8 bufferId, u8 arg1, bool32 arg2);
void BtlController_EmitResetActionMoveSelection(u8 bufferId, u8 caseId);
void BtlController_EmitCmd55(u8 bufferId, u8 battleOutcome);


void SetControllerToPlayer(void);
void nullsub_21(void);
void PlayerHandleGetRawMonData(void);
void sub_80587B0(void);
void sub_805CC00(struct Sprite *sprite);
void SetCB2ToReshowScreenAfterMenu(void);
void SetCB2ToReshowScreenAfterMenu2(void);
void c3_0802FDF4(u8 taskId);
void ActionSelectionCreateCursorAt(u8 cursorPos, u8 unused);
void ActionSelectionDestroyCursorAt(u8 cursorPos);
void InitMoveSelectionsVarsAndStrings(void);


void SetControllerToRecordedPlayer(void);


void SetControllerToOpponent(void);


void SetControllerToPlayerPartner(void);


void SetControllerToSafari(void);


void SetControllerToWally(void);


void SetControllerToRecordedOpponent(void);


void SetControllerToLinkOpponent(void);


void SetControllerToLinkPartner(void);
# 6 "src/party_menu.c" 2
# 1 "include/battle_gfx_sfx_util.h" 1
# 7 "src/party_menu.c" 2
# 1 "include/battle_interface.h" 1



# 1 "include/battle_controllers.h" 1
# 5 "include/battle_interface.h" 2

enum
{
    HP_CURRENT,
    HP_MAX
};

enum
{
    HEALTH_BAR,
    EXP_BAR
};

enum
{
    HP_BAR_EMPTY,
    HP_BAR_RED,
    HP_BAR_YELLOW,
    HP_BAR_GREEN,
    HP_BAR_FULL,
};
# 47 "include/battle_interface.h"
enum
{
    HEALTHBOX_ALL,
    HEALTHBOX_CURRENT_HP,
    HEALTHBOX_MAX_HP,
    HEALTHBOX_LEVEL,
    HEALTHBOX_NICK,
    HEALTHBOX_HEALTH_BAR,
    HEALTHBOX_EXP_BAR,
    HEALTHBOX_UNUSED_7,
    HEALTHBOX_UNUSED_8,
    HEALTHBOX_STATUS_ICON,
    HEALTHBOX_SAFARI_ALL_TEXT,
    HEALTHBOX_SAFARI_BALLS_TEXT
};

u8 CreateBattlerHealthboxSprites(u8 battler);
u8 CreateSafariPlayerHealthboxSprites(void);
void SetBattleBarStruct(u8 battler, u8 healthboxSpriteId, s32 maxVal, s32 currVal, s32 receivedValue);
void SetHealthboxSpriteInvisible(u8 healthboxSpriteId);
void SetHealthboxSpriteVisible(u8 healthboxSpriteId);
void DestoryHealthboxSprite(u8 healthboxSpriteId);
void DummyBattleInterfaceFunc(u8 healthboxSpriteId, bool8 isDoubleBattleBankOnly);
void UpdateOamPriorityInAllHealthboxes(u8 priority);
void InitBattlerHealthboxCoords(u8 battler);
void UpdateHpTextInHealthbox(u8 healthboxSpriteId, s16 value, u8 maxOrCurrent);
void SwapHpBarsWithHpText(void);
u8 CreatePartyStatusSummarySprites(u8 battler, struct HpAndStatus *partyInfo, u8 arg2, bool8 isBattleStart);
void Task_HidePartyStatusSummary(u8 taskId);
void UpdateHealthboxAttribute(u8 healthboxSpriteId, struct Pokemon *mon, u8 elementId);
s32 MoveBattleBar(u8 battler, u8 healthboxSpriteId, u8 whichBar, u8 arg3);
u8 GetScaledHPFraction(s16 hp, s16 maxhp, u8 scale);
u8 GetHPBarLevel(s16 hp, s16 maxhp);
# 8 "src/party_menu.c" 2
# 1 "include/battle_pike.h" 1



void CallBattlePikeFunction(void);
u8 GetBattlePikeWildMonHeaderId(void);
bool32 TryGenerateBattlePikeWildMon(bool8 checkKeenEyeIntimidate);
bool8 InBattlePike(void);
# 9 "src/party_menu.c" 2
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
# 10 "src/party_menu.c" 2
# 1 "include/battle_pyramid_bag.h" 1



# 1 "include/list_menu.h" 1



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
# 5 "include/list_menu.h" 2
# 14 "include/list_menu.h"
enum
{
    SCROLL_ARROW_LEFT,
    SCROLL_ARROW_RIGHT,
    SCROLL_ARROW_UP,
    SCROLL_ARROW_DOWN
};

struct ListMenu;

struct ListMenuItem
{
    const u8 *name;
    s32 id;
};

struct ListMenuTemplate
{
    const struct ListMenuItem *items;
    void (* moveCursorFunc)(s32 itemIndex, bool8 onInit, struct ListMenu *list);
    void (* itemPrintFunc)(u8 windowId, s32 itemId, u8 y);
    u16 totalItems;
    u16 maxShowed;
    u8 windowId;
    u8 header_X;
    u8 item_X;
    u8 cursor_X;
    u8 upText_Y:4;
    u8 cursorPal:4;
    u8 fillValue:4;
    u8 cursorShadowPal:4;
    u8 lettersSpacing:3;
    u8 itemVerticalPadding:3;
    u8 scrollMultiple:2;
    u8 fontId:6;
    u8 cursorKind:2;
};

struct ListMenu
{
    struct ListMenuTemplate template;
    u16 scrollOffset;
    u16 selectedRow;
    u8 unk_1C;
    u8 unk_1D;
    u8 taskId;
    u8 unk_1F;
};

struct ListMenuWindowRect
{
    u8 x;
    u8 y;
    u8 width;
    u8 height;
    u8 palNum;
};

struct ScrollArrowsTemplate
{
    u8 firstArrowType;
    u8 firstX;
    u8 firstY;
    u8 secondArrowType;
    u8 secondX;
    u8 secondY;
    u16 fullyUpThreshold;
    u16 fullyDownThreshold;
    u16 tileTag;
    u16 palTag;
    u8 palNum;
};

struct CursorStruct
{
    u8 left;
    u8 top;
    u16 rowWidth;
    u16 rowHeight;
    u16 tileTag;
    u16 palTag;
    u8 palNum;
};

extern struct ScrollArrowsTemplate gTempScrollArrowTemplate;
extern struct ListMenuTemplate gMultiuseListMenuTemplate;

s32 DoMysteryGiftListMenu(const struct WindowTemplate *windowTemplate, const struct ListMenuTemplate *listMenuTemplate, u8 arg2, u16 tileNum, u16 palNum);
u8 ListMenuInit(struct ListMenuTemplate *listMenuTemplate, u16 scrollOffset, u16 selectedRow);
u8 ListMenuInitInRect(struct ListMenuTemplate *listMenuTemplate, struct ListMenuWindowRect *arg1, u16 scrollOffset, u16 selectedRow);
s32 ListMenu_ProcessInput(u8 listTaskId);
void DestroyListMenuTask(u8 listTaskId, u16 *scrollOffset, u16 *selectedRow);
void RedrawListMenu(u8 listTaskId);
void ChangeListMenuPals(u8 listTaskId, u8 cursorPal, u8 fillValue, u8 cursorShadowPal);
void ChangeListMenuCoords(u8 listTaskId, u8 x, u8 y);
s32 ListMenuTestInput(struct ListMenuTemplate *template, u32 scrollOffset, u32 selectedRow, u16 keys, u16 *newScrollOffset, u16 *newSelectedRow);
void ListMenuGetCurrentItemArrayId(u8 listTaskId, u16 *arrayId);
void ListMenuGetScrollAndRow(u8 listTaskId, u16 *scrollOffset, u16 *selectedRow);
u16 ListMenuGetYCoordForPrintingArrowCursor(u8 listTaskId);
void ListMenuOverrideSetColors(u8 cursorPal, u8 fillValue, u8 cursorShadowPal);
void ListMenuDefaultCursorMoveFunc(s32 arg0, u8 arg1, struct ListMenu *list);
s32 ListMenuGetUnkIndicatorsStructFields(u8 taskId, u8 field);
void ListMenuSetUnkIndicatorsStructField(u8 taskId, u8 field, s32 value);
u8 AddScrollIndicatorArrowPair(const struct ScrollArrowsTemplate *arrowInfo, u16 *arg1);
u8 AddScrollIndicatorArrowPairParameterized(u32 arrowType, s32 commonPos, s32 firstPos, s32 secondPos, s32 fullyDownThreshold, s32 tileTag, s32 palTag, u16 *currItemPtr);
void RemoveScrollIndicatorArrowPair(u8 taskId);
void Task_ScrollIndicatorArrowPairOnMainMenu(u8 taskId);
# 5 "include/battle_pyramid_bag.h" 2

struct PyramidBagResources
{
    void (*callback2)(void);
    u8 tilemapBuffer[0x800];
    u8 itemsSpriteIds[10 + 1];
    u8 windowIds[5];
    u8 unk814;
    u8 unk815;
    u8 scrollIndicatorsTaskId;
    const u8 *menuActionIds;
    u8 filler81C[0x820 - 0x81C];
    u8 menuActionsCount;
    u8 listMenuCount;
    u8 listMenuMaxShown;
    struct ListMenuItem bagListItems[10 + 1];
    u8 itemStrings[10 + 1][14 + 10];
    s16 state;
    u8 filler986[0x98C - 0x986];
};

struct PyramidBagCursorData
{
    void (*callback)(void);
    u8 unk4;
    u16 cursorPosition;
    u16 scrollPosition;
};

extern struct PyramidBagResources *gPyramidBagResources;
extern struct PyramidBagCursorData gPyramidBagCursorData;

void InitBattlePyramidBagCursorPosition(void);
void CB2_PyramidBagMenuFromStartMenu(void);
void sub_81C4F84(void);
void sub_81C5924(void);
void sub_81C59BC(void);
void sub_81C4EFC(void);
void sub_81C4F98(u8 a0, void (*callback)(void));
void sub_81C6714(u8 taskId);
void sub_81C6A94(void);
void sub_81C4F24(void);
void sub_81C5B14(u8 taskId);
void DisplayItemMessageInBattlePyramid(u8 taskId, const u8 *str, void (*callback)(u8 taskId));
# 11 "src/party_menu.c" 2
# 1 "include/bg.h" 1



struct BGCntrlBitfield
{
    volatile u16 priority:2;
    volatile u16 charBaseBlock:2;
    volatile u16 field_0_2:4;
    volatile u16 field_1_0:5;
    volatile u16 areaOverflowMode:1;
    volatile u16 screenSize:2;
};

enum
{
 BG_ATTR_CHARBASEINDEX = 1,
 BG_ATTR_MAPBASEINDEX,
 BG_ATTR_SCREENSIZE,
 BG_ATTR_PALETTEMODE,
 BG_ATTR_MOSAIC,
 BG_ATTR_WRAPAROUND,
 BG_ATTR_PRIORITY,
 BG_ATTR_METRIC,
 BG_ATTR_TYPE,
 BG_ATTR_BASETILE,
};

struct BgTemplate
{
    u16 bg:2;
    u16 charBaseIndex:2;
    u16 mapBaseIndex:5;
    u16 screenSize:2;
    u16 paletteMode:1;
    u16 priority:2;
    u16 baseTile:10;
};

void ResetBgs(void);
u8 GetBgMode(void);
void ResetBgControlStructs(void);
void Unused_ResetBgControlStruct(u8 bg);
u8 LoadBgVram(u8 bg, const void *src, u16 size, u16 destOffset, u8 mode);
void SetTextModeAndHideBgs(void);
bool8 IsInvalidBg(u8 bg);
int DummiedOutFireRedLeafGreenTileAllocFunc(int a1, int a2, int a3, int a4);
void ResetBgsAndClearDma3BusyFlags(u32 leftoverFireRedLeafGreenVariable);
void InitBgsFromTemplates(u8 bgMode, const struct BgTemplate *templates, u8 numTemplates);
void InitBgFromTemplate(const struct BgTemplate *template);
void SetBgMode(u8 bgMode);
u16 LoadBgTiles(u8 bg, const void* src, u16 size, u16 destOffset);
u16 LoadBgTilemap(u8 bg, const void *src, u16 size, u16 destOffset);
u16 Unused_LoadBgPalette(u8 bg, const void *src, u16 size, u16 destOffset);
bool8 IsDma3ManagerBusyWithBgCopy(void);
void ShowBg(u8 bg);
void HideBg(u8 bg);
void SetBgAttribute(u8 bg, u8 attributeId, u8 value);
u16 GetBgAttribute(u8 bg, u8 attributeId);
s32 ChangeBgX(u8 bg, s32 value, u8 op);
s32 GetBgX(u8 bg);
s32 ChangeBgY(u8 bg, s32 value, u8 op);
s32 ChangeBgY_ScreenOff(u8 bg, u32 value, u8 op);
s32 GetBgY(u8 bg);
void SetBgAffine(u8 bg, s32 srcCenterX, s32 srcCenterY, s16 dispCenterX, s16 dispCenterY, s16 scaleX, s16 scaleY, u16 rotationAngle);
u8 Unused_AdjustBgMosaic(u8 a1, u8 a2);
void SetBgTilemapBuffer(u8 bg, void *tilemap);
void UnsetBgTilemapBuffer(u8 bg);
void* GetBgTilemapBuffer(u8 bg);
void CopyToBgTilemapBuffer(u8 bg, const void *src, u16 mode, u16 destOffset);
void CopyBgTilemapBufferToVram(u8 bg);
void CopyToBgTilemapBufferRect(u8 bg, const void* src, u8 destX, u8 destY, u8 width, u8 height);
void CopyToBgTilemapBufferRect_ChangePalette(u8 bg, const void *src, u8 destX, u8 destY, u8 rectWidth, u8 rectHeight, u8 palette);
void CopyRectToBgTilemapBufferRect(u8 bg, const void *src, u8 srcX, u8 srcY, u8 srcWidth, u8 unused, u8 srcHeight, u8 destX, u8 destY, u8 rectWidth, u8 rectHeight, s16 palette1, s16 tileOffset);
void FillBgTilemapBufferRect_Palette0(u8 bg, u16 tileNum, u8 x, u8 y, u8 width, u8 height);
void FillBgTilemapBufferRect(u8 bg, u16 tileNum, u8 x, u8 y, u8 width, u8 height, u8 palette);
void WriteSequenceToBgTilemapBuffer(u8 bg, u16 firstTileNum, u8 x, u8 y, u8 width, u8 height, u8 paletteSlot, s16 tileNumDelta);
u16 GetBgMetricTextMode(u8 bg, u8 whichMetric);
u32 GetBgMetricAffineMode(u8 bg, u8 whichMetric);
u32 GetTileMapIndexFromCoords(s32 x, s32 y, s32 screenSize, u32 screenWidth, u32 screenHeight);
void CopyTileMapEntry(const u16 *src, u16 *dest, s32 palette1, s32 tileOffset, s32 palette2);
u32 GetBgType(u8 bg);
bool32 IsInvalidBg32(u8 bg);
bool32 IsTileMapOutsideWram(u8 bg);
# 12 "src/party_menu.c" 2
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
# 13 "src/party_menu.c" 2
# 1 "include/data.h" 1



# 1 "include/constants/moves.h" 1
# 5 "include/data.h" 2
# 1 "include/constants/species.h" 1
# 6 "include/data.h" 2



struct MonCoords
{


    u8 size;
    u8 y_offset;
};

struct TrainerMonNoItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
};

struct TrainerMonItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
};

struct TrainerMonNoItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 moves[4];
};

struct TrainerMonItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
    u16 moves[4];
};

union TrainerMonPtr
{
    const struct TrainerMonNoItemDefaultMoves *NoItemDefaultMoves;
    const struct TrainerMonNoItemCustomMoves *NoItemCustomMoves;
    const struct TrainerMonItemDefaultMoves *ItemDefaultMoves;
    const struct TrainerMonItemCustomMoves *ItemCustomMoves;
};

struct Trainer
{
             u8 partyFlags;
             u8 trainerClass;
             u8 encounterMusic_gender;
             u8 trainerPic;
             u8 trainerName[12];
             u16 items[4];
             bool8 doubleBattle;
             u32 aiFlags;
             u8 partySize;
             union TrainerMonPtr party;
};



extern const u16 gUnknown_082FF1D8[];
extern const u32 gUnknown_082FF1F8[];

extern const struct SpriteFrameImage gUnknown_082FF3A8[];
extern const struct SpriteFrameImage gUnknown_082FF3C8[];
extern const struct SpriteFrameImage gUnknown_082FF3E8[];
extern const struct SpriteFrameImage gUnknown_082FF408[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Brendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_May[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Red[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Leaf[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RubySapphireBrendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RubySapphireMay[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Wally[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Steven[];

extern const union AffineAnimCmd *const gUnknown_082FF618[];
extern const union AffineAnimCmd *const gUnknown_082FF694[];
extern const union AffineAnimCmd *const gUnknown_082FF6C0[];

extern const union AnimCmd *const gUnknown_082FF70C[];
extern const struct MonCoords gMonFrontPicCoords[];
extern const struct CompressedSpriteSheet gMonStillFrontPicTable[];
extern const struct MonCoords gMonBackPicCoords[];
extern const struct CompressedSpriteSheet gMonBackPicTable[];
extern const struct CompressedSpritePalette gMonPaletteTable[];
extern const struct CompressedSpritePalette gMonShinyPaletteTable[];
extern const union AnimCmd *const *const gTrainerFrontAnimsPtrTable[];
extern const struct MonCoords gTrainerFrontPicCoords[];
extern const struct CompressedSpriteSheet gTrainerFrontPicTable[];
extern const struct CompressedSpritePalette gTrainerFrontPicPaletteTable[];
extern const union AnimCmd *const *const gTrainerBackAnimsPtrTable[];
extern const struct MonCoords gTrainerBackPicCoords[];
extern const struct CompressedSpriteSheet gTrainerBackPicTable[];
extern const struct CompressedSpritePalette gTrainerBackPicPaletteTable[];

extern const u8 gEnemyMonElevation[412];

extern const union AnimCmd *const *const gMonFrontAnimsPtrTable[];
extern const struct CompressedSpriteSheet gMonFrontPicTable[];

extern const struct Trainer gTrainers[];
extern const u8 gTrainerClassNames[][13];
extern const u8 gSpeciesNames[][10 + 1];
extern const u8 gMoveNames[355][12 + 1];
# 14 "src/party_menu.c" 2
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
# 15 "src/party_menu.c" 2
# 1 "include/easy_chat.h" 1



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
# 5 "include/easy_chat.h" 2
# 1 "include/constants/easy_chat.h" 1
# 6 "include/easy_chat.h" 2

struct EasyChatScreenTemplate
{
    u8 type;
    u8 numColumns;
    u8 numRows;
    u8 frameId:7;
    u8 fourFooterOptions:1;
    const u8 *titleText;
    const u8 *instructionsText1;
    const u8 *instructionsText2;
    const u8 *confirmText1;
    const u8 *confirmText2;
};

struct EasyChatScreen
{
             u8 type;
             u8 templateId;
             u8 numColumns;
             u8 numRows;
             u8 state;
             s8 mainCursorColumn;
             s8 mainCursorRow;
             u8 unk_07;
             u8 stateBackup;
             u8 unk_09;
             s8 unk_0a;
             s8 unk_0b;
             u8 unk_0c;
             u8 unk_0d;
             u8 unk_0e;
             u8 unk_0f;
             s8 unk_10;
             s8 unk_11;
             u8 displayedPersonType;
             u8 unk_13;
             u8 unk_14[0x20];
             const u8 *titleText;
             u16 *words;
             u16 ecWordBuffer[9];
};

struct Unk203A11C
{
    u16 unk0;
    u16 windowId;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    s8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB[0xC1];
    u8 unkCC[0x202];
    u16 unk2CE;
    int unk2D0;
    int unk2D4;
    struct Sprite *unk2D8;
    struct Sprite *unk2DC;
    struct Sprite *unk2E0;
    struct Sprite *unk2E4;
    struct Sprite *unk2E8;
    struct Sprite *unk2EC;
    struct Sprite *unk2F0;
    struct Sprite *unk2F4;
    struct Sprite *unk2F8;
    struct Sprite *unk2FC;
    u16 unk300[0x800 / 2];
    u16 unkB00[0x800 / 2];
};

struct EasyChatPhraseFrameDimensions
{
    u8 left:5;
    u8 top:3;
    u8 width;
    u8 height;
    u8 footerId;
};

struct EasyChatWordInfo
{
    const u8 *text;
    int alphabeticalOrder;
    int enabled;
};

typedef union
{
    const u16 *valueList;
    const struct EasyChatWordInfo *words;
} EasyChatGroupWordData;

struct EasyChatGroup
{
    EasyChatGroupWordData wordData;
    u16 numWords;
    u16 numEnabledWords;
};

struct Unk203A120
{
    u16 unk0;
    u16 unk2[0x16];
    u16 unk2E[27];
    u16 unk64[27][270];
    u8 filler3958[0x2C];
    u16 unk3984[0x10E];
    u16 unk3BA0;
};

struct EasyChatWordsByLetter
{
    const u16 *words;
    int numWords;
};

void InitEasyChatPhrases(void);
void ShowEasyChatScreen(void);
u8 * CopyEasyChatWord(u8 *dest, u16 word);
bool32 sub_811F8D8(int word);
void InitializeEasyChatWordArray(u16 *words, u16 length);
u8 *ConvertEasyChatWordsToString(u8 *dest, const u16 *src, u16 columns, u16 rows);
bool8 ECWord_CheckIfOutsideOfValidRange(u16 word);
u16 sub_811EE38(u16 group);
u16 sub_811F01C(void);
u16 EasyChat_GetNumWordsInGroup(u8);
u16 sub_811EE90(u16);
void DoEasyChatScreen(u8 type, u16 *words, MainCallback callback, u8 displayedPersonType);
void sub_811F8BC(void);
void sub_811EFC0(u8 additionalPhraseId);
# 16 "src/party_menu.c" 2
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
# 17 "src/party_menu.c" 2
# 1 "include/evolution_scene.h" 1



void BeginEvolutionScene(struct Pokemon* mon, u16 speciesToEvolve, bool8 canStopEvo, u8 partyID);
void EvolutionScene(struct Pokemon* mon, u16 speciesToEvolve, bool8 canStopEvo, u8 partyID);
void TradeEvolutionScene(struct Pokemon* mon, u16 speciesToEvolve, u8 preEvoSpriteID, u8 partyID);

extern void (*gCB2_AfterEvolution)(void);
# 18 "src/party_menu.c" 2
# 1 "include/field_control_avatar.h" 1



struct FieldInput
{
    bool8 pressedAButton:1;
    bool8 checkStandardWildEncounter:1;
    bool8 pressedStartButton:1;
    bool8 pressedSelectButton:1;
    bool8 heldDirection:1;
    bool8 heldDirection2:1;
    bool8 tookStep:1;
    bool8 pressedBButton:1;
    bool8 input_field_1_0:1;
    bool8 input_field_1_1:1;
    bool8 input_field_1_2:1;
    bool8 input_field_1_3:1;
    bool8 input_field_1_4:1;
    bool8 input_field_1_5:1;
    bool8 input_field_1_6:1;
    bool8 input_field_1_7:1;
    u8 dpadDirection;
};

void FieldClearPlayerInput(struct FieldInput *pStruct);
void FieldGetPlayerInput(struct FieldInput *pStruct, u16 keys, u16 heldKeys);
int ProcessPlayerFieldInput(struct FieldInput *pStruct);
u8 *sub_80682A8(struct MapPosition *, u8, u8);
void overworld_poison_timer_set(void);
void RestartWildEncounterImmunitySteps(void);
u8 *sub_8068E24(struct MapPosition *);
const u8 *GetEventObjectScriptPointerPlayerFacing(void);
bool8 sub_8068870(u16 a);
bool8 sub_8068894(void);
bool8 sub_8068A64(struct MapPosition *, u16);
u8 sub_8068F18(void);
bool8 dive_warp(struct MapPosition *position, u16 b);
int SetCableClubWarp(void);
u8 TrySetDiveWarp(void);
const u8 *GetInteractedLinkPlayerScript(struct MapPosition *position, u8 metatileBehavior, u8 direction);
u8 *GetCoordEventScriptAtMapPosition(struct MapPosition *position);
void ClearPoisonStepCounter(void);
# 19 "src/party_menu.c" 2
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
# 20 "src/party_menu.c" 2
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
# 21 "src/party_menu.c" 2
# 1 "include/field_screen_effect.h" 1



void pal_fill_for_maplights(void);
void pal_fill_black(void);
void WarpFadeScreen(void);
void sub_80AF128(void);
void FieldCallback_ReturnToEventScript2(void);
void sub_80AF188(void);
void sub_80AF214(void);
void sub_80AF2B4(u8 taskId);
void sub_80AF314(void);
void mapldr_default(void);
void sub_80AF3B0(void);
void sub_80AF3C8(void);
void sub_80AF3E8(void);
void sub_80AF40C(void);
void sub_80AF688(void);
bool8 sub_80AF6A4(void);
void sub_80AF6D4(void);
void sub_80AF6F0(void);
void DoWarp(void);
void DoDiveWarp(void);
void sub_80AF79C(void);
void DoDoorWarp(void);
void DoFallWarp(void);
void sub_80AF80C(u8 metatileBehavior);
void sub_80AF828(void);
void sub_80AF838(void);
void sub_80AF848(void);
void sub_80AF87C(void);
void sub_80AF8B8(void);
void sub_80AF948(void);
void sub_80AF9F8(void);
void sub_80AFC60(void);
void sub_80B009C(u8 flashLevel);
void WriteBattlePyramidViewScanlineEffectBuffer(void);
void sub_80B0244(void);
void sub_80B0268(void);
void sub_80B0534(void);
void sub_80B058C(void);
void sub_80B05B4(void);
void WriteFlashScanlineEffectBuffer(u8 flashLevel);
bool8 walkrun_is_standing_still(void);
# 22 "src/party_menu.c" 2
# 1 "include/field_specials.h" 1



extern bool8 gBikeCyclingChallenge;
extern u8 gBikeCollisions;

u8 GetLeadMonIndex(void);
u8 sub_813B260(void);
u16 get_unknown_box_id(void);
bool8 InMultiBattleRoom(void);
void sub_813BF10(void);
void IncrementBirthIslandRockStepCount(void);
bool8 UnusualWeatherHasExpired(void);
bool8 ShouldDoBrailleRegicePuzzle(void);
bool32 ShouldDoWallyCall(void);
bool32 ShouldDoWinonaCall(void);
bool32 ShouldDoScottCall(void);
bool32 ShouldDoRoxanneCall(void);
bool32 ShouldDoRivalRayquazaCall(void);
bool32 CountSSTidalStep(u16 delta);
u8 GetSSTidalLocation(s8 *mapGroup, s8 *mapNum, s16 *x, s16 *y);
void sub_813A128(void);
void sub_813A878(u8 a0);
u8 sub_813BADC(u8 a0);
bool8 sub_813B9C0(void);
void SetShoalItemFlag(u16 v0);
void UpdateFrontierManiac(u16 a0);
void UpdateFrontierGambler(u16 a0);
void ResetCyclingRoadChallengeData(void);
bool8 warp0_in_pokecenter(void);
void ResetFanClub(void);
bool8 sub_813B21C(void);
void set_unknown_box_id(u8 id);
# 23 "src/party_menu.c" 2
# 1 "include/field_weather.h" 1
# 15 "include/field_weather.h"
enum
{
    WEATHER_PAL_STATE_CHANGING_WEATHER,
    WEATHER_PAL_STATE_SCREEN_FADING_IN,
    WEATHER_PAL_STATE_SCREEN_FADING_OUT,
    WEATHER_PAL_STATE_IDLE,
};


enum
{
    FADE_FROM_BLACK,
    FADE_TO_BLACK,
    FADE_FROM_WHITE,
    FADE_TO_WHITE,
};

struct Weather
{
    union
    {
        struct
        {
            struct Sprite *rainSprites[24];
            struct Sprite *snowflakeSprites[101];
            struct Sprite *cloudSprites[3];
        } s1;
        struct
        {
            u8 filler0[0xA0];
            struct Sprite *fog1Sprites[20];
            struct Sprite *ashSprites[20];
            struct Sprite *fog2Sprites[20];
            struct Sprite *sandstormSprites1[20];
            struct Sprite *sandstormSprites2[5];
        } s2;
    } sprites;
    u8 gammaShifts[19][32];
    u8 altGammaShifts[19][32];
    s8 gammaIndex;
    s8 gammaTargetIndex;
    u8 gammaStepDelay;
    u8 gammaStepFrameCounter;
    u16 fadeDestColor;
              u8 palProcessingState;
              u8 fadeScreenCounter;
              bool8 readyForInit;
              u8 taskId;
              u8 unknown_6CA;
    u8 unknown_6CB;
    u16 initStep;
    u16 finishStep;
    u8 currWeather;
    u8 nextWeather;
    u8 weatherGfxLoaded;
    bool8 weatherChangeComplete;
    u8 weatherPicSpritePalIndex;
    u8 altGammaSpritePalIndex;
    u16 rainSpriteVisibleCounter;
    u8 curRainSpriteIndex;
    u8 targetRainSpriteCount;
    u8 rainSpriteCount;
    u8 rainSpriteVisibleDelay;
    u8 isHeavyRain;
    u8 rainStrength;
              u8 cloudSpritesCreated;
    u8 filler_6DF[1];
    u16 snowflakeVisibleCounter;
    u16 unknown_6E2;
    u8 snowflakeSpriteCount;
    u8 targetSnowflakeSpriteCount;
    u16 unknown_6E6;
    u16 thunderCounter;
    u8 unknown_6EA;
    u8 unknown_6EB;
    u8 unknown_6EC;
    u8 thunderTriggered;
    u16 fog1ScrollPosX;
    u16 fog1ScrollCounter;
    u16 fog1ScrollOffset;
    u8 lightenedFogSpritePals[6];
    u8 lightenedFogSpritePalsCount;
    u8 fog1SpritesCreated;
    u16 ashBaseSpritesX;
    u16 unknown_6FE;
    u8 ashSpritesCreated;
    u8 filler_701[3];
    u32 sandstormXOffset;
    u32 sandstormYOffset;
    u8 filler_70C[2];
    u16 sandstormBaseSpritesX;
    u16 sandstormPosY;
    u16 sandstormWaveIndex;
    u16 sandstormWaveCounter;
    u8 sandstormSpritesCreated;
    u8 sandstormSwirlSpritesCreated;
    u16 fog2BaseSpritesX;
    u16 fog2PosY;
    u16 fog2ScrollXCounter;
    u16 fog2ScrollYCounter;
    u16 fog2XOffset;
    u16 fog2YOffset;
    u8 fog2SpritesCreated;
    u8 filler_725[1];
    u16 bubblesDelayCounter;
    u16 bubblesDelayIndex;
    u16 bubblesCoordsIndex;
    u16 bubblesSpriteCount;
    u8 bubblesSpritesCreated;
    u8 filler_72F;
    u16 currBlendEVA;
    u16 currBlendEVB;
    u16 targetBlendEVA;
    u16 targetBlendEVB;
    u8 blendUpdateCounter;
    u8 blendFrameCounter;
    u8 blendDelay;
    u8 filler_73B[0x3C-0x3B];
    s16 unknown_73C;
    s16 unknown_73E;
    s16 unknown_740;
    s16 unknown_742;
    u8 filler_744[0xD-4];
    s8 loadDroughtPalsIndex;
    u8 loadDroughtPalsOffset;
};


extern struct Weather gWeather;
extern struct Weather *const gWeatherPtr;
extern const u16 gUnknown_083970E8[];


extern const u8 gWeatherFog1Tiles[];

void StartWeather(void);
void SetNextWeather(u8 weather);
void SetCurrentAndNextWeather(u8 weather);
void SetCurrentAndNextWeatherNoDelay(u8 weather);
void sub_80ABC48(s8 gammaIndex);
void sub_80ABC7C(u8 gammaIndex, u8 gammaTargetIndex, u8 gammaStepDelay);
void FadeScreen(u8 mode, s8 delay);
bool8 IsWeatherNotFadingIn(void);
void UpdateSpritePaletteWithWeather(u8 spritePaletteIndex);
void ApplyWeatherGammaShiftToPal(u8 paletteIndex);
u8 sub_80ABF20(void);
void LoadCustomWeatherSpritePalette(const u16 *palette);
void ResetDroughtWeatherPaletteLoading(void);
bool8 LoadDroughtWeatherPalettes(void);
void sub_80ABFE0(s8 gammaIndex);
void sub_80ABFF0(void);
void sub_80AC01C(void);
void Weather_SetBlendCoeffs(u8 eva, u8 evb);
void Weather_SetTargetBlendCoeffs(u8 eva, u8 evb, int delay);
bool8 Weather_UpdateBlend(void);
void sub_80AC274(u8 a);
u8 GetCurrentWeather(void);
void SetRainStrengthFromSoundEffect(u16 soundEffect);
void PlayRainStoppingSoundEffect(void);
u8 IsWeatherChangeComplete(void);
void SetWeatherScreenFadeOut(void);
void sub_80AC3E4(void);
void PreservePaletteInWeather(u8 preservedPalIndex);
void ResetPreservedPalettesInWeather(void);


void Clouds_InitVars(void);
void Clouds_Main(void);
void Clouds_InitAll(void);
bool8 Clouds_Finish(void);
void Sunny_InitVars(void);
void Sunny_Main(void);
void Sunny_InitAll(void);
bool8 Sunny_Finish(void);
void LightRain_InitVars(void);
void LightRain_Main(void);
void LightRain_InitAll(void);
bool8 LightRain_Finish(void);
void Snow_InitVars(void);
void Snow_Main(void);
void Snow_InitAll(void);
bool8 Snow_Finish(void);
void MedRain_InitVars(void);
void Rain_Main(void);
void MedRain_InitAll(void);
bool8 Rain_Finish(void);
void Fog1_InitVars(void);
void Fog1_Main(void);
void Fog1_InitAll(void);
bool8 Fog1_Finish(void);
void Ash_InitVars(void);
void Ash_Main(void);
void Ash_InitAll(void);
bool8 Ash_Finish(void);
void Sandstorm_InitVars(void);
void Sandstorm_Main(void);
void Sandstorm_InitAll(void);
bool8 Sandstorm_Finish(void);
void Fog2_InitVars(void);
void Fog2_Main(void);
void Fog2_InitAll(void);
bool8 Fog2_Finish(void);
void Fog1_InitVars(void);
void Fog1_Main(void);
void Fog1_InitAll(void);
bool8 Fog1_Finish(void);
void Shade_InitVars(void);
void Shade_Main(void);
void Shade_InitAll(void);
bool8 Shade_Finish(void);
void Drought_InitVars(void);
void Drought_Main(void);
void Drought_InitAll(void);
bool8 Drought_Finish(void);
void HeavyRain_InitVars(void);
void Rain_Main(void);
void HeavyRain_InitAll(void);
bool8 Rain_Finish(void);
void Bubbles_InitVars(void);
void Bubbles_Main(void);
void Bubbles_InitAll(void);
bool8 Bubbles_Finish(void);

u8 GetSav1Weather(void);
void SetSav1Weather(u32 weather);
void SetSav1WeatherFromCurrMapHeader(void);
void SetWeather(u32 weather);
void DoCurrentWeather(void);
void UpdateWeatherPerDay(u16 increment);
void ResumePausedWeather(void);
# 24 "src/party_menu.c" 2
# 1 "include/fieldmap.h" 1
# 14 "include/fieldmap.h"
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
# 25 "src/party_menu.c" 2
# 1 "include/fldeff.h" 1




bool8 SetUpFieldMove_Cut(void);
bool8 FldEff_UseCutOnGrass(void);
bool8 FldEff_UseCutOnTree(void);
bool8 FldEff_CutGrass(void);
void FixLongGrassMetatilesWindowTop(s16 x, s16 y);
void FixLongGrassMetatilesWindowBottom(s16 x, s16 y);

extern const struct SpritePalette gFieldEffectObjectPaletteInfo6;
extern struct MapPosition gPlayerFacingPosition;


bool8 sub_81BE66C(void);
void sub_81BE6AC(void);
void sub_81BE6B8(void);
void sub_81BE72C(void);
void sub_81BE79C(void);
void sub_81BE7F4(void);
void sub_81BE994(void);


void sub_80E1558(u8 var);
void sub_80E1570(void);
bool8 sub_80E1584(void);


bool8 SetUpFieldMove_SoftBoiled(void);
void sub_81615A8(u8 taskId);
void sub_8161560(u8 taskId);


bool8 SetUpFieldMove_Flash(void);
void c2_change_map(void);
bool8 GetMapPairFadeToType(u8 a1, u8 a2);
bool8 GetMapPairFadeFromType(u8 a1, u8 a2);


bool8 SetUpFieldMove_Strength(void);
bool8 sub_8145E2C(void);


bool8 SetUpFieldMove_SweetScent(void);
bool8 FldEff_SweetScent(void);


bool8 SetUpFieldMove_Teleport(void);
bool8 FldEff_UseTeleport(void);


bool8 SetUpFieldMove_Dig(void);
bool8 FldEff_UseDig(void);


bool8 CheckObjectGraphicsInFrontOfPlayer(u8 graphicsId);
u8 oei_task_add(void);
bool8 SetUpFieldMove_RockSmash(void);
bool8 FldEff_UseRockSmash(void);
# 26 "src/party_menu.c" 2
# 1 "include/fldeff_misc.h" 1



void sub_80F9BCC(u16 a0, u16 a1, u8 a2);
void sub_80F9BF4(u16 a0, u16 a1, u8 a2);
bool8 sub_80F9C1C(void);
bool8 sub_80F9C30(void);
bool8 SetUpFieldMove_SecretPower(void);
bool8 FldEff_UseSecretPowerCave(void);
bool8 FldEff_SecretPowerCave(void);
bool8 FldEff_UseSecretPowerTree(void);
bool8 FldEff_SecretPowerTree(void);
bool8 FldEff_UseSecretPowerShrub(void);
bool8 FldEff_SecretPowerShrub(void);
bool8 FldEff_SecretBasePCTurnOn(void);
void DoSecretBasePCTurnOffEffect(void);
void PopSecretBaseBalloon(s16 metatileId, s16 x, s16 y);
bool8 FldEff_NopA6FC(void);
bool8 FldEff_NopA700(void);
void ShatterSecretBaseBreakableDoor(s16 x, s16 y);
void PlaySecretBaseMusicNoteMatSound(s16 metatileId);
void DoSecretBaseGlitterMatSparkle(void);
bool8 FldEff_SandPillar(void);
void GetShieldToyTVDecorationInfo(void);
bool8 sub_80FADE4(u16 arg0, u8 arg1);
void FldEffPoison_Start(void);
bool32 FldEffPoison_IsActive(void);
void DoWateringBerryTreeAnim(void);
u8 CreateRecordMixingSprite(void);
void DestroyRecordMixingSprite(void);

extern const struct SpritePalette gFieldEffectObjectPaletteInfo7;
extern const struct SpritePalette gFieldEffectObjectPaletteInfo8;
extern const struct SpritePalette gFieldEffectObjectPaletteInfo9;
extern const u16 gTilesetPalettes_SecretBase[][16];
# 27 "src/party_menu.c" 2
# 1 "include/frontier_util.h" 1







void CallFrontierUtilFunc(void);
u8 sub_81A3610(void);
void CopyFrontierTrainerText(u8 whichText, u16 trainerId);
void sub_81A3908(void);
u32 GetCurrentFacilityWinStreak(void);
void sub_81A3ACC(void);
u8 GetPlayerSymbolCountForFacility(u8 facility);
void ShowRankingHallRecordsWindow(void);
void ScrollRankingHallRecordsWindow(void);
void ClearRankingHallRecords(void);
void sub_81A4C30(void);
u8 GetFrontierBrainTrainerPicIndex(void);
u8 GetFrontierBrainTrainerClass(void);
void CopyFrontierBrainTrainerName(u8 *dst);
bool8 IsFrontierBrainFemale(void);
void SetFrontierBrainEventObjGfx_2(void);
void CreateFrontierBrainPokemon(void);
u16 GetFrontierBrainMonSpecies(u8 monId);
void SetFrontierBrainEventObjGfx(u8 facility);
u16 GetFrontierBrainMonMove(u8 monId, u8 moveSlotId);
u8 GetFrontierBrainMonNature(u8 monId);
u8 GetFrontierBrainMonEvs(u8 monId, u8 evStatId);
s32 GetFronterBrainSymbol(void);

extern const u16 gFrontierBannedSpecies[];
# 28 "src/party_menu.c" 2
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
# 29 "src/party_menu.c" 2
# 1 "include/graphics.h" 1




extern const u32 gMessageBox_Gfx[];
extern const u16 gMessageBox_Pal[];


extern const u32 gInterfaceGfx_PokeBall[];
extern const u32 gInterfacePal_PokeBall[];
extern const u32 gInterfaceGfx_GreatBall[];
extern const u32 gInterfacePal_GreatBall[];
extern const u32 gInterfaceGfx_SafariBall[];
extern const u32 gInterfacePal_SafariBall[];
extern const u32 gInterfaceGfx_UltraBall[];
extern const u32 gInterfacePal_UltraBall[];
extern const u32 gInterfaceGfx_MasterBall[];
extern const u32 gInterfacePal_MasterBall[];
extern const u32 gInterfaceGfx_NetBall[];
extern const u32 gInterfacePal_NetBall[];
extern const u32 gInterfaceGfx_DiveBall[];
extern const u32 gInterfacePal_DiveBall[];
extern const u32 gInterfaceGfx_NestBall[];
extern const u32 gInterfacePal_NestBall[];
extern const u32 gInterfaceGfx_RepeatBall[];
extern const u32 gInterfacePal_RepeatBall[];
extern const u32 gInterfaceGfx_TimerBall[];
extern const u32 gInterfacePal_TimerBall[];
extern const u32 gInterfaceGfx_LuxuryBall[];
extern const u32 gInterfacePal_LuxuryBall[];
extern const u32 gInterfaceGfx_PremierBall[];
extern const u32 gInterfacePal_PremierBall[];
extern const u32 gOpenPokeballGfx[];


extern const u32 gMonFrontPic_Bulbasaur[];
extern const u32 gMonPalette_Bulbasaur[];
extern const u32 gMonBackPic_Bulbasaur[];
extern const u32 gMonShinyPalette_Bulbasaur[];
extern const u32 gMonStillFrontPic_Bulbasaur[];
extern const u8 gMonIcon_Bulbasaur[];
extern const u8 gMonFootprint_Bulbasaur[];
extern const u32 gMonFrontPic_Ivysaur[];
extern const u32 gMonPalette_Ivysaur[];
extern const u32 gMonBackPic_Ivysaur[];
extern const u32 gMonShinyPalette_Ivysaur[];
extern const u32 gMonStillFrontPic_Ivysaur[];
extern const u8 gMonIcon_Ivysaur[];
extern const u8 gMonFootprint_Ivysaur[];
extern const u32 gMonFrontPic_Venusaur[];
extern const u32 gMonPalette_Venusaur[];
extern const u32 gMonBackPic_Venusaur[];
extern const u32 gMonShinyPalette_Venusaur[];
extern const u32 gMonStillFrontPic_Venusaur[];
extern const u8 gMonIcon_Venusaur[];
extern const u8 gMonFootprint_Venusaur[];
extern const u32 gMonFrontPic_Charmander[];
extern const u32 gMonPalette_Charmander[];
extern const u32 gMonBackPic_Charmander[];
extern const u32 gMonShinyPalette_Charmander[];
extern const u32 gMonStillFrontPic_Charmander[];
extern const u8 gMonIcon_Charmander[];
extern const u8 gMonFootprint_Charmander[];
extern const u32 gMonFrontPic_Charmeleon[];
extern const u32 gMonPalette_Charmeleon[];
extern const u32 gMonBackPic_Charmeleon[];
extern const u32 gMonShinyPalette_Charmeleon[];
extern const u32 gMonStillFrontPic_Charmeleon[];
extern const u8 gMonIcon_Charmeleon[];
extern const u8 gMonFootprint_Charmeleon[];
extern const u32 gMonFrontPic_Charizard[];
extern const u32 gMonPalette_Charizard[];
extern const u32 gMonBackPic_Charizard[];
extern const u32 gMonShinyPalette_Charizard[];
extern const u32 gMonStillFrontPic_Charizard[];
extern const u8 gMonIcon_Charizard[];
extern const u8 gMonFootprint_Charizard[];
extern const u32 gMonFrontPic_Squirtle[];
extern const u32 gMonPalette_Squirtle[];
extern const u32 gMonBackPic_Squirtle[];
extern const u32 gMonShinyPalette_Squirtle[];
extern const u32 gMonStillFrontPic_Squirtle[];
extern const u8 gMonIcon_Squirtle[];
extern const u8 gMonFootprint_Squirtle[];
extern const u32 gMonFrontPic_Wartortle[];
extern const u32 gMonPalette_Wartortle[];
extern const u32 gMonBackPic_Wartortle[];
extern const u32 gMonShinyPalette_Wartortle[];
extern const u32 gMonStillFrontPic_Wartortle[];
extern const u8 gMonIcon_Wartortle[];
extern const u8 gMonFootprint_Wartortle[];
extern const u32 gMonFrontPic_Blastoise[];
extern const u32 gMonPalette_Blastoise[];
extern const u32 gMonBackPic_Blastoise[];
extern const u32 gMonShinyPalette_Blastoise[];
extern const u32 gMonStillFrontPic_Blastoise[];
extern const u8 gMonIcon_Blastoise[];
extern const u8 gMonFootprint_Blastoise[];
extern const u32 gMonFrontPic_Caterpie[];
extern const u32 gMonPalette_Caterpie[];
extern const u32 gMonBackPic_Caterpie[];
extern const u32 gMonShinyPalette_Caterpie[];
extern const u32 gMonStillFrontPic_Caterpie[];
extern const u8 gMonIcon_Caterpie[];
extern const u8 gMonFootprint_Caterpie[];
extern const u32 gMonFrontPic_Metapod[];
extern const u32 gMonPalette_Metapod[];
extern const u32 gMonBackPic_Metapod[];
extern const u32 gMonShinyPalette_Metapod[];
extern const u32 gMonStillFrontPic_Metapod[];
extern const u8 gMonIcon_Metapod[];
extern const u8 gMonFootprint_Metapod[];
extern const u32 gMonFrontPic_Butterfree[];
extern const u32 gMonPalette_Butterfree[];
extern const u32 gMonBackPic_Butterfree[];
extern const u32 gMonShinyPalette_Butterfree[];
extern const u32 gMonStillFrontPic_Butterfree[];
extern const u8 gMonIcon_Butterfree[];
extern const u8 gMonFootprint_Butterfree[];
extern const u32 gMonFrontPic_Weedle[];
extern const u32 gMonPalette_Weedle[];
extern const u32 gMonBackPic_Weedle[];
extern const u32 gMonShinyPalette_Weedle[];
extern const u32 gMonStillFrontPic_Weedle[];
extern const u8 gMonIcon_Weedle[];
extern const u8 gMonFootprint_Weedle[];
extern const u32 gMonFrontPic_Kakuna[];
extern const u32 gMonPalette_Kakuna[];
extern const u32 gMonBackPic_Kakuna[];
extern const u32 gMonShinyPalette_Kakuna[];
extern const u32 gMonStillFrontPic_Kakuna[];
extern const u8 gMonIcon_Kakuna[];
extern const u8 gMonFootprint_Kakuna[];
extern const u32 gMonFrontPic_Beedrill[];
extern const u32 gMonPalette_Beedrill[];
extern const u32 gMonBackPic_Beedrill[];
extern const u32 gMonShinyPalette_Beedrill[];
extern const u32 gMonStillFrontPic_Beedrill[];
extern const u8 gMonIcon_Beedrill[];
extern const u8 gMonFootprint_Beedrill[];
extern const u32 gMonFrontPic_Pidgey[];
extern const u32 gMonPalette_Pidgey[];
extern const u32 gMonBackPic_Pidgey[];
extern const u32 gMonShinyPalette_Pidgey[];
extern const u32 gMonStillFrontPic_Pidgey[];
extern const u8 gMonIcon_Pidgey[];
extern const u8 gMonFootprint_Pidgey[];
extern const u32 gMonFrontPic_Pidgeotto[];
extern const u32 gMonPalette_Pidgeotto[];
extern const u32 gMonBackPic_Pidgeotto[];
extern const u32 gMonShinyPalette_Pidgeotto[];
extern const u32 gMonStillFrontPic_Pidgeotto[];
extern const u8 gMonIcon_Pidgeotto[];
extern const u8 gMonFootprint_Pidgeotto[];
extern const u32 gMonFrontPic_Pidgeot[];
extern const u32 gMonPalette_Pidgeot[];
extern const u32 gMonBackPic_Pidgeot[];
extern const u32 gMonShinyPalette_Pidgeot[];
extern const u32 gMonStillFrontPic_Pidgeot[];
extern const u8 gMonIcon_Pidgeot[];
extern const u8 gMonFootprint_Pidgeot[];
extern const u32 gMonFrontPic_Rattata[];
extern const u32 gMonPalette_Rattata[];
extern const u32 gMonBackPic_Rattata[];
extern const u32 gMonShinyPalette_Rattata[];
extern const u32 gMonStillFrontPic_Rattata[];
extern const u8 gMonIcon_Rattata[];
extern const u8 gMonFootprint_Rattata[];
extern const u32 gMonFrontPic_Raticate[];
extern const u32 gMonPalette_Raticate[];
extern const u32 gMonBackPic_Raticate[];
extern const u32 gMonShinyPalette_Raticate[];
extern const u32 gMonStillFrontPic_Raticate[];
extern const u8 gMonIcon_Raticate[];
extern const u8 gMonFootprint_Raticate[];
extern const u32 gMonFrontPic_Spearow[];
extern const u32 gMonPalette_Spearow[];
extern const u32 gMonBackPic_Spearow[];
extern const u32 gMonShinyPalette_Spearow[];
extern const u32 gMonStillFrontPic_Spearow[];
extern const u8 gMonIcon_Spearow[];
extern const u8 gMonFootprint_Spearow[];
extern const u32 gMonFrontPic_Fearow[];
extern const u32 gMonPalette_Fearow[];
extern const u32 gMonBackPic_Fearow[];
extern const u32 gMonShinyPalette_Fearow[];
extern const u32 gMonStillFrontPic_Fearow[];
extern const u8 gMonIcon_Fearow[];
extern const u8 gMonFootprint_Fearow[];
extern const u32 gMonFrontPic_Ekans[];
extern const u32 gMonPalette_Ekans[];
extern const u32 gMonBackPic_Ekans[];
extern const u32 gMonShinyPalette_Ekans[];
extern const u32 gMonStillFrontPic_Ekans[];
extern const u8 gMonIcon_Ekans[];
extern const u8 gMonFootprint_Ekans[];
extern const u32 gMonFrontPic_Arbok[];
extern const u32 gMonPalette_Arbok[];
extern const u32 gMonBackPic_Arbok[];
extern const u32 gMonShinyPalette_Arbok[];
extern const u8 gMonIcon_Arbok[];
extern const u8 gMonFootprint_Arbok[];
extern const u32 gMonFrontPic_Pikachu[];
extern const u32 gMonPalette_Pikachu[];
extern const u32 gMonBackPic_Pikachu[];
extern const u32 gMonShinyPalette_Pikachu[];
extern const u32 gMonStillFrontPic_Arbok[];
extern const u8 gMonIcon_Pikachu[];
extern const u8 gMonFootprint_Pikachu[];
extern const u32 gMonStillFrontPic_Pikachu[];
extern const u32 gMonFrontPic_Raichu[];
extern const u32 gMonPalette_Raichu[];
extern const u32 gMonBackPic_Raichu[];
extern const u32 gMonShinyPalette_Raichu[];
extern const u32 gMonStillFrontPic_Raichu[];
extern const u8 gMonIcon_Raichu[];
extern const u8 gMonFootprint_Raichu[];
extern const u32 gMonFrontPic_Sandshrew[];
extern const u32 gMonPalette_Sandshrew[];
extern const u32 gMonBackPic_Sandshrew[];
extern const u32 gMonShinyPalette_Sandshrew[];
extern const u32 gMonStillFrontPic_Sandshrew[];
extern const u8 gMonIcon_Sandshrew[];
extern const u8 gMonFootprint_Sandshrew[];
extern const u32 gMonFrontPic_Sandslash[];
extern const u32 gMonPalette_Sandslash[];
extern const u32 gMonBackPic_Sandslash[];
extern const u32 gMonShinyPalette_Sandslash[];
extern const u32 gMonStillFrontPic_Sandslash[];
extern const u8 gMonIcon_Sandslash[];
extern const u8 gMonFootprint_Sandslash[];
extern const u32 gMonFrontPic_NidoranF[];
extern const u32 gMonPalette_NidoranF[];
extern const u32 gMonBackPic_NidoranF[];
extern const u32 gMonShinyPalette_NidoranF[];
extern const u32 gMonStillFrontPic_NidoranF[];
extern const u8 gMonIcon_NidoranF[];
extern const u8 gMonFootprint_NidoranF[];
extern const u32 gMonFrontPic_Nidorina[];
extern const u32 gMonPalette_Nidorina[];
extern const u32 gMonBackPic_Nidorina[];
extern const u32 gMonShinyPalette_Nidorina[];
extern const u32 gMonStillFrontPic_Nidorina[];
extern const u8 gMonIcon_Nidorina[];
extern const u8 gMonFootprint_Nidorina[];
extern const u32 gMonFrontPic_Nidoqueen[];
extern const u32 gMonPalette_Nidoqueen[];
extern const u32 gMonBackPic_Nidoqueen[];
extern const u32 gMonShinyPalette_Nidoqueen[];
extern const u32 gMonStillFrontPic_Nidoqueen[];
extern const u8 gMonIcon_Nidoqueen[];
extern const u8 gMonFootprint_Nidoqueen[];
extern const u32 gMonFrontPic_NidoranM[];
extern const u32 gMonPalette_NidoranM[];
extern const u32 gMonBackPic_NidoranM[];
extern const u32 gMonShinyPalette_NidoranM[];
extern const u32 gMonStillFrontPic_NidoranM[];
extern const u8 gMonIcon_NidoranM[];
extern const u8 gMonFootprint_NidoranM[];
extern const u32 gMonFrontPic_Nidorino[];
extern const u32 gMonPalette_Nidorino[];
extern const u32 gMonBackPic_Nidorino[];
extern const u32 gMonShinyPalette_Nidorino[];
extern const u32 gMonStillFrontPic_Nidorino[];
extern const u8 gMonIcon_Nidorino[];
extern const u8 gMonFootprint_Nidorino[];
extern const u32 gMonFrontPic_Nidoking[];
extern const u32 gMonPalette_Nidoking[];
extern const u32 gMonBackPic_Nidoking[];
extern const u32 gMonShinyPalette_Nidoking[];
extern const u32 gMonStillFrontPic_Nidoking[];
extern const u8 gMonIcon_Nidoking[];
extern const u8 gMonFootprint_Nidoking[];
extern const u32 gMonFrontPic_Clefairy[];
extern const u32 gMonPalette_Clefairy[];
extern const u32 gMonBackPic_Clefairy[];
extern const u32 gMonShinyPalette_Clefairy[];
extern const u32 gMonStillFrontPic_Clefairy[];
extern const u8 gMonIcon_Clefairy[];
extern const u8 gMonFootprint_Clefairy[];
extern const u32 gMonFrontPic_Clefable[];
extern const u32 gMonPalette_Clefable[];
extern const u32 gMonBackPic_Clefable[];
extern const u32 gMonShinyPalette_Clefable[];
extern const u32 gMonStillFrontPic_Clefable[];
extern const u8 gMonIcon_Clefable[];
extern const u8 gMonFootprint_Clefable[];
extern const u32 gMonFrontPic_Vulpix[];
extern const u32 gMonPalette_Vulpix[];
extern const u32 gMonBackPic_Vulpix[];
extern const u32 gMonShinyPalette_Vulpix[];
extern const u32 gMonStillFrontPic_Vulpix[];
extern const u8 gMonIcon_Vulpix[];
extern const u8 gMonFootprint_Vulpix[];
extern const u32 gMonFrontPic_Ninetales[];
extern const u32 gMonPalette_Ninetales[];
extern const u32 gMonBackPic_Ninetales[];
extern const u32 gMonShinyPalette_Ninetales[];
extern const u32 gMonStillFrontPic_Ninetales[];
extern const u8 gMonIcon_Ninetales[];
extern const u8 gMonFootprint_Ninetales[];
extern const u32 gMonFrontPic_Jigglypuff[];
extern const u32 gMonPalette_Jigglypuff[];
extern const u32 gMonBackPic_Jigglypuff[];
extern const u32 gMonShinyPalette_Jigglypuff[];
extern const u32 gMonStillFrontPic_Jigglypuff[];
extern const u8 gMonIcon_Jigglypuff[];
extern const u8 gMonFootprint_Jigglypuff[];
extern const u32 gMonFrontPic_Wigglytuff[];
extern const u32 gMonPalette_Wigglytuff[];
extern const u32 gMonBackPic_Wigglytuff[];
extern const u32 gMonShinyPalette_Wigglytuff[];
extern const u32 gMonStillFrontPic_Wigglytuff[];
extern const u8 gMonIcon_Wigglytuff[];
extern const u8 gMonFootprint_Wigglytuff[];
extern const u32 gMonFrontPic_Zubat[];
extern const u32 gMonPalette_Zubat[];
extern const u32 gMonBackPic_Zubat[];
extern const u32 gMonShinyPalette_Zubat[];
extern const u32 gMonStillFrontPic_Zubat[];
extern const u8 gMonIcon_Zubat[];
extern const u8 gMonFootprint_Zubat[];
extern const u32 gMonFrontPic_Golbat[];
extern const u32 gMonPalette_Golbat[];
extern const u32 gMonBackPic_Golbat[];
extern const u32 gMonShinyPalette_Golbat[];
extern const u32 gMonStillFrontPic_Golbat[];
extern const u8 gMonIcon_Golbat[];
extern const u8 gMonFootprint_Golbat[];
extern const u32 gMonFrontPic_Oddish[];
extern const u32 gMonPalette_Oddish[];
extern const u32 gMonBackPic_Oddish[];
extern const u32 gMonShinyPalette_Oddish[];
extern const u32 gMonStillFrontPic_Oddish[];
extern const u8 gMonIcon_Oddish[];
extern const u8 gMonFootprint_Oddish[];
extern const u32 gMonFrontPic_Gloom[];
extern const u32 gMonPalette_Gloom[];
extern const u32 gMonBackPic_Gloom[];
extern const u32 gMonShinyPalette_Gloom[];
extern const u32 gMonStillFrontPic_Gloom[];
extern const u8 gMonIcon_Gloom[];
extern const u8 gMonFootprint_Gloom[];
extern const u32 gMonFrontPic_Vileplume[];
extern const u32 gMonPalette_Vileplume[];
extern const u32 gMonBackPic_Vileplume[];
extern const u32 gMonShinyPalette_Vileplume[];
extern const u32 gMonStillFrontPic_Vileplume[];
extern const u8 gMonIcon_Vileplume[];
extern const u8 gMonFootprint_Vileplume[];
extern const u32 gMonFrontPic_Paras[];
extern const u32 gMonPalette_Paras[];
extern const u32 gMonBackPic_Paras[];
extern const u32 gMonShinyPalette_Paras[];
extern const u32 gMonStillFrontPic_Paras[];
extern const u8 gMonIcon_Paras[];
extern const u8 gMonFootprint_Paras[];
extern const u32 gMonFrontPic_Parasect[];
extern const u32 gMonPalette_Parasect[];
extern const u32 gMonBackPic_Parasect[];
extern const u32 gMonShinyPalette_Parasect[];
extern const u32 gMonStillFrontPic_Parasect[];
extern const u8 gMonIcon_Parasect[];
extern const u8 gMonFootprint_Parasect[];
extern const u32 gMonFrontPic_Venonat[];
extern const u32 gMonPalette_Venonat[];
extern const u32 gMonBackPic_Venonat[];
extern const u32 gMonShinyPalette_Venonat[];
extern const u32 gMonStillFrontPic_Venonat[];
extern const u8 gMonIcon_Venonat[];
extern const u8 gMonFootprint_Venonat[];
extern const u32 gMonFrontPic_Venomoth[];
extern const u32 gMonPalette_Venomoth[];
extern const u32 gMonBackPic_Venomoth[];
extern const u32 gMonShinyPalette_Venomoth[];
extern const u32 gMonStillFrontPic_Venomoth[];
extern const u8 gMonIcon_Venomoth[];
extern const u8 gMonFootprint_Venomoth[];
extern const u32 gMonFrontPic_Diglett[];
extern const u32 gMonPalette_Diglett[];
extern const u32 gMonBackPic_Diglett[];
extern const u32 gMonShinyPalette_Diglett[];
extern const u32 gMonStillFrontPic_Diglett[];
extern const u8 gMonIcon_Diglett[];
extern const u8 gMonFootprint_Diglett[];
extern const u32 gMonFrontPic_Dugtrio[];
extern const u32 gMonPalette_Dugtrio[];
extern const u32 gMonBackPic_Dugtrio[];
extern const u32 gMonShinyPalette_Dugtrio[];
extern const u32 gMonStillFrontPic_Dugtrio[];
extern const u8 gMonIcon_Dugtrio[];
extern const u8 gMonFootprint_Dugtrio[];
extern const u32 gMonFrontPic_Meowth[];
extern const u32 gMonPalette_Meowth[];
extern const u32 gMonBackPic_Meowth[];
extern const u32 gMonShinyPalette_Meowth[];
extern const u32 gMonStillFrontPic_Meowth[];
extern const u8 gMonIcon_Meowth[];
extern const u8 gMonFootprint_Meowth[];
extern const u32 gMonFrontPic_Persian[];
extern const u32 gMonPalette_Persian[];
extern const u32 gMonBackPic_Persian[];
extern const u32 gMonShinyPalette_Persian[];
extern const u32 gMonStillFrontPic_Persian[];
extern const u8 gMonIcon_Persian[];
extern const u8 gMonFootprint_Persian[];
extern const u32 gMonFrontPic_Psyduck[];
extern const u32 gMonPalette_Psyduck[];
extern const u32 gMonBackPic_Psyduck[];
extern const u32 gMonShinyPalette_Psyduck[];
extern const u32 gMonStillFrontPic_Psyduck[];
extern const u8 gMonIcon_Psyduck[];
extern const u8 gMonFootprint_Psyduck[];
extern const u32 gMonFrontPic_Golduck[];
extern const u32 gMonPalette_Golduck[];
extern const u32 gMonBackPic_Golduck[];
extern const u32 gMonShinyPalette_Golduck[];
extern const u32 gMonStillFrontPic_Golduck[];
extern const u8 gMonIcon_Golduck[];
extern const u8 gMonFootprint_Golduck[];
extern const u32 gMonFrontPic_Mankey[];
extern const u32 gMonPalette_Mankey[];
extern const u32 gMonBackPic_Mankey[];
extern const u32 gMonShinyPalette_Mankey[];
extern const u32 gMonStillFrontPic_Mankey[];
extern const u8 gMonIcon_Mankey[];
extern const u8 gMonFootprint_Mankey[];
extern const u32 gMonFrontPic_Primeape[];
extern const u32 gMonPalette_Primeape[];
extern const u32 gMonBackPic_Primeape[];
extern const u32 gMonShinyPalette_Primeape[];
extern const u32 gMonStillFrontPic_Primeape[];
extern const u8 gMonIcon_Primeape[];
extern const u8 gMonFootprint_Primeape[];
extern const u32 gMonFrontPic_Growlithe[];
extern const u32 gMonPalette_Growlithe[];
extern const u32 gMonBackPic_Growlithe[];
extern const u32 gMonShinyPalette_Growlithe[];
extern const u32 gMonStillFrontPic_Growlithe[];
extern const u8 gMonIcon_Growlithe[];
extern const u8 gMonFootprint_Growlithe[];
extern const u32 gMonFrontPic_Arcanine[];
extern const u32 gMonPalette_Arcanine[];
extern const u32 gMonBackPic_Arcanine[];
extern const u32 gMonShinyPalette_Arcanine[];
extern const u32 gMonStillFrontPic_Arcanine[];
extern const u8 gMonIcon_Arcanine[];
extern const u8 gMonFootprint_Arcanine[];
extern const u32 gMonFrontPic_Poliwag[];
extern const u32 gMonPalette_Poliwag[];
extern const u32 gMonBackPic_Poliwag[];
extern const u32 gMonShinyPalette_Poliwag[];
extern const u32 gMonStillFrontPic_Poliwag[];
extern const u8 gMonIcon_Poliwag[];
extern const u8 gMonFootprint_Poliwag[];
extern const u32 gMonFrontPic_Poliwhirl[];
extern const u32 gMonPalette_Poliwhirl[];
extern const u32 gMonBackPic_Poliwhirl[];
extern const u32 gMonShinyPalette_Poliwhirl[];
extern const u32 gMonStillFrontPic_Poliwhirl[];
extern const u8 gMonIcon_Poliwhirl[];
extern const u8 gMonFootprint_Poliwhirl[];
extern const u32 gMonFrontPic_Poliwrath[];
extern const u32 gMonPalette_Poliwrath[];
extern const u32 gMonBackPic_Poliwrath[];
extern const u32 gMonShinyPalette_Poliwrath[];
extern const u32 gMonStillFrontPic_Poliwrath[];
extern const u8 gMonIcon_Poliwrath[];
extern const u8 gMonFootprint_Poliwrath[];
extern const u32 gMonFrontPic_Abra[];
extern const u32 gMonPalette_Abra[];
extern const u32 gMonBackPic_Abra[];
extern const u32 gMonShinyPalette_Abra[];
extern const u32 gMonStillFrontPic_Abra[];
extern const u8 gMonIcon_Abra[];
extern const u8 gMonFootprint_Abra[];
extern const u32 gMonFrontPic_Kadabra[];
extern const u32 gMonPalette_Kadabra[];
extern const u32 gMonBackPic_Kadabra[];
extern const u32 gMonShinyPalette_Kadabra[];
extern const u32 gMonStillFrontPic_Kadabra[];
extern const u8 gMonIcon_Kadabra[];
extern const u8 gMonFootprint_Kadabra[];
extern const u32 gMonFrontPic_Alakazam[];
extern const u32 gMonPalette_Alakazam[];
extern const u32 gMonBackPic_Alakazam[];
extern const u32 gMonShinyPalette_Alakazam[];
extern const u32 gMonStillFrontPic_Alakazam[];
extern const u8 gMonIcon_Alakazam[];
extern const u8 gMonFootprint_Alakazam[];
extern const u32 gMonFrontPic_Machop[];
extern const u32 gMonPalette_Machop[];
extern const u32 gMonBackPic_Machop[];
extern const u32 gMonShinyPalette_Machop[];
extern const u32 gMonStillFrontPic_Machop[];
extern const u8 gMonIcon_Machop[];
extern const u8 gMonFootprint_Machop[];
extern const u32 gMonFrontPic_Machoke[];
extern const u32 gMonPalette_Machoke[];
extern const u32 gMonBackPic_Machoke[];
extern const u32 gMonShinyPalette_Machoke[];
extern const u32 gMonStillFrontPic_Machoke[];
extern const u8 gMonIcon_Machoke[];
extern const u8 gMonFootprint_Machoke[];
extern const u32 gMonFrontPic_Machamp[];
extern const u32 gMonPalette_Machamp[];
extern const u32 gMonBackPic_Machamp[];
extern const u32 gMonShinyPalette_Machamp[];
extern const u32 gMonStillFrontPic_Machamp[];
extern const u8 gMonIcon_Machamp[];
extern const u8 gMonFootprint_Machamp[];
extern const u32 gMonFrontPic_Bellsprout[];
extern const u32 gMonPalette_Bellsprout[];
extern const u32 gMonBackPic_Bellsprout[];
extern const u32 gMonShinyPalette_Bellsprout[];
extern const u32 gMonStillFrontPic_Bellsprout[];
extern const u8 gMonIcon_Bellsprout[];
extern const u8 gMonFootprint_Bellsprout[];
extern const u32 gMonFrontPic_Weepinbell[];
extern const u32 gMonPalette_Weepinbell[];
extern const u32 gMonBackPic_Weepinbell[];
extern const u32 gMonShinyPalette_Weepinbell[];
extern const u32 gMonStillFrontPic_Weepinbell[];
extern const u8 gMonIcon_Weepinbell[];
extern const u8 gMonFootprint_Weepinbell[];
extern const u32 gMonFrontPic_Victreebel[];
extern const u32 gMonPalette_Victreebel[];
extern const u32 gMonBackPic_Victreebel[];
extern const u32 gMonShinyPalette_Victreebel[];
extern const u32 gMonStillFrontPic_Victreebel[];
extern const u8 gMonIcon_Victreebel[];
extern const u8 gMonFootprint_Victreebel[];
extern const u32 gMonFrontPic_Tentacool[];
extern const u32 gMonPalette_Tentacool[];
extern const u32 gMonBackPic_Tentacool[];
extern const u32 gMonShinyPalette_Tentacool[];
extern const u32 gMonStillFrontPic_Tentacool[];
extern const u8 gMonIcon_Tentacool[];
extern const u8 gMonFootprint_Tentacool[];
extern const u32 gMonFrontPic_Tentacruel[];
extern const u32 gMonPalette_Tentacruel[];
extern const u32 gMonBackPic_Tentacruel[];
extern const u32 gMonShinyPalette_Tentacruel[];
extern const u32 gMonStillFrontPic_Tentacruel[];
extern const u8 gMonIcon_Tentacruel[];
extern const u8 gMonFootprint_Tentacruel[];
extern const u32 gMonFrontPic_Geodude[];
extern const u32 gMonPalette_Geodude[];
extern const u32 gMonBackPic_Geodude[];
extern const u32 gMonShinyPalette_Geodude[];
extern const u32 gMonStillFrontPic_Geodude[];
extern const u8 gMonIcon_Geodude[];
extern const u8 gMonFootprint_Geodude[];
extern const u32 gMonFrontPic_Graveler[];
extern const u32 gMonPalette_Graveler[];
extern const u32 gMonBackPic_Graveler[];
extern const u32 gMonShinyPalette_Graveler[];
extern const u32 gMonStillFrontPic_Graveler[];
extern const u8 gMonIcon_Graveler[];
extern const u8 gMonFootprint_Graveler[];
extern const u32 gMonFrontPic_Golem[];
extern const u32 gMonPalette_Golem[];
extern const u32 gMonBackPic_Golem[];
extern const u32 gMonShinyPalette_Golem[];
extern const u32 gMonStillFrontPic_Golem[];
extern const u8 gMonIcon_Golem[];
extern const u8 gMonFootprint_Golem[];
extern const u32 gMonFrontPic_Ponyta[];
extern const u32 gMonPalette_Ponyta[];
extern const u32 gMonBackPic_Ponyta[];
extern const u32 gMonShinyPalette_Ponyta[];
extern const u32 gMonStillFrontPic_Ponyta[];
extern const u8 gMonIcon_Ponyta[];
extern const u8 gMonFootprint_Ponyta[];
extern const u32 gMonFrontPic_Rapidash[];
extern const u32 gMonPalette_Rapidash[];
extern const u32 gMonBackPic_Rapidash[];
extern const u32 gMonShinyPalette_Rapidash[];
extern const u32 gMonStillFrontPic_Rapidash[];
extern const u8 gMonIcon_Rapidash[];
extern const u8 gMonFootprint_Rapidash[];
extern const u32 gMonFrontPic_Slowpoke[];
extern const u32 gMonPalette_Slowpoke[];
extern const u32 gMonBackPic_Slowpoke[];
extern const u32 gMonShinyPalette_Slowpoke[];
extern const u32 gMonStillFrontPic_Slowpoke[];
extern const u8 gMonIcon_Slowpoke[];
extern const u8 gMonFootprint_Slowpoke[];
extern const u32 gMonFrontPic_Slowbro[];
extern const u32 gMonPalette_Slowbro[];
extern const u32 gMonBackPic_Slowbro[];
extern const u32 gMonShinyPalette_Slowbro[];
extern const u32 gMonStillFrontPic_Slowbro[];
extern const u8 gMonIcon_Slowbro[];
extern const u8 gMonFootprint_Slowbro[];
extern const u32 gMonFrontPic_Magnemite[];
extern const u32 gMonPalette_Magnemite[];
extern const u32 gMonBackPic_Magnemite[];
extern const u32 gMonShinyPalette_Magnemite[];
extern const u32 gMonStillFrontPic_Magnemite[];
extern const u8 gMonIcon_Magnemite[];
extern const u8 gMonFootprint_Magnemite[];
extern const u32 gMonFrontPic_Magneton[];
extern const u32 gMonPalette_Magneton[];
extern const u32 gMonBackPic_Magneton[];
extern const u32 gMonShinyPalette_Magneton[];
extern const u32 gMonStillFrontPic_Magneton[];
extern const u8 gMonIcon_Magneton[];
extern const u8 gMonFootprint_Magneton[];
extern const u32 gMonFrontPic_Farfetchd[];
extern const u32 gMonPalette_Farfetchd[];
extern const u32 gMonBackPic_Farfetchd[];
extern const u32 gMonShinyPalette_Farfetchd[];
extern const u32 gMonStillFrontPic_Farfetchd[];
extern const u8 gMonIcon_Farfetchd[];
extern const u8 gMonFootprint_Farfetchd[];
extern const u32 gMonFrontPic_Doduo[];
extern const u32 gMonPalette_Doduo[];
extern const u32 gMonBackPic_Doduo[];
extern const u32 gMonShinyPalette_Doduo[];
extern const u32 gMonStillFrontPic_Doduo[];
extern const u8 gMonIcon_Doduo[];
extern const u8 gMonFootprint_Doduo[];
extern const u32 gMonFrontPic_Dodrio[];
extern const u32 gMonPalette_Dodrio[];
extern const u32 gMonBackPic_Dodrio[];
extern const u32 gMonShinyPalette_Dodrio[];
extern const u32 gMonStillFrontPic_Dodrio[];
extern const u8 gMonIcon_Dodrio[];
extern const u8 gMonFootprint_Dodrio[];
extern const u32 gMonFrontPic_Seel[];
extern const u32 gMonPalette_Seel[];
extern const u32 gMonBackPic_Seel[];
extern const u32 gMonShinyPalette_Seel[];
extern const u32 gMonStillFrontPic_Seel[];
extern const u8 gMonIcon_Seel[];
extern const u8 gMonFootprint_Seel[];
extern const u32 gMonFrontPic_Dewgong[];
extern const u32 gMonPalette_Dewgong[];
extern const u32 gMonBackPic_Dewgong[];
extern const u32 gMonShinyPalette_Dewgong[];
extern const u32 gMonStillFrontPic_Dewgong[];
extern const u8 gMonIcon_Dewgong[];
extern const u8 gMonFootprint_Dewgong[];
extern const u32 gMonFrontPic_Grimer[];
extern const u32 gMonPalette_Grimer[];
extern const u32 gMonBackPic_Grimer[];
extern const u32 gMonShinyPalette_Grimer[];
extern const u32 gMonStillFrontPic_Grimer[];
extern const u8 gMonIcon_Grimer[];
extern const u8 gMonFootprint_Grimer[];
extern const u32 gMonStillFrontPic_Muk[];
extern const u32 gMonFrontPic_Muk[];
extern const u32 gMonPalette_Muk[];
extern const u32 gMonBackPic_Muk[];
extern const u32 gMonShinyPalette_Muk[];
extern const u32 gMonStillFrontPic_Shellder[];
extern const u8 gMonIcon_Muk[];
extern const u8 gMonFootprint_Muk[];
extern const u32 gMonFrontPic_Shellder[];
extern const u32 gMonPalette_Shellder[];
extern const u32 gMonBackPic_Shellder[];
extern const u32 gMonShinyPalette_Shellder[];
extern const u32 gMonStillFrontPic_Cloyster[];
extern const u8 gMonIcon_Shellder[];
extern const u8 gMonFootprint_Shellder[];
extern const u32 gMonFrontPic_Cloyster[];
extern const u32 gMonPalette_Cloyster[];
extern const u32 gMonBackPic_Cloyster[];
extern const u32 gMonShinyPalette_Cloyster[];
extern const u32 gMonStillFrontPic_Gastly[];
extern const u8 gMonIcon_Cloyster[];
extern const u8 gMonFootprint_Cloyster[];
extern const u32 gMonFrontPic_Gastly[];
extern const u32 gMonPalette_Gastly[];
extern const u32 gMonBackPic_Gastly[];
extern const u32 gMonShinyPalette_Gastly[];
extern const u32 gMonStillFrontPic_Haunter[];
extern const u8 gMonIcon_Gastly[];
extern const u8 gMonFootprint_Gastly[];
extern const u32 gMonFrontPic_Haunter[];
extern const u32 gMonPalette_Haunter[];
extern const u32 gMonBackPic_Haunter[];
extern const u32 gMonShinyPalette_Haunter[];
extern const u32 gMonStillFrontPic_Haunter[];
extern const u8 gMonIcon_Haunter[];
extern const u8 gMonFootprint_Haunter[];
extern const u32 gMonFrontPic_Gengar[];
extern const u32 gMonPalette_Gengar[];
extern const u32 gMonBackPic_Gengar[];
extern const u32 gMonShinyPalette_Gengar[];
extern const u32 gMonStillFrontPic_Gengar[];
extern const u8 gMonIcon_Gengar[];
extern const u8 gMonFootprint_Gengar[];
extern const u32 gMonFrontPic_Onix[];
extern const u32 gMonPalette_Onix[];
extern const u32 gMonBackPic_Onix[];
extern const u32 gMonShinyPalette_Onix[];
extern const u32 gMonStillFrontPic_Onix[];
extern const u8 gMonIcon_Onix[];
extern const u8 gMonFootprint_Onix[];
extern const u32 gMonFrontPic_Drowzee[];
extern const u32 gMonPalette_Drowzee[];
extern const u32 gMonBackPic_Drowzee[];
extern const u32 gMonShinyPalette_Drowzee[];
extern const u32 gMonStillFrontPic_Drowzee[];
extern const u8 gMonIcon_Drowzee[];
extern const u8 gMonFootprint_Drowzee[];
extern const u32 gMonFrontPic_Hypno[];
extern const u32 gMonPalette_Hypno[];
extern const u32 gMonBackPic_Hypno[];
extern const u32 gMonShinyPalette_Hypno[];
extern const u32 gMonStillFrontPic_Hypno[];
extern const u8 gMonIcon_Hypno[];
extern const u8 gMonFootprint_Hypno[];
extern const u32 gMonFrontPic_Krabby[];
extern const u32 gMonPalette_Krabby[];
extern const u32 gMonBackPic_Krabby[];
extern const u32 gMonShinyPalette_Krabby[];
extern const u32 gMonStillFrontPic_Krabby[];
extern const u8 gMonIcon_Krabby[];
extern const u8 gMonFootprint_Krabby[];
extern const u32 gMonFrontPic_Kingler[];
extern const u32 gMonPalette_Kingler[];
extern const u32 gMonBackPic_Kingler[];
extern const u32 gMonShinyPalette_Kingler[];
extern const u32 gMonStillFrontPic_Kingler[];
extern const u8 gMonIcon_Kingler[];
extern const u8 gMonFootprint_Kingler[];
extern const u32 gMonFrontPic_Voltorb[];
extern const u32 gMonPalette_Voltorb[];
extern const u32 gMonBackPic_Voltorb[];
extern const u32 gMonShinyPalette_Voltorb[];
extern const u32 gMonStillFrontPic_Voltorb[];
extern const u8 gMonIcon_Voltorb[];
extern const u8 gMonFootprint_Voltorb[];
extern const u32 gMonFrontPic_Electrode[];
extern const u32 gMonPalette_Electrode[];
extern const u32 gMonBackPic_Electrode[];
extern const u32 gMonShinyPalette_Electrode[];
extern const u32 gMonStillFrontPic_Electrode[];
extern const u8 gMonIcon_Electrode[];
extern const u8 gMonFootprint_Electrode[];
extern const u32 gMonFrontPic_Exeggcute[];
extern const u32 gMonPalette_Exeggcute[];
extern const u32 gMonBackPic_Exeggcute[];
extern const u32 gMonShinyPalette_Exeggcute[];
extern const u32 gMonStillFrontPic_Exeggcute[];
extern const u8 gMonIcon_Exeggcute[];
extern const u8 gMonFootprint_Exeggcute[];
extern const u32 gMonFrontPic_Exeggutor[];
extern const u32 gMonPalette_Exeggutor[];
extern const u32 gMonBackPic_Exeggutor[];
extern const u32 gMonShinyPalette_Exeggutor[];
extern const u32 gMonStillFrontPic_Exeggutor[];
extern const u8 gMonIcon_Exeggutor[];
extern const u8 gMonFootprint_Exeggutor[];
extern const u32 gMonFrontPic_Cubone[];
extern const u32 gMonPalette_Cubone[];
extern const u32 gMonBackPic_Cubone[];
extern const u32 gMonShinyPalette_Cubone[];
extern const u32 gMonStillFrontPic_Cubone[];
extern const u8 gMonIcon_Cubone[];
extern const u8 gMonFootprint_Cubone[];
extern const u32 gMonFrontPic_Marowak[];
extern const u32 gMonPalette_Marowak[];
extern const u32 gMonBackPic_Marowak[];
extern const u32 gMonShinyPalette_Marowak[];
extern const u32 gMonStillFrontPic_Marowak[];
extern const u8 gMonIcon_Marowak[];
extern const u8 gMonFootprint_Marowak[];
extern const u32 gMonFrontPic_Hitmonlee[];
extern const u32 gMonPalette_Hitmonlee[];
extern const u32 gMonBackPic_Hitmonlee[];
extern const u32 gMonShinyPalette_Hitmonlee[];
extern const u32 gMonStillFrontPic_Hitmonlee[];
extern const u8 gMonIcon_Hitmonlee[];
extern const u8 gMonFootprint_Hitmonlee[];
extern const u32 gMonFrontPic_Hitmonchan[];
extern const u32 gMonPalette_Hitmonchan[];
extern const u32 gMonBackPic_Hitmonchan[];
extern const u32 gMonShinyPalette_Hitmonchan[];
extern const u32 gMonStillFrontPic_Hitmonchan[];
extern const u8 gMonIcon_Hitmonchan[];
extern const u8 gMonFootprint_Hitmonchan[];
extern const u32 gMonFrontPic_Lickitung[];
extern const u32 gMonPalette_Lickitung[];
extern const u32 gMonBackPic_Lickitung[];
extern const u32 gMonShinyPalette_Lickitung[];
extern const u32 gMonStillFrontPic_Lickitung[];
extern const u8 gMonIcon_Lickitung[];
extern const u8 gMonFootprint_Lickitung[];
extern const u32 gMonFrontPic_Koffing[];
extern const u32 gMonPalette_Koffing[];
extern const u32 gMonBackPic_Koffing[];
extern const u32 gMonShinyPalette_Koffing[];
extern const u32 gMonStillFrontPic_Koffing[];
extern const u8 gMonIcon_Koffing[];
extern const u8 gMonFootprint_Koffing[];
extern const u32 gMonFrontPic_Weezing[];
extern const u32 gMonPalette_Weezing[];
extern const u32 gMonBackPic_Weezing[];
extern const u32 gMonShinyPalette_Weezing[];
extern const u32 gMonStillFrontPic_Weezing[];
extern const u8 gMonIcon_Weezing[];
extern const u8 gMonFootprint_Weezing[];
extern const u32 gMonFrontPic_Rhyhorn[];
extern const u32 gMonPalette_Rhyhorn[];
extern const u32 gMonBackPic_Rhyhorn[];
extern const u32 gMonShinyPalette_Rhyhorn[];
extern const u32 gMonStillFrontPic_Rhyhorn[];
extern const u8 gMonIcon_Rhyhorn[];
extern const u8 gMonFootprint_Rhyhorn[];
extern const u32 gMonFrontPic_Rhydon[];
extern const u32 gMonPalette_Rhydon[];
extern const u32 gMonBackPic_Rhydon[];
extern const u32 gMonShinyPalette_Rhydon[];
extern const u32 gMonStillFrontPic_Rhydon[];
extern const u8 gMonIcon_Rhydon[];
extern const u8 gMonFootprint_Rhydon[];
extern const u32 gMonFrontPic_Chansey[];
extern const u32 gMonPalette_Chansey[];
extern const u32 gMonBackPic_Chansey[];
extern const u32 gMonShinyPalette_Chansey[];
extern const u32 gMonStillFrontPic_Chansey[];
extern const u8 gMonIcon_Chansey[];
extern const u8 gMonFootprint_Chansey[];
extern const u32 gMonFrontPic_Tangela[];
extern const u32 gMonPalette_Tangela[];
extern const u32 gMonBackPic_Tangela[];
extern const u32 gMonShinyPalette_Tangela[];
extern const u32 gMonStillFrontPic_Tangela[];
extern const u8 gMonIcon_Tangela[];
extern const u8 gMonFootprint_Tangela[];
extern const u32 gMonFrontPic_Kangaskhan[];
extern const u32 gMonPalette_Kangaskhan[];
extern const u32 gMonBackPic_Kangaskhan[];
extern const u32 gMonShinyPalette_Kangaskhan[];
extern const u32 gMonStillFrontPic_Kangaskhan[];
extern const u8 gMonIcon_Kangaskhan[];
extern const u8 gMonFootprint_Kangaskhan[];
extern const u32 gMonFrontPic_Horsea[];
extern const u32 gMonPalette_Horsea[];
extern const u32 gMonBackPic_Horsea[];
extern const u32 gMonShinyPalette_Horsea[];
extern const u32 gMonStillFrontPic_Horsea[];
extern const u8 gMonIcon_Horsea[];
extern const u8 gMonFootprint_Horsea[];
extern const u32 gMonFrontPic_Seadra[];
extern const u32 gMonPalette_Seadra[];
extern const u32 gMonBackPic_Seadra[];
extern const u32 gMonShinyPalette_Seadra[];
extern const u32 gMonStillFrontPic_Seadra[];
extern const u8 gMonIcon_Seadra[];
extern const u8 gMonFootprint_Seadra[];
extern const u32 gMonFrontPic_Goldeen[];
extern const u32 gMonPalette_Goldeen[];
extern const u32 gMonBackPic_Goldeen[];
extern const u32 gMonShinyPalette_Goldeen[];
extern const u32 gMonStillFrontPic_Goldeen[];
extern const u8 gMonIcon_Goldeen[];
extern const u8 gMonFootprint_Goldeen[];
extern const u32 gMonFrontPic_Seaking[];
extern const u32 gMonPalette_Seaking[];
extern const u32 gMonBackPic_Seaking[];
extern const u32 gMonShinyPalette_Seaking[];
extern const u32 gMonStillFrontPic_Seaking[];
extern const u8 gMonIcon_Seaking[];
extern const u8 gMonFootprint_Seaking[];
extern const u32 gMonFrontPic_Staryu[];
extern const u32 gMonPalette_Staryu[];
extern const u32 gMonBackPic_Staryu[];
extern const u32 gMonShinyPalette_Staryu[];
extern const u32 gMonStillFrontPic_Staryu[];
extern const u8 gMonIcon_Staryu[];
extern const u8 gMonFootprint_Staryu[];
extern const u32 gMonFrontPic_Starmie[];
extern const u32 gMonPalette_Starmie[];
extern const u32 gMonBackPic_Starmie[];
extern const u32 gMonShinyPalette_Starmie[];
extern const u32 gMonStillFrontPic_Starmie[];
extern const u8 gMonIcon_Starmie[];
extern const u8 gMonFootprint_Starmie[];
extern const u32 gMonFrontPic_Mrmime[];
extern const u32 gMonPalette_Mrmime[];
extern const u32 gMonBackPic_Mrmime[];
extern const u32 gMonShinyPalette_Mrmime[];
extern const u32 gMonStillFrontPic_Mrmime[];
extern const u8 gMonIcon_Mrmime[];
extern const u8 gMonFootprint_Mrmime[];
extern const u32 gMonFrontPic_Scyther[];
extern const u32 gMonPalette_Scyther[];
extern const u32 gMonBackPic_Scyther[];
extern const u32 gMonShinyPalette_Scyther[];
extern const u32 gMonStillFrontPic_Scyther[];
extern const u8 gMonIcon_Scyther[];
extern const u8 gMonFootprint_Scyther[];
extern const u32 gMonFrontPic_Jynx[];
extern const u32 gMonPalette_Jynx[];
extern const u32 gMonBackPic_Jynx[];
extern const u32 gMonShinyPalette_Jynx[];
extern const u32 gMonStillFrontPic_Jynx[];
extern const u8 gMonIcon_Jynx[];
extern const u8 gMonFootprint_Jynx[];
extern const u32 gMonFrontPic_Electabuzz[];
extern const u32 gMonPalette_Electabuzz[];
extern const u32 gMonBackPic_Electabuzz[];
extern const u32 gMonShinyPalette_Electabuzz[];
extern const u32 gMonStillFrontPic_Electabuzz[];
extern const u8 gMonIcon_Electabuzz[];
extern const u8 gMonFootprint_Electabuzz[];
extern const u32 gMonFrontPic_Magmar[];
extern const u32 gMonPalette_Magmar[];
extern const u32 gMonBackPic_Magmar[];
extern const u32 gMonShinyPalette_Magmar[];
extern const u32 gMonStillFrontPic_Magmar[];
extern const u8 gMonIcon_Magmar[];
extern const u8 gMonFootprint_Magmar[];
extern const u32 gMonFrontPic_Pinsir[];
extern const u32 gMonPalette_Pinsir[];
extern const u32 gMonBackPic_Pinsir[];
extern const u32 gMonShinyPalette_Pinsir[];
extern const u32 gMonStillFrontPic_Pinsir[];
extern const u8 gMonIcon_Pinsir[];
extern const u8 gMonFootprint_Pinsir[];
extern const u32 gMonFrontPic_Tauros[];
extern const u32 gMonPalette_Tauros[];
extern const u32 gMonBackPic_Tauros[];
extern const u32 gMonShinyPalette_Tauros[];
extern const u32 gMonStillFrontPic_Tauros[];
extern const u8 gMonIcon_Tauros[];
extern const u8 gMonFootprint_Tauros[];
extern const u32 gMonFrontPic_Magikarp[];
extern const u32 gMonPalette_Magikarp[];
extern const u32 gMonBackPic_Magikarp[];
extern const u32 gMonShinyPalette_Magikarp[];
extern const u32 gMonStillFrontPic_Magikarp[];
extern const u8 gMonIcon_Magikarp[];
extern const u8 gMonFootprint_Magikarp[];
extern const u32 gMonFrontPic_Gyarados[];
extern const u32 gMonPalette_Gyarados[];
extern const u32 gMonBackPic_Gyarados[];
extern const u32 gMonShinyPalette_Gyarados[];
extern const u32 gMonStillFrontPic_Gyarados[];
extern const u8 gMonIcon_Gyarados[];
extern const u8 gMonFootprint_Gyarados[];
extern const u32 gMonFrontPic_Lapras[];
extern const u32 gMonPalette_Lapras[];
extern const u32 gMonBackPic_Lapras[];
extern const u32 gMonShinyPalette_Lapras[];
extern const u32 gMonStillFrontPic_Lapras[];
extern const u8 gMonIcon_Lapras[];
extern const u8 gMonFootprint_Lapras[];
extern const u32 gMonFrontPic_Ditto[];
extern const u32 gMonPalette_Ditto[];
extern const u32 gMonBackPic_Ditto[];
extern const u32 gMonShinyPalette_Ditto[];
extern const u32 gMonStillFrontPic_Ditto[];
extern const u8 gMonIcon_Ditto[];
extern const u8 gMonFootprint_Ditto[];
extern const u32 gMonFrontPic_Eevee[];
extern const u32 gMonPalette_Eevee[];
extern const u32 gMonBackPic_Eevee[];
extern const u32 gMonShinyPalette_Eevee[];
extern const u32 gMonStillFrontPic_Eevee[];
extern const u8 gMonIcon_Eevee[];
extern const u8 gMonFootprint_Eevee[];
extern const u32 gMonFrontPic_Vaporeon[];
extern const u32 gMonPalette_Vaporeon[];
extern const u32 gMonBackPic_Vaporeon[];
extern const u32 gMonShinyPalette_Vaporeon[];
extern const u32 gMonStillFrontPic_Vaporeon[];
extern const u8 gMonIcon_Vaporeon[];
extern const u8 gMonFootprint_Vaporeon[];
extern const u32 gMonFrontPic_Jolteon[];
extern const u32 gMonPalette_Jolteon[];
extern const u32 gMonBackPic_Jolteon[];
extern const u32 gMonShinyPalette_Jolteon[];
extern const u32 gMonStillFrontPic_Jolteon[];
extern const u8 gMonIcon_Jolteon[];
extern const u8 gMonFootprint_Jolteon[];
extern const u32 gMonFrontPic_Flareon[];
extern const u32 gMonPalette_Flareon[];
extern const u32 gMonBackPic_Flareon[];
extern const u32 gMonShinyPalette_Flareon[];
extern const u32 gMonStillFrontPic_Flareon[];
extern const u8 gMonIcon_Flareon[];
extern const u8 gMonFootprint_Flareon[];
extern const u32 gMonFrontPic_Porygon[];
extern const u32 gMonPalette_Porygon[];
extern const u32 gMonBackPic_Porygon[];
extern const u32 gMonShinyPalette_Porygon[];
extern const u32 gMonStillFrontPic_Porygon[];
extern const u8 gMonIcon_Porygon[];
extern const u8 gMonFootprint_Porygon[];
extern const u32 gMonFrontPic_Omanyte[];
extern const u32 gMonPalette_Omanyte[];
extern const u32 gMonBackPic_Omanyte[];
extern const u32 gMonShinyPalette_Omanyte[];
extern const u32 gMonStillFrontPic_Omanyte[];
extern const u8 gMonIcon_Omanyte[];
extern const u8 gMonFootprint_Omanyte[];
extern const u32 gMonFrontPic_Omastar[];
extern const u32 gMonPalette_Omastar[];
extern const u32 gMonBackPic_Omastar[];
extern const u32 gMonShinyPalette_Omastar[];
extern const u32 gMonStillFrontPic_Omastar[];
extern const u8 gMonIcon_Omastar[];
extern const u8 gMonFootprint_Omastar[];
extern const u32 gMonFrontPic_Kabuto[];
extern const u32 gMonPalette_Kabuto[];
extern const u32 gMonBackPic_Kabuto[];
extern const u32 gMonShinyPalette_Kabuto[];
extern const u32 gMonStillFrontPic_Kabuto[];
extern const u8 gMonIcon_Kabuto[];
extern const u8 gMonFootprint_Kabuto[];
extern const u32 gMonFrontPic_Kabutops[];
extern const u32 gMonPalette_Kabutops[];
extern const u32 gMonBackPic_Kabutops[];
extern const u32 gMonShinyPalette_Kabutops[];
extern const u32 gMonStillFrontPic_Kabutops[];
extern const u8 gMonIcon_Kabutops[];
extern const u8 gMonFootprint_Kabutops[];
extern const u32 gMonFrontPic_Aerodactyl[];
extern const u32 gMonPalette_Aerodactyl[];
extern const u32 gMonBackPic_Aerodactyl[];
extern const u32 gMonShinyPalette_Aerodactyl[];
extern const u32 gMonStillFrontPic_Aerodactyl[];
extern const u8 gMonIcon_Aerodactyl[];
extern const u8 gMonFootprint_Aerodactyl[];
extern const u32 gMonFrontPic_Snorlax[];
extern const u32 gMonPalette_Snorlax[];
extern const u32 gMonBackPic_Snorlax[];
extern const u32 gMonShinyPalette_Snorlax[];
extern const u32 gMonStillFrontPic_Snorlax[];
extern const u8 gMonIcon_Snorlax[];
extern const u8 gMonFootprint_Snorlax[];
extern const u32 gMonFrontPic_Articuno[];
extern const u32 gMonPalette_Articuno[];
extern const u32 gMonBackPic_Articuno[];
extern const u32 gMonShinyPalette_Articuno[];
extern const u32 gMonStillFrontPic_Articuno[];
extern const u8 gMonIcon_Articuno[];
extern const u8 gMonFootprint_Articuno[];
extern const u32 gMonFrontPic_Zapdos[];
extern const u32 gMonPalette_Zapdos[];
extern const u32 gMonBackPic_Zapdos[];
extern const u32 gMonShinyPalette_Zapdos[];
extern const u32 gMonStillFrontPic_Zapdos[];
extern const u8 gMonIcon_Zapdos[];
extern const u8 gMonFootprint_Zapdos[];
extern const u32 gMonFrontPic_Moltres[];
extern const u32 gMonPalette_Moltres[];
extern const u32 gMonBackPic_Moltres[];
extern const u32 gMonShinyPalette_Moltres[];
extern const u32 gMonStillFrontPic_Moltres[];
extern const u8 gMonIcon_Moltres[];
extern const u8 gMonFootprint_Moltres[];
extern const u32 gMonFrontPic_Dratini[];
extern const u32 gMonPalette_Dratini[];
extern const u32 gMonBackPic_Dratini[];
extern const u32 gMonShinyPalette_Dratini[];
extern const u32 gMonStillFrontPic_Dratini[];
extern const u8 gMonIcon_Dratini[];
extern const u8 gMonFootprint_Dratini[];
extern const u32 gMonFrontPic_Dragonair[];
extern const u32 gMonPalette_Dragonair[];
extern const u32 gMonBackPic_Dragonair[];
extern const u32 gMonShinyPalette_Dragonair[];
extern const u32 gMonStillFrontPic_Dragonair[];
extern const u8 gMonIcon_Dragonair[];
extern const u8 gMonFootprint_Dragonair[];
extern const u32 gMonFrontPic_Dragonite[];
extern const u32 gMonPalette_Dragonite[];
extern const u32 gMonBackPic_Dragonite[];
extern const u32 gMonShinyPalette_Dragonite[];
extern const u32 gMonStillFrontPic_Dragonite[];
extern const u8 gMonIcon_Dragonite[];
extern const u8 gMonFootprint_Dragonite[];
extern const u32 gMonFrontPic_Mewtwo[];
extern const u32 gMonPalette_Mewtwo[];
extern const u32 gMonBackPic_Mewtwo[];
extern const u32 gMonShinyPalette_Mewtwo[];
extern const u32 gMonStillFrontPic_Mewtwo[];
extern const u8 gMonIcon_Mewtwo[];
extern const u8 gMonFootprint_Mewtwo[];
extern const u32 gMonFrontPic_Mew[];
extern const u32 gMonPalette_Mew[];
extern const u32 gMonBackPic_Mew[];
extern const u32 gMonShinyPalette_Mew[];
extern const u32 gMonStillFrontPic_Mew[];
extern const u8 gMonIcon_Mew[];
extern const u8 gMonFootprint_Mew[];
extern const u32 gMonFrontPic_Chikorita[];
extern const u32 gMonPalette_Chikorita[];
extern const u32 gMonBackPic_Chikorita[];
extern const u32 gMonShinyPalette_Chikorita[];
extern const u32 gMonStillFrontPic_Chikorita[];
extern const u8 gMonIcon_Chikorita[];
extern const u8 gMonFootprint_Chikorita[];
extern const u32 gMonFrontPic_Bayleef[];
extern const u32 gMonPalette_Bayleef[];
extern const u32 gMonBackPic_Bayleef[];
extern const u32 gMonShinyPalette_Bayleef[];
extern const u32 gMonStillFrontPic_Bayleef[];
extern const u8 gMonIcon_Bayleef[];
extern const u8 gMonFootprint_Bayleef[];
extern const u32 gMonFrontPic_Meganium[];
extern const u32 gMonPalette_Meganium[];
extern const u32 gMonBackPic_Meganium[];
extern const u32 gMonShinyPalette_Meganium[];
extern const u32 gMonStillFrontPic_Meganium[];
extern const u8 gMonIcon_Meganium[];
extern const u8 gMonFootprint_Meganium[];
extern const u32 gMonFrontPic_Cyndaquil[];
extern const u32 gMonPalette_Cyndaquil[];
extern const u32 gMonBackPic_Cyndaquil[];
extern const u32 gMonShinyPalette_Cyndaquil[];
extern const u32 gMonStillFrontPic_Cyndaquil[];
extern const u8 gMonIcon_Cyndaquil[];
extern const u8 gMonFootprint_Cyndaquil[];
extern const u32 gMonFrontPic_Quilava[];
extern const u32 gMonPalette_Quilava[];
extern const u32 gMonBackPic_Quilava[];
extern const u32 gMonShinyPalette_Quilava[];
extern const u32 gMonStillFrontPic_Quilava[];
extern const u8 gMonIcon_Quilava[];
extern const u8 gMonFootprint_Quilava[];
extern const u32 gMonFrontPic_Typhlosion[];
extern const u32 gMonPalette_Typhlosion[];
extern const u32 gMonBackPic_Typhlosion[];
extern const u32 gMonShinyPalette_Typhlosion[];
extern const u32 gMonStillFrontPic_Typhlosion[];
extern const u8 gMonIcon_Typhlosion[];
extern const u8 gMonFootprint_Typhlosion[];
extern const u32 gMonFrontPic_Totodile[];
extern const u32 gMonPalette_Totodile[];
extern const u32 gMonBackPic_Totodile[];
extern const u32 gMonShinyPalette_Totodile[];
extern const u32 gMonStillFrontPic_Totodile[];
extern const u8 gMonIcon_Totodile[];
extern const u8 gMonFootprint_Totodile[];
extern const u32 gMonFrontPic_Croconaw[];
extern const u32 gMonPalette_Croconaw[];
extern const u32 gMonBackPic_Croconaw[];
extern const u32 gMonShinyPalette_Croconaw[];
extern const u32 gMonStillFrontPic_Croconaw[];
extern const u8 gMonIcon_Croconaw[];
extern const u8 gMonFootprint_Croconaw[];
extern const u32 gMonFrontPic_Feraligatr[];
extern const u32 gMonPalette_Feraligatr[];
extern const u32 gMonBackPic_Feraligatr[];
extern const u32 gMonShinyPalette_Feraligatr[];
extern const u32 gMonStillFrontPic_Feraligatr[];
extern const u8 gMonIcon_Feraligatr[];
extern const u8 gMonFootprint_Feraligatr[];
extern const u32 gMonFrontPic_Sentret[];
extern const u32 gMonPalette_Sentret[];
extern const u32 gMonBackPic_Sentret[];
extern const u32 gMonShinyPalette_Sentret[];
extern const u32 gMonStillFrontPic_Sentret[];
extern const u8 gMonIcon_Sentret[];
extern const u8 gMonFootprint_Sentret[];
extern const u32 gMonFrontPic_Furret[];
extern const u32 gMonPalette_Furret[];
extern const u32 gMonBackPic_Furret[];
extern const u32 gMonShinyPalette_Furret[];
extern const u32 gMonStillFrontPic_Furret[];
extern const u8 gMonIcon_Furret[];
extern const u8 gMonFootprint_Furret[];
extern const u32 gMonFrontPic_Hoothoot[];
extern const u32 gMonPalette_Hoothoot[];
extern const u32 gMonBackPic_Hoothoot[];
extern const u32 gMonShinyPalette_Hoothoot[];
extern const u32 gMonStillFrontPic_Hoothoot[];
extern const u8 gMonIcon_Hoothoot[];
extern const u8 gMonFootprint_Hoothoot[];
extern const u32 gMonFrontPic_Noctowl[];
extern const u32 gMonPalette_Noctowl[];
extern const u32 gMonBackPic_Noctowl[];
extern const u32 gMonShinyPalette_Noctowl[];
extern const u32 gMonStillFrontPic_Noctowl[];
extern const u8 gMonIcon_Noctowl[];
extern const u8 gMonFootprint_Noctowl[];
extern const u32 gMonFrontPic_Ledyba[];
extern const u32 gMonPalette_Ledyba[];
extern const u32 gMonBackPic_Ledyba[];
extern const u32 gMonShinyPalette_Ledyba[];
extern const u32 gMonStillFrontPic_Ledyba[];
extern const u8 gMonIcon_Ledyba[];
extern const u8 gMonFootprint_Ledyba[];
extern const u32 gMonFrontPic_Ledian[];
extern const u32 gMonPalette_Ledian[];
extern const u32 gMonBackPic_Ledian[];
extern const u32 gMonShinyPalette_Ledian[];
extern const u32 gMonStillFrontPic_Ledian[];
extern const u8 gMonIcon_Ledian[];
extern const u8 gMonFootprint_Ledian[];
extern const u32 gMonFrontPic_Spinarak[];
extern const u32 gMonPalette_Spinarak[];
extern const u32 gMonBackPic_Spinarak[];
extern const u32 gMonShinyPalette_Spinarak[];
extern const u32 gMonStillFrontPic_Spinarak[];
extern const u8 gMonIcon_Spinarak[];
extern const u8 gMonFootprint_Spinarak[];
extern const u32 gMonFrontPic_Ariados[];
extern const u32 gMonPalette_Ariados[];
extern const u32 gMonBackPic_Ariados[];
extern const u32 gMonShinyPalette_Ariados[];
extern const u32 gMonStillFrontPic_Ariados[];
extern const u8 gMonIcon_Ariados[];
extern const u8 gMonFootprint_Ariados[];
extern const u32 gMonFrontPic_Crobat[];
extern const u32 gMonPalette_Crobat[];
extern const u32 gMonBackPic_Crobat[];
extern const u32 gMonShinyPalette_Crobat[];
extern const u32 gMonStillFrontPic_Crobat[];
extern const u8 gMonIcon_Crobat[];
extern const u8 gMonFootprint_Crobat[];
extern const u32 gMonFrontPic_Chinchou[];
extern const u32 gMonPalette_Chinchou[];
extern const u32 gMonBackPic_Chinchou[];
extern const u32 gMonShinyPalette_Chinchou[];
extern const u32 gMonStillFrontPic_Chinchou[];
extern const u8 gMonIcon_Chinchou[];
extern const u8 gMonFootprint_Chinchou[];
extern const u32 gMonFrontPic_Lanturn[];
extern const u32 gMonPalette_Lanturn[];
extern const u32 gMonBackPic_Lanturn[];
extern const u32 gMonShinyPalette_Lanturn[];
extern const u32 gMonStillFrontPic_Lanturn[];
extern const u8 gMonIcon_Lanturn[];
extern const u8 gMonFootprint_Lanturn[];
extern const u32 gMonFrontPic_Pichu[];
extern const u32 gMonPalette_Pichu[];
extern const u32 gMonBackPic_Pichu[];
extern const u32 gMonShinyPalette_Pichu[];
extern const u32 gMonStillFrontPic_Pichu[];
extern const u8 gMonIcon_Pichu[];
extern const u8 gMonFootprint_Pichu[];
extern const u32 gMonFrontPic_Cleffa[];
extern const u32 gMonPalette_Cleffa[];
extern const u32 gMonBackPic_Cleffa[];
extern const u32 gMonShinyPalette_Cleffa[];
extern const u32 gMonStillFrontPic_Cleffa[];
extern const u8 gMonIcon_Cleffa[];
extern const u8 gMonFootprint_Cleffa[];
extern const u32 gMonFrontPic_Igglybuff[];
extern const u32 gMonPalette_Igglybuff[];
extern const u32 gMonBackPic_Igglybuff[];
extern const u32 gMonShinyPalette_Igglybuff[];
extern const u32 gMonStillFrontPic_Igglybuff[];
extern const u8 gMonIcon_Igglybuff[];
extern const u8 gMonFootprint_Igglybuff[];
extern const u32 gMonFrontPic_Togepi[];
extern const u32 gMonPalette_Togepi[];
extern const u32 gMonBackPic_Togepi[];
extern const u32 gMonShinyPalette_Togepi[];
extern const u32 gMonStillFrontPic_Togepi[];
extern const u8 gMonIcon_Togepi[];
extern const u8 gMonFootprint_Togepi[];
extern const u32 gMonFrontPic_Togetic[];
extern const u32 gMonPalette_Togetic[];
extern const u32 gMonBackPic_Togetic[];
extern const u32 gMonShinyPalette_Togetic[];
extern const u32 gMonStillFrontPic_Togetic[];
extern const u8 gMonIcon_Togetic[];
extern const u8 gMonFootprint_Togetic[];
extern const u32 gMonFrontPic_Natu[];
extern const u32 gMonPalette_Natu[];
extern const u32 gMonBackPic_Natu[];
extern const u32 gMonShinyPalette_Natu[];
extern const u32 gMonStillFrontPic_Natu[];
extern const u8 gMonIcon_Natu[];
extern const u8 gMonFootprint_Natu[];
extern const u32 gMonFrontPic_Xatu[];
extern const u32 gMonPalette_Xatu[];
extern const u32 gMonBackPic_Xatu[];
extern const u32 gMonShinyPalette_Xatu[];
extern const u32 gMonStillFrontPic_Xatu[];
extern const u8 gMonIcon_Xatu[];
extern const u8 gMonFootprint_Xatu[];
extern const u32 gMonFrontPic_Mareep[];
extern const u32 gMonPalette_Mareep[];
extern const u32 gMonBackPic_Mareep[];
extern const u32 gMonShinyPalette_Mareep[];
extern const u32 gMonStillFrontPic_Mareep[];
extern const u8 gMonIcon_Mareep[];
extern const u8 gMonFootprint_Mareep[];
extern const u32 gMonFrontPic_Flaaffy[];
extern const u32 gMonPalette_Flaaffy[];
extern const u32 gMonBackPic_Flaaffy[];
extern const u32 gMonShinyPalette_Flaaffy[];
extern const u32 gMonStillFrontPic_Flaaffy[];
extern const u8 gMonIcon_Flaaffy[];
extern const u8 gMonFootprint_Flaaffy[];
extern const u32 gMonFrontPic_Ampharos[];
extern const u32 gMonPalette_Ampharos[];
extern const u32 gMonBackPic_Ampharos[];
extern const u32 gMonShinyPalette_Ampharos[];
extern const u32 gMonStillFrontPic_Ampharos[];
extern const u8 gMonIcon_Ampharos[];
extern const u8 gMonFootprint_Ampharos[];
extern const u32 gMonFrontPic_Bellossom[];
extern const u32 gMonPalette_Bellossom[];
extern const u32 gMonBackPic_Bellossom[];
extern const u32 gMonShinyPalette_Bellossom[];
extern const u32 gMonStillFrontPic_Bellossom[];
extern const u8 gMonIcon_Bellossom[];
extern const u8 gMonFootprint_Bellossom[];
extern const u32 gMonFrontPic_Marill[];
extern const u32 gMonPalette_Marill[];
extern const u32 gMonBackPic_Marill[];
extern const u32 gMonShinyPalette_Marill[];
extern const u32 gMonStillFrontPic_Marill[];
extern const u8 gMonIcon_Marill[];
extern const u8 gMonFootprint_Marill[];
extern const u32 gMonFrontPic_Azumarill[];
extern const u32 gMonPalette_Azumarill[];
extern const u32 gMonBackPic_Azumarill[];
extern const u32 gMonShinyPalette_Azumarill[];
extern const u32 gMonStillFrontPic_Azumarill[];
extern const u8 gMonIcon_Azumarill[];
extern const u8 gMonFootprint_Azumarill[];
extern const u32 gMonFrontPic_Sudowoodo[];
extern const u32 gMonPalette_Sudowoodo[];
extern const u32 gMonBackPic_Sudowoodo[];
extern const u32 gMonShinyPalette_Sudowoodo[];
extern const u32 gMonStillFrontPic_Sudowoodo[];
extern const u8 gMonIcon_Sudowoodo[];
extern const u8 gMonFootprint_Sudowoodo[];
extern const u32 gMonFrontPic_Politoed[];
extern const u32 gMonPalette_Politoed[];
extern const u32 gMonBackPic_Politoed[];
extern const u32 gMonShinyPalette_Politoed[];
extern const u32 gMonStillFrontPic_Politoed[];
extern const u8 gMonIcon_Politoed[];
extern const u8 gMonFootprint_Politoed[];
extern const u32 gMonFrontPic_Hoppip[];
extern const u32 gMonPalette_Hoppip[];
extern const u32 gMonBackPic_Hoppip[];
extern const u32 gMonShinyPalette_Hoppip[];
extern const u32 gMonStillFrontPic_Hoppip[];
extern const u8 gMonIcon_Hoppip[];
extern const u8 gMonFootprint_Hoppip[];
extern const u32 gMonFrontPic_Skiploom[];
extern const u32 gMonPalette_Skiploom[];
extern const u32 gMonBackPic_Skiploom[];
extern const u32 gMonShinyPalette_Skiploom[];
extern const u32 gMonStillFrontPic_Skiploom[];
extern const u8 gMonIcon_Skiploom[];
extern const u8 gMonFootprint_Skiploom[];
extern const u32 gMonFrontPic_Jumpluff[];
extern const u32 gMonPalette_Jumpluff[];
extern const u32 gMonBackPic_Jumpluff[];
extern const u32 gMonShinyPalette_Jumpluff[];
extern const u32 gMonStillFrontPic_Jumpluff[];
extern const u8 gMonIcon_Jumpluff[];
extern const u8 gMonFootprint_Jumpluff[];
extern const u32 gMonFrontPic_Aipom[];
extern const u32 gMonPalette_Aipom[];
extern const u32 gMonBackPic_Aipom[];
extern const u32 gMonShinyPalette_Aipom[];
extern const u32 gMonStillFrontPic_Aipom[];
extern const u8 gMonIcon_Aipom[];
extern const u8 gMonFootprint_Aipom[];
extern const u32 gMonFrontPic_Sunkern[];
extern const u32 gMonPalette_Sunkern[];
extern const u32 gMonBackPic_Sunkern[];
extern const u32 gMonShinyPalette_Sunkern[];
extern const u32 gMonStillFrontPic_Sunkern[];
extern const u8 gMonIcon_Sunkern[];
extern const u8 gMonFootprint_Sunkern[];
extern const u32 gMonFrontPic_Sunflora[];
extern const u32 gMonPalette_Sunflora[];
extern const u32 gMonBackPic_Sunflora[];
extern const u32 gMonShinyPalette_Sunflora[];
extern const u32 gMonStillFrontPic_Sunflora[];
extern const u8 gMonIcon_Sunflora[];
extern const u8 gMonFootprint_Sunflora[];
extern const u32 gMonFrontPic_Yanma[];
extern const u32 gMonPalette_Yanma[];
extern const u32 gMonBackPic_Yanma[];
extern const u32 gMonShinyPalette_Yanma[];
extern const u32 gMonStillFrontPic_Yanma[];
extern const u8 gMonIcon_Yanma[];
extern const u8 gMonFootprint_Yanma[];
extern const u32 gMonFrontPic_Wooper[];
extern const u32 gMonPalette_Wooper[];
extern const u32 gMonBackPic_Wooper[];
extern const u32 gMonShinyPalette_Wooper[];
extern const u32 gMonStillFrontPic_Wooper[];
extern const u8 gMonIcon_Wooper[];
extern const u8 gMonFootprint_Wooper[];
extern const u32 gMonFrontPic_Quagsire[];
extern const u32 gMonPalette_Quagsire[];
extern const u32 gMonBackPic_Quagsire[];
extern const u32 gMonShinyPalette_Quagsire[];
extern const u32 gMonStillFrontPic_Quagsire[];
extern const u8 gMonIcon_Quagsire[];
extern const u8 gMonFootprint_Quagsire[];
extern const u32 gMonFrontPic_Espeon[];
extern const u32 gMonPalette_Espeon[];
extern const u32 gMonBackPic_Espeon[];
extern const u32 gMonShinyPalette_Espeon[];
extern const u32 gMonStillFrontPic_Espeon[];
extern const u8 gMonIcon_Espeon[];
extern const u8 gMonFootprint_Espeon[];
extern const u32 gMonFrontPic_Umbreon[];
extern const u32 gMonPalette_Umbreon[];
extern const u32 gMonBackPic_Umbreon[];
extern const u32 gMonShinyPalette_Umbreon[];
extern const u32 gMonStillFrontPic_Umbreon[];
extern const u8 gMonIcon_Umbreon[];
extern const u8 gMonFootprint_Umbreon[];
extern const u32 gMonFrontPic_Murkrow[];
extern const u32 gMonPalette_Murkrow[];
extern const u32 gMonBackPic_Murkrow[];
extern const u32 gMonShinyPalette_Murkrow[];
extern const u32 gMonStillFrontPic_Murkrow[];
extern const u8 gMonIcon_Murkrow[];
extern const u8 gMonFootprint_Murkrow[];
extern const u32 gMonFrontPic_Slowking[];
extern const u32 gMonPalette_Slowking[];
extern const u32 gMonBackPic_Slowking[];
extern const u32 gMonShinyPalette_Slowking[];
extern const u32 gMonStillFrontPic_Slowking[];
extern const u8 gMonIcon_Slowking[];
extern const u8 gMonFootprint_Slowking[];
extern const u32 gMonFrontPic_Misdreavus[];
extern const u32 gMonPalette_Misdreavus[];
extern const u32 gMonBackPic_Misdreavus[];
extern const u32 gMonShinyPalette_Misdreavus[];
extern const u32 gMonStillFrontPic_Misdreavus[];
extern const u8 gMonIcon_Misdreavus[];
extern const u8 gMonFootprint_Misdreavus[];
extern const u32 gMonFrontPic_UnownA[];
extern const u32 gMonPalette_Unown[];
extern const u32 gMonBackPic_UnownA[];
extern const u32 gMonShinyPalette_Unown[];
extern const u32 gMonStillFrontPic_UnownA[];
extern const u8 gMonIcon_UnownA[];
extern const u8 gMonFootprint_Unown[];
extern const u32 gMonFrontPic_Wobbuffet[];
extern const u32 gMonPalette_Wobbuffet[];
extern const u32 gMonBackPic_Wobbuffet[];
extern const u32 gMonShinyPalette_Wobbuffet[];
extern const u32 gMonStillFrontPic_Wobbuffet[];
extern const u8 gMonIcon_Wobbuffet[];
extern const u8 gMonFootprint_Wobbuffet[];
extern const u32 gMonFrontPic_Girafarig[];
extern const u32 gMonPalette_Girafarig[];
extern const u32 gMonBackPic_Girafarig[];
extern const u32 gMonShinyPalette_Girafarig[];
extern const u32 gMonStillFrontPic_Girafarig[];
extern const u8 gMonIcon_Girafarig[];
extern const u8 gMonFootprint_Girafarig[];
extern const u32 gMonFrontPic_Pineco[];
extern const u32 gMonPalette_Pineco[];
extern const u32 gMonBackPic_Pineco[];
extern const u32 gMonShinyPalette_Pineco[];
extern const u32 gMonStillFrontPic_Pineco[];
extern const u8 gMonIcon_Pineco[];
extern const u8 gMonFootprint_Pineco[];
extern const u32 gMonFrontPic_Forretress[];
extern const u32 gMonPalette_Forretress[];
extern const u32 gMonBackPic_Forretress[];
extern const u32 gMonShinyPalette_Forretress[];
extern const u32 gMonStillFrontPic_Forretress[];
extern const u8 gMonIcon_Forretress[];
extern const u8 gMonFootprint_Forretress[];
extern const u32 gMonFrontPic_Dunsparce[];
extern const u32 gMonPalette_Dunsparce[];
extern const u32 gMonBackPic_Dunsparce[];
extern const u32 gMonShinyPalette_Dunsparce[];
extern const u32 gMonStillFrontPic_Dunsparce[];
extern const u8 gMonIcon_Dunsparce[];
extern const u8 gMonFootprint_Dunsparce[];
extern const u32 gMonFrontPic_Gligar[];
extern const u32 gMonPalette_Gligar[];
extern const u32 gMonBackPic_Gligar[];
extern const u32 gMonShinyPalette_Gligar[];
extern const u32 gMonStillFrontPic_Gligar[];
extern const u8 gMonIcon_Gligar[];
extern const u8 gMonFootprint_Gligar[];
extern const u32 gMonFrontPic_Steelix[];
extern const u32 gMonPalette_Steelix[];
extern const u32 gMonBackPic_Steelix[];
extern const u32 gMonShinyPalette_Steelix[];
extern const u32 gMonStillFrontPic_Steelix[];
extern const u8 gMonIcon_Steelix[];
extern const u8 gMonFootprint_Steelix[];
extern const u32 gMonFrontPic_Snubbull[];
extern const u32 gMonPalette_Snubbull[];
extern const u32 gMonBackPic_Snubbull[];
extern const u32 gMonShinyPalette_Snubbull[];
extern const u32 gMonStillFrontPic_Snubbull[];
extern const u8 gMonIcon_Snubbull[];
extern const u8 gMonFootprint_Snubbull[];
extern const u32 gMonFrontPic_Granbull[];
extern const u32 gMonPalette_Granbull[];
extern const u32 gMonBackPic_Granbull[];
extern const u32 gMonShinyPalette_Granbull[];
extern const u32 gMonStillFrontPic_Granbull[];
extern const u8 gMonIcon_Granbull[];
extern const u8 gMonFootprint_Granbull[];
extern const u32 gMonFrontPic_Qwilfish[];
extern const u32 gMonPalette_Qwilfish[];
extern const u32 gMonBackPic_Qwilfish[];
extern const u32 gMonShinyPalette_Qwilfish[];
extern const u32 gMonStillFrontPic_Qwilfish[];
extern const u8 gMonIcon_Qwilfish[];
extern const u8 gMonFootprint_Qwilfish[];
extern const u32 gMonFrontPic_Scizor[];
extern const u32 gMonPalette_Scizor[];
extern const u32 gMonBackPic_Scizor[];
extern const u32 gMonShinyPalette_Scizor[];
extern const u32 gMonStillFrontPic_Scizor[];
extern const u8 gMonIcon_Scizor[];
extern const u8 gMonFootprint_Scizor[];
extern const u32 gMonFrontPic_Shuckle[];
extern const u32 gMonPalette_Shuckle[];
extern const u32 gMonBackPic_Shuckle[];
extern const u32 gMonShinyPalette_Shuckle[];
extern const u32 gMonStillFrontPic_Shuckle[];
extern const u8 gMonIcon_Shuckle[];
extern const u8 gMonFootprint_Shuckle[];
extern const u32 gMonFrontPic_Heracross[];
extern const u32 gMonPalette_Heracross[];
extern const u32 gMonBackPic_Heracross[];
extern const u32 gMonShinyPalette_Heracross[];
extern const u32 gMonStillFrontPic_Heracross[];
extern const u8 gMonIcon_Heracross[];
extern const u8 gMonFootprint_Heracross[];
extern const u32 gMonFrontPic_Sneasel[];
extern const u32 gMonPalette_Sneasel[];
extern const u32 gMonBackPic_Sneasel[];
extern const u32 gMonShinyPalette_Sneasel[];
extern const u32 gMonStillFrontPic_Sneasel[];
extern const u8 gMonIcon_Sneasel[];
extern const u8 gMonFootprint_Sneasel[];
extern const u32 gMonFrontPic_Teddiursa[];
extern const u32 gMonPalette_Teddiursa[];
extern const u32 gMonBackPic_Teddiursa[];
extern const u32 gMonShinyPalette_Teddiursa[];
extern const u32 gMonStillFrontPic_Teddiursa[];
extern const u8 gMonIcon_Teddiursa[];
extern const u8 gMonFootprint_Teddiursa[];
extern const u32 gMonFrontPic_Ursaring[];
extern const u32 gMonPalette_Ursaring[];
extern const u32 gMonBackPic_Ursaring[];
extern const u32 gMonShinyPalette_Ursaring[];
extern const u32 gMonStillFrontPic_Ursaring[];
extern const u8 gMonIcon_Ursaring[];
extern const u8 gMonFootprint_Ursaring[];
extern const u32 gMonFrontPic_Slugma[];
extern const u32 gMonPalette_Slugma[];
extern const u32 gMonBackPic_Slugma[];
extern const u32 gMonShinyPalette_Slugma[];
extern const u32 gMonStillFrontPic_Slugma[];
extern const u8 gMonIcon_Slugma[];
extern const u8 gMonFootprint_Slugma[];
extern const u32 gMonFrontPic_Magcargo[];
extern const u32 gMonPalette_Magcargo[];
extern const u32 gMonBackPic_Magcargo[];
extern const u32 gMonShinyPalette_Magcargo[];
extern const u32 gMonStillFrontPic_Magcargo[];
extern const u8 gMonIcon_Magcargo[];
extern const u8 gMonFootprint_Magcargo[];
extern const u32 gMonFrontPic_Swinub[];
extern const u32 gMonPalette_Swinub[];
extern const u32 gMonBackPic_Swinub[];
extern const u32 gMonShinyPalette_Swinub[];
extern const u32 gMonStillFrontPic_Swinub[];
extern const u8 gMonIcon_Swinub[];
extern const u8 gMonFootprint_Swinub[];
extern const u32 gMonFrontPic_Piloswine[];
extern const u32 gMonPalette_Piloswine[];
extern const u32 gMonBackPic_Piloswine[];
extern const u32 gMonShinyPalette_Piloswine[];
extern const u32 gMonStillFrontPic_Piloswine[];
extern const u8 gMonIcon_Piloswine[];
extern const u8 gMonFootprint_Piloswine[];
extern const u32 gMonFrontPic_Corsola[];
extern const u32 gMonPalette_Corsola[];
extern const u32 gMonBackPic_Corsola[];
extern const u32 gMonShinyPalette_Corsola[];
extern const u32 gMonStillFrontPic_Corsola[];
extern const u8 gMonIcon_Corsola[];
extern const u8 gMonFootprint_Corsola[];
extern const u32 gMonFrontPic_Remoraid[];
extern const u32 gMonPalette_Remoraid[];
extern const u32 gMonBackPic_Remoraid[];
extern const u32 gMonShinyPalette_Remoraid[];
extern const u32 gMonStillFrontPic_Remoraid[];
extern const u8 gMonIcon_Remoraid[];
extern const u8 gMonFootprint_Remoraid[];
extern const u32 gMonFrontPic_Octillery[];
extern const u32 gMonPalette_Octillery[];
extern const u32 gMonBackPic_Octillery[];
extern const u32 gMonShinyPalette_Octillery[];
extern const u32 gMonStillFrontPic_Octillery[];
extern const u8 gMonIcon_Octillery[];
extern const u8 gMonFootprint_Octillery[];
extern const u32 gMonFrontPic_Delibird[];
extern const u32 gMonPalette_Delibird[];
extern const u32 gMonBackPic_Delibird[];
extern const u32 gMonShinyPalette_Delibird[];
extern const u32 gMonStillFrontPic_Delibird[];
extern const u8 gMonIcon_Delibird[];
extern const u8 gMonFootprint_Delibird[];
extern const u32 gMonFrontPic_Mantine[];
extern const u32 gMonPalette_Mantine[];
extern const u32 gMonBackPic_Mantine[];
extern const u32 gMonShinyPalette_Mantine[];
extern const u32 gMonStillFrontPic_Mantine[];
extern const u8 gMonIcon_Mantine[];
extern const u8 gMonFootprint_Mantine[];
extern const u32 gMonFrontPic_Skarmory[];
extern const u32 gMonPalette_Skarmory[];
extern const u32 gMonBackPic_Skarmory[];
extern const u32 gMonShinyPalette_Skarmory[];
extern const u32 gMonStillFrontPic_Skarmory[];
extern const u8 gMonIcon_Skarmory[];
extern const u8 gMonFootprint_Skarmory[];
extern const u32 gMonFrontPic_Houndour[];
extern const u32 gMonPalette_Houndour[];
extern const u32 gMonBackPic_Houndour[];
extern const u32 gMonShinyPalette_Houndour[];
extern const u32 gMonStillFrontPic_Houndour[];
extern const u8 gMonIcon_Houndour[];
extern const u8 gMonFootprint_Houndour[];
extern const u32 gMonFrontPic_Houndoom[];
extern const u32 gMonPalette_Houndoom[];
extern const u32 gMonBackPic_Houndoom[];
extern const u32 gMonShinyPalette_Houndoom[];
extern const u32 gMonStillFrontPic_Houndoom[];
extern const u8 gMonIcon_Houndoom[];
extern const u8 gMonFootprint_Houndoom[];
extern const u32 gMonFrontPic_Kingdra[];
extern const u32 gMonPalette_Kingdra[];
extern const u32 gMonBackPic_Kingdra[];
extern const u32 gMonShinyPalette_Kingdra[];
extern const u32 gMonStillFrontPic_Kingdra[];
extern const u8 gMonIcon_Kingdra[];
extern const u8 gMonFootprint_Kingdra[];
extern const u32 gMonFrontPic_Phanpy[];
extern const u32 gMonPalette_Phanpy[];
extern const u32 gMonBackPic_Phanpy[];
extern const u32 gMonShinyPalette_Phanpy[];
extern const u32 gMonStillFrontPic_Phanpy[];
extern const u8 gMonIcon_Phanpy[];
extern const u8 gMonFootprint_Phanpy[];
extern const u32 gMonFrontPic_Donphan[];
extern const u32 gMonPalette_Donphan[];
extern const u32 gMonBackPic_Donphan[];
extern const u32 gMonShinyPalette_Donphan[];
extern const u32 gMonStillFrontPic_Donphan[];
extern const u8 gMonIcon_Donphan[];
extern const u8 gMonFootprint_Donphan[];
extern const u32 gMonFrontPic_Porygon2[];
extern const u32 gMonPalette_Porygon2[];
extern const u32 gMonBackPic_Porygon2[];
extern const u32 gMonShinyPalette_Porygon2[];
extern const u32 gMonStillFrontPic_Porygon2[];
extern const u8 gMonIcon_Porygon2[];
extern const u8 gMonFootprint_Porygon2[];
extern const u32 gMonFrontPic_Stantler[];
extern const u32 gMonPalette_Stantler[];
extern const u32 gMonBackPic_Stantler[];
extern const u32 gMonShinyPalette_Stantler[];
extern const u32 gMonStillFrontPic_Stantler[];
extern const u8 gMonIcon_Stantler[];
extern const u8 gMonFootprint_Stantler[];
extern const u32 gMonFrontPic_Smeargle[];
extern const u32 gMonPalette_Smeargle[];
extern const u32 gMonBackPic_Smeargle[];
extern const u32 gMonShinyPalette_Smeargle[];
extern const u32 gMonStillFrontPic_Smeargle[];
extern const u8 gMonIcon_Smeargle[];
extern const u8 gMonFootprint_Smeargle[];
extern const u32 gMonFrontPic_Tyrogue[];
extern const u32 gMonPalette_Tyrogue[];
extern const u32 gMonBackPic_Tyrogue[];
extern const u32 gMonShinyPalette_Tyrogue[];
extern const u32 gMonStillFrontPic_Tyrogue[];
extern const u8 gMonIcon_Tyrogue[];
extern const u8 gMonFootprint_Tyrogue[];
extern const u32 gMonFrontPic_Hitmontop[];
extern const u32 gMonPalette_Hitmontop[];
extern const u32 gMonBackPic_Hitmontop[];
extern const u32 gMonShinyPalette_Hitmontop[];
extern const u32 gMonStillFrontPic_Hitmontop[];
extern const u8 gMonIcon_Hitmontop[];
extern const u8 gMonFootprint_Hitmontop[];
extern const u32 gMonFrontPic_Smoochum[];
extern const u32 gMonPalette_Smoochum[];
extern const u32 gMonBackPic_Smoochum[];
extern const u32 gMonShinyPalette_Smoochum[];
extern const u32 gMonStillFrontPic_Smoochum[];
extern const u8 gMonIcon_Smoochum[];
extern const u8 gMonFootprint_Smoochum[];
extern const u32 gMonFrontPic_Elekid[];
extern const u32 gMonPalette_Elekid[];
extern const u32 gMonBackPic_Elekid[];
extern const u32 gMonShinyPalette_Elekid[];
extern const u32 gMonStillFrontPic_Elekid[];
extern const u8 gMonIcon_Elekid[];
extern const u8 gMonFootprint_Elekid[];
extern const u32 gMonFrontPic_Magby[];
extern const u32 gMonPalette_Magby[];
extern const u32 gMonBackPic_Magby[];
extern const u32 gMonShinyPalette_Magby[];
extern const u32 gMonStillFrontPic_Magby[];
extern const u8 gMonIcon_Magby[];
extern const u8 gMonFootprint_Magby[];
extern const u32 gMonFrontPic_Miltank[];
extern const u32 gMonPalette_Miltank[];
extern const u32 gMonBackPic_Miltank[];
extern const u32 gMonShinyPalette_Miltank[];
extern const u32 gMonStillFrontPic_Miltank[];
extern const u8 gMonIcon_Miltank[];
extern const u8 gMonFootprint_Miltank[];
extern const u32 gMonFrontPic_Blissey[];
extern const u32 gMonPalette_Blissey[];
extern const u32 gMonBackPic_Blissey[];
extern const u32 gMonShinyPalette_Blissey[];
extern const u32 gMonStillFrontPic_Blissey[];
extern const u8 gMonIcon_Blissey[];
extern const u8 gMonFootprint_Blissey[];
extern const u32 gMonFrontPic_Raikou[];
extern const u32 gMonPalette_Raikou[];
extern const u32 gMonBackPic_Raikou[];
extern const u32 gMonShinyPalette_Raikou[];
extern const u32 gMonStillFrontPic_Raikou[];
extern const u8 gMonIcon_Raikou[];
extern const u8 gMonFootprint_Raikou[];
extern const u32 gMonFrontPic_Entei[];
extern const u32 gMonPalette_Entei[];
extern const u32 gMonBackPic_Entei[];
extern const u32 gMonShinyPalette_Entei[];
extern const u32 gMonStillFrontPic_Entei[];
extern const u8 gMonIcon_Entei[];
extern const u8 gMonFootprint_Entei[];
extern const u32 gMonFrontPic_Suicune[];
extern const u32 gMonPalette_Suicune[];
extern const u32 gMonBackPic_Suicune[];
extern const u32 gMonShinyPalette_Suicune[];
extern const u32 gMonStillFrontPic_Suicune[];
extern const u8 gMonIcon_Suicune[];
extern const u8 gMonFootprint_Suicune[];
extern const u32 gMonFrontPic_Larvitar[];
extern const u32 gMonPalette_Larvitar[];
extern const u32 gMonBackPic_Larvitar[];
extern const u32 gMonShinyPalette_Larvitar[];
extern const u32 gMonStillFrontPic_Larvitar[];
extern const u8 gMonIcon_Larvitar[];
extern const u8 gMonFootprint_Larvitar[];
extern const u32 gMonFrontPic_Pupitar[];
extern const u32 gMonPalette_Pupitar[];
extern const u32 gMonBackPic_Pupitar[];
extern const u32 gMonShinyPalette_Pupitar[];
extern const u32 gMonStillFrontPic_Pupitar[];
extern const u8 gMonIcon_Pupitar[];
extern const u8 gMonFootprint_Pupitar[];
extern const u32 gMonFrontPic_Tyranitar[];
extern const u32 gMonPalette_Tyranitar[];
extern const u32 gMonBackPic_Tyranitar[];
extern const u32 gMonShinyPalette_Tyranitar[];
extern const u32 gMonStillFrontPic_Tyranitar[];
extern const u8 gMonIcon_Tyranitar[];
extern const u8 gMonFootprint_Tyranitar[];
extern const u32 gMonFrontPic_Lugia[];
extern const u32 gMonPalette_Lugia[];
extern const u32 gMonBackPic_Lugia[];
extern const u32 gMonShinyPalette_Lugia[];
extern const u32 gMonStillFrontPic_Lugia[];
extern const u8 gMonIcon_Lugia[];
extern const u8 gMonFootprint_Lugia[];
extern const u32 gMonFrontPic_HoOh[];
extern const u32 gMonPalette_HoOh[];
extern const u32 gMonBackPic_HoOh[];
extern const u32 gMonShinyPalette_HoOh[];
extern const u32 gMonStillFrontPic_HoOh[];
extern const u8 gMonIcon_HoOh[];
extern const u8 gMonFootprint_HoOh[];
extern const u32 gMonFrontPic_Celebi[];
extern const u32 gMonPalette_Celebi[];
extern const u32 gMonBackPic_Celebi[];
extern const u32 gMonShinyPalette_Celebi[];
extern const u32 gMonStillFrontPic_Celebi[];
extern const u8 gMonIcon_Celebi[];
extern const u8 gMonFootprint_Celebi[];
extern const u32 gMonFrontPic_QuestionMark[];
extern const u32 gMonPalette_QuestionMark[];
extern const u32 gMonBackPic_QuestionMark[];
extern const u32 gMonShinyPalette_QuestionMark[];
extern const u32 gMonFrontPic_Treecko[];
extern const u32 gMonPalette_Treecko[];
extern const u32 gMonBackPic_Treecko[];
extern const u32 gMonShinyPalette_Treecko[];
extern const u32 gMonStillFrontPic_Treecko[];
extern const u8 gMonIcon_Treecko[];
extern const u8 gMonFootprint_Treecko[];
extern const u32 gMonFrontPic_Grovyle[];
extern const u32 gMonPalette_Grovyle[];
extern const u32 gMonBackPic_Grovyle[];
extern const u32 gMonShinyPalette_Grovyle[];
extern const u32 gMonStillFrontPic_Grovyle[];
extern const u8 gMonIcon_Grovyle[];
extern const u8 gMonFootprint_Grovyle[];
extern const u32 gMonFrontPic_Sceptile[];
extern const u32 gMonPalette_Sceptile[];
extern const u32 gMonBackPic_Sceptile[];
extern const u32 gMonShinyPalette_Sceptile[];
extern const u32 gMonStillFrontPic_Sceptile[];
extern const u8 gMonIcon_Sceptile[];
extern const u8 gMonFootprint_Sceptile[];
extern const u32 gMonFrontPic_Torchic[];
extern const u32 gMonPalette_Torchic[];
extern const u32 gMonBackPic_Torchic[];
extern const u32 gMonShinyPalette_Torchic[];
extern const u32 gMonStillFrontPic_Torchic[];
extern const u8 gMonIcon_Torchic[];
extern const u8 gMonFootprint_Torchic[];
extern const u32 gMonFrontPic_Combusken[];
extern const u32 gMonPalette_Combusken[];
extern const u32 gMonBackPic_Combusken[];
extern const u32 gMonShinyPalette_Combusken[];
extern const u32 gMonStillFrontPic_Combusken[];
extern const u8 gMonIcon_Combusken[];
extern const u8 gMonFootprint_Combusken[];
extern const u32 gMonFrontPic_Blaziken[];
extern const u32 gMonPalette_Blaziken[];
extern const u32 gMonBackPic_Blaziken[];
extern const u32 gMonShinyPalette_Blaziken[];
extern const u32 gMonStillFrontPic_Blaziken[];
extern const u8 gMonIcon_Blaziken[];
extern const u8 gMonFootprint_Blaziken[];
extern const u32 gMonFrontPic_Mudkip[];
extern const u32 gMonPalette_Mudkip[];
extern const u32 gMonBackPic_Mudkip[];
extern const u32 gMonShinyPalette_Mudkip[];
extern const u32 gMonStillFrontPic_Mudkip[];
extern const u8 gMonIcon_Mudkip[];
extern const u8 gMonFootprint_Mudkip[];
extern const u32 gMonFrontPic_Marshtomp[];
extern const u32 gMonPalette_Marshtomp[];
extern const u32 gMonBackPic_Marshtomp[];
extern const u32 gMonShinyPalette_Marshtomp[];
extern const u32 gMonStillFrontPic_Marshtomp[];
extern const u8 gMonIcon_Marshtomp[];
extern const u8 gMonFootprint_Marshtomp[];
extern const u32 gMonFrontPic_Swampert[];
extern const u32 gMonPalette_Swampert[];
extern const u32 gMonBackPic_Swampert[];
extern const u32 gMonShinyPalette_Swampert[];
extern const u32 gMonStillFrontPic_Swampert[];
extern const u8 gMonIcon_Swampert[];
extern const u8 gMonFootprint_Swampert[];
extern const u32 gMonFrontPic_Poochyena[];
extern const u32 gMonPalette_Poochyena[];
extern const u32 gMonBackPic_Poochyena[];
extern const u32 gMonShinyPalette_Poochyena[];
extern const u32 gMonStillFrontPic_Poochyena[];
extern const u8 gMonIcon_Poochyena[];
extern const u8 gMonFootprint_Poochyena[];
extern const u32 gMonFrontPic_Mightyena[];
extern const u32 gMonPalette_Mightyena[];
extern const u32 gMonBackPic_Mightyena[];
extern const u32 gMonShinyPalette_Mightyena[];
extern const u32 gMonStillFrontPic_Mightyena[];
extern const u8 gMonIcon_Mightyena[];
extern const u8 gMonFootprint_Mightyena[];
extern const u32 gMonFrontPic_Zigzagoon[];
extern const u32 gMonPalette_Zigzagoon[];
extern const u32 gMonBackPic_Zigzagoon[];
extern const u32 gMonShinyPalette_Zigzagoon[];
extern const u32 gMonStillFrontPic_Zigzagoon[];
extern const u8 gMonIcon_Zigzagoon[];
extern const u8 gMonFootprint_Zigzagoon[];
extern const u32 gMonFrontPic_Linoone[];
extern const u32 gMonPalette_Linoone[];
extern const u32 gMonBackPic_Linoone[];
extern const u32 gMonShinyPalette_Linoone[];
extern const u32 gMonStillFrontPic_Linoone[];
extern const u8 gMonIcon_Linoone[];
extern const u8 gMonFootprint_Linoone[];
extern const u32 gMonFrontPic_Wurmple[];
extern const u32 gMonPalette_Wurmple[];
extern const u32 gMonBackPic_Wurmple[];
extern const u32 gMonShinyPalette_Wurmple[];
extern const u32 gMonStillFrontPic_Wurmple[];
extern const u8 gMonIcon_Wurmple[];
extern const u8 gMonFootprint_Wurmple[];
extern const u32 gMonFrontPic_Silcoon[];
extern const u32 gMonPalette_Silcoon[];
extern const u32 gMonBackPic_Silcoon[];
extern const u32 gMonShinyPalette_Silcoon[];
extern const u32 gMonStillFrontPic_Silcoon[];
extern const u8 gMonIcon_Silcoon[];
extern const u8 gMonFootprint_Silcoon[];
extern const u32 gMonFrontPic_Beautifly[];
extern const u32 gMonPalette_Beautifly[];
extern const u32 gMonBackPic_Beautifly[];
extern const u32 gMonShinyPalette_Beautifly[];
extern const u32 gMonStillFrontPic_Beautifly[];
extern const u8 gMonIcon_Beautifly[];
extern const u8 gMonFootprint_Beautifly[];
extern const u32 gMonFrontPic_Cascoon[];
extern const u32 gMonPalette_Cascoon[];
extern const u32 gMonBackPic_Cascoon[];
extern const u32 gMonShinyPalette_Cascoon[];
extern const u32 gMonStillFrontPic_Cascoon[];
extern const u8 gMonIcon_Cascoon[];
extern const u8 gMonFootprint_Cascoon[];
extern const u32 gMonFrontPic_Dustox[];
extern const u32 gMonPalette_Dustox[];
extern const u32 gMonBackPic_Dustox[];
extern const u32 gMonShinyPalette_Dustox[];
extern const u32 gMonStillFrontPic_Dustox[];
extern const u8 gMonIcon_Dustox[];
extern const u8 gMonFootprint_Dustox[];
extern const u32 gMonFrontPic_Lotad[];
extern const u32 gMonPalette_Lotad[];
extern const u32 gMonBackPic_Lotad[];
extern const u32 gMonShinyPalette_Lotad[];
extern const u32 gMonStillFrontPic_Lotad[];
extern const u8 gMonIcon_Lotad[];
extern const u8 gMonFootprint_Lotad[];
extern const u32 gMonFrontPic_Lombre[];
extern const u32 gMonPalette_Lombre[];
extern const u32 gMonBackPic_Lombre[];
extern const u32 gMonShinyPalette_Lombre[];
extern const u32 gMonStillFrontPic_Lombre[];
extern const u8 gMonIcon_Lombre[];
extern const u8 gMonFootprint_Lombre[];
extern const u32 gMonFrontPic_Ludicolo[];
extern const u32 gMonPalette_Ludicolo[];
extern const u32 gMonBackPic_Ludicolo[];
extern const u32 gMonShinyPalette_Ludicolo[];
extern const u32 gMonStillFrontPic_Ludicolo[];
extern const u8 gMonIcon_Ludicolo[];
extern const u8 gMonFootprint_Ludicolo[];
extern const u32 gMonFrontPic_Seedot[];
extern const u32 gMonPalette_Seedot[];
extern const u32 gMonBackPic_Seedot[];
extern const u32 gMonShinyPalette_Seedot[];
extern const u32 gMonStillFrontPic_Seedot[];
extern const u8 gMonIcon_Seedot[];
extern const u8 gMonFootprint_Seedot[];
extern const u32 gMonFrontPic_Nuzleaf[];
extern const u32 gMonPalette_Nuzleaf[];
extern const u32 gMonBackPic_Nuzleaf[];
extern const u32 gMonShinyPalette_Nuzleaf[];
extern const u32 gMonStillFrontPic_Nuzleaf[];
extern const u8 gMonIcon_Nuzleaf[];
extern const u8 gMonFootprint_Nuzleaf[];
extern const u32 gMonFrontPic_Shiftry[];
extern const u32 gMonPalette_Shiftry[];
extern const u32 gMonBackPic_Shiftry[];
extern const u32 gMonShinyPalette_Shiftry[];
extern const u32 gMonStillFrontPic_Shiftry[];
extern const u8 gMonIcon_Shiftry[];
extern const u8 gMonFootprint_Shiftry[];
extern const u32 gMonFrontPic_Nincada[];
extern const u32 gMonPalette_Nincada[];
extern const u32 gMonBackPic_Nincada[];
extern const u32 gMonShinyPalette_Nincada[];
extern const u32 gMonStillFrontPic_Nincada[];
extern const u8 gMonIcon_Nincada[];
extern const u8 gMonFootprint_Nincada[];
extern const u32 gMonFrontPic_Ninjask[];
extern const u32 gMonPalette_Ninjask[];
extern const u32 gMonBackPic_Ninjask[];
extern const u32 gMonShinyPalette_Ninjask[];
extern const u32 gMonStillFrontPic_Ninjask[];
extern const u8 gMonIcon_Ninjask[];
extern const u8 gMonFootprint_Ninjask[];
extern const u32 gMonFrontPic_Shedinja[];
extern const u32 gMonPalette_Shedinja[];
extern const u32 gMonBackPic_Shedinja[];
extern const u32 gMonShinyPalette_Shedinja[];
extern const u32 gMonStillFrontPic_Shedinja[];
extern const u8 gMonIcon_Shedinja[];
extern const u8 gMonFootprint_Shedinja[];
extern const u32 gMonFrontPic_Taillow[];
extern const u32 gMonPalette_Taillow[];
extern const u32 gMonBackPic_Taillow[];
extern const u32 gMonShinyPalette_Taillow[];
extern const u32 gMonStillFrontPic_Taillow[];
extern const u8 gMonIcon_Taillow[];
extern const u8 gMonFootprint_Taillow[];
extern const u32 gMonFrontPic_Swellow[];
extern const u32 gMonPalette_Swellow[];
extern const u32 gMonBackPic_Swellow[];
extern const u32 gMonShinyPalette_Swellow[];
extern const u32 gMonStillFrontPic_Swellow[];
extern const u8 gMonIcon_Swellow[];
extern const u8 gMonFootprint_Swellow[];
extern const u32 gMonFrontPic_Shroomish[];
extern const u32 gMonPalette_Shroomish[];
extern const u32 gMonBackPic_Shroomish[];
extern const u32 gMonShinyPalette_Shroomish[];
extern const u32 gMonStillFrontPic_Shroomish[];
extern const u8 gMonIcon_Shroomish[];
extern const u8 gMonFootprint_Shroomish[];
extern const u32 gMonFrontPic_Breloom[];
extern const u32 gMonPalette_Breloom[];
extern const u32 gMonBackPic_Breloom[];
extern const u32 gMonShinyPalette_Breloom[];
extern const u32 gMonStillFrontPic_Breloom[];
extern const u8 gMonIcon_Breloom[];
extern const u8 gMonFootprint_Breloom[];
extern const u32 gMonFrontPic_Spinda[];
extern const u32 gMonPalette_Spinda[];
extern const u32 gMonBackPic_Spinda[];
extern const u32 gMonShinyPalette_Spinda[];
extern const u32 gMonStillFrontPic_Spinda[];
extern const u8 gMonIcon_Spinda[];
extern const u8 gMonFootprint_Spinda[];
extern const u32 gMonFrontPic_Wingull[];
extern const u32 gMonPalette_Wingull[];
extern const u32 gMonBackPic_Wingull[];
extern const u32 gMonShinyPalette_Wingull[];
extern const u32 gMonStillFrontPic_Wingull[];
extern const u8 gMonIcon_Wingull[];
extern const u8 gMonFootprint_Wingull[];
extern const u32 gMonFrontPic_Pelipper[];
extern const u32 gMonPalette_Pelipper[];
extern const u32 gMonBackPic_Pelipper[];
extern const u32 gMonShinyPalette_Pelipper[];
extern const u32 gMonStillFrontPic_Pelipper[];
extern const u8 gMonIcon_Pelipper[];
extern const u8 gMonFootprint_Pelipper[];
extern const u32 gMonFrontPic_Surskit[];
extern const u32 gMonPalette_Surskit[];
extern const u32 gMonBackPic_Surskit[];
extern const u32 gMonShinyPalette_Surskit[];
extern const u32 gMonStillFrontPic_Surskit[];
extern const u8 gMonIcon_Surskit[];
extern const u8 gMonFootprint_Surskit[];
extern const u32 gMonFrontPic_Masquerain[];
extern const u32 gMonPalette_Masquerain[];
extern const u32 gMonBackPic_Masquerain[];
extern const u32 gMonShinyPalette_Masquerain[];
extern const u32 gMonStillFrontPic_Masquerain[];
extern const u8 gMonIcon_Masquerain[];
extern const u8 gMonFootprint_Masquerain[];
extern const u32 gMonFrontPic_Wailmer[];
extern const u32 gMonPalette_Wailmer[];
extern const u32 gMonBackPic_Wailmer[];
extern const u32 gMonShinyPalette_Wailmer[];
extern const u32 gMonStillFrontPic_Wailmer[];
extern const u8 gMonIcon_Wailmer[];
extern const u8 gMonFootprint_Wailmer[];
extern const u32 gMonFrontPic_Wailord[];
extern const u32 gMonPalette_Wailord[];
extern const u32 gMonBackPic_Wailord[];
extern const u32 gMonShinyPalette_Wailord[];
extern const u32 gMonStillFrontPic_Wailord[];
extern const u8 gMonIcon_Wailord[];
extern const u8 gMonFootprint_Wailord[];
extern const u32 gMonFrontPic_Skitty[];
extern const u32 gMonPalette_Skitty[];
extern const u32 gMonBackPic_Skitty[];
extern const u32 gMonShinyPalette_Skitty[];
extern const u32 gMonStillFrontPic_Skitty[];
extern const u8 gMonIcon_Skitty[];
extern const u8 gMonFootprint_Skitty[];
extern const u32 gMonFrontPic_Delcatty[];
extern const u32 gMonPalette_Delcatty[];
extern const u32 gMonBackPic_Delcatty[];
extern const u32 gMonShinyPalette_Delcatty[];
extern const u32 gMonStillFrontPic_Delcatty[];
extern const u8 gMonIcon_Delcatty[];
extern const u8 gMonFootprint_Delcatty[];
extern const u32 gMonFrontPic_Kecleon[];
extern const u32 gMonPalette_Kecleon[];
extern const u32 gMonBackPic_Kecleon[];
extern const u32 gMonShinyPalette_Kecleon[];
extern const u32 gMonStillFrontPic_Kecleon[];
extern const u8 gMonIcon_Kecleon[];
extern const u8 gMonFootprint_Kecleon[];
extern const u32 gMonFrontPic_Baltoy[];
extern const u32 gMonPalette_Baltoy[];
extern const u32 gMonBackPic_Baltoy[];
extern const u32 gMonShinyPalette_Baltoy[];
extern const u32 gMonStillFrontPic_Baltoy[];
extern const u8 gMonIcon_Baltoy[];
extern const u8 gMonFootprint_Baltoy[];
extern const u32 gMonFrontPic_Claydol[];
extern const u32 gMonPalette_Claydol[];
extern const u32 gMonBackPic_Claydol[];
extern const u32 gMonShinyPalette_Claydol[];
extern const u32 gMonStillFrontPic_Claydol[];
extern const u8 gMonIcon_Claydol[];
extern const u8 gMonFootprint_Claydol[];
extern const u32 gMonFrontPic_Nosepass[];
extern const u32 gMonPalette_Nosepass[];
extern const u32 gMonBackPic_Nosepass[];
extern const u32 gMonShinyPalette_Nosepass[];
extern const u32 gMonStillFrontPic_Nosepass[];
extern const u8 gMonIcon_Nosepass[];
extern const u8 gMonFootprint_Nosepass[];
extern const u32 gMonFrontPic_Torkoal[];
extern const u32 gMonPalette_Torkoal[];
extern const u32 gMonBackPic_Torkoal[];
extern const u32 gMonShinyPalette_Torkoal[];
extern const u32 gMonStillFrontPic_Torkoal[];
extern const u8 gMonIcon_Torkoal[];
extern const u8 gMonFootprint_Torkoal[];
extern const u32 gMonFrontPic_Sableye[];
extern const u32 gMonPalette_Sableye[];
extern const u32 gMonBackPic_Sableye[];
extern const u32 gMonShinyPalette_Sableye[];
extern const u32 gMonStillFrontPic_Sableye[];
extern const u8 gMonIcon_Sableye[];
extern const u8 gMonFootprint_Sableye[];
extern const u32 gMonFrontPic_Barboach[];
extern const u32 gMonPalette_Barboach[];
extern const u32 gMonBackPic_Barboach[];
extern const u32 gMonShinyPalette_Barboach[];
extern const u32 gMonStillFrontPic_Barboach[];
extern const u8 gMonIcon_Barboach[];
extern const u8 gMonFootprint_Barboach[];
extern const u32 gMonFrontPic_Whiscash[];
extern const u32 gMonPalette_Whiscash[];
extern const u32 gMonBackPic_Whiscash[];
extern const u32 gMonShinyPalette_Whiscash[];
extern const u32 gMonStillFrontPic_Whiscash[];
extern const u8 gMonIcon_Whiscash[];
extern const u8 gMonFootprint_Whiscash[];
extern const u32 gMonFrontPic_Luvdisc[];
extern const u32 gMonPalette_Luvdisc[];
extern const u32 gMonBackPic_Luvdisc[];
extern const u32 gMonShinyPalette_Luvdisc[];
extern const u32 gMonStillFrontPic_Luvdisc[];
extern const u8 gMonIcon_Luvdisc[];
extern const u8 gMonFootprint_Luvdisc[];
extern const u32 gMonFrontPic_Corphish[];
extern const u32 gMonPalette_Corphish[];
extern const u32 gMonBackPic_Corphish[];
extern const u32 gMonShinyPalette_Corphish[];
extern const u32 gMonStillFrontPic_Corphish[];
extern const u8 gMonIcon_Corphish[];
extern const u8 gMonFootprint_Corphish[];
extern const u32 gMonFrontPic_Crawdaunt[];
extern const u32 gMonPalette_Crawdaunt[];
extern const u32 gMonBackPic_Crawdaunt[];
extern const u32 gMonShinyPalette_Crawdaunt[];
extern const u32 gMonStillFrontPic_Crawdaunt[];
extern const u8 gMonIcon_Crawdaunt[];
extern const u8 gMonFootprint_Crawdaunt[];
extern const u32 gMonFrontPic_Feebas[];
extern const u32 gMonPalette_Feebas[];
extern const u32 gMonBackPic_Feebas[];
extern const u32 gMonShinyPalette_Feebas[];
extern const u32 gMonStillFrontPic_Feebas[];
extern const u8 gMonIcon_Feebas[];
extern const u8 gMonFootprint_Feebas[];
extern const u32 gMonFrontPic_Milotic[];
extern const u32 gMonPalette_Milotic[];
extern const u32 gMonBackPic_Milotic[];
extern const u32 gMonShinyPalette_Milotic[];
extern const u32 gMonStillFrontPic_Milotic[];
extern const u8 gMonIcon_Milotic[];
extern const u8 gMonFootprint_Milotic[];
extern const u32 gMonFrontPic_Carvanha[];
extern const u32 gMonPalette_Carvanha[];
extern const u32 gMonBackPic_Carvanha[];
extern const u32 gMonShinyPalette_Carvanha[];
extern const u32 gMonStillFrontPic_Carvanha[];
extern const u8 gMonIcon_Carvanha[];
extern const u8 gMonFootprint_Carvanha[];
extern const u32 gMonFrontPic_Sharpedo[];
extern const u32 gMonPalette_Sharpedo[];
extern const u32 gMonBackPic_Sharpedo[];
extern const u32 gMonShinyPalette_Sharpedo[];
extern const u32 gMonStillFrontPic_Sharpedo[];
extern const u8 gMonIcon_Sharpedo[];
extern const u8 gMonFootprint_Sharpedo[];
extern const u32 gMonFrontPic_Trapinch[];
extern const u32 gMonPalette_Trapinch[];
extern const u32 gMonBackPic_Trapinch[];
extern const u32 gMonShinyPalette_Trapinch[];
extern const u32 gMonStillFrontPic_Trapinch[];
extern const u8 gMonIcon_Trapinch[];
extern const u8 gMonFootprint_Trapinch[];
extern const u32 gMonFrontPic_Vibrava[];
extern const u32 gMonPalette_Vibrava[];
extern const u32 gMonBackPic_Vibrava[];
extern const u32 gMonShinyPalette_Vibrava[];
extern const u32 gMonStillFrontPic_Vibrava[];
extern const u8 gMonIcon_Vibrava[];
extern const u8 gMonFootprint_Vibrava[];
extern const u32 gMonFrontPic_Flygon[];
extern const u32 gMonPalette_Flygon[];
extern const u32 gMonBackPic_Flygon[];
extern const u32 gMonShinyPalette_Flygon[];
extern const u32 gMonStillFrontPic_Flygon[];
extern const u8 gMonIcon_Flygon[];
extern const u8 gMonFootprint_Flygon[];
extern const u32 gMonFrontPic_Makuhita[];
extern const u32 gMonPalette_Makuhita[];
extern const u32 gMonBackPic_Makuhita[];
extern const u32 gMonShinyPalette_Makuhita[];
extern const u32 gMonStillFrontPic_Makuhita[];
extern const u8 gMonIcon_Makuhita[];
extern const u8 gMonFootprint_Makuhita[];
extern const u32 gMonFrontPic_Hariyama[];
extern const u32 gMonPalette_Hariyama[];
extern const u32 gMonBackPic_Hariyama[];
extern const u32 gMonShinyPalette_Hariyama[];
extern const u32 gMonStillFrontPic_Hariyama[];
extern const u8 gMonIcon_Hariyama[];
extern const u8 gMonFootprint_Hariyama[];
extern const u32 gMonFrontPic_Electrike[];
extern const u32 gMonPalette_Electrike[];
extern const u32 gMonBackPic_Electrike[];
extern const u32 gMonShinyPalette_Electrike[];
extern const u32 gMonStillFrontPic_Electrike[];
extern const u8 gMonIcon_Electrike[];
extern const u8 gMonFootprint_Electrike[];
extern const u32 gMonFrontPic_Manectric[];
extern const u32 gMonPalette_Manectric[];
extern const u32 gMonBackPic_Manectric[];
extern const u32 gMonShinyPalette_Manectric[];
extern const u32 gMonStillFrontPic_Manectric[];
extern const u8 gMonIcon_Manectric[];
extern const u8 gMonFootprint_Manectric[];
extern const u32 gMonFrontPic_Numel[];
extern const u32 gMonPalette_Numel[];
extern const u32 gMonBackPic_Numel[];
extern const u32 gMonShinyPalette_Numel[];
extern const u32 gMonStillFrontPic_Numel[];
extern const u8 gMonIcon_Numel[];
extern const u8 gMonFootprint_Numel[];
extern const u32 gMonFrontPic_Camerupt[];
extern const u32 gMonPalette_Camerupt[];
extern const u32 gMonBackPic_Camerupt[];
extern const u32 gMonShinyPalette_Camerupt[];
extern const u32 gMonStillFrontPic_Camerupt[];
extern const u8 gMonIcon_Camerupt[];
extern const u8 gMonFootprint_Camerupt[];
extern const u32 gMonFrontPic_Spheal[];
extern const u32 gMonPalette_Spheal[];
extern const u32 gMonBackPic_Spheal[];
extern const u32 gMonShinyPalette_Spheal[];
extern const u32 gMonStillFrontPic_Spheal[];
extern const u8 gMonIcon_Spheal[];
extern const u8 gMonFootprint_Spheal[];
extern const u32 gMonFrontPic_Sealeo[];
extern const u32 gMonPalette_Sealeo[];
extern const u32 gMonBackPic_Sealeo[];
extern const u32 gMonShinyPalette_Sealeo[];
extern const u32 gMonStillFrontPic_Sealeo[];
extern const u8 gMonIcon_Sealeo[];
extern const u8 gMonFootprint_Sealeo[];
extern const u32 gMonFrontPic_Walrein[];
extern const u32 gMonPalette_Walrein[];
extern const u32 gMonBackPic_Walrein[];
extern const u32 gMonShinyPalette_Walrein[];
extern const u32 gMonStillFrontPic_Walrein[];
extern const u8 gMonIcon_Walrein[];
extern const u8 gMonFootprint_Walrein[];
extern const u32 gMonFrontPic_Cacnea[];
extern const u32 gMonPalette_Cacnea[];
extern const u32 gMonBackPic_Cacnea[];
extern const u32 gMonShinyPalette_Cacnea[];
extern const u32 gMonStillFrontPic_Cacnea[];
extern const u8 gMonIcon_Cacnea[];
extern const u8 gMonFootprint_Cacnea[];
extern const u32 gMonFrontPic_Cacturne[];
extern const u32 gMonPalette_Cacturne[];
extern const u32 gMonBackPic_Cacturne[];
extern const u32 gMonShinyPalette_Cacturne[];
extern const u32 gMonStillFrontPic_Cacturne[];
extern const u8 gMonIcon_Cacturne[];
extern const u8 gMonFootprint_Cacturne[];
extern const u32 gMonFrontPic_Snorunt[];
extern const u32 gMonPalette_Snorunt[];
extern const u32 gMonBackPic_Snorunt[];
extern const u32 gMonShinyPalette_Snorunt[];
extern const u32 gMonStillFrontPic_Snorunt[];
extern const u8 gMonIcon_Snorunt[];
extern const u8 gMonFootprint_Snorunt[];
extern const u32 gMonFrontPic_Glalie[];
extern const u32 gMonPalette_Glalie[];
extern const u32 gMonBackPic_Glalie[];
extern const u32 gMonShinyPalette_Glalie[];
extern const u32 gMonStillFrontPic_Glalie[];
extern const u8 gMonIcon_Glalie[];
extern const u8 gMonFootprint_Glalie[];
extern const u32 gMonFrontPic_Lunatone[];
extern const u32 gMonPalette_Lunatone[];
extern const u32 gMonBackPic_Lunatone[];
extern const u32 gMonShinyPalette_Lunatone[];
extern const u32 gMonStillFrontPic_Lunatone[];
extern const u8 gMonIcon_Lunatone[];
extern const u8 gMonFootprint_Lunatone[];
extern const u32 gMonFrontPic_Solrock[];
extern const u32 gMonPalette_Solrock[];
extern const u32 gMonBackPic_Solrock[];
extern const u32 gMonShinyPalette_Solrock[];
extern const u32 gMonStillFrontPic_Solrock[];
extern const u8 gMonIcon_Solrock[];
extern const u8 gMonFootprint_Solrock[];
extern const u32 gMonFrontPic_Azurill[];
extern const u32 gMonPalette_Azurill[];
extern const u32 gMonBackPic_Azurill[];
extern const u32 gMonShinyPalette_Azurill[];
extern const u32 gMonStillFrontPic_Azurill[];
extern const u8 gMonIcon_Azurill[];
extern const u8 gMonFootprint_Azurill[];
extern const u32 gMonFrontPic_Spoink[];
extern const u32 gMonPalette_Spoink[];
extern const u32 gMonBackPic_Spoink[];
extern const u32 gMonShinyPalette_Spoink[];
extern const u32 gMonStillFrontPic_Spoink[];
extern const u8 gMonIcon_Spoink[];
extern const u8 gMonFootprint_Spoink[];
extern const u32 gMonFrontPic_Grumpig[];
extern const u32 gMonPalette_Grumpig[];
extern const u32 gMonBackPic_Grumpig[];
extern const u32 gMonShinyPalette_Grumpig[];
extern const u32 gMonStillFrontPic_Grumpig[];
extern const u8 gMonIcon_Grumpig[];
extern const u8 gMonFootprint_Grumpig[];
extern const u32 gMonFrontPic_Plusle[];
extern const u32 gMonPalette_Plusle[];
extern const u32 gMonBackPic_Plusle[];
extern const u32 gMonShinyPalette_Plusle[];
extern const u32 gMonStillFrontPic_Plusle[];
extern const u8 gMonIcon_Plusle[];
extern const u8 gMonFootprint_Plusle[];
extern const u32 gMonFrontPic_Minun[];
extern const u32 gMonPalette_Minun[];
extern const u32 gMonBackPic_Minun[];
extern const u32 gMonShinyPalette_Minun[];
extern const u32 gMonStillFrontPic_Minun[];
extern const u8 gMonIcon_Minun[];
extern const u8 gMonFootprint_Minun[];
extern const u32 gMonFrontPic_Mawile[];
extern const u32 gMonPalette_Mawile[];
extern const u32 gMonBackPic_Mawile[];
extern const u32 gMonShinyPalette_Mawile[];
extern const u32 gMonStillFrontPic_Mawile[];
extern const u8 gMonIcon_Mawile[];
extern const u8 gMonFootprint_Mawile[];
extern const u32 gMonFrontPic_Meditite[];
extern const u32 gMonPalette_Meditite[];
extern const u32 gMonBackPic_Meditite[];
extern const u32 gMonShinyPalette_Meditite[];
extern const u32 gMonStillFrontPic_Meditite[];
extern const u8 gMonIcon_Meditite[];
extern const u8 gMonFootprint_Meditite[];
extern const u32 gMonFrontPic_Medicham[];
extern const u32 gMonPalette_Medicham[];
extern const u32 gMonBackPic_Medicham[];
extern const u32 gMonShinyPalette_Medicham[];
extern const u32 gMonStillFrontPic_Medicham[];
extern const u8 gMonIcon_Medicham[];
extern const u8 gMonFootprint_Medicham[];
extern const u32 gMonFrontPic_Swablu[];
extern const u32 gMonPalette_Swablu[];
extern const u32 gMonBackPic_Swablu[];
extern const u32 gMonShinyPalette_Swablu[];
extern const u32 gMonStillFrontPic_Swablu[];
extern const u8 gMonIcon_Swablu[];
extern const u8 gMonFootprint_Swablu[];
extern const u32 gMonFrontPic_Altaria[];
extern const u32 gMonPalette_Altaria[];
extern const u32 gMonBackPic_Altaria[];
extern const u32 gMonShinyPalette_Altaria[];
extern const u32 gMonStillFrontPic_Altaria[];
extern const u8 gMonIcon_Altaria[];
extern const u8 gMonFootprint_Altaria[];
extern const u32 gMonFrontPic_Wynaut[];
extern const u32 gMonPalette_Wynaut[];
extern const u32 gMonBackPic_Wynaut[];
extern const u32 gMonShinyPalette_Wynaut[];
extern const u32 gMonStillFrontPic_Wynaut[];
extern const u8 gMonIcon_Wynaut[];
extern const u8 gMonFootprint_Wynaut[];
extern const u32 gMonFrontPic_Duskull[];
extern const u32 gMonPalette_Duskull[];
extern const u32 gMonBackPic_Duskull[];
extern const u32 gMonShinyPalette_Duskull[];
extern const u32 gMonStillFrontPic_Duskull[];
extern const u8 gMonIcon_Duskull[];
extern const u8 gMonFootprint_Duskull[];
extern const u32 gMonFrontPic_Dusclops[];
extern const u32 gMonPalette_Dusclops[];
extern const u32 gMonBackPic_Dusclops[];
extern const u32 gMonShinyPalette_Dusclops[];
extern const u32 gMonStillFrontPic_Dusclops[];
extern const u8 gMonIcon_Dusclops[];
extern const u8 gMonFootprint_Dusclops[];
extern const u32 gMonFrontPic_Roselia[];
extern const u32 gMonPalette_Roselia[];
extern const u32 gMonBackPic_Roselia[];
extern const u32 gMonShinyPalette_Roselia[];
extern const u32 gMonStillFrontPic_Roselia[];
extern const u8 gMonIcon_Roselia[];
extern const u8 gMonFootprint_Roselia[];
extern const u32 gMonFrontPic_Slakoth[];
extern const u32 gMonPalette_Slakoth[];
extern const u32 gMonBackPic_Slakoth[];
extern const u32 gMonShinyPalette_Slakoth[];
extern const u32 gMonStillFrontPic_Slakoth[];
extern const u8 gMonIcon_Slakoth[];
extern const u8 gMonFootprint_Slakoth[];
extern const u32 gMonFrontPic_Vigoroth[];
extern const u32 gMonPalette_Vigoroth[];
extern const u32 gMonBackPic_Vigoroth[];
extern const u32 gMonShinyPalette_Vigoroth[];
extern const u32 gMonStillFrontPic_Vigoroth[];
extern const u8 gMonIcon_Vigoroth[];
extern const u8 gMonFootprint_Vigoroth[];
extern const u32 gMonFrontPic_Slaking[];
extern const u32 gMonPalette_Slaking[];
extern const u32 gMonBackPic_Slaking[];
extern const u32 gMonShinyPalette_Slaking[];
extern const u32 gMonStillFrontPic_Slaking[];
extern const u8 gMonIcon_Slaking[];
extern const u8 gMonFootprint_Slaking[];
extern const u32 gMonFrontPic_Gulpin[];
extern const u32 gMonPalette_Gulpin[];
extern const u32 gMonBackPic_Gulpin[];
extern const u32 gMonShinyPalette_Gulpin[];
extern const u32 gMonStillFrontPic_Gulpin[];
extern const u8 gMonIcon_Gulpin[];
extern const u8 gMonFootprint_Gulpin[];
extern const u32 gMonFrontPic_Swalot[];
extern const u32 gMonPalette_Swalot[];
extern const u32 gMonBackPic_Swalot[];
extern const u32 gMonShinyPalette_Swalot[];
extern const u32 gMonStillFrontPic_Swalot[];
extern const u8 gMonIcon_Swalot[];
extern const u8 gMonFootprint_Swalot[];
extern const u32 gMonFrontPic_Tropius[];
extern const u32 gMonPalette_Tropius[];
extern const u32 gMonBackPic_Tropius[];
extern const u32 gMonShinyPalette_Tropius[];
extern const u32 gMonStillFrontPic_Tropius[];
extern const u8 gMonIcon_Tropius[];
extern const u8 gMonFootprint_Tropius[];
extern const u32 gMonFrontPic_Whismur[];
extern const u32 gMonPalette_Whismur[];
extern const u32 gMonBackPic_Whismur[];
extern const u32 gMonShinyPalette_Whismur[];
extern const u32 gMonStillFrontPic_Whismur[];
extern const u8 gMonIcon_Whismur[];
extern const u8 gMonFootprint_Whismur[];
extern const u32 gMonFrontPic_Loudred[];
extern const u32 gMonPalette_Loudred[];
extern const u32 gMonBackPic_Loudred[];
extern const u32 gMonShinyPalette_Loudred[];
extern const u32 gMonStillFrontPic_Loudred[];
extern const u8 gMonIcon_Loudred[];
extern const u8 gMonFootprint_Loudred[];
extern const u32 gMonFrontPic_Exploud[];
extern const u32 gMonPalette_Exploud[];
extern const u32 gMonBackPic_Exploud[];
extern const u32 gMonShinyPalette_Exploud[];
extern const u32 gMonStillFrontPic_Exploud[];
extern const u8 gMonIcon_Exploud[];
extern const u8 gMonFootprint_Exploud[];
extern const u32 gMonFrontPic_Clamperl[];
extern const u32 gMonPalette_Clamperl[];
extern const u32 gMonBackPic_Clamperl[];
extern const u32 gMonShinyPalette_Clamperl[];
extern const u32 gMonStillFrontPic_Clamperl[];
extern const u8 gMonIcon_Clamperl[];
extern const u8 gMonFootprint_Clamperl[];
extern const u32 gMonFrontPic_Huntail[];
extern const u32 gMonPalette_Huntail[];
extern const u32 gMonBackPic_Huntail[];
extern const u32 gMonShinyPalette_Huntail[];
extern const u32 gMonStillFrontPic_Huntail[];
extern const u8 gMonIcon_Huntail[];
extern const u8 gMonFootprint_Huntail[];
extern const u32 gMonFrontPic_Gorebyss[];
extern const u32 gMonPalette_Gorebyss[];
extern const u32 gMonBackPic_Gorebyss[];
extern const u32 gMonShinyPalette_Gorebyss[];
extern const u32 gMonStillFrontPic_Gorebyss[];
extern const u8 gMonIcon_Gorebyss[];
extern const u8 gMonFootprint_Gorebyss[];
extern const u32 gMonFrontPic_Absol[];
extern const u32 gMonPalette_Absol[];
extern const u32 gMonBackPic_Absol[];
extern const u32 gMonShinyPalette_Absol[];
extern const u32 gMonStillFrontPic_Absol[];
extern const u8 gMonIcon_Absol[];
extern const u8 gMonFootprint_Absol[];
extern const u32 gMonFrontPic_Shuppet[];
extern const u32 gMonPalette_Shuppet[];
extern const u32 gMonBackPic_Shuppet[];
extern const u32 gMonShinyPalette_Shuppet[];
extern const u32 gMonStillFrontPic_Shuppet[];
extern const u8 gMonIcon_Shuppet[];
extern const u8 gMonFootprint_Shuppet[];
extern const u32 gMonFrontPic_Banette[];
extern const u32 gMonPalette_Banette[];
extern const u32 gMonBackPic_Banette[];
extern const u32 gMonShinyPalette_Banette[];
extern const u32 gMonStillFrontPic_Banette[];
extern const u8 gMonIcon_Banette[];
extern const u8 gMonFootprint_Banette[];
extern const u32 gMonFrontPic_Seviper[];
extern const u32 gMonPalette_Seviper[];
extern const u32 gMonBackPic_Seviper[];
extern const u32 gMonShinyPalette_Seviper[];
extern const u32 gMonStillFrontPic_Seviper[];
extern const u8 gMonIcon_Seviper[];
extern const u8 gMonFootprint_Seviper[];
extern const u32 gMonFrontPic_Zangoose[];
extern const u32 gMonPalette_Zangoose[];
extern const u32 gMonBackPic_Zangoose[];
extern const u32 gMonShinyPalette_Zangoose[];
extern const u32 gMonStillFrontPic_Zangoose[];
extern const u8 gMonIcon_Zangoose[];
extern const u8 gMonFootprint_Zangoose[];
extern const u32 gMonFrontPic_Relicanth[];
extern const u32 gMonPalette_Relicanth[];
extern const u32 gMonBackPic_Relicanth[];
extern const u32 gMonShinyPalette_Relicanth[];
extern const u32 gMonStillFrontPic_Relicanth[];
extern const u8 gMonIcon_Relicanth[];
extern const u8 gMonFootprint_Relicanth[];
extern const u32 gMonFrontPic_Aron[];
extern const u32 gMonPalette_Aron[];
extern const u32 gMonBackPic_Aron[];
extern const u32 gMonShinyPalette_Aron[];
extern const u32 gMonStillFrontPic_Aron[];
extern const u8 gMonIcon_Aron[];
extern const u8 gMonFootprint_Aron[];
extern const u32 gMonFrontPic_Lairon[];
extern const u32 gMonPalette_Lairon[];
extern const u32 gMonBackPic_Lairon[];
extern const u32 gMonShinyPalette_Lairon[];
extern const u32 gMonStillFrontPic_Lairon[];
extern const u8 gMonIcon_Lairon[];
extern const u8 gMonFootprint_Lairon[];
extern const u32 gMonFrontPic_Aggron[];
extern const u32 gMonPalette_Aggron[];
extern const u32 gMonBackPic_Aggron[];
extern const u32 gMonShinyPalette_Aggron[];
extern const u32 gMonStillFrontPic_Aggron[];
extern const u8 gMonIcon_Aggron[];
extern const u8 gMonFootprint_Aggron[];
extern const u32 gMonFrontPic_Castform[];
extern const u32 gMonPalette_Castform[];
extern const u32 gMonBackPic_Castform[];
extern const u32 gMonShinyPalette_Castform[];
extern const u32 gMonStillFrontPic_Castform[];
extern const u8 gMonIcon_Castform[];
extern const u8 gMonFootprint_Castform[];
extern const u32 gMonFrontPic_Volbeat[];
extern const u32 gMonPalette_Volbeat[];
extern const u32 gMonBackPic_Volbeat[];
extern const u32 gMonShinyPalette_Volbeat[];
extern const u32 gMonStillFrontPic_Volbeat[];
extern const u8 gMonIcon_Volbeat[];
extern const u8 gMonFootprint_Volbeat[];
extern const u32 gMonFrontPic_Illumise[];
extern const u32 gMonPalette_Illumise[];
extern const u32 gMonBackPic_Illumise[];
extern const u32 gMonShinyPalette_Illumise[];
extern const u32 gMonStillFrontPic_Illumise[];
extern const u8 gMonIcon_Illumise[];
extern const u8 gMonFootprint_Illumise[];
extern const u32 gMonFrontPic_Lileep[];
extern const u32 gMonPalette_Lileep[];
extern const u32 gMonBackPic_Lileep[];
extern const u32 gMonShinyPalette_Lileep[];
extern const u32 gMonStillFrontPic_Lileep[];
extern const u8 gMonIcon_Lileep[];
extern const u8 gMonFootprint_Lileep[];
extern const u32 gMonFrontPic_Cradily[];
extern const u32 gMonPalette_Cradily[];
extern const u32 gMonBackPic_Cradily[];
extern const u32 gMonShinyPalette_Cradily[];
extern const u32 gMonStillFrontPic_Cradily[];
extern const u8 gMonIcon_Cradily[];
extern const u8 gMonFootprint_Cradily[];
extern const u32 gMonFrontPic_Anorith[];
extern const u32 gMonPalette_Anorith[];
extern const u32 gMonBackPic_Anorith[];
extern const u32 gMonShinyPalette_Anorith[];
extern const u32 gMonStillFrontPic_Anorith[];
extern const u8 gMonIcon_Anorith[];
extern const u8 gMonFootprint_Anorith[];
extern const u32 gMonFrontPic_Armaldo[];
extern const u32 gMonPalette_Armaldo[];
extern const u32 gMonBackPic_Armaldo[];
extern const u32 gMonShinyPalette_Armaldo[];
extern const u32 gMonStillFrontPic_Armaldo[];
extern const u8 gMonIcon_Armaldo[];
extern const u8 gMonFootprint_Armaldo[];
extern const u32 gMonFrontPic_Ralts[];
extern const u32 gMonPalette_Ralts[];
extern const u32 gMonBackPic_Ralts[];
extern const u32 gMonShinyPalette_Ralts[];
extern const u32 gMonStillFrontPic_Ralts[];
extern const u8 gMonIcon_Ralts[];
extern const u8 gMonFootprint_Ralts[];
extern const u32 gMonFrontPic_Kirlia[];
extern const u32 gMonPalette_Kirlia[];
extern const u32 gMonBackPic_Kirlia[];
extern const u32 gMonShinyPalette_Kirlia[];
extern const u32 gMonStillFrontPic_Kirlia[];
extern const u8 gMonIcon_Kirlia[];
extern const u8 gMonFootprint_Kirlia[];
extern const u32 gMonFrontPic_Gardevoir[];
extern const u32 gMonPalette_Gardevoir[];
extern const u32 gMonBackPic_Gardevoir[];
extern const u32 gMonShinyPalette_Gardevoir[];
extern const u32 gMonStillFrontPic_Gardevoir[];
extern const u8 gMonIcon_Gardevoir[];
extern const u8 gMonFootprint_Gardevoir[];
extern const u32 gMonFrontPic_Bagon[];
extern const u32 gMonPalette_Bagon[];
extern const u32 gMonBackPic_Bagon[];
extern const u32 gMonShinyPalette_Bagon[];
extern const u32 gMonStillFrontPic_Bagon[];
extern const u8 gMonIcon_Bagon[];
extern const u8 gMonFootprint_Bagon[];
extern const u32 gMonFrontPic_Shelgon[];
extern const u32 gMonPalette_Shelgon[];
extern const u32 gMonBackPic_Shelgon[];
extern const u32 gMonShinyPalette_Shelgon[];
extern const u32 gMonStillFrontPic_Shelgon[];
extern const u8 gMonIcon_Shelgon[];
extern const u8 gMonFootprint_Shelgon[];
extern const u32 gMonFrontPic_Salamence[];
extern const u32 gMonPalette_Salamence[];
extern const u32 gMonBackPic_Salamence[];
extern const u32 gMonShinyPalette_Salamence[];
extern const u32 gMonStillFrontPic_Salamence[];
extern const u8 gMonIcon_Salamence[];
extern const u8 gMonFootprint_Salamence[];
extern const u32 gMonFrontPic_Beldum[];
extern const u32 gMonPalette_Beldum[];
extern const u32 gMonBackPic_Beldum[];
extern const u32 gMonShinyPalette_Beldum[];
extern const u32 gMonStillFrontPic_Beldum[];
extern const u8 gMonIcon_Beldum[];
extern const u8 gMonFootprint_Beldum[];
extern const u32 gMonFrontPic_Metang[];
extern const u32 gMonPalette_Metang[];
extern const u32 gMonBackPic_Metang[];
extern const u32 gMonShinyPalette_Metang[];
extern const u32 gMonStillFrontPic_Metang[];
extern const u8 gMonIcon_Metang[];
extern const u8 gMonFootprint_Metang[];
extern const u32 gMonFrontPic_Metagross[];
extern const u32 gMonPalette_Metagross[];
extern const u32 gMonBackPic_Metagross[];
extern const u32 gMonShinyPalette_Metagross[];
extern const u32 gMonStillFrontPic_Metagross[];
extern const u8 gMonIcon_Metagross[];
extern const u8 gMonFootprint_Metagross[];
extern const u32 gMonFrontPic_Regirock[];
extern const u32 gMonPalette_Regirock[];
extern const u32 gMonBackPic_Regirock[];
extern const u32 gMonShinyPalette_Regirock[];
extern const u32 gMonStillFrontPic_Regirock[];
extern const u8 gMonIcon_Regirock[];
extern const u8 gMonFootprint_Regirock[];
extern const u32 gMonFrontPic_Regice[];
extern const u32 gMonPalette_Regice[];
extern const u32 gMonBackPic_Regice[];
extern const u32 gMonShinyPalette_Regice[];
extern const u32 gMonStillFrontPic_Regice[];
extern const u8 gMonIcon_Regice[];
extern const u8 gMonFootprint_Regice[];
extern const u32 gMonFrontPic_Registeel[];
extern const u32 gMonPalette_Registeel[];
extern const u32 gMonBackPic_Registeel[];
extern const u32 gMonShinyPalette_Registeel[];
extern const u32 gMonStillFrontPic_Registeel[];
extern const u8 gMonIcon_Registeel[];
extern const u8 gMonFootprint_Registeel[];
extern const u32 gMonFrontPic_Kyogre[];
extern const u32 gMonPalette_Kyogre[];
extern const u32 gMonBackPic_Kyogre[];
extern const u32 gMonShinyPalette_Kyogre[];
extern const u32 gMonStillFrontPic_Kyogre[];
extern const u8 gMonIcon_Kyogre[];
extern const u8 gMonFootprint_Kyogre[];
extern const u32 gMonFrontPic_Groudon[];
extern const u32 gMonPalette_Groudon[];
extern const u32 gMonBackPic_Groudon[];
extern const u32 gMonShinyPalette_Groudon[];
extern const u32 gMonStillFrontPic_Groudon[];
extern const u8 gMonIcon_Groudon[];
extern const u8 gMonFootprint_Groudon[];
extern const u32 gMonFrontPic_Rayquaza[];
extern const u32 gMonPalette_Rayquaza[];
extern const u32 gMonBackPic_Rayquaza[];
extern const u32 gMonShinyPalette_Rayquaza[];
extern const u32 gMonStillFrontPic_Rayquaza[];
extern const u8 gMonIcon_Rayquaza[];
extern const u8 gMonFootprint_Rayquaza[];
extern const u32 gMonFrontPic_Latias[];
extern const u32 gMonPalette_Latias[];
extern const u32 gMonBackPic_Latias[];
extern const u32 gMonShinyPalette_Latias[];
extern const u32 gMonStillFrontPic_Latias[];
extern const u8 gMonIcon_Latias[];
extern const u8 gMonFootprint_Latias[];
extern const u32 gMonFrontPic_Latios[];
extern const u32 gMonPalette_Latios[];
extern const u32 gMonBackPic_Latios[];
extern const u32 gMonShinyPalette_Latios[];
extern const u32 gMonStillFrontPic_Latios[];
extern const u8 gMonIcon_Latios[];
extern const u8 gMonFootprint_Latios[];
extern const u32 gMonFrontPic_Jirachi[];
extern const u32 gMonPalette_Jirachi[];
extern const u32 gMonBackPic_Jirachi[];
extern const u32 gMonShinyPalette_Jirachi[];
extern const u32 gMonStillFrontPic_Jirachi[];
extern const u8 gMonIcon_Jirachi[];
extern const u8 gMonFootprint_Jirachi[];
extern const u32 gMonFrontPic_Deoxys[];
extern const u32 gMonPalette_Deoxys[];
extern const u32 gMonBackPic_Deoxys[];
extern const u32 gMonShinyPalette_Deoxys[];
extern const u32 gMonStillFrontPic_Deoxys[];
extern const u8 gMonIcon_Deoxys[];
extern const u8 gMonFootprint_Deoxys[];
extern const u32 gMonFrontPic_Chimecho[];
extern const u32 gMonPalette_Chimecho[];
extern const u32 gMonBackPic_Chimecho[];
extern const u32 gMonShinyPalette_Chimecho[];
extern const u32 gMonStillFrontPic_Chimecho[];
extern const u8 gMonIcon_Chimecho[];
extern const u8 gMonFootprint_Chimecho[];
extern const u32 gMonPic_Egg[];
extern const u32 gMonPalette_Egg[];
extern const u32 gMonFrontPic_Egg[];
extern const u32 gMonStillFrontPic_Egg[];
extern const u8 gMonIcon_Egg[];
extern const u32 gMonFrontPic_UnownB[];
extern const u32 gMonBackPic_UnownB[];
extern const u32 gMonStillFrontPic_UnownB[];
extern const u8 gMonIcon_UnownB[];
extern const u32 gMonFrontPic_UnownC[];
extern const u32 gMonBackPic_UnownC[];
extern const u32 gMonStillFrontPic_UnownC[];
extern const u8 gMonIcon_UnownC[];
extern const u32 gMonFrontPic_UnownD[];
extern const u32 gMonBackPic_UnownD[];
extern const u32 gMonStillFrontPic_UnownD[];
extern const u8 gMonIcon_UnownD[];
extern const u32 gMonFrontPic_UnownE[];
extern const u32 gMonBackPic_UnownE[];
extern const u32 gMonStillFrontPic_UnownE[];
extern const u8 gMonIcon_UnownE[];
extern const u32 gMonFrontPic_UnownF[];
extern const u32 gMonBackPic_UnownF[];
extern const u32 gMonStillFrontPic_UnownF[];
extern const u8 gMonIcon_UnownF[];
extern const u32 gMonFrontPic_UnownG[];
extern const u32 gMonBackPic_UnownG[];
extern const u32 gMonStillFrontPic_UnownG[];
extern const u8 gMonIcon_UnownG[];
extern const u32 gMonFrontPic_UnownH[];
extern const u32 gMonBackPic_UnownH[];
extern const u32 gMonStillFrontPic_UnownH[];
extern const u8 gMonIcon_UnownH[];
extern const u32 gMonFrontPic_UnownI[];
extern const u32 gMonBackPic_UnownI[];
extern const u32 gMonStillFrontPic_UnownI[];
extern const u8 gMonIcon_UnownI[];
extern const u32 gMonFrontPic_UnownJ[];
extern const u32 gMonBackPic_UnownJ[];
extern const u32 gMonStillFrontPic_UnownJ[];
extern const u8 gMonIcon_UnownJ[];
extern const u32 gMonFrontPic_UnownK[];
extern const u32 gMonBackPic_UnownK[];
extern const u32 gMonStillFrontPic_UnownK[];
extern const u8 gMonIcon_UnownK[];
extern const u32 gMonFrontPic_UnownL[];
extern const u32 gMonBackPic_UnownL[];
extern const u32 gMonStillFrontPic_UnownL[];
extern const u8 gMonIcon_UnownL[];
extern const u32 gMonFrontPic_UnownM[];
extern const u32 gMonBackPic_UnownM[];
extern const u32 gMonStillFrontPic_UnownM[];
extern const u8 gMonIcon_UnownM[];
extern const u32 gMonFrontPic_UnownN[];
extern const u32 gMonBackPic_UnownN[];
extern const u32 gMonStillFrontPic_UnownN[];
extern const u8 gMonIcon_UnownN[];
extern const u32 gMonFrontPic_UnownO[];
extern const u32 gMonBackPic_UnownO[];
extern const u32 gMonStillFrontPic_UnownO[];
extern const u8 gMonIcon_UnownO[];
extern const u32 gMonFrontPic_UnownP[];
extern const u32 gMonBackPic_UnownP[];
extern const u32 gMonStillFrontPic_UnownP[];
extern const u8 gMonIcon_UnownP[];
extern const u32 gMonFrontPic_UnownQ[];
extern const u32 gMonBackPic_UnownQ[];
extern const u32 gMonStillFrontPic_UnownQ[];
extern const u8 gMonIcon_UnownQ[];
extern const u32 gMonFrontPic_UnownR[];
extern const u32 gMonBackPic_UnownR[];
extern const u32 gMonStillFrontPic_UnownR[];
extern const u8 gMonIcon_UnownR[];
extern const u32 gMonFrontPic_UnownS[];
extern const u32 gMonBackPic_UnownS[];
extern const u32 gMonStillFrontPic_UnownS[];
extern const u8 gMonIcon_UnownS[];
extern const u32 gMonFrontPic_UnownT[];
extern const u32 gMonBackPic_UnownT[];
extern const u32 gMonStillFrontPic_UnownT[];
extern const u8 gMonIcon_UnownT[];
extern const u32 gMonFrontPic_UnownU[];
extern const u32 gMonBackPic_UnownU[];
extern const u32 gMonStillFrontPic_UnownU[];
extern const u8 gMonIcon_UnownU[];
extern const u32 gMonFrontPic_UnownV[];
extern const u32 gMonBackPic_UnownV[];
extern const u32 gMonStillFrontPic_UnownV[];
extern const u8 gMonIcon_UnownV[];
extern const u32 gMonFrontPic_UnownW[];
extern const u32 gMonBackPic_UnownW[];
extern const u32 gMonStillFrontPic_UnownW[];
extern const u8 gMonIcon_UnownW[];
extern const u32 gMonFrontPic_UnownX[];
extern const u32 gMonBackPic_UnownX[];
extern const u32 gMonStillFrontPic_UnownX[];
extern const u8 gMonIcon_UnownX[];
extern const u32 gMonFrontPic_UnownY[];
extern const u32 gMonBackPic_UnownY[];
extern const u32 gMonStillFrontPic_UnownY[];
extern const u8 gMonIcon_UnownY[];
extern const u32 gMonFrontPic_UnownZ[];
extern const u32 gMonBackPic_UnownZ[];
extern const u32 gMonStillFrontPic_UnownZ[];
extern const u8 gMonIcon_UnownZ[];
extern const u32 gMonFrontPic_UnownExclamationMark[];
extern const u32 gMonBackPic_UnownExclamationMark[];
extern const u32 gMonStillFrontPic_UnownExclamationMark[];
extern const u8 gMonIcon_UnownExclamationMark[];
extern const u32 gMonFrontPic_UnownQuestionMark[];
extern const u32 gMonStillFrontPic_UnownQuestionMark[];
extern const u32 gMonBackPic_UnownQuestionMark[];
extern const u8 gMonIcon_UnownQuestionMark[];

extern const u32 gMonFrontPic_CircledQuestionMark[];
extern const u32 gMonBackPic_CircledQuestionMark[];
extern const u32 gMonPalette_CircledQuestionMark[];
extern const u32 gMonShinyPalette_CircledQuestionMark[];
extern const u32 gMonStillFrontPic_CircledQuestionMark[];
extern const u8 gMonIcon_QuestionMark[];
extern const u8 gMonFootprint_QuestionMark[];
extern const u32 gMonFrontPic_DoubleQuestionMark[];
extern const u32 gMonBackPic_DoubleQuestionMark[];
extern const u32 gMonPalette_DoubleQuestionMark[];
extern const u32 gMonShinyPalette_DoubleQuestionMark[];
extern const u32 gMonStillFrontPic_DoubleQuestionMark[];
extern const u16 gMonIconPalettes[][16];


extern const u32 gTrainerFrontPic_Hiker[];
extern const u32 gTrainerFrontPic_AquaGruntM[];
extern const u32 gTrainerFrontPic_PokemonBreederF[];
extern const u32 gTrainerFrontPic_CoolTrainerM[];
extern const u32 gTrainerFrontPic_BirdKeeper[];
extern const u32 gTrainerFrontPic_Collector[];
extern const u32 gTrainerFrontPic_AquaGruntF[];
extern const u32 gTrainerFrontPic_SwimmerM[];
extern const u32 gTrainerFrontPic_MagmaGruntM[];
extern const u32 gTrainerFrontPic_ExpertM[];
extern const u32 gTrainerFrontPic_AquaAdminM[];
extern const u32 gTrainerFrontPic_BlackBelt[];
extern const u32 gTrainerFrontPic_AquaAdminF[];
extern const u32 gTrainerFrontPic_AquaLeaderArchie[];
extern const u32 gTrainerFrontPic_HexManiac[];
extern const u32 gTrainerFrontPic_AromaLady[];
extern const u32 gTrainerFrontPic_RuinManiac[];
extern const u32 gTrainerFrontPic_Interviewer[];
extern const u32 gTrainerFrontPic_TuberF[];
extern const u32 gTrainerFrontPic_TuberM[];
extern const u32 gTrainerFrontPic_CoolTrainerF[];
extern const u32 gTrainerFrontPic_Lady[];
extern const u32 gTrainerFrontPic_Beauty[];
extern const u32 gTrainerFrontPic_RichBoy[];
extern const u32 gTrainerFrontPic_ExpertF[];
extern const u32 gTrainerFrontPic_Pokemaniac[];
extern const u32 gTrainerFrontPic_MagmaGruntF[];
extern const u32 gTrainerFrontPic_Guitarist[];
extern const u32 gTrainerFrontPic_Kindler[];
extern const u32 gTrainerFrontPic_Camper[];
extern const u32 gTrainerFrontPic_Picnicker[];
extern const u32 gTrainerFrontPic_BugManiac[];
extern const u32 gTrainerFrontPic_PokemonBreederM[];
extern const u32 gTrainerFrontPic_PsychicM[];
extern const u32 gTrainerFrontPic_PsychicF[];
extern const u32 gTrainerFrontPic_Gentleman[];
extern const u32 gTrainerFrontPic_EliteFourSidney[];
extern const u32 gTrainerFrontPic_EliteFourPhoebe[];
extern const u32 gTrainerFrontPic_EliteFourGlacia[];
extern const u32 gTrainerFrontPic_EliteFourDrake[];
extern const u32 gTrainerFrontPic_LeaderRoxanne[];
extern const u32 gTrainerFrontPic_LeaderBrawly[];
extern const u32 gTrainerFrontPic_LeaderWattson[];
extern const u32 gTrainerFrontPic_LeaderFlannery[];
extern const u32 gTrainerFrontPic_LeaderNorman[];
extern const u32 gTrainerFrontPic_LeaderWinona[];
extern const u32 gTrainerFrontPic_LeaderTateAndLiza[];
extern const u32 gTrainerFrontPic_LeaderJuan[];
extern const u32 gTrainerFrontPic_SchoolKidM[];
extern const u32 gTrainerFrontPic_SchoolKidF[];
extern const u32 gTrainerFrontPic_SrAndJr[];
extern const u32 gTrainerFrontPic_PokefanM[];
extern const u32 gTrainerFrontPic_PokefanF[];
extern const u32 gTrainerFrontPic_Youngster[];
extern const u32 gTrainerFrontPic_ChampionWallace[];
extern const u32 gTrainerFrontPic_Fisherman[];
extern const u32 gTrainerFrontPic_CyclingTriathleteM[];
extern const u32 gTrainerFrontPic_CyclingTriathleteF[];
extern const u32 gTrainerFrontPic_RunningTriathleteM[];
extern const u32 gTrainerFrontPic_RunningTriathleteF[];
extern const u32 gTrainerFrontPic_SwimmingTriathleteM[];
extern const u32 gTrainerFrontPic_SwimmingTriathleteF[];
extern const u32 gTrainerFrontPic_DragonTamer[];
extern const u32 gTrainerFrontPic_NinjaBoy[];
extern const u32 gTrainerFrontPic_BattleGirl[];
extern const u32 gTrainerFrontPic_ParasolLady[];
extern const u32 gTrainerFrontPic_SwimmerF[];
extern const u32 gTrainerFrontPic_Twins[];
extern const u32 gTrainerFrontPic_Sailor[];
extern const u32 gTrainerFrontPic_MagmaAdmin[];
extern const u32 gTrainerFrontPic_Wally[];
extern const u32 gTrainerFrontPic_Brendan[];
extern const u32 gTrainerFrontPic_May[];
extern const u32 gTrainerFrontPic_BugCatcher[];
extern const u32 gTrainerFrontPic_PokemonRangerM[];
extern const u32 gTrainerFrontPic_PokemonRangerF[];
extern const u32 gTrainerFrontPic_MagmaLeaderMaxie[];
extern const u32 gTrainerFrontPic_Lass[];
extern const u32 gTrainerFrontPic_YoungCouple[];
extern const u32 gTrainerFrontPic_OldCouple[];
extern const u32 gTrainerFrontPic_SisAndBro[];
extern const u32 gTrainerFrontPic_Steven[];
extern const u32 gTrainerFrontPic_SalonMaidenAnabel[];
extern const u32 gTrainerFrontPic_DomeAceTucker[];
extern const u32 gTrainerFrontPic_PalaceMavenSpenser[];
extern const u32 gTrainerFrontPic_ArenaTycoonGreta[];
extern const u32 gTrainerFrontPic_FactoryHeadNoland[];
extern const u32 gTrainerFrontPic_PikeQueenLucy[];
extern const u32 gTrainerFrontPic_PyramidKingBrandon[];
extern const u32 gTrainerFrontPic_Red[];
extern const u32 gTrainerFrontPic_Leaf[];
extern const u32 gTrainerFrontPic_RubySapphireBrendan[];
extern const u32 gTrainerFrontPic_RubySapphireMay[];

extern const u32 gTrainerPalette_Hiker[];
extern const u32 gTrainerPalette_AquaGruntM[];
extern const u32 gTrainerPalette_PokemonBreederF[];
extern const u32 gTrainerPalette_CoolTrainerM[];
extern const u32 gTrainerPalette_BirdKeeper[];
extern const u32 gTrainerPalette_Collector[];
extern const u32 gTrainerPalette_AquaGruntF[];
extern const u32 gTrainerPalette_SwimmerM[];
extern const u32 gTrainerPalette_MagmaGruntM[];
extern const u32 gTrainerPalette_ExpertM[];
extern const u32 gTrainerPalette_AquaAdminM[];
extern const u32 gTrainerPalette_BlackBelt[];
extern const u32 gTrainerPalette_AquaAdminF[];
extern const u32 gTrainerPalette_AquaLeaderArchie[];
extern const u32 gTrainerPalette_HexManiac[];
extern const u32 gTrainerPalette_AromaLady[];
extern const u32 gTrainerPalette_RuinManiac[];
extern const u32 gTrainerPalette_Interviewer[];
extern const u32 gTrainerPalette_TuberF[];
extern const u32 gTrainerPalette_TuberM[];
extern const u32 gTrainerPalette_CoolTrainerF[];
extern const u32 gTrainerPalette_Lady[];
extern const u32 gTrainerPalette_Beauty[];
extern const u32 gTrainerPalette_RichBoy[];
extern const u32 gTrainerPalette_ExpertF[];
extern const u32 gTrainerPalette_Pokemaniac[];
extern const u32 gTrainerPalette_MagmaGruntF[];
extern const u32 gTrainerPalette_Guitarist[];
extern const u32 gTrainerPalette_Kindler[];
extern const u32 gTrainerPalette_Camper[];
extern const u32 gTrainerPalette_Picnicker[];
extern const u32 gTrainerPalette_BugManiac[];
extern const u32 gTrainerPalette_PokemonBreederM[];
extern const u32 gTrainerPalette_PsychicM[];
extern const u32 gTrainerPalette_PsychicF[];
extern const u32 gTrainerPalette_Gentleman[];
extern const u32 gTrainerPalette_EliteFourSidney[];
extern const u32 gTrainerPalette_EliteFourPhoebe[];
extern const u32 gTrainerPalette_EliteFourGlacia[];
extern const u32 gTrainerPalette_EliteFourDrake[];
extern const u32 gTrainerPalette_LeaderRoxanne[];
extern const u32 gTrainerPalette_LeaderBrawly[];
extern const u32 gTrainerPalette_LeaderWattson[];
extern const u32 gTrainerPalette_LeaderFlannery[];
extern const u32 gTrainerPalette_LeaderNorman[];
extern const u32 gTrainerPalette_LeaderWinona[];
extern const u32 gTrainerPalette_LeaderTateAndLiza[];
extern const u32 gTrainerPalette_LeaderJuan[];
extern const u32 gTrainerPalette_SchoolKidM[];
extern const u32 gTrainerPalette_SchoolKidF[];
extern const u32 gTrainerPalette_SrAndJr[];
extern const u32 gTrainerPalette_PokefanM[];
extern const u32 gTrainerPalette_PokefanF[];
extern const u32 gTrainerPalette_Youngster[];
extern const u32 gTrainerPalette_ChampionWallace[];
extern const u32 gTrainerPalette_Fisherman[];
extern const u32 gTrainerPalette_CyclingTriathleteM[];
extern const u32 gTrainerPalette_CyclingTriathleteF[];
extern const u32 gTrainerPalette_RunningTriathleteM[];
extern const u32 gTrainerPalette_RunningTriathleteF[];
extern const u32 gTrainerPalette_SwimmingTriathleteM[];
extern const u32 gTrainerPalette_SwimmingTriathleteF[];
extern const u32 gTrainerPalette_DragonTamer[];
extern const u32 gTrainerPalette_NinjaBoy[];
extern const u32 gTrainerPalette_BattleGirl[];
extern const u32 gTrainerPalette_ParasolLady[];
extern const u32 gTrainerPalette_SwimmerF[];
extern const u32 gTrainerPalette_Twins[];
extern const u32 gTrainerPalette_Sailor[];
extern const u32 gTrainerPalette_MagmaAdmin[];
extern const u32 gTrainerPalette_Wally[];
extern const u32 gTrainerPalette_Brendan[];
extern const u32 gTrainerPalette_May[];
extern const u32 gTrainerPalette_BugCatcher[];
extern const u32 gTrainerPalette_PokemonRangerM[];
extern const u32 gTrainerPalette_PokemonRangerF[];
extern const u32 gTrainerPalette_MagmaLeaderMaxie[];
extern const u32 gTrainerPalette_Lass[];
extern const u32 gTrainerPalette_YoungCouple[];
extern const u32 gTrainerPalette_OldCouple[];
extern const u32 gTrainerPalette_SisAndBro[];
extern const u32 gTrainerPalette_Steven[];
extern const u32 gTrainerPalette_SalonMaidenAnabel[];
extern const u32 gTrainerPalette_DomeAceTucker[];
extern const u32 gTrainerPalette_PalaceMavenSpenser[];
extern const u32 gTrainerPalette_ArenaTycoonGreta[];
extern const u32 gTrainerPalette_FactoryHeadNoland[];
extern const u32 gTrainerPalette_PikeQueenLucy[];
extern const u32 gTrainerPalette_PyramidKingBrandon[];
extern const u32 gTrainerPalette_Red[];
extern const u32 gTrainerPalette_Leaf[];
extern const u32 gTrainerPalette_RubySapphireBrendan[];
extern const u32 gTrainerPalette_RubySapphireMay[];

extern const u8 gTrainerBackPic_Brendan[];
extern const u8 gTrainerBackPic_May[];
extern const u8 gTrainerBackPic_Red[];
extern const u8 gTrainerBackPic_Leaf[];
extern const u8 gTrainerBackPic_RubySapphireBrendan[];
extern const u8 gTrainerBackPic_RubySapphireMay[];
extern const u8 gTrainerBackPic_Wally[];
extern const u8 gTrainerBackPic_Steven[];

extern const u32 gTrainerBackPicPalette_Red[];
extern const u32 gTrainerBackPicPalette_Leaf[];


extern const u32 gMenuPokeblock_Gfx[];
extern const u32 gMenuPokeblock_Pal[];
extern const u32 gMenuPokeblock_Tilemap[];
extern const u32 gMenuPokeblockDevice_Gfx[];
extern const u32 gMenuPokeblockDevice_Pal[];
extern const u32 gPokeblockRed_Pal[];
extern const u32 gPokeblockBlue_Pal[];
extern const u32 gPokeblockPink_Pal[];
extern const u32 gPokeblockGreen_Pal[];
extern const u32 gPokeblockYellow_Pal[];
extern const u32 gPokeblockPurple_Pal[];
extern const u32 gPokeblockIndigo_Pal[];
extern const u32 gPokeblockBrown_Pal[];
extern const u32 gPokeblockLiteBlue_Pal[];
extern const u32 gPokeblockOlive_Pal[];
extern const u32 gPokeblockGray_Pal[];
extern const u32 gPokeblockBlack_Pal[];
extern const u32 gPokeblockWhite_Pal[];
extern const u32 gPokeblockGold_Pal[];
extern const u32 gPokeblock_Gfx[];

extern const u32 gItemIcon_QuestionMark[];
extern const u32 gItemIconPalette_QuestionMark[];
extern const u32 gUnknown_08DB7AA0[];
extern const u32 gUnknown_08DB7B34[];
extern const u32 gUnknown_08DB7B5C[];
extern const u32 gUnknown_08DB7BEC[];
extern const u32 gUnknown_08DB7C08[];
extern const u32 gUnknown_08DB7CE8[];
extern const u32 gUnknown_08DB7D08[];
extern const u32 gUnknown_08DB7DCC[];
extern const u32 gUnknown_08DB7DF4[];
extern const u32 gUnknown_08DB7EA0[];
extern const u32 gUnknown_08DB7EC4[];
extern const u32 gUnknown_08DB7F60[];
extern const u32 gUnknown_08DB7F7C[];
extern const u32 gUnknown_08DB8070[];
extern const u32 gUnknown_08DB808C[];
extern const u32 gUnknown_08DB8138[];
extern const u32 gUnknown_08DB8160[];
extern const u32 gUnknown_08DB8218[];
extern const u32 gUnknown_08DB823C[];
extern const u32 gUnknown_08DB8300[];
extern const u32 gUnknown_08DB8328[];
extern const u32 gUnknown_08DB8430[];
extern const u32 gUnknown_08DB8458[];
extern const u32 gUnknown_08DB8528[];
extern const u32 gUnknown_08DB854C[];
extern const u32 gUnknown_08DB862C[];
extern const u32 gUnknown_08DB8654[];
extern const u32 gUnknown_08DB86C4[];
extern const u32 gUnknown_08DB86E0[];
extern const u32 gUnknown_08DB8750[];
extern const u32 gUnknown_08DB876C[];
extern const u32 gUnknown_08DB87DC[];
extern const u32 gUnknown_08DB87F8[];
extern const u32 gUnknown_08DB88D8[];
extern const u32 gUnknown_08DB8900[];
extern const u32 gUnknown_08DB89E0[];
extern const u32 gUnknown_08DB8A08[];
extern const u32 gUnknown_08DB8A68[];
extern const u32 gUnknown_08DB8A84[];
extern const u32 gUnknown_08DB8B40[];
extern const u32 gUnknown_08DB8B68[];
extern const u32 gUnknown_08DB8C40[];
extern const u32 gUnknown_08DB8C5C[];
extern const u32 gUnknown_08DB8CF4[];
extern const u32 gUnknown_08DB8D18[];
extern const u32 gUnknown_08DB8DB0[];
extern const u32 gUnknown_08DB8DD4[];
extern const u32 gUnknown_08DB8E80[];
extern const u32 gUnknown_08DB8EA0[];
extern const u32 gUnknown_08DB8F58[];
extern const u32 gUnknown_08DB8F7C[];
extern const u32 gUnknown_08DB9038[];
extern const u32 gUnknown_08DB9058[];
extern const u32 gUnknown_08DB9130[];
extern const u32 gUnknown_08DB9154[];
extern const u32 gUnknown_08DB9218[];
extern const u32 gUnknown_08DB9234[];
extern const u32 gUnknown_08DB92FC[];
extern const u32 gUnknown_08DB931C[];
extern const u32 gUnknown_08DB93E8[];
extern const u32 gUnknown_08DB940C[];
extern const u32 gUnknown_08DB94CC[];
extern const u32 gUnknown_08DB94E8[];
extern const u32 gUnknown_08DB95AC[];
extern const u32 gUnknown_08DB95D0[];
extern const u32 gUnknown_08DB96C4[];
extern const u32 gUnknown_08DB96EC[];
extern const u32 gUnknown_08DB97F4[];
extern const u32 gUnknown_08DB981C[];
extern const u32 gUnknown_08DB9908[];
extern const u32 gUnknown_08DB9930[];
extern const u32 gUnknown_08DB9A54[];
extern const u32 gUnknown_08DB9A7C[];
extern const u32 gUnknown_08DB9B7C[];
extern const u32 gUnknown_08DB9BA4[];
extern const u32 gUnknown_08DB9CB0[];
extern const u32 gUnknown_08DB9CD8[];
extern const u32 gUnknown_08DB9DAC[];
extern const u32 gUnknown_08DB9DD4[];
extern const u32 gUnknown_08DB9EE4[];
extern const u32 gUnknown_08DB9F08[];
extern const u32 gUnknown_08DB9FFC[];
extern const u32 gUnknown_08DBA020[];
extern const u32 gUnknown_08DBA12C[];
extern const u32 gWallclock_Gfx[];
extern const u16 gWallclockMale_Pal[];
extern const u16 gWallclockFemale_Pal[];
extern const u32 gUnknown_08DCC648[];
extern const u32 gUnknown_08DCC908[];
extern const u32 gBerryFixGameboy_Gfx[];
extern const u32 gBerryFixGameboy_Tilemap[];
extern const u16 gBerryFixGameboy_Pal[];
extern const u32 gBerryFixGameboyLogo_Gfx[];
extern const u32 gBerryFixGameboyLogo_Tilemap[];
extern const u16 gBerryFixGameboyLogo_Pal[];
extern const u32 gBerryFixGbaTransfer_Gfx[];
extern const u32 gBerryFixGbaTransfer_Tilemap[];
extern const u16 gBerryFixGbaTransfer_Pal[];
extern const u32 gBerryFixGbaTransferHighlight_Gfx[];
extern const u32 gBerryFixGbaTransferHighlight_Tilemap[];
extern const u16 gBerryFixGbaTransferHighlight_Pal[];
extern const u32 gBerryFixGbaTransferError_Gfx[];
extern const u32 gBerryFixGbaTransferError_Tilemap[];
extern const u16 gBerryFixGbaTransferError_Pal[];
extern const u32 gBerryFixWindow_Gfx[];
extern const u32 gBerryFixWindow_Tilemap[];
extern const u16 gBerryFixWindow_Pal[];

extern const u32 gBattleTextboxTiles[];
extern const u32 gBattleTextboxTilemap[];
extern const u32 gBattleTextboxPalette[];
extern const u32 gUnknown_08D778F0[];
extern const u32 gUnknown_08D77B0C[];
extern const u32 gUnknown_08D77AE4[];
extern const u32 gUnknown_08D779D8[];
extern const u32 gUnknown_08D857A8[];
extern const u32 gUnknown_08D85A1C[];


extern const u32 gBattleTerrainTiles_TallGrass[];
extern const u32 gBattleTerrainTilemap_TallGrass[];
extern const u32 gBattleTerrainAnimTiles_TallGrass[];
extern const u32 gBattleTerrainAnimTilemap_TallGrass[];
extern const u32 gBattleTerrainPalette_TallGrass[];
extern const u32 gBattleTerrainTiles_LongGrass[];
extern const u32 gBattleTerrainTilemap_LongGrass[];
extern const u32 gBattleTerrainAnimTiles_LongGrass[];
extern const u32 gBattleTerrainAnimTilemap_LongGrass[];
extern const u32 gBattleTerrainPalette_LongGrass[];
extern const u32 gBattleTerrainTiles_Sand[];
extern const u32 gBattleTerrainTilemap_Sand[];
extern const u32 gBattleTerrainAnimTiles_Sand[];
extern const u32 gBattleTerrainAnimTilemap_Sand[];
extern const u32 gBattleTerrainPalette_Sand[];
extern const u32 gBattleTerrainTiles_Underwater[];
extern const u32 gBattleTerrainTilemap_Underwater[];
extern const u32 gBattleTerrainAnimTiles_Underwater[];
extern const u32 gBattleTerrainAnimTilemap_Underwater[];
extern const u32 gBattleTerrainPalette_Underwater[];
extern const u32 gBattleTerrainTiles_Water[];
extern const u32 gBattleTerrainTilemap_Water[];
extern const u32 gBattleTerrainAnimTiles_Water[];
extern const u32 gBattleTerrainAnimTilemap_Water[];
extern const u32 gBattleTerrainPalette_Water[];
extern const u32 gBattleTerrainTiles_PondWater[];
extern const u32 gBattleTerrainTilemap_PondWater[];
extern const u32 gBattleTerrainAnimTiles_PondWater[];
extern const u32 gBattleTerrainAnimTilemap_PondWater[];
extern const u32 gBattleTerrainPalette_PondWater[];
extern const u32 gBattleTerrainTiles_Rock[];
extern const u32 gBattleTerrainTilemap_Rock[];
extern const u32 gBattleTerrainAnimTiles_Rock[];
extern const u32 gBattleTerrainAnimTilemap_Rock[];
extern const u32 gBattleTerrainPalette_Rock[];
extern const u32 gBattleTerrainTiles_Cave[];
extern const u32 gBattleTerrainTilemap_Cave[];
extern const u32 gBattleTerrainAnimTiles_Cave[];
extern const u32 gBattleTerrainAnimTilemap_Cave[];
extern const u32 gBattleTerrainPalette_Cave[];
extern const u32 gBattleTerrainTiles_Building[];
extern const u32 gBattleTerrainTilemap_Building[];
extern const u32 gBattleTerrainAnimTiles_Building[];
extern const u32 gBattleTerrainAnimTilemap_Building[];
extern const u32 gBattleTerrainPalette_Building[];
extern const u32 gBattleTerrainPalette_Plain[];
extern const u32 gBattleTerrainPalette_Frontier[];
extern const u32 gBattleTerrainTiles_Stadium[];
extern const u32 gBattleTerrainTilemap_Stadium[];
extern const u32 gBattleTerrainTiles_Rayquaza[];
extern const u32 gBattleTerrainTilemap_Rayquaza[];
extern const u32 gBattleTerrainAnimTiles_Rayquaza[];
extern const u32 gBattleTerrainAnimTilemap_Rayquaza[];
extern const u32 gBattleTerrainPalette_Rayquaza[];
extern const u32 gBattleTerrainPalette_Kyogre[];
extern const u32 gBattleTerrainPalette_Groudon[];
extern const u32 gBattleTerrainPalette_BuildingGym[];
extern const u32 gBattleTerrainPalette_BuildingLeader[];
extern const u32 gBattleTerrainPalette_StadiumAqua[];
extern const u32 gBattleTerrainPalette_StadiumMagma[];
extern const u32 gBattleTerrainPalette_StadiumSidney[];
extern const u32 gBattleTerrainPalette_StadiumPhoebe[];
extern const u32 gBattleTerrainPalette_StadiumGlacia[];
extern const u32 gBattleTerrainPalette_StadiumDrake[];
extern const u32 gBattleTerrainPalette_StadiumWallace[];


extern const u32 gPokedexMenu2_Gfx[];
extern const u16 gPokedexText_Pal[];
extern const u32 gPokedexMenu_Gfx[];
extern const u8 gPokedexTilemap_Main[];
extern const u8 gPokedexTilemap_MainUnderlay[];
extern const u8 gPokedexTilemap_StartMenu1[];
extern const u8 gPokedexTilemap_StartMenu2[];
extern const u16 gPokedexHoennBg_Pal[];
extern const u16 gPokedexText_Pal[];
extern const u16 gPokedexNationalBg_Pal[];
extern const u8 gPokedexTilemap_DescriptionScreen[];
extern const u8 gPokedexTilemap_CryScreen[];
extern const u8 gPokedexTilemap_SizeScreen[];
extern const u8 gPokedexTilemap_ScreenSelectBar1[];
extern const u8 gPokedexTilemap_ScreenSelectBar2[];
extern const u16 gPokedexCaughtScreenFade_Pal[];
extern const u32 gPokedexSearchMenu_Gfx[];
extern const u32 gPokedexSearch2_Tilemap[];
extern const u32 gPokedexSearch1_Tilemap[];
extern const u16 gPokedexSearchMenu_Pal[];


extern const u32 gBerryCheck_Gfx[];
extern const u32 gBerryCheck_Pal[];
extern const u32 gBerryTag_Gfx[];
extern const u32 gBerryTag_Pal[];


extern const u32 gRaySceneGroudon_Gfx[];
extern const u32 gRaySceneGroudon2_Gfx[];
extern const u32 gRaySceneGroudon3_Gfx[];
extern const u32 gRaySceneKyogre_Gfx[];
extern const u32 gRaySceneKyogre2_Gfx[];
extern const u32 gRaySceneKyogre3_Gfx[];
extern const u32 gRaySceneGroudon_Pal[];
extern const u32 gRaySceneKyogre_Pal[];
extern const u32 gRaySceneSmoke_Gfx[];
extern const u32 gRaySceneSmoke_Pal[];
extern const u32 gRaySceneRayquaza_Pal[];
extern const u32 gRaySceneRayquazaFly1_Gfx[];
extern const u32 gRaySceneRayquazaTail_Gfx[];
extern const u32 gRaySceneGroudonLeft_Gfx[];
extern const u32 gRaySceneGroudonTail_Gfx[];
extern const u32 gRaySceneKyogreRight_Gfx[];
extern const u32 gRaySceneRayquazaHover_Gfx[];
extern const u32 gRaySceneRayquazaFlyIn_Gfx[];
extern const u32 gRaySceneOvercast_Gfx[];
extern const u32 gRaySceneOvercast_Tilemap[];
extern const u32 gRaySceneRayquaza_Gfx[];
extern const u32 gRaySceneRayquaza_Tilemap[];
extern const u32 gRaySceneSplash_Gfx[];
extern const u32 gRaySceneGroudonLeft_Pal[];
extern const u32 gRaySceneKyogreRight_Pal[];
extern const u32 gRaySceneRayquazaHover_Pal[];
extern const u32 gRaySceneSplash_Pal[];
extern const u32 gRaySceneClouds_Gfx[];
extern const u32 gRaySceneClouds_Pal[];
extern const u32 gRaySceneClouds2_Tilemap[];
extern const u32 gRaySceneClouds1_Tilemap[];
extern const u32 gRaySceneClouds3_Tilemap[];
extern const u32 gRaySceneRayquazaLight_Gfx[];
extern const u32 gRaySceneRayquazaLight_Tilemap[];
extern const u32 gRaySceneOvercast2_Gfx[];
extern const u32 gRaySceneOvercast2_Tilemap[];
extern const u32 gRaySceneOvercast2_Pal[];
extern const u32 gRaySceneRayquazaChase_Gfx[];
extern const u32 gRaySceneChaseStreaks_Gfx[];
extern const u32 gRaySceneChaseBg_Gfx[];
extern const u32 gRayChaseRayquazaChase2_Tilemap[];
extern const u32 gRayChaseRayquazaChase_Tilemap[];
extern const u32 gRaySceneChaseStreaks_Tilemap[];
extern const u32 gRaySceneChaseBg_Tilemap[];
extern const u32 gRaySceneChase_Pal[];
extern const u32 gRaySceneHushRing_Tilemap[];
extern const u32 gRaySceneHushBg_Tilemap[];
extern const u32 gRaySceneHushRing_Map[];
extern const u32 gRaySceneHushBg_Pal[];
extern const u32 gRaySceneHushBg_Gfx[];
extern const u32 gRaySceneHushRing_Gfx[];


extern const u32 gItemIcon_MasterBall[];
extern const u32 gItemIconPalette_MasterBall[];
extern const u32 gItemIcon_UltraBall[];
extern const u32 gItemIconPalette_UltraBall[];
extern const u32 gItemIcon_GreatBall[];
extern const u32 gItemIconPalette_GreatBall[];
extern const u32 gItemIcon_PokeBall[];
extern const u32 gItemIconPalette_PokeBall[];
extern const u32 gItemIcon_SafariBall[];
extern const u32 gItemIconPalette_SafariBall[];
extern const u32 gItemIcon_NetBall[];
extern const u32 gItemIconPalette_NetBall[];
extern const u32 gItemIcon_DiveBall[];
extern const u32 gItemIconPalette_DiveBall[];
extern const u32 gItemIcon_NestBall[];
extern const u32 gItemIconPalette_NestBall[];
extern const u32 gItemIcon_RepeatBall[];
extern const u32 gItemIconPalette_RepeatBall[];
extern const u32 gItemIcon_TimerBall[];
extern const u32 gItemIcon_LuxuryBall[];
extern const u32 gItemIconPalette_LuxuryBall[];
extern const u32 gItemIcon_PremierBall[];

extern const u32 gItemIcon_Potion[];
extern const u32 gItemIconPalette_Potion[];
extern const u32 gItemIcon_Antidote[];
extern const u32 gItemIconPalette_Antidote[];
extern const u32 gItemIcon_StatusHeal[];
extern const u32 gItemIconPalette_BurnHeal[];
extern const u32 gItemIconPalette_IceHeal[];
extern const u32 gItemIconPalette_Awakening[];
extern const u32 gItemIconPalette_ParalyzeHeal[];
extern const u32 gItemIcon_LargePotion[];
extern const u32 gItemIconPalette_FullRestore[];
extern const u32 gItemIconPalette_MaxPotion[];
extern const u32 gItemIconPalette_HyperPotion[];
extern const u32 gItemIconPalette_SuperPotion[];
extern const u32 gItemIcon_FullHeal[];
extern const u32 gItemIconPalette_FullHeal[];
extern const u32 gItemIcon_Revive[];
extern const u32 gItemIconPalette_Revive[];
extern const u32 gItemIcon_MaxRevive[];
extern const u32 gItemIcon_FreshWater[];
extern const u32 gItemIconPalette_FreshWater[];
extern const u32 gItemIcon_SodaPop[];
extern const u32 gItemIconPalette_SodaPop[];
extern const u32 gItemIcon_Lemonade[];
extern const u32 gItemIconPalette_Lemonade[];
extern const u32 gItemIcon_MoomooMilk[];
extern const u32 gItemIconPalette_MoomooMilk[];
extern const u32 gItemIcon_Powder[];
extern const u32 gItemIconPalette_EnergyPowder[];
extern const u32 gItemIcon_EnergyRoot[];
extern const u32 gItemIconPalette_EnergyRoot[];
extern const u32 gItemIconPalette_HealPowder[];
extern const u32 gItemIcon_RevivalHerb[];
extern const u32 gItemIconPalette_RevivalHerb[];
extern const u32 gItemIcon_Ether[];
extern const u32 gItemIconPalette_Ether[];
extern const u32 gItemIconPalette_MaxEther[];
extern const u32 gItemIconPalette_Elixir[];
extern const u32 gItemIconPalette_MaxElixir[];
extern const u32 gItemIcon_LavaCookie[];
extern const u32 gItemIconPalette_LavaCookieAndLetter[];
extern const u32 gItemIcon_Flute[];
extern const u32 gItemIconPalette_BlueFlute[];
extern const u32 gItemIconPalette_YellowFlute[];
extern const u32 gItemIconPalette_RedFlute[];
extern const u32 gItemIconPalette_BlackFlute[];
extern const u32 gItemIconPalette_WhiteFlute[];
extern const u32 gItemIcon_BerryJuice[];
extern const u32 gItemIconPalette_BerryJuice[];
extern const u32 gItemIcon_SacredAsh[];
extern const u32 gItemIconPalette_SacredAsh[];

extern const u32 gItemIconPalette_ShoalSalt[];
extern const u32 gItemIcon_ShoalShell[];
extern const u32 gItemIconPalette_Shell[];
extern const u32 gItemIcon_Shard[];
extern const u32 gItemIconPalette_RedShard[];
extern const u32 gItemIconPalette_BlueShard[];
extern const u32 gItemIconPalette_YellowShard[];
extern const u32 gItemIconPalette_GreenShard[];

extern const u32 gItemIcon_HPUp[];
extern const u32 gItemIconPalette_HPUp[];
extern const u32 gItemIcon_Vitamin[];
extern const u32 gItemIconPalette_Protein[];
extern const u32 gItemIconPalette_Iron[];
extern const u32 gItemIconPalette_Carbos[];
extern const u32 gItemIconPalette_Calcium[];
extern const u32 gItemIcon_RareCandy[];
extern const u32 gItemIconPalette_RareCandy[];
extern const u32 gItemIcon_PPUp[];
extern const u32 gItemIconPalette_PPUp[];
extern const u32 gItemIconPalette_Zinc[];
extern const u32 gItemIcon_PPMax[];
extern const u32 gItemIconPalette_PPMax[];

extern const u32 gItemIcon_BattleStatItem[];
extern const u32 gItemIconPalette_GuardSpec[];
extern const u32 gItemIconPalette_DireHit[];
extern const u32 gItemIconPalette_XAttack[];
extern const u32 gItemIconPalette_XDefend[];
extern const u32 gItemIconPalette_XSpeed[];
extern const u32 gItemIconPalette_XAccuracy[];
extern const u32 gItemIconPalette_XSpecial[];
extern const u32 gItemIcon_PokeDoll[];
extern const u32 gItemIconPalette_PokeDoll[];
extern const u32 gItemIcon_FluffyTail[];
extern const u32 gItemIconPalette_FluffyTail[];

extern const u32 gItemIcon_Repel[];
extern const u32 gItemIconPalette_SuperRepel[];
extern const u32 gItemIconPalette_MaxRepel[];
extern const u32 gItemIcon_EscapeRope[];
extern const u32 gItemIconPalette_EscapeRope[];
extern const u32 gItemIcon_Repel[];
extern const u32 gItemIconPalette_Repel[];

extern const u32 gItemIcon_SunStone[];
extern const u32 gItemIconPalette_SunStone[];
extern const u32 gItemIcon_MoonStone[];
extern const u32 gItemIconPalette_MoonStone[];
extern const u32 gItemIcon_FireStone[];
extern const u32 gItemIconPalette_FireStone[];
extern const u32 gItemIcon_ThunderStone[];
extern const u32 gItemIconPalette_ThunderStone[];
extern const u32 gItemIcon_WaterStone[];
extern const u32 gItemIconPalette_WaterStone[];
extern const u32 gItemIcon_LeafStone[];
extern const u32 gItemIconPalette_LeafStone[];

extern const u32 gItemIcon_TinyMushroom[];
extern const u32 gItemIconPalette_Mushroom[];
extern const u32 gItemIcon_BigMushroom[];
extern const u32 gItemIcon_Pearl[];
extern const u32 gItemIconPalette_Pearl[];
extern const u32 gItemIcon_BigPearl[];
extern const u32 gItemIcon_Stardust[];
extern const u32 gItemIconPalette_Star[];
extern const u32 gItemIcon_StarPiece[];
extern const u32 gItemIcon_Nugget[];
extern const u32 gItemIconPalette_Nugget[];
extern const u32 gItemIcon_HeartScale[];
extern const u32 gItemIconPalette_HeartScale[];

extern const u32 gItemIcon_OrangeMail[];
extern const u32 gItemIconPalette_OrangeMail[];
extern const u32 gItemIcon_HarborMail[];
extern const u32 gItemIconPalette_HarborMail[];
extern const u32 gItemIcon_GlitterMail[];
extern const u32 gItemIconPalette_GlitterMail[];
extern const u32 gItemIcon_MechMail[];
extern const u32 gItemIconPalette_MechMail[];
extern const u32 gItemIcon_WoodMail[];
extern const u32 gItemIconPalette_WoodMail[];
extern const u32 gItemIcon_WaveMail[];
extern const u32 gItemIconPalette_WaveMail[];
extern const u32 gItemIcon_BeadMail[];
extern const u32 gItemIconPalette_BeadMail[];
extern const u32 gItemIcon_ShadowMail[];
extern const u32 gItemIconPalette_ShadowMail[];
extern const u32 gItemIcon_TropicMail[];
extern const u32 gItemIconPalette_TropicMail[];
extern const u32 gItemIcon_DreamMail[];
extern const u32 gItemIconPalette_DreamMail[];
extern const u32 gItemIcon_FabMail[];
extern const u32 gItemIconPalette_FabMail[];
extern const u32 gItemIcon_RetroMail[];
extern const u32 gItemIconPalette_RetroMail[];

extern const u32 gItemIcon_CheriBerry[];
extern const u32 gItemIconPalette_CheriBerry[];
extern const u32 gItemIcon_ChestoBerry[];
extern const u32 gItemIconPalette_ChestoBerry[];
extern const u32 gItemIcon_PechaBerry[];
extern const u32 gItemIconPalette_PechaBerry[];
extern const u32 gItemIcon_RawstBerry[];
extern const u32 gItemIconPalette_RawstBerry[];
extern const u32 gItemIcon_AspearBerry[];
extern const u32 gItemIconPalette_AspearBerry[];
extern const u32 gItemIcon_LeppaBerry[];
extern const u32 gItemIconPalette_LeppaBerry[];
extern const u32 gItemIcon_OranBerry[];
extern const u32 gItemIconPalette_OranBerry[];
extern const u32 gItemIcon_PersimBerry[];
extern const u32 gItemIconPalette_PersimBerry[];
extern const u32 gItemIcon_LumBerry[];
extern const u32 gItemIconPalette_LumBerry[];
extern const u32 gItemIcon_SitrusBerry[];
extern const u32 gItemIconPalette_SitrusBerry[];
extern const u32 gItemIcon_FigyBerry[];
extern const u32 gItemIconPalette_FigyBerry[];
extern const u32 gItemIcon_WikiBerry[];
extern const u32 gItemIconPalette_WikiBerry[];
extern const u32 gItemIcon_MagoBerry[];
extern const u32 gItemIconPalette_MagoBerry[];
extern const u32 gItemIcon_AguavBerry[];
extern const u32 gItemIconPalette_AguavBerry[];
extern const u32 gItemIcon_IapapaBerry[];
extern const u32 gItemIconPalette_IapapaBerry[];
extern const u32 gItemIcon_RazzBerry[];
extern const u32 gItemIconPalette_RazzBerry[];
extern const u32 gItemIcon_BlukBerry[];
extern const u32 gItemIconPalette_BlukBerry[];
extern const u32 gItemIcon_NanabBerry[];
extern const u32 gItemIconPalette_NanabBerry[];
extern const u32 gItemIcon_WepearBerry[];
extern const u32 gItemIconPalette_WepearBerry[];
extern const u32 gItemIcon_PinapBerry[];
extern const u32 gItemIconPalette_PinapBerry[];
extern const u32 gItemIcon_PomegBerry[];
extern const u32 gItemIconPalette_PomegBerry[];
extern const u32 gItemIcon_KelpsyBerry[];
extern const u32 gItemIconPalette_KelpsyBerry[];
extern const u32 gItemIcon_QualotBerry[];
extern const u32 gItemIconPalette_QualotBerry[];
extern const u32 gItemIcon_HondewBerry[];
extern const u32 gItemIconPalette_HondewBerry[];
extern const u32 gItemIcon_GrepaBerry[];
extern const u32 gItemIconPalette_GrepaBerry[];
extern const u32 gItemIcon_TamatoBerry[];
extern const u32 gItemIconPalette_TamatoBerry[];
extern const u32 gItemIcon_CornnBerry[];
extern const u32 gItemIconPalette_CornnBerry[];
extern const u32 gItemIcon_MagostBerry[];
extern const u32 gItemIconPalette_MagostBerry[];
extern const u32 gItemIcon_RabutaBerry[];
extern const u32 gItemIconPalette_RabutaBerry[];
extern const u32 gItemIcon_NomelBerry[];
extern const u32 gItemIconPalette_NomelBerry[];
extern const u32 gItemIcon_SpelonBerry[];
extern const u32 gItemIconPalette_SpelonBerry[];
extern const u32 gItemIcon_PamtreBerry[];
extern const u32 gItemIconPalette_PamtreBerry[];
extern const u32 gItemIcon_WatmelBerry[];
extern const u32 gItemIconPalette_WatmelBerry[];
extern const u32 gItemIcon_DurinBerry[];
extern const u32 gItemIconPalette_DurinBerry[];
extern const u32 gItemIcon_BelueBerry[];
extern const u32 gItemIconPalette_BelueBerry[];
extern const u32 gItemIcon_LiechiBerry[];
extern const u32 gItemIconPalette_LiechiBerry[];
extern const u32 gItemIcon_GanlonBerry[];
extern const u32 gItemIconPalette_GanlonBerry[];
extern const u32 gItemIcon_SalacBerry[];
extern const u32 gItemIconPalette_SalacBerry[];
extern const u32 gItemIcon_PetayaBerry[];
extern const u32 gItemIconPalette_PetayaBerry[];
extern const u32 gItemIcon_ApicotBerry[];
extern const u32 gItemIconPalette_ApicotBerry[];
extern const u32 gItemIcon_LansatBerry[];
extern const u32 gItemIconPalette_LansatBerry[];
extern const u32 gItemIcon_StarfBerry[];
extern const u32 gItemIconPalette_StarfBerry[];
extern const u32 gItemIcon_EnigmaBerry[];
extern const u32 gItemIconPalette_EnigmaBerry[];

extern const u32 gItemIcon_BrightPowder[];
extern const u32 gItemIconPalette_BrightPowder[];
extern const u32 gItemIcon_InBattleHerb[];
extern const u32 gItemIconPalette_WhiteHerb[];
extern const u32 gItemIcon_MachoBrace[];
extern const u32 gItemIconPalette_MachoBrace[];
extern const u32 gItemIcon_ExpShare[];
extern const u32 gItemIconPalette_ExpShare[];
extern const u32 gItemIcon_QuickClaw[];
extern const u32 gItemIconPalette_QuickClaw[];
extern const u32 gItemIcon_SootheBell[];
extern const u32 gItemIconPalette_SootheBell[];
extern const u32 gItemIcon_InBattleHerb[];
extern const u32 gItemIconPalette_MentalHerb[];
extern const u32 gItemIcon_ChoiceBand[];
extern const u32 gItemIconPalette_ChoiceBand[];
extern const u32 gItemIcon_KingsRock[];
extern const u32 gItemIconPalette_KingsRock[];
extern const u32 gItemIcon_SilverPowder[];
extern const u32 gItemIconPalette_SilverPowder[];
extern const u32 gItemIcon_AmuletCoin[];
extern const u32 gItemIconPalette_AmuletCoin[];
extern const u32 gItemIcon_CleanseTag[];
extern const u32 gItemIconPalette_CleanseTag[];
extern const u32 gItemIcon_SoulDew[];
extern const u32 gItemIconPalette_SoulDew[];
extern const u32 gItemIcon_DeepSeaTooth[];
extern const u32 gItemIconPalette_DeepSeaTooth[];
extern const u32 gItemIcon_DeepSeaScale[];
extern const u32 gItemIconPalette_DeepSeaScale[];
extern const u32 gItemIcon_SmokeBall[];
extern const u32 gItemIconPalette_SmokeBall[];
extern const u32 gItemIcon_Everstone[];
extern const u32 gItemIconPalette_Everstone[];
extern const u32 gItemIcon_FocusBand[];
extern const u32 gItemIconPalette_FocusBand[];
extern const u32 gItemIcon_LuckyEgg[];
extern const u32 gItemIconPalette_LuckyEgg[];
extern const u32 gItemIcon_ScopeLens[];
extern const u32 gItemIconPalette_ScopeLens[];
extern const u32 gItemIcon_MetalCoat[];
extern const u32 gItemIconPalette_MetalCoat[];
extern const u32 gItemIcon_Leftovers[];
extern const u32 gItemIconPalette_Leftovers[];
extern const u32 gItemIcon_DragonScale[];
extern const u32 gItemIconPalette_DragonScale[];
extern const u32 gItemIcon_LightBall[];
extern const u32 gItemIconPalette_LightBall[];
extern const u32 gItemIcon_SoftSand[];
extern const u32 gItemIconPalette_SoftSand[];
extern const u32 gItemIcon_HardStone[];
extern const u32 gItemIconPalette_HardStone[];
extern const u32 gItemIcon_MiracleSeed[];
extern const u32 gItemIconPalette_MiracleSeed[];
extern const u32 gItemIcon_BlackGlasses[];
extern const u32 gItemIconPalette_BlackTypeEnhancingItem[];
extern const u32 gItemIcon_BlackBelt[];
extern const u32 gItemIconPalette_BlackTypeEnhancingItem[];
extern const u32 gItemIcon_Magnet[];
extern const u32 gItemIconPalette_Magnet[];
extern const u32 gItemIcon_MysticWater[];
extern const u32 gItemIconPalette_MysticWater[];
extern const u32 gItemIcon_SharpBeak[];
extern const u32 gItemIconPalette_SharpBeak[];
extern const u32 gItemIcon_PoisonBarb[];
extern const u32 gItemIconPalette_PoisonBarb[];
extern const u32 gItemIcon_NeverMeltIce[];
extern const u32 gItemIconPalette_NeverMeltIce[];
extern const u32 gItemIcon_SpellTag[];
extern const u32 gItemIconPalette_SpellTag[];
extern const u32 gItemIcon_TwistedSpoon[];
extern const u32 gItemIconPalette_TwistedSpoon[];
extern const u32 gItemIcon_Charcoal[];
extern const u32 gItemIconPalette_Charcoal[];
extern const u32 gItemIcon_DragonFang[];
extern const u32 gItemIconPalette_DragonFang[];
extern const u32 gItemIcon_SilkScarf[];
extern const u32 gItemIconPalette_SilkScarf[];
extern const u32 gItemIcon_UpGrade[];
extern const u32 gItemIconPalette_UpGrade[];
extern const u32 gItemIcon_ShellBell[];
extern const u32 gItemIconPalette_Shell[];
extern const u32 gItemIcon_SeaIncense[];
extern const u32 gItemIconPalette_SeaIncense[];
extern const u32 gItemIcon_LaxIncense[];
extern const u32 gItemIconPalette_LaxIncense[];
extern const u32 gItemIcon_LuckyPunch[];
extern const u32 gItemIconPalette_LuckyPunch[];
extern const u32 gItemIcon_MetalPowder[];
extern const u32 gItemIconPalette_MetalPowder[];
extern const u32 gItemIcon_ThickClub[];
extern const u32 gItemIconPalette_ThickClub[];
extern const u32 gItemIcon_Stick[];
extern const u32 gItemIconPalette_Stick[];

extern const u32 gItemIcon_Scarf[];
extern const u32 gItemIconPalette_RedScarf[];
extern const u32 gItemIconPalette_BlueScarf[];
extern const u32 gItemIconPalette_PinkScarf[];
extern const u32 gItemIconPalette_GreenScarf[];
extern const u32 gItemIconPalette_YellowScarf[];

extern const u32 gItemIcon_MachBike[];
extern const u32 gItemIconPalette_MachBike[];
extern const u32 gItemIcon_CoinCase[];
extern const u32 gItemIconPalette_CoinCase[];
extern const u32 gItemIcon_Itemfinder[];
extern const u32 gItemIconPalette_Itemfinder[];
extern const u32 gItemIcon_OldRod[];
extern const u32 gItemIconPalette_OldRod[];
extern const u32 gItemIcon_GoodRod[];
extern const u32 gItemIconPalette_GoodRod[];
extern const u32 gItemIcon_SuperRod[];
extern const u32 gItemIconPalette_SuperRod[];
extern const u32 gItemIcon_SSTicket[];
extern const u32 gItemIconPalette_SSTicket[];
extern const u32 gItemIcon_ContestPass[];
extern const u32 gItemIconPalette_ContestPass[];
extern const u32 gItemIcon_WailmerPail[];
extern const u32 gItemIconPalette_WailmerPail[];
extern const u32 gItemIcon_DevonGoods[];
extern const u32 gItemIconPalette_DevonGoods[];
extern const u32 gItemIcon_SootSack[];
extern const u32 gItemIconPalette_SootSack[];
extern const u32 gItemIcon_BasementKey[];
extern const u32 gItemIconPalette_OldKey[];
extern const u32 gItemIcon_AcroBike[];
extern const u32 gItemIconPalette_AcroBike[];
extern const u32 gItemIcon_PokeblockCase[];
extern const u32 gItemIconPalette_PokeblockCase[];
extern const u32 gItemIcon_Letter[];
extern const u32 gItemIcon_EonTicket[];
extern const u32 gItemIconPalette_EonTicket[];
extern const u32 gItemIcon_Orb[];
extern const u32 gItemIconPalette_RedOrb[];
extern const u32 gItemIconPalette_BlueOrb[];
extern const u32 gItemIcon_Scanner[];
extern const u32 gItemIconPalette_Scanner[];
extern const u32 gItemIcon_GoGoggles[];
extern const u32 gItemIconPalette_GoGoggles[];
extern const u32 gItemIcon_Meteorite[];
extern const u32 gItemIconPalette_Meteorite[];
extern const u32 gItemIcon_Room1Key[];
extern const u32 gItemIconPalette_Key[];
extern const u32 gItemIcon_Room2Key[];
extern const u32 gItemIcon_Room4Key[];
extern const u32 gItemIcon_Room6Key[];
extern const u32 gItemIcon_StorageKey[];
extern const u32 gItemIcon_RootFossil[];
extern const u32 gItemIconPalette_HoennFossil[];
extern const u32 gItemIcon_ClawFossil[];
extern const u32 gItemIcon_DevonScope[];
extern const u32 gItemIconPalette_DevonScope[];

extern const u32 gItemIcon_TM[];
extern const u32 gItemIconPalette_FightingTMHM[];
extern const u32 gItemIconPalette_DragonTMHM[];
extern const u32 gItemIconPalette_WaterTMHM[];
extern const u32 gItemIconPalette_PsychicTMHM[];
extern const u32 gItemIconPalette_NormalTMHM[];
extern const u32 gItemIconPalette_PoisonTMHM[];
extern const u32 gItemIconPalette_IceTMHM[];
extern const u32 gItemIconPalette_GrassTMHM[];
extern const u32 gItemIconPalette_FireTMHM[];
extern const u32 gItemIconPalette_DarkTMHM[];
extern const u32 gItemIconPalette_SteelTMHM[];
extern const u32 gItemIconPalette_ElectricTMHM[];
extern const u32 gItemIconPalette_GroundTMHM[];
extern const u32 gItemIconPalette_GhostTMHM[];
extern const u32 gItemIconPalette_RockTMHM[];
extern const u32 gItemIconPalette_FlyingTMHM[];
extern const u32 gItemIcon_HM[];

extern const u32 gItemIcon_OaksParcel[];
extern const u32 gItemIconPalette_OaksParcel[];
extern const u32 gItemIcon_PokeFlute[];
extern const u32 gItemIconPalette_PokeFlute[];
extern const u32 gItemIcon_SecretKey[];
extern const u32 gItemIconPalette_SecretKey[];
extern const u32 gItemIcon_BikeVoucher[];
extern const u32 gItemIconPalette_BikeVoucher[];
extern const u32 gItemIcon_GoldTeeth[];
extern const u32 gItemIconPalette_GoldTeeth[];
extern const u32 gItemIcon_OldAmber[];
extern const u32 gItemIconPalette_OldAmber[];
extern const u32 gItemIcon_CardKey[];
extern const u32 gItemIconPalette_CardKey[];
extern const u32 gItemIcon_LiftKey[];
extern const u32 gItemIconPalette_Key[];
extern const u32 gItemIcon_HelixFossil[];
extern const u32 gItemIconPalette_KantoFossil[];
extern const u32 gItemIcon_DomeFossil[];
extern const u32 gItemIcon_SilphScope[];
extern const u32 gItemIconPalette_SilphScope[];
extern const u32 gItemIcon_Bicycle[];
extern const u32 gItemIconPalette_Bicycle[];
extern const u32 gItemIcon_TownMap[];
extern const u32 gItemIconPalette_TownMap[];
extern const u32 gItemIcon_VSSeeker[];
extern const u32 gItemIconPalette_VSSeeker[];
extern const u32 gItemIcon_FameChecker[];
extern const u32 gItemIconPalette_FameChecker[];
extern const u32 gItemIcon_TMCase[];
extern const u32 gItemIconPalette_TMCase[];
extern const u32 gItemIcon_BerryPouch[];
extern const u32 gItemIconPalette_BerryPouch[];
extern const u32 gItemIcon_TeachyTV[];
extern const u32 gItemIconPalette_TeachyTV[];
extern const u32 gItemIcon_TriPass[];
extern const u32 gItemIconPalette_TriPass[];
extern const u32 gItemIcon_RainbowPass[];
extern const u32 gItemIconPalette_RainbowPass[];
extern const u32 gItemIcon_Tea[];
extern const u32 gItemIconPalette_Tea[];
extern const u32 gItemIcon_MysticTicket[];
extern const u32 gItemIconPalette_MysticTicket[];
extern const u32 gItemIcon_AuroraTicket[];
extern const u32 gItemIconPalette_AuroraTicket[];
extern const u32 gItemIcon_PowderJar[];
extern const u32 gItemIconPalette_PowderJar[];
extern const u32 gItemIcon_Gem[];
extern const u32 gItemIconPalette_Ruby[];
extern const u32 gItemIconPalette_Sapphire[];

extern const u32 gItemIcon_MagmaEmblem[];
extern const u32 gItemIconPalette_MagmaEmblem[];
extern const u32 gItemIcon_OldSeaMap[];
extern const u32 gItemIconPalette_OldSeaMap[];

extern const u32 gItemIcon_ReturnToFieldArrow[];
extern const u32 gItemIconPalette_ReturnToFieldArrow[];


extern const u16 gFireRedMenuElements1_Pal[16];
extern const u16 gFireRedMenuElements2_Pal[16];
extern const u16 gFireRedMenuElements3_Pal[16];
extern const u8 gFireRedMenuElements_Gfx[];


extern const u32 gBagScreen_Gfx[];
extern const u32 gBagScreen_GfxTileMap[];
extern const u32 gBagScreenFemale_Pal[];
extern const u32 gBagScreenMale_Pal[];
extern const u8 gBagMenuHMIcon_Gfx[];


extern const u32 gBagMaleTiles[];
extern const u32 gBagFemaleTiles[];
extern const u32 gBagPalette[];
extern const u32 gBerryCheckCircle_Gfx[];


extern const u32 gIntro1SparkleGfx[];
extern const u32 gIntro1FlygonGfx[];
extern const u16 gIntro3LightningPal[];
extern const u32 gIntroCopyright_Gfx[];
extern const u32 gIntroCopyright_Tilemap[];
extern const u16 gIntroCopyright_Pal[16];
extern const u32 gIntro2VolbeatGfx[];
extern const u32 gIntro2TorchicGfx[];
extern const u32 gIntro2ManectricGfx[];
extern const u16 gIntro2VolbeatPal[];
extern const u16 gIntro2TorchicPal[];
extern const u16 gIntro2ManectricPal[];
extern const u32 gIntro2BubblesGfx[];
extern const u16 gIntro2BubblesPal[];
extern const u32 gIntro3LightningGfx[];
extern const u32 gIntro3GroudonGfx[];
extern const u32 gIntro3GroudonTilemap[];
extern const u32 gIntro3LegendBgGfx[];
extern const u32 gIntro3GroudonBgTilemap[];
extern const u32 gIntro3GroudonBgTilemap[];
extern const u8 gIntro3BgPal[0x200];
extern const u32 gIntro3KyogreGfx[];
extern const u32 gIntro3KyogreTilemap[];
extern const u32 gIntro3KyogreBgTilemap[];
extern const u32 gIntro3CloudsGfx[];
extern const u32 gIntro3Clouds1Tilemap[];
extern const u32 gIntro3Clouds2Tilemap[];
extern const u32 gIntro3Clouds3Tilemap[];
extern const u32 gIntro3Clouds4Tilemap[];
extern const u32 gIntro3RayquazaTilemap[];
extern const u32 gIntro3RayquazaGfx[];
extern const u32 gIntro3Clouds2Gfx[];
extern const u16 gIntro1GameFreakTextFadePal[];


extern const u32 gIntro2BrendanNoTurnGfx[];
extern const u32 gIntro2MayNoTurnGfx[];
extern const u16 gIntro2BrendanNoTurnPal[];
extern const u16 gIntro2FlygonPal[];
extern const u32 gIntro2FlygonGfx[];


extern const u32 gPartyMenuMisc_Gfx[];
extern const u32 gPartyMenuMisc_Tilemap[];
extern const u32 gPartyMenuMisc_Pal[];


extern const u32 gBerryPic_Cheri[];
extern const u32 gBerryPalette_Cheri[];
extern const u32 gBerryPic_Chesto[];
extern const u32 gBerryPalette_Chesto[];
extern const u32 gBerryPic_Pecha[];
extern const u32 gBerryPalette_Pecha[];
extern const u32 gBerryPic_Rawst[];
extern const u32 gBerryPalette_Rawst[];
extern const u32 gBerryPic_Aspear[];
extern const u32 gBerryPalette_Aspear[];
extern const u32 gBerryPic_Leppa[];
extern const u32 gBerryPalette_Leppa[];
extern const u32 gBerryPic_Oran[];
extern const u32 gBerryPalette_Oran[];
extern const u32 gBerryPic_Persim[];
extern const u32 gBerryPalette_Persim[];
extern const u32 gBerryPic_Lum[];
extern const u32 gBerryPalette_Lum[];
extern const u32 gBerryPic_Sitrus[];
extern const u32 gBerryPalette_Sitrus[];
extern const u32 gBerryPic_Figy[];
extern const u32 gBerryPalette_Figy[];
extern const u32 gBerryPic_Wiki[];
extern const u32 gBerryPalette_Wiki[];
extern const u32 gBerryPic_Mago[];
extern const u32 gBerryPalette_Mago[];
extern const u32 gBerryPic_Aguav[];
extern const u32 gBerryPalette_Aguav[];
extern const u32 gBerryPic_Iapapa[];
extern const u32 gBerryPalette_Iapapa[];
extern const u32 gBerryPic_Razz[];
extern const u32 gBerryPalette_Razz[];
extern const u32 gBerryPic_Bluk[];
extern const u32 gBerryPalette_Bluk[];
extern const u32 gBerryPic_Nanab[];
extern const u32 gBerryPalette_Nanab[];
extern const u32 gBerryPic_Wepear[];
extern const u32 gBerryPalette_Wepear[];
extern const u32 gBerryPic_Pinap[];
extern const u32 gBerryPalette_Pinap[];
extern const u32 gBerryPic_Pomeg[];
extern const u32 gBerryPalette_Pomeg[];
extern const u32 gBerryPic_Kelpsy[];
extern const u32 gBerryPalette_Kelpsy[];
extern const u32 gBerryPic_Qualot[];
extern const u32 gBerryPalette_Qualot[];
extern const u32 gBerryPic_Hondew[];
extern const u32 gBerryPalette_Hondew[];
extern const u32 gBerryPic_Grepa[];
extern const u32 gBerryPalette_Grepa[];
extern const u32 gBerryPic_Tamato[];
extern const u32 gBerryPalette_Tamato[];
extern const u32 gBerryPic_Cornn[];
extern const u32 gBerryPalette_Cornn[];
extern const u32 gBerryPic_Magost[];
extern const u32 gBerryPalette_Magost[];
extern const u32 gBerryPic_Rabuta[];
extern const u32 gBerryPalette_Rabuta[];
extern const u32 gBerryPic_Nomel[];
extern const u32 gBerryPalette_Nomel[];
extern const u32 gBerryPic_Spelon[];
extern const u32 gBerryPalette_Spelon[];
extern const u32 gBerryPic_Pamtre[];
extern const u32 gBerryPalette_Pamtre[];
extern const u32 gBerryPic_Watmel[];
extern const u32 gBerryPalette_Watmel[];
extern const u32 gBerryPic_Durin[];
extern const u32 gBerryPalette_Durin[];
extern const u32 gBerryPic_Belue[];
extern const u32 gBerryPalette_Belue[];
extern const u32 gBerryPic_Liechi[];
extern const u32 gBerryPalette_Liechi[];
extern const u32 gBerryPic_Ganlon[];
extern const u32 gBerryPalette_Ganlon[];
extern const u32 gBerryPic_Salac[];
extern const u32 gBerryPalette_Salac[];
extern const u32 gBerryPic_Petaya[];
extern const u32 gBerryPalette_Petaya[];
extern const u32 gBerryPic_Apicot[];
extern const u32 gBerryPalette_Apicot[];
extern const u32 gBerryPic_Lansat[];
extern const u32 gBerryPalette_Lansat[];
extern const u32 gBerryPic_Starf[];
extern const u32 gBerryPalette_Starf[];
extern const u32 gBerryPic_Enigma[];
extern const u32 gBerryPalette_Enigma[];


extern const u16 gPokenavCondition_Pal[];
extern const u32 gPokenavCondition_Gfx[];
extern const u32 gPokenavCondition_Tilemap[];
extern const u16 gPokenavOptions_Tilemap[];
extern const u32 gPokenavOptions_Gfx[];
extern const u16 gPokenavOptions_Pal[];
extern const u8 gPokenavConditionMarker_Gfx[];
extern const u16 gPokenavConditionMarker_Pal[];
extern const u16 gPokenavLeftHeader_Pal[];
extern const u16 gPokenavHeader_Pal[];
extern const u32 gPokenavHeader_Gfx[];
extern const u32 gPokenavHeader_Tilemap[];
extern const u32 gPokenavLeftHeaderHoennMap_Gfx[];
extern const u32 gPokenavLeftHeaderMainMenu_Gfx[];
extern const u32 gPokenavLeftHeaderCondition_Gfx[];
extern const u32 gPokenavLeftHeaderRibbons_Gfx[];
extern const u32 gPokenavLeftHeaderMatchCall_Gfx[];
extern const u32 gPokenavLeftHeaderParty_Gfx[];
extern const u32 gPokenavLeftHeaderSearch_Gfx[];
extern const u32 gPokenavLeftHeaderCool_Gfx[];
extern const u32 gPokenavLeftHeaderBeauty_Gfx[];
extern const u32 gPokenavLeftHeaderCute_Gfx[];
extern const u32 gPokenavLeftHeaderSmart_Gfx[];
extern const u32 gPokenavLeftHeaderTough_Gfx[];
extern const u16 gUnknown_08DDE010[];
extern const u32 gUnknown_08DDE030[];
extern const u32 gUnknown_08DDE12C[];

extern const u32 gPageInfoTilemap[];
extern const u32 gUnknown_08D98CC8[];
extern const u32 gPageSkillsTilemap[];
extern const u32 gPageBattleMovesTilemap[];
extern const u32 gPageContestMovesTilemap[];
extern const u32 gStatusScreenPalette[];
extern const u16 gUnknown_08D85620[];
extern const u16 gSummaryScreenWindow_Tilemap[];
extern const u32 gMoveTypes_Pal[];
extern const u32 gStatusScreenBitmap[];

extern const u16 gSummaryScreenPowAcc_Tilemap[];
extern const u16 gUnknown_08DC3C34[];

extern const u32 gMoveTypes_Gfx[];
extern const u32 gMoveSelectorBitmap[];
extern const u32 gUnknown_08D97CF4[];
extern const u32 gStatusGfx_Icons[];
extern const u32 gStatusPal_Icons[];

extern const u32 gBuyMenuFrame_Gfx[];
extern const u32 gBuyMenuFrame_Tilemap[];
extern const u32 gMenuMoneyGfx[];
extern const u32 gMenuMoneyPal[];

extern const u32 gBattleInterface_BallStatusBarGfx[];
extern const u8 gBattleInterface_BallDisplayGfx[];
extern const u16 gBattleInterface_BallStatusBarPal[];
extern const u16 gBattleInterface_BallDisplayPal[];
extern const u8 gHealthboxElementsGfxTable[][32];

extern const u16 gNamingScreenMenu_Pal[];
extern const u32 gNamingScreenMenu_Gfx[];
extern const u32 gUnknown_08DD4544[];
extern const u8 gUnknown_08DD4620[];
extern const u8 gUnknown_08DD46E0[];
extern const u8 gUnknown_08DD47A0[];
extern const u8 gNamingScreenRWindow_Gfx[];
extern const u8 gNamingScreenKeyboardButton_Gfx[];
extern const u8 gNamingScreenROptions_Gfx[];
extern const u8 gNamingScreenCursor_Gfx[];
extern const u8 gNamingScreenRightPointingTriangleTiles[];
extern const u8 gNamingScreenUnderscoreTiles[];

extern const u32 gUnknown_08D9BA44[];

extern const u32 gContestConfetti_Gfx[];
extern const u32 gContestConfetti_Pal[];

extern const u32 gUnknown_08C093F0[];
extern const u32 gSubstituteDollTilemap[];
extern const u32 gSubstituteDollGfx[];
extern const u32 gSubstituteDollPal[];
extern const u32 gHealthboxSinglesPlayerGfx[];
extern const u32 gHealthboxSinglesOpponentGfx[];
extern const u32 gHealthboxDoublesPlayerGfx[];
extern const u32 gHealthboxDoublesOpponentGfx[];
extern const u32 gHealthboxSafariGfx[];
extern const u32 gBlankGfxCompressed[];
extern const u16 gBattleInterface_BallStatusBarPal[];
extern const u16 gBattleInterface_BallDisplayPal[];

extern const u32 gBagSwapLineGfx[];
extern const u32 gBagSwapLinePal[];

extern const u32 gBattleFrontierGfx_PyramidBag[];
extern const u32 gBattleFrontierGfx_PyramidBag_Pal[];
extern const u32 gBattleFrontierGfx_PyramidBagTileMap[];
extern const u32 gUnknown_08D9AF44[];
extern const u16 gUnknown_0860F074[];

extern const u32 gTitleScreenEmeraldVersionGfx[];
extern const u32 gTitleScreenPressStartGfx[];
extern const u32 gTitleScreenPokemonLogoGfx[];
extern const u32 gUnknown_08DE0644[];
extern const u32 gUnknown_08DDE458[];
extern const u16 gTitleScreenBgPalettes[];
extern const u16 gTitleScreenPressStartPal[];
extern const u16 gTitleScreenEmeraldVersionPal[];

extern const u32 gUnknown_08D83D50[];
extern const u32 gUnknown_08D84970[];
extern const u32 gUnknown_08D84F00[];
extern const u32 gUnknown_08D85444[];
extern const u32 gUnknown_08D85358[];
extern const u32 gUnknown_08D85600[];
extern const u32 gUnknown_08D854C8[];
extern const u32 gUnknown_08D82F10[];
extern const u32 gUnknown_08D834FC[];
extern const u32 gUnknown_08D83B2C[];
extern const u32 gUnknown_08D83C3C[];
extern const u32 gUnknown_08D83900[];
extern const u32 gBattleFrontierGfx_DomeOptions[];
extern const u16 gTilesetAnims_BattleDomePals0_0[];
extern const u16 gTilesetAnims_BattleDomePals0_1[];
extern const u16 gTilesetAnims_BattleDomePals0_2[];
extern const u16 gTilesetAnims_BattleDomePals0_3[];

extern const u32 gBattleArenaJudgementSymbolsGfx[];
extern const u32 gBattleArenaJudgementSymbolsPalette[];
extern const u32 gContest2Pal[];

extern const u32 gBattleAnimSpriteGfx_Bone[];
extern const u32 gBattleAnimSpriteGfx_Spark[];
extern const u32 gBattleAnimSpriteGfx_Pencil[];
extern const u32 gBattleAnimSpriteGfx_AirWave[];
extern const u32 gBattleAnimSpriteGfx_Orb[];
extern const u32 gBattleAnimSpriteGfx_Sword[];
extern const u32 gBattleAnimSpriteGfx_Seed[];
extern const u32 gBattleAnimSpriteGfx_Explosion6[];
extern const u32 gBattleAnimSpriteGfx_PinkOrb[];
extern const u32 gBattleAnimSpriteGfx_Gust[];
extern const u32 gBattleAnimSpriteGfx_IceCube[];
extern const u32 gBattleAnimSpriteGfx_Spark2[];
extern const u32 gBattleAnimSpriteGfx_Orange[];
extern const u32 gBattleAnimSpriteGfx_YellowBall[];
extern const u32 gBattleAnimSpriteGfx_LockOn[];
extern const u32 gBattleAnimSpriteGfx_TiedBag[];
extern const u32 gBattleAnimSpriteGfx_BlackSmoke[];
extern const u32 gBattleAnimSpriteGfx_BlackBall[];
extern const u32 gBattleAnimSpriteGfx_Conversion[];
extern const u32 gBattleAnimSpriteGfx_Glass[];
extern const u32 gBattleAnimSpriteGfx_HornHit[];
extern const u32 gBattleAnimSpriteGfx_Hit[];
extern const u32 gBattleAnimSpriteGfx_Hit[];
extern const u32 gBattleAnimSpriteGfx_BlueShards[];
extern const u32 gBattleAnimSpriteGfx_ClosingEye[];
extern const u32 gBattleAnimSpriteGfx_WavingHand[];
extern const u32 gBattleAnimSpriteGfx_HitDuplicate[];
extern const u32 gBattleAnimSpriteGfx_Leer[];
extern const u32 gBattleAnimSpriteGfx_BlueBurst[];
extern const u32 gBattleAnimSpriteGfx_SmallEmber[];
extern const u32 gBattleAnimSpriteGfx_GraySmoke[];
extern const u32 gBattleAnimSpriteGfx_BlueStar[];
extern const u32 gBattleAnimSpriteGfx_BubbleBurst[];
extern const u32 gBattleAnimSpriteGfx_Fire[];
extern const u32 gBattleAnimSpriteGfx_SpinningFire[];
extern const u32 gBattleAnimSpriteGfx_FirePlume[];
extern const u32 gBattleAnimSpriteGfx_Lightning2[];
extern const u32 gBattleAnimSpriteGfx_Lightning[];
extern const u32 gBattleAnimSpriteGfx_ClawSlash2[];
extern const u32 gBattleAnimSpriteGfx_ClawSlash[];
extern const u32 gBattleAnimSpriteGfx_Scratch3[];
extern const u32 gBattleAnimSpriteGfx_Scratch2[];
extern const u32 gBattleAnimSpriteGfx_BubbleBurst2[];
extern const u32 gBattleAnimSpriteGfx_IceChunk[];
extern const u32 gBattleAnimSpriteGfx_Glass2[];
extern const u32 gBattleAnimSpriteGfx_PinkHeart2[];
extern const u32 gBattleAnimSpriteGfx_SapDrip[];
extern const u32 gBattleAnimSpriteGfx_SapDrip[];
extern const u32 gBattleAnimSpriteGfx_Sparkle1[];
extern const u32 gBattleAnimSpriteGfx_Sparkle1[];
extern const u32 gBattleAnimSpriteGfx_HumanoidFoot[];
extern const u32 gBattleAnimSpriteGfx_MonsterFoot[];
extern const u32 gBattleAnimSpriteGfx_HumanoidHand[];
extern const u32 gBattleAnimSpriteGfx_NoiseLine[];
extern const u32 gUnknown_08C2EA50[];
extern const u32 gUnknown_08C2EA9C[];
extern const u32 gBattleAnimSpriteGfx_YellowUnk[];
extern const u32 gBattleAnimSpriteGfx_RedFist[];
extern const u32 gBattleAnimSpriteGfx_SlamHit[];
extern const u32 gBattleAnimSpriteGfx_Ring[];
extern const u32 gBattleAnimSpriteGfx_Rocks[];
extern const u32 gBattleAnimSpriteGfx_Z[];
extern const u32 gBattleAnimSpriteGfx_YellowUnk2[];
extern const u32 gBattleAnimSpriteGfx_AirSlash[];
extern const u32 gBattleAnimSpriteGfx_SpinningGreenOrbs[];
extern const u32 gBattleAnimSpriteGfx_Leaf[];
extern const u32 gBattleAnimSpriteGfx_Finger[];
extern const u32 gBattleAnimSpriteGfx_PoisonPowder[];
extern const u32 gBattleAnimSpriteGfx_BrownTriangle[];
extern const u32 gBattleAnimSpriteGfx_Sparkle3[];
extern const u32 gBattleAnimSpriteGfx_Sparkle4[];
extern const u32 gBattleAnimSpriteGfx_MusicNotes[];
extern const u32 gBattleAnimSpriteGfx_Duck[];
extern const u32 gBattleAnimSpriteGfx_MudSand[];
extern const u32 gBattleAnimSpriteGfx_Alert[];
extern const u32 gBattleAnimSpriteGfx_BlueFlames[];
extern const u32 gBattleAnimSpriteGfx_BlueFlames2[];
extern const u32 gBattleAnimSpriteGfx_Shock4[];
extern const u32 gBattleAnimSpriteGfx_Shock[];
extern const u32 gBattleAnimSpriteGfx_Bell2[];
extern const u32 gBattleAnimSpriteGfx_PinkGlove[];
extern const u32 gBattleAnimSpriteGfx_BlueLines[];
extern const u32 gBattleAnimSpriteGfx_Impact3[];
extern const u32 gBattleAnimSpriteGfx_Impact2[];
extern const u32 gBattleAnimSpriteGfx_Reticle[];
extern const u32 gBattleAnimSpriteGfx_Breath[];
extern const u32 gBattleAnimSpriteGfx_Anger[];
extern const u32 gBattleAnimSpriteGfx_Snowball[];
extern const u32 gBattleAnimSpriteGfx_Vine[];
extern const u32 gBattleAnimSpriteGfx_Sword2[];
extern const u32 gBattleAnimSpriteGfx_Clapping[];
extern const u32 gBattleAnimSpriteGfx_RedTube[];
extern const u32 gBattleAnimSpriteGfx_Amnesia[];
extern const u32 gBattleAnimSpriteGfx_String2[];
extern const u32 gBattleAnimSpriteGfx_Pencil2[];
extern const u32 gBattleAnimSpriteGfx_Petal[];
extern const u32 gBattleAnimSpriteGfx_BentSpoon[];
extern const u32 gBattleAnimSpriteGfx_Web[];
extern const u32 gBattleAnimSpriteGfx_MilkBottle[];
extern const u32 gBattleAnimSpriteGfx_Coin[];
extern const u32 gBattleAnimSpriteGfx_CrackedEgg[];
extern const u32 gBattleAnimSpriteGfx_HatchedEgg[];
extern const u32 gBattleAnimSpriteGfx_FreshEgg[];
extern const u32 gBattleAnimSpriteGfx_Fangs[];
extern const u32 gBattleAnimSpriteGfx_Explosion2[];
extern const u32 gBattleAnimSpriteGfx_Explosion3[];
extern const u32 gBattleAnimSpriteGfx_WaterDroplet[];
extern const u32 gBattleAnimSpriteGfx_WaterDroplet2[];
extern const u32 gBattleAnimSpriteGfx_Seed2[];
extern const u32 gBattleAnimSpriteGfx_Sprout[];
extern const u32 gBattleAnimSpriteGfx_RedWand[];
extern const u32 gBattleAnimSpriteGfx_PurpleGreenUnk[];
extern const u32 gBattleAnimSpriteGfx_WaterColumn[];
extern const u32 gBattleAnimSpriteGfx_MudUnk[];
extern const u32 gBattleAnimSpriteGfx_RainDrops[];
extern const u32 gBattleAnimSpriteGfx_FurySwipes[];
extern const u32 gBattleAnimSpriteGfx_Vine2[];
extern const u32 gBattleAnimSpriteGfx_Teeth[];
extern const u32 gBattleAnimSpriteGfx_Bone2[];
extern const u32 gBattleAnimSpriteGfx_WhiteBag[];
extern const u32 gBattleAnimSpriteGfx_Unknown[];
extern const u32 gBattleAnimSpriteGfx_PurpleCoral[];
extern const u32 gBattleAnimSpriteGfx_PurpleDroplet[];
extern const u32 gBattleAnimSpriteGfx_Shock2[];
extern const u32 gBattleAnimSpriteGfx_ClosingEye2[];
extern const u32 gBattleAnimSpriteGfx_MetalBall[];
extern const u32 gBattleAnimSpriteGfx_MonsterDoll[];
extern const u32 gBattleAnimSpriteGfx_Whirlwind[];
extern const u32 gBattleAnimSpriteGfx_Whirlwind2[];
extern const u32 gBattleAnimSpriteGfx_Explosion4[];
extern const u32 gBattleAnimSpriteGfx_Explosion5[];
extern const u32 gBattleAnimSpriteGfx_Tongue[];
extern const u32 gBattleAnimSpriteGfx_Smoke[];
extern const u32 gBattleAnimSpriteGfx_Smoke2[];
extern const u32 gBattleAnimSpriteGfx_Impact[];
extern const u32 gBattleAnimSpriteGfx_Particles[];
extern const u32 gBattleAnimSpriteGfx_CircleImpact[];
extern const u32 gBattleAnimSpriteGfx_Scratch[];
extern const u32 gBattleAnimSpriteGfx_Cut[];
extern const u32 gBattleAnimSpriteGfx_SharpTeeth[];
extern const u32 gBattleAnimSpriteGfx_RainbowRings[];
extern const u32 gBattleAnimSpriteGfx_IceCrystals[];
extern const u32 gBattleAnimSpriteGfx_IceSpikes[];
extern const u32 gBattleAnimSpriteGfx_HandsAndFeet[];
extern const u32 gBattleAnimSpriteGfx_MistCloud[];
extern const u32 gBattleAnimSpriteGfx_Clamp[];

extern const u32 gBattleAnimSpriteGfx_Bubble[];
extern const u32 gBattleAnimSpriteGfx_Orbs[];
extern const u32 gBattleAnimSpriteGfx_WaterImpact[];
extern const u32 gBattleAnimSpriteGfx_WaterOrb[];
extern const u32 gBattleAnimSpriteGfx_PoisonBubble[];
extern const u32 gBattleAnimSpriteGfx_ToxicBubble[];
extern const u32 gBattleAnimSpriteGfx_Spikes[];
extern const u32 gBattleAnimSpriteGfx_HornHit2[];
extern const u32 gBattleAnimSpriteGfx_AirWave2[];
extern const u32 gBattleAnimSpriteGfx_SmallBubbles[];
extern const u32 gBattleAnimSpriteGfx_RoundShadow[];
extern const u32 gBattleAnimSpriteGfx_Sunlight[];
extern const u32 gBattleAnimSpriteGfx_Spore[];
extern const u32 gBattleAnimSpriteGfx_Flower[];
extern const u32 gBattleAnimSpriteGfx_RazorLeaf[];
extern const u32 gBattleAnimSpriteGfx_Needle[];
extern const u32 gBattleAnimSpriteGfx_WhirlwindLines[];
extern const u32 gBattleAnimSpriteGfx_GoldRing[];
extern const u32 gBattleAnimSpriteGfx_GreenLightWall[];
extern const u32 gBattleAnimSpriteGfx_BlackBall2[];
extern const u32 gBattleAnimSpriteGfx_SparkH[];
extern const u32 gBattleAnimSpriteGfx_YellowStar[];
extern const u32 gBattleAnimSpriteGfx_LargeFreshEgg[];
extern const u32 gBattleAnimSpriteGfx_ShadowBall[];
extern const u32 gBattleAnimSpriteGfx_Lick[];
extern const u32 gBattleAnimSpriteGfx_VoidLines[];
extern const u32 gBattleAnimSpriteGfx_String[];
extern const u32 gBattleAnimSpriteGfx_WebThread[];
extern const u32 gBattleAnimSpriteGfx_SpiderWeb[];
extern const u32 gBattleAnimSpriteGfx_Lightbulb[];
extern const u32 gBattleAnimSpriteGfx_Slash[];
extern const u32 gBattleAnimSpriteGfx_FocusEnergy[];
extern const u32 gBattleAnimSpriteGfx_SphereToCube[];
extern const u32 gBattleAnimSpriteGfx_Tendrils[];
extern const u32 gBattleAnimSpriteGfx_Eye[];
extern const u32 gBattleAnimSpriteGfx_WhiteShadow[];
extern const u32 gBattleAnimSpriteGfx_TealAlert[];
extern const u32 gBattleAnimSpriteGfx_OpeningEye[];
extern const u32 gBattleAnimSpriteGfx_RoundWhiteHalo[];
extern const u32 gBattleAnimSpriteGfx_FangAttack[];
extern const u32 gBattleAnimSpriteGfx_PurpleHandOutline[];
extern const u32 gBattleAnimSpriteGfx_Moon[];
extern const u32 gBattleAnimSpriteGfx_GreenSparkle[];
extern const u32 gBattleAnimSpriteGfx_Spiral[];
extern const u32 gBattleAnimSpriteGfx_SnoreZ[];
extern const u32 gBattleAnimSpriteGfx_Explosion[];
extern const u32 gBattleAnimSpriteGfx_Nail[];
extern const u32 gBattleAnimSpriteGfx_GhostlySpirit[];
extern const u32 gBattleAnimSpriteGfx_WarmRock[];
extern const u32 gBattleAnimSpriteGfx_BreakingEgg[];
extern const u32 gBattleAnimSpriteGfx_ThinRing[];
extern const u32 gBattleAnimSpriteGfx_PunchImpact[];
extern const u32 gBattleAnimSpriteGfx_Bell[];
extern const u32 gBattleAnimSpriteGfx_MusicNotes2[];
extern const u32 gBattleAnimSpriteGfx_SpeedDust[];
extern const u32 gBattleAnimSpriteGfx_TornMetal[];
extern const u32 gBattleAnimSpriteGfx_ThoughtBubble[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_ElectricOrbs[];
extern const u32 gBattleAnimSpriteGfx_CircleOfLight[];
extern const u32 gBattleAnimSpriteGfx_Electricity[];
extern const u32 gBattleAnimSpriteGfx_Finger2[];
extern const u32 gBattleAnimSpriteGfx_MovementWaves[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_RedOrb[];
extern const u32 gBattleAnimSpriteGfx_EyeSparkle[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_Angel[];
extern const u32 gBattleAnimSpriteGfx_Devil[];
extern const u32 gBattleAnimSpriteGfx_Swipe[];
extern const u32 gBattleAnimSpriteGfx_Roots[];
extern const u32 gBattleAnimSpriteGfx_ItemBag[];
extern const u32 gBattleAnimSpriteGfx_JaggedMusicNote[];
extern const u32 gBattleAnimSpriteGfx_Pokeball[];
extern const u32 gBattleAnimSpriteGfx_Spotlight[];
extern const u32 gBattleAnimSpriteGfx_LetterZ[];
extern const u32 gBattleAnimSpriteGfx_RapidSpin[];
extern const u32 gBattleAnimSpriteGfx_TriForceTriangle[];
extern const u32 gBattleAnimSpriteGfx_WispOrb[];
extern const u32 gBattleAnimSpriteGfx_WispFire[];
extern const u32 gBattleAnimSpriteGfx_GoldStars[];
extern const u32 gBattleAnimSpriteGfx_EclipsingOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_PinkPetal[];
extern const u32 gBattleAnimSpriteGfx_PainSplit[];
extern const u32 gBattleAnimSpriteGfx_Confetti[];
extern const u32 gBattleAnimSpriteGfx_GreenStar[];
extern const u32 gBattleAnimSpriteGfx_PinkCloud[];
extern const u32 gBattleAnimSpriteGfx_SweatDrop[];
extern const u32 gBattleAnimSpriteGfx_GuardRing[];
extern const u32 gBattleAnimSpriteGfx_PurpleScratch[];
extern const u32 gBattleAnimSpriteGfx_PurpleSwipe[];
extern const u32 gBattleAnimSpriteGfx_TagHand[];
extern const u32 gBattleAnimSpriteGfx_SmallRedEye[];
extern const u32 gBattleAnimSpriteGfx_HollowOrb[];
extern const u32 gBattleAnimSpriteGfx_XSign[];
extern const u32 gBattleAnimSpriteGfx_BluegreenOrb[];
extern const u32 gBattleAnimSpriteGfx_PawPrint[];
extern const u32 gBattleAnimSpriteGfx_PurpleFlame[];
extern const u32 gBattleAnimSpriteGfx_RedBall[];
extern const u32 gBattleAnimSpriteGfx_SmellingsaltEffect[];
extern const u32 gBattleAnimSpriteGfx_Meteor[];
extern const u32 gBattleAnimSpriteGfx_FlatRock[];
extern const u32 gBattleAnimSpriteGfx_MagnifyingGlass[];
extern const u32 gBattleAnimSpriteGfx_MetalSoundWaves[];
extern const u32 gBattleAnimSpriteGfx_FlyingDirt[];
extern const u32 gBattleAnimSpriteGfx_IcicleSpear[];
extern const u32 gBattleAnimSpriteGfx_Hail[];
extern const u32 gBattleAnimSpriteGfx_GlowyRedOrb[];
extern const u32 gBattleAnimSpriteGfx_GreenSpike[];
extern const u32 gBattleAnimSpriteGfx_Pokeblock[];
extern const u32 gBattleAnimSpriteGfx_WhiteFeather[];
extern const u32 gBattleAnimSpriteGfx_Sparkle6[];
extern const u32 gBattleAnimSpriteGfx_Splash[];
extern const u32 gBattleAnimSpriteGfx_SweatBead[];
extern const u32 gBattleAnimSpriteGfx_Gem1[];
extern const u32 gBattleAnimSpriteGfx_Gem2[];
extern const u32 gBattleAnimSpriteGfx_Gem3[];
extern const u32 gBattleAnimSpriteGfx_SlamHit2[];
extern const u32 gBattleAnimSpriteGfx_Recycle[];
extern const u32 gBattleAnimSpriteGfx_RedParticles[];
extern const u32 gBattleAnimSpriteGfx_Protect[];
extern const u32 gBattleAnimSpriteGfx_DirtMound[];
extern const u32 gBattleAnimSpriteGfx_Shock3[];
extern const u32 gBattleAnimSpriteGfx_WeatherBall[];
extern const u32 gBattleAnimBgTilemap_ScaryFacePlayer[];
extern const u32 gBattleAnimBgTilemap_ScaryFaceOpponent[];
extern const u32 gBattleAnimBgTilemap_ScaryFaceContest[];
extern const u32 gBattleAnimSpriteGfx_Bird[];
extern const u32 gBattleAnimSpriteGfx_CrossImpact[];

extern const u32 gBattleAnimSpritePal_Bone[];
extern const u32 gBattleAnimSpritePal_Spark[];
extern const u32 gBattleAnimSpritePal_Pencil[];
extern const u32 gBattleAnimSpritePal_AirWave[];
extern const u32 gBattleAnimSpritePal_Orb[];
extern const u32 gBattleAnimSpritePal_Sword[];
extern const u32 gBattleAnimSpritePal_Seed[];
extern const u32 gBattleAnimSpritePal_Explosion6[];
extern const u32 gBattleAnimSpritePal_PinkOrb[];
extern const u32 gBattleAnimSpritePal_Gust[];
extern const u32 gBattleAnimSpritePal_IceCube[];
extern const u32 gBattleAnimSpritePal_Spark2[];
extern const u32 gBattleAnimSpritePal_Orange[];
extern const u32 gBattleAnimSpritePal_YellowBall[];
extern const u32 gBattleAnimSpritePal_LockOn[];
extern const u32 gBattleAnimSpritePal_TiedBag[];
extern const u32 gBattleAnimSpritePal_BlackSmoke[];
extern const u32 gBattleAnimSpritePal_BlackSmoke[];
extern const u32 gBattleAnimSpritePal_Conversion[];
extern const u32 gBattleAnimSpritePal_Glass[];
extern const u32 gBattleAnimSpritePal_HornHit[];
extern const u32 gBattleAnimSpritePal_Hit[];
extern const u32 gBattleAnimSpritePal_Hit2[];
extern const u32 gBattleAnimSpritePal_BlueShards[];
extern const u32 gBattleAnimSpritePal_ClosingEye[];
extern const u32 gBattleAnimSpritePal_WavingHand[];
extern const u32 gBattleAnimSpritePal_HitDuplicate[];
extern const u32 gBattleAnimSpritePal_Leer[];
extern const u32 gBattleAnimSpritePal_BlueBurst[];
extern const u32 gBattleAnimSpritePal_SmallEmber[];
extern const u32 gBattleAnimSpritePal_GraySmoke[];
extern const u32 gBattleAnimSpritePal_BlueStar[];
extern const u32 gBattleAnimSpritePal_BubbleBurst[];
extern const u32 gBattleAnimSpritePal_Fire[];
extern const u32 gBattleAnimSpritePal_Fire[];
extern const u32 gBattleAnimSpritePal_Fire[];
extern const u32 gBattleAnimSpritePal_Lightning2[];
extern const u32 gBattleAnimSpritePal_Lightning2[];
extern const u32 gBattleAnimSpritePal_ClawSlash2[];
extern const u32 gBattleAnimSpritePal_ClawSlash[];
extern const u32 gBattleAnimSpritePal_ClawSlash2[];
extern const u32 gBattleAnimSpritePal_ClawSlash2[];
extern const u32 gBattleAnimSpritePal_BubbleBurst2[];
extern const u32 gBattleAnimSpritePal_IceChunk[];
extern const u32 gBattleAnimSpritePal_Glass2[];
extern const u32 gBattleAnimSpritePal_PinkHeart2[];
extern const u32 gBattleAnimSpritePal_SapDrip[];
extern const u32 gBattleAnimSpritePal_SapDrip2[];
extern const u32 gBattleAnimSpritePal_Sparkle1[];
extern const u32 gBattleAnimSpritePal_Sparkle2[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_HitDuplicate[];
extern const u32 gBattleAnimSpritePal_YellowUnk[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_SlamHit[];
extern const u32 gBattleAnimSpritePal_Ring[];
extern const u32 gBattleAnimSpritePal_Rocks[];
extern const u32 gBattleAnimSpritePal_Z[];
extern const u32 gBattleAnimSpritePal_YellowUnk2[];
extern const u32 gBattleAnimSpritePal_AirSlash[];
extern const u32 gBattleAnimSpritePal_SpinningGreenOrbs[];
extern const u32 gBattleAnimSpritePal_Leaf[];
extern const u32 gBattleAnimSpritePal_Finger[];
extern const u32 gBattleAnimSpritePal_PoisonPowder[];
extern const u32 gBattleAnimSpritePal_BrownTriangle[];
extern const u32 gBattleAnimSpritePal_SleepPowder[];
extern const u32 gBattleAnimSpritePal_StunSpore[];
extern const u32 gBattleAnimSpritePal_PoisonPowder[];
extern const u32 gBattleAnimSpritePal_Sparkle3[];
extern const u32 gBattleAnimSpritePal_Sparkle3[];
extern const u32 gBattleAnimSpritePal_MusicNotes[];
extern const u32 gBattleAnimSpritePal_Duck[];
extern const u32 gBattleAnimSpritePal_MudSand[];
extern const u32 gBattleAnimSpritePal_Alert[];
extern const u32 gBattleAnimSpritePal_BlueFlames[];
extern const u32 gBattleAnimSpritePal_BlueFlames[];
extern const u32 gBattleAnimSpritePal_Shock4[];
extern const u32 gBattleAnimSpritePal_Shock4[];
extern const u32 gBattleAnimSpritePal_Bell2[];
extern const u32 gBattleAnimSpritePal_PinkGlove[];
extern const u32 gBattleAnimSpritePal_BlueLines[];
extern const u32 gBattleAnimSpritePal_Impact3[];
extern const u32 gBattleAnimSpritePal_Impact2[];
extern const u32 gBattleAnimSpritePal_Reticle[];
extern const u32 gBattleAnimSpritePal_Breath[];
extern const u32 gBattleAnimSpritePal_Anger[];
extern const u32 gBattleAnimSpritePal_Snowball[];
extern const u32 gBattleAnimSpritePal_Vine[];
extern const u32 gBattleAnimSpritePal_Sword2[];
extern const u32 gBattleAnimSpritePal_Clapping[];
extern const u32 gBattleAnimSpritePal_RedTube[];
extern const u32 gBattleAnimSpritePal_Amnesia[];
extern const u32 gBattleAnimSpritePal_String2[];
extern const u32 gBattleAnimSpritePal_Pencil2[];
extern const u32 gBattleAnimSpritePal_Petal[];
extern const u32 gBattleAnimSpritePal_BentSpoon[];
extern const u32 gBattleAnimSpritePal_String2[];
extern const u32 gBattleAnimSpritePal_MilkBottle[];
extern const u32 gBattleAnimSpritePal_Coin[];
extern const u32 gBattleAnimSpritePal_CrackedEgg[];
extern const u32 gBattleAnimSpritePal_CrackedEgg[];
extern const u32 gBattleAnimSpritePal_FreshEgg[];
extern const u32 gBattleAnimSpritePal_Fangs[];
extern const u32 gBattleAnimSpritePal_Explosion2[];
extern const u32 gBattleAnimSpritePal_Explosion2[];
extern const u32 gBattleAnimSpritePal_WaterDroplet[];
extern const u32 gBattleAnimSpritePal_WaterDroplet[];
extern const u32 gBattleAnimSpritePal_Seed2[];
extern const u32 gBattleAnimSpritePal_Seed2[];
extern const u32 gBattleAnimSpritePal_RedWand[];
extern const u32 gBattleAnimSpritePal_PurpleGreenUnk[];
extern const u32 gBattleAnimSpritePal_WaterColumn[];
extern const u32 gBattleAnimSpritePal_MudUnk[];
extern const u32 gBattleAnimSpritePal_RainDrops[];
extern const u32 gBattleAnimSpritePal_FurySwipes[];
extern const u32 gBattleAnimSpritePal_Vine2[];
extern const u32 gBattleAnimSpritePal_Teeth[];
extern const u32 gBattleAnimSpritePal_Bone2[];
extern const u32 gBattleAnimSpritePal_WhiteBag[];
extern const u32 gBattleAnimSpritePal_Unknown[];
extern const u32 gBattleAnimSpritePal_PurpleCoral[];
extern const u32 gBattleAnimSpritePal_PurpleCoral[];
extern const u32 gBattleAnimSpritePal_Shock2[];
extern const u32 gBattleAnimSpritePal_ClosingEye2[];
extern const u32 gBattleAnimSpritePal_MetalBall[];
extern const u32 gBattleAnimSpritePal_MonsterDoll[];
extern const u32 gBattleAnimSpritePal_Whirlwind[];
extern const u32 gBattleAnimSpritePal_Whirlwind[];
extern const u32 gBattleAnimSpritePal_Explosion4[];
extern const u32 gBattleAnimSpritePal_Explosion4[];
extern const u32 gBattleAnimSpritePal_Tongue[];
extern const u32 gBattleAnimSpritePal_Smoke[];
extern const u32 gBattleAnimSpritePal_Smoke[];
extern const u32 gBattleAnimSpritePal_Impact[];
extern const u32 gBattleAnimSpritePal_CircleImpact[];
extern const u32 gBattleAnimSpritePal_Impact[];
extern const u32 gBattleAnimSpritePal_Impact[];
extern const u32 gBattleAnimSpritePal_SharpTeeth[];
extern const u32 gBattleAnimSpritePal_RainbowRings[];
extern const u32 gBattleAnimSpritePal_IceCrystals[];
extern const u32 gBattleAnimSpritePal_IceCrystals[];
extern const u32 gBattleAnimSpritePal_HandsAndFeet[];
extern const u32 gBattleAnimSpritePal_MistCloud[];
extern const u32 gBattleAnimSpritePal_SharpTeeth[];
extern const u32 gBattleAnimSpritePal_RainDrops[];
extern const u32 gBattleAnimSpritePal_Orbs[];
extern const u32 gBattleAnimSpritePal_WaterImpact[];
extern const u32 gBattleAnimSpritePal_WaterImpact[];
extern const u32 gBattleAnimSpritePal_PoisonBubble[];
extern const u32 gBattleAnimSpritePal_PoisonBubble[];
extern const u32 gBattleAnimSpritePal_Spikes[];
extern const u32 gBattleAnimSpritePal_HornHit2[];
extern const u32 gBattleAnimSpritePal_AirWave2[];
extern const u32 gBattleAnimSpritePal_SmallBubbles[];
extern const u32 gBattleAnimSpritePal_RoundShadow[];
extern const u32 gBattleAnimSpritePal_Sunlight[];
extern const u32 gBattleAnimSpritePal_Spore[];
extern const u32 gBattleAnimSpritePal_Flower[];
extern const u32 gBattleAnimSpritePal_RazorLeaf[];
extern const u32 gBattleAnimSpritePal_Needle[];
extern const u32 gBattleAnimSpritePal_WhirlwindLines[];
extern const u32 gBattleAnimSpritePal_GoldRing[];
extern const u32 gBattleAnimSpritePal_PurpleRing[];
extern const u32 gBattleAnimSpritePal_BlueRing[];
extern const u32 gBattleAnimSpritePal_GreenLightWall[];
extern const u32 gBattleAnimSpritePal_BlueLightWall[];
extern const u32 gBattleAnimSpritePal_RedLightWall[];
extern const u32 gBattleAnimSpritePal_GrayLightWall[];
extern const u32 gBattleAnimSpritePal_OrangeLightWall[];
extern const u32 gBattleAnimSpritePal_BlackBall2[];
extern const u32 gBattleAnimSpritePal_PurpleGasCloud[];
extern const u32 gBattleAnimSpritePal_YellowStar[];
extern const u32 gBattleAnimSpritePal_LargeFreshEgg[];
extern const u32 gBattleAnimSpritePal_ShadowBall[];
extern const u32 gBattleAnimSpritePal_Lick[];
extern const u32 gBattleAnimSpritePal_VoidLines[];
extern const u32 gBattleAnimSpritePal_String[];
extern const u32 gBattleAnimSpritePal_Lightbulb[];
extern const u32 gBattleAnimSpritePal_Slash[];
extern const u32 gBattleAnimSpritePal_FocusEnergy[];
extern const u32 gBattleAnimSpritePal_SphereToCube[];
extern const u32 gBattleAnimSpritePal_Tendrils[];
extern const u32 gBattleAnimSpritePal_Eye[];
extern const u32 gBattleAnimSpritePal_WhiteShadow[];
extern const u32 gBattleAnimSpritePal_TealAlert[];
extern const u32 gBattleAnimSpritePal_OpeningEye[];
extern const u32 gBattleAnimSpritePal_RoundWhiteHalo[];
extern const u32 gBattleAnimSpritePal_FangAttack[];
extern const u32 gBattleAnimSpritePal_PurpleHandOutline[];
extern const u32 gBattleAnimSpritePal_Moon[];
extern const u32 gBattleAnimSpritePal_GreenSparkle[];
extern const u32 gBattleAnimSpritePal_Spiral[];
extern const u32 gBattleAnimSpritePal_SnoreZ[];
extern const u32 gBattleAnimSpritePal_Explosion[];
extern const u32 gBattleAnimSpritePal_Nail[];
extern const u32 gBattleAnimSpritePal_GhostlySpirit[];
extern const u32 gBattleAnimSpritePal_WarmRock[];
extern const u32 gBattleAnimSpritePal_BreakingEgg[];
extern const u32 gBattleAnimSpritePal_ThinRing[];
extern const u32 gBattleAnimSpritePal_PunchImpact[];
extern const u32 gBattleAnimSpritePal_Bell[];
extern const u32 gBattleAnimSpritePal_MusicNotes2[];
extern const u32 gBattleAnimSpritePal_SpeedDust[];
extern const u32 gBattleAnimSpritePal_ThoughtBubble[];
extern const u32 gBattleAnimSpritePal_MagentaHeart[];
extern const u32 gBattleAnimSpritePal_ElectricOrbs[];
extern const u32 gBattleAnimSpritePal_MovementWaves[];
extern const u32 gUnknown_08C249D0[];
extern const u32 gUnknown_08C249F8[];
extern const u32 gBattleAnimSpritePal_RedHeart[];
extern const u32 gBattleAnimSpritePal_RedOrb[];
extern const u32 gBattleAnimSpritePal_EyeSparkle[];
extern const u32 gBattleAnimSpritePal_PinkHeart[];
extern const u32 gUnknown_08C232E0;
extern const u32 gUnknown_08C23D50;
extern const u32 gUnknown_08C23D78;
extern const u32 gBattleAnimSpritePal_Angel[];
extern const u32 gBattleAnimSpritePal_Devil[];
extern const u32 gBattleAnimSpritePal_Swipe[];
extern const u32 gBattleAnimSpritePal_Roots[];
extern const u32 gBattleAnimSpritePal_ItemBag[];
extern const u32 gBattleAnimSpritePal_JaggedMusicNote[];
extern const u32 gBattleAnimSpritePal_Pokeball[];
extern const u32 gBattleAnimSpritePal_LetterZ[];
extern const u32 gBattleAnimSpritePal_RapidSpin[];
extern const u32 gBattleAnimSpritePal_TriForceTriangle[];
extern const u32 gBattleAnimSpritePal_WispOrb[];
extern const u32 gBattleAnimSpritePal_GoldStars[];
extern const u32 gBattleAnimSpritePal_EclipsingOrb[];
extern const u32 gBattleAnimSpritePal_GrayOrb[];
extern const u32 gBattleAnimSpritePal_BlueOrb[];
extern const u32 gBattleAnimSpritePal_RedOrb2[];
extern const u32 gBattleAnimSpritePal_PinkPetal[];
extern const u32 gBattleAnimSpritePal_PainSplit[];
extern const u32 gBattleAnimSpritePal_Confetti[];
extern const u32 gBattleAnimSpritePal_GreenStar[];
extern const u32 gBattleAnimSpritePal_PinkCloud[];
extern const u32 gBattleAnimSpritePal_SweatDrop[];
extern const u32 gBattleAnimSpritePal_GuardRing[];
extern const u32 gCureBubblesGfx[];
extern const u32 gCureBubblesPal[];
extern const u32 gCureBubblesTilemap[];
extern const u32 gBattleAnimSpritePal_PurpleScratch[];
extern const u32 gBattleAnimSpritePal_SmallRedEye[];
extern const u32 gBattleAnimSpritePal_HollowOrb[];
extern const u32 gBattleAnimSpritePal_BluegreenOrb[];
extern const u32 gBattleAnimSpritePal_PawPrint[];
extern const u32 gBattleAnimSpritePal_PurpleFlame[];
extern const u32 gBattleAnimSpritePal_RedBall[];
extern const u32 gBattleAnimSpritePal_SmellingsaltEffect[];
extern const u32 gBattleAnimSpritePal_Meteor[];
extern const u32 gBattleAnimSpritePal_FlatRock[];
extern const u32 gBattleAnimSpritePal_MagnifyingGlass[];
extern const u32 gBattleAnimSpritePal_BrownOrb[];
extern const u32 gBattleAnimSpritePal_MetalSoundWaves[];
extern const u32 gBattleAnimSpritePal_FlyingDirt[];
extern const u32 gBattleAnimSpritePal_IcicleSpear[];
extern const u32 gBattleAnimSpritePal_Hail[];
extern const u32 gBattleAnimSpritePal_GlowyRedOrb[];
extern const u32 gBattleAnimSpritePal_GlowyGreenOrb[];
extern const u32 gBattleAnimSpritePal_GreenSpike[];
extern const u32 gBattleAnimSpritePal_WhiteCircleOfLight[];
extern const u32 gBattleAnimSpritePal_GlowyBlueOrb[];
extern const u32 gBattleAnimSpritePal_Pokeblock[];
extern const u32 gBattleAnimSpritePal_WhiteFeather[];
extern const u32 gBattleAnimSpritePal_Sparkle6[];
extern const u32 gBattleAnimSpritePal_Splash[];
extern const u32 gBattleAnimSpritePal_Gem1[];
extern const u32 gBattleAnimSpritePal_SlamHit2[];
extern const u32 gBattleAnimSpritePal_Recycle[];
extern const u32 gBattleAnimSpritePal_RedParticles[];
extern const u32 gBattleAnimSpritePal_Protect[];
extern const u32 gBattleAnimSpritePal_DirtMound[];
extern const u32 gBattleAnimSpritePal_Shock3[];
extern const u32 gBattleAnimSpritePal_WeatherBall[];
extern const u32 gBattleAnimSpritePal_Bird[];
extern const u32 gBattleAnimSpritePal_CrossImpact[];
extern const u32 gBattleAnimSpritePal_Slash2[];
extern const u32 gBattleAnimSpritePal_WhipHit[];
extern const u32 gBattleAnimSpritePal_BlueRing2[];

extern const u32 gBattleAnimBgImage_Dark[];
extern const u32 gBattleAnimBgImage_Ghost[];
extern const u32 gBattleAnimBgImage_Psychic[];
extern const u32 gBattleAnimBgImage_Impact[];
extern const u32 gBattleAnimBgImage_Drill[];
extern const u32 gBattleAnimBgImage_Highspeed[];
extern const u32 gBattleAnimBgImage_Thunder[];
extern const u32 gBattleAnimBgImage_Guillotine[];
extern const u32 gBattleAnimBgImage_Ice[];
extern const u32 gBattleAnimBgImage_Cosmic[];
extern const u32 gBattleAnimBgImage_InAir[];
extern const u32 gBattleAnimBgImage_Aurora[];
extern const u32 gBattleAnimBgImage_Fissure[];
extern const u32 gBattleAnimBgPalette_Dark[];
extern const u32 gBattleAnimBgPalette_Ghost[];
extern const u32 gBattleAnimBgPalette_Psychic[];
extern const u32 gBattleAnimBgPalette_Impact[];
extern const u32 gBattleAnimBgPalette_Drill[];
extern const u32 gBattleAnimBgPalette_Highspeed[];
extern const u32 gBattleAnimBgPalette_Thunder[];
extern const u32 gBattleAnimBgPalette_Guillotine[];
extern const u32 gBattleAnimBgPalette_Ice[];
extern const u32 gBattleAnimBgPalette_Cosmic[];
extern const u32 gBattleAnimBgPalette_InAir[];
extern const u32 gBattleAnimBgPalette_Sky[];
extern const u32 gBattleAnimBgPalette_Aurora[];
extern const u32 gBattleAnimBgPalette_Fissure[];
extern const u32 gBattleAnimBgPalette_Bug[];
extern const u32 gBattleAnimBgPalette_Solarbeam[];
extern const u32 gBattleAnimBgTilemap_Dark[];
extern const u32 gBattleAnimBgTilemap_Ghost[];
extern const u32 gBattleAnimBgTilemap_Psychic[];
extern const u32 gBattleAnimBgTilemap_ImpactOpponent[];
extern const u32 gBattleAnimBgTilemap_ImpactPlayer[];
extern const u32 gBattleAnimBgTilemap_ImpactContests[];
extern const u32 gBattleAnimBgTilemap_Drill[];
extern const u32 gBattleAnimBgTilemap_DrillContests[];
extern const u32 gBattleAnimBgTilemap_HighspeedOpponent[];
extern const u32 gBattleAnimBgTilemap_HighspeedPlayer[];
extern const u32 gUnknown_08C2A634[];
extern const u32 gUnknown_08C2A6D4[];
extern const u32 gUnknown_08C2A6EC[];
extern const u32 gBattleAnimBgTilemap_Thunder[];
extern const u32 gBattleAnimBgTilemap_GuillotineOpponent[];
extern const u32 gBattleAnimBgTilemap_GuillotinePlayer[];
extern const u32 gBattleAnimBgTilemap_GuillotineContests[];
extern const u32 gBattleAnimBgTilemap_Ice[];
extern const u32 gBattleAnimBgTilemap_Cosmic[];
extern const u32 gBattleAnimBgTilemap_InAir[];
extern const u32 gBattleAnimBgTilemap_Aurora[];
extern const u32 gBattleAnimBgTilemap_Fissure[];

extern const u32 gMetalShineGfx[];
extern const u32 gMetalShinePalette[];
extern const u32 gMetalShineTilemap[];

extern const u32 gUnknown_08C20668[];
extern const u32 gUnknown_08C20684[];
extern const u32 gBattleStatMask_Gfx[];
extern const u32 gBattleStatMask1_Tilemap[];
extern const u32 gBattleStatMask2_Tilemap[];
extern const u32 gBattleStatMask1_Pal[];
extern const u32 gBattleStatMask2_Pal[];
extern const u32 gBattleStatMask3_Pal[];
extern const u32 gBattleStatMask4_Pal[];
extern const u32 gBattleStatMask5_Pal[];
extern const u32 gBattleStatMask6_Pal[];
extern const u32 gBattleStatMask7_Pal[];
extern const u32 gBattleStatMask8_Pal[];

extern const u32 gContestMiscGfx[];
extern const u32 gContestAudienceGfx[];
extern const u8 gContestApplauseMeterGfx[];
extern const u8 gContestNextTurnNumbersGfx[];
extern const u8 gContestNextTurnRandomGfx[];
extern const u32 gOldContestGfx[];
extern const u32 gOldContestPalette[];
extern const u32 gUnknown_08C17170[];
extern const u32 gUnknown_08C17980[];
extern const u32 gTiles_8C19450[];
extern const u32 gContestNextTurnGfx[];
extern const u16 gContestPal[];
extern const u32 gUnknown_08C19168[];
extern const u32 gContestApplauseGfx[];
extern const u32 gContestJudgeGfx[];
extern const u32 gContestJudgeSymbolsGfx[];
extern const u32 gContest3Pal[];

extern const u32 gUnknown_08D95E00[];
extern const u32 gUnknown_08D960D0[];
extern const u32 gUnknown_08D963A4[];
extern const u32 gBattleAnimBgImage_Surf[];
extern const u32 gBattleAnimBgPalette_Surf[];
extern const u32 gBattleAnimBackgroundImageMuddyWater_Pal[];

extern const u32 gBattleAnimFogTilemap[];

extern const u32 gUsePokeblockGraph_Gfx[];
extern const u32 gUsePokeblockGraph_Tilemap[];
extern const u16 gUsePokeblockGraph_Pal[];
extern const u16 gUsePokeblockNatureWin_Pal[];


extern const u32 gBerryBlenderArrowTiles[];
extern const u32 gBerryBlenderStartTiles[];
extern const u32 gBerryBlenderMarubatsuTiles[];
extern const u32 gBerryBlenderParticlesTiles[];
extern const u32 gBerryBlenderCountdownNumbersTiles[];
extern const u16 gBerryBlenderMiscPalette[];
extern const u16 gBerryBlenderArrowPalette[];
extern const u32 sBlenderCenterGfx[];
extern const u32 gUnknown_08D91DB8[];
extern const u32 gUnknown_08D927EC[];

extern const u32 gSlotMachineReelTime_Gfx[];

extern const u32 gUnknown_08D8D410[];
extern const u32 gUnknown_08D8D58C[];


extern const u32 gPokedexAreaScreenAreaUnknown_Gfx[];
extern const u16 gPokedexAreaScreenAreaUnknown_Pal[];


extern const u32 gPSSMenu_Gfx[];
extern const u16 gPSSMenu_Pal[];
extern const u32 gWallpaperIcon_Plusle[];
extern const u32 gWallpaperIcon_Cross[];
extern const u32 gWallpaperIcon_Bolt[];
extern const u32 gUnknown_08DD36C8[];
extern const u32 gWallpaperTiles_Ribbon[];
extern const u32 gWallpaperTilemap_Ribbon[];
extern const u16 gWallpaperPalettes_Ribbon[][16];
extern const u32 gWallpaperTiles_Horizontal[];
extern const u32 gWallpaperTilemap_Horizontal[];
extern const u16 gWallpaperPalettes_Horizontal[][16];


extern const u32 gUnknown_08DBA5B8[];
extern const u16 gUnknown_08DBA518[];
extern const u32 gCableCar_Gfx[];
extern const u32 gCableCarDoor_Gfx[];
extern const u32 gCableCarCord_Gfx[];
extern const u16 gCableCar_Pal[];


extern const u16 gUnknown_08DDB3E4[];
extern const u8 gUnknown_08DDB464[];
extern const u16 gUnknown_08DDCF04[];
extern const u16 gTradeGba2_Pal[];
extern const u8 gTradeGba_Gfx[];
extern const u16 gUnknown_08DDD704[];
extern const u8 gUnknown_08DDC6E4[];
extern const u16 gUnknown_08DDB444[];


extern const u32 gPartyMenuPokeball_Gfx[];
extern const u32 gPartyMenuPokeballSmall_Gfx[];
extern const u32 gStatusPal_Icons[];
extern const u32 gPartyMenuPokeball_Pal[];
extern const u32 gStatusPal_Icons[];


extern const u32 gRouletteMenuTiles[];
extern const u32 gRouletteWheelTiles[];
extern const u32 gRouletteCenter_Gfx[];
extern const u32 gRouletteHeadersTiles[];
extern const u32 gRouletteCreditTiles[];
extern const u32 gRouletteNumbersTiles[];
extern const u32 gRouletteMultiplierTiles[];


extern const u32 gUnknown_0858D6B0[];
extern const u32 gUnknown_08C19588[];
extern const u32 gUnknown_08C19EEC[];
extern const u32 gUnknown_08C1A000[];
extern const u32 gUnknown_08C1A12C[];
extern const u32 gUnknown_08C1A2B4[];
extern const u16 gUnknown_08DC6498[];
extern const u16 gUnknown_08DC63F8[];
extern const u16 gUnknown_08DC6420[];
extern const u16 gUnknown_08DC6448[];
extern const u16 gUnknown_08DC6470[];
extern const u16 gUnknown_08DC64AC[];
extern const u16 gUnknown_08DC64C0[];
extern const u16 gUnknown_08DC64D4[];
extern const u16 gUnknown_08DC64E8[];
extern const u16 gUnknown_08DC64FC[];
extern const u16 gUnknown_08DC6510[];


extern const u16 gEmeraldTrainerCard0Star_Pal[];
extern const u32 gEmeraldTrainerCard_Gfx[];
extern const u16 gFireRedTrainerCard0Star_Pal[];
extern const u32 gFireRedTrainerCard_Gfx[];
extern const u32 gUnknown_08DD2AE0[];
extern const u32 gUnknown_08DD21B0[];
extern const u32 gUnknown_08DD2D30[];
extern const u32 gUnknown_08DD2010[];
extern const u32 gUnknown_08DD2B78[];
extern const u32 gUnknown_08DD228C[];
extern const u32 gUnknown_08DD2E5C[];
extern const u32 gUnknown_08DD1F78[];


extern const u32 gUnknown_08DE08C8[];
extern const u32 gUnknown_08DE2084[];
extern const u32 gUnknown_08DE3350[];
extern const u32 gUnknown_08DE3374[];
extern const u32 gUnknown_08DE3060[];
extern const u32 gFrontierPassMedals_Gfx[];
extern const u16 gUnknown_08DE07C8[][16];
extern const u16 gFrontierPassCursor_Pal[];
extern const u16 gFrontierPassMedalsGold_Pal[];
extern const u16 gFrontierPassMedalsSilver_Pal[];
extern const u16 gFrontierPassMapCursor_Pal[];


extern const u32 gEasyChatWindow_Gfx[];
extern const u32 gEasyChatWindow_Tilemap[];
extern const u32 gEasyChatMode_Gfx[];
extern const u16 gEasyChatMode_Pal[];
extern const u32 gEasyChatCursor_Gfx[];
extern const u16 gEasyChatCursor_Pal[];
extern const u32 gEasyChatRightWindow_Gfx[];
extern const u16 gEasyChatRightWindow_Pal[];


extern const u32 gUsePokeblockCondition_Gfx[];


extern const u16 gUnknown_08DD4BB0[];
extern const u16 gUnknown_08DD4BD0[];
extern const u32 gUnknown_08DD4BF0[];
extern const u32 gUnknown_08DD4C4C[];
extern const u32 gUnknown_08DD4CF8[];
extern const u16 gLinkMiscMenu_Pal[];
extern const u32 gLinkMiscMenu_Gfx[];
extern const u32 gLinkMiscMenu_Tilemap[];


extern const u8 gPokenavConditionCancel_Gfx[];
extern const u16 gPokenavConditionCancel_Pal[];
extern const u8 gUsePokeblockUpDown_Gfx[];
extern const u16 gUsePokeblockUpDown_Pal[];
extern const u16 gUsePokeblockCondition_Pal[];


extern const u32 gUnknown_08DE34B8[];
extern const u16 gUnknown_08DE3398[];


extern const u32 gPokenavMessageBox_Gfx[];
extern const u32 gPokenavMessageBox_Tilemap[];
extern const u16 gPokenavMessageBox_Pal[];
extern const u32 gPokenavOptions_Gfx[];
extern const u16 gPokenavOptions_Pal[];
# 30 "src/party_menu.c" 2
# 1 "include/international_string_util.h" 1



# 1 "include/menu.h" 1





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
# 5 "include/international_string_util.h" 2


void sub_81DB52C(u8 *src);
void TVShowConvertInternationalString(u8 *dest, const u8 *src, int language);
int GetStringCenterAlignXOffset(int fontId, const u8 *str, int totalWidth);
int GetStringRightAlignXOffset(int fontId, const u8 *str, int totalWidth);
int GetStringCenterAlignXOffsetWithLetterSpacing(int fontId, const u8 *str, int totalWidth, int letterSpacing);
int GetStringWidthDifference(int fontId, const u8 *str, int totalWidth, int letterSpacing);
int GetMaxWidthInMenuTable(const struct MenuAction *str, int arg1);
int sub_81DB3D8(const struct MenuAction *str, const u8* arg1, int arg2);
int Intl_GetListMenuWidth(const struct ListMenuTemplate *listMenu);
void CopyMonCategoryText(int dexNum, u8 *dest);
u8 *sub_81DB494(u8 *str, int fontId, const u8 *str2, int totalStringWidth);
void PadNameString(u8 *dest, u8 padChar);
void sub_81DB554(u8 *, u8);
void sub_81DB5AC(u8 *);
int sub_81DB604(u8 *);
void sub_81DB620(int windowId, int columnStart, int rowStart, int numFillTiles, int numRows);
# 31 "src/party_menu.c" 2
# 1 "include/item.h" 1




enum
{
    POCKET_NONE,
    POCKET_ITEMS,
    POCKET_POKE_BALLS,
    POCKET_TM_HM,
    POCKET_BERRIES,
    POCKET_KEY_ITEMS,
};

enum
{
    ITEMS_POCKET,
    BALLS_POCKET,
    TMHM_POCKET,
    BERRIES_POCKET,
    KEYITEMS_POCKET,
    POCKETS_COUNT
};

typedef void (*ItemUseFunc)(u8);

struct Item
{
    u8 name[14];
    u16 itemId;
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    const u8 *description;
    u8 importance;
    u8 unk19;
    u8 pocket;
    u8 type;
    ItemUseFunc fieldUseFunc;
    u8 battleUsage;
    ItemUseFunc battleUseFunc;
    u8 secondaryId;
};

struct BagPocket
{
    struct ItemSlot *itemSlots;
    u8 capacity;
};

extern struct BagPocket gBagPockets[];

void ApplyNewEncryptionKeyToBagItems(u32 newKey);
void ApplyNewEncryptionKeyToBagItems_(u32 newKey);
void SetBagItemsPointers(void);
void CopyItemName(u16 itemId, u8 *dst);
void CopyItemNameHandlePlural(u16 itemId, u8 *dst, u32 quantity);
void GetBerryCountString(u8 *dst, const u8 *berryName, u32 quantity);
bool8 IsBagPocketNonEmpty(u8 pocket);
bool8 CheckBagHasItem(u16 itemId, u16 count);
bool8 HasAtLeastOneBerry(void);
bool8 CheckBagHasSpace(u16 itemId, u16 count);
bool8 AddBagItem(u16 itemId, u16 count);
bool8 RemoveBagItem(u16 itemId, u16 count);
u8 GetPocketByItemId(u16 itemId);
void ClearItemSlots(struct ItemSlot *itemSlots, u8 itemCount);
u8 CountUsedPCItemSlots(void);
bool8 CheckPCHasItem(u16 itemId, u16 count);
bool8 AddPCItem(u16 itemId, u16 count);
void RemovePCItem(u8 index, u16 count);
void CompactPCItems(void);
void SwapRegisteredBike(void);
u16 BagGetItemIdByPocketPosition(u8 pocketId, u16 pocketPos);
u16 BagGetQuantityByPocketPosition(u8 pocketId, u16 pocketPos);
void CompactItemsInBagPocket(struct BagPocket *bagPocket);
void SortBerriesOrTMHMs(struct BagPocket *bagPocket);
void MoveItemSlotInList(struct ItemSlot* itemSlots_, u32 from, u32 to_);
void ClearBag(void);
u16 CountTotalItemQuantityInBag(u16 itemId);
bool8 AddPyramidBagItem(u16 itemId, u16 count);
bool8 RemovePyramidBagItem(u16 itemId, u16 count);
const u8 *ItemId_GetName(u16 itemId);
u16 ItemId_GetId(u16 itemId);
u16 ItemId_GetPrice(u16 itemId);
u8 ItemId_GetHoldEffect(u16 itemId);
u8 ItemId_GetHoldEffectParam(u16 itemId);
const u8 *ItemId_GetDescription(u16 itemId);
u8 ItemId_GetImportance(u16 itemId);
u8 ItemId_GetUnknownValue(u16 itemId);
u8 ItemId_GetPocket(u16 itemId);
u8 ItemId_GetType(u16 itemId);
ItemUseFunc ItemId_GetFieldFunc(u16 itemId);
u8 ItemId_GetBattleUsage(u16 itemId);
ItemUseFunc ItemId_GetBattleFunc(u16 itemId);
u8 ItemId_GetSecondaryId(u16 itemId);
# 32 "src/party_menu.c" 2
# 1 "include/item_menu.h" 1



# 1 "include/item.h" 1
# 5 "include/item_menu.h" 2
# 1 "include/menu_helpers.h" 1
# 9 "include/menu_helpers.h"
struct YesNoFuncTable
{
    TaskFunc yesFunc;
    TaskFunc noFunc;
};




void ResetVramOamAndBgCntRegs(void);
void ResetAllBgsCoordinates(void);
void SetVBlankHBlankCallbacksToNull(void);
void DisplayMessageAndContinueTask(u8 taskId, u8 windowId, u16 arg2, u8 arg3, u8 fontId, u8 textSpeed, const u8 *string, void *taskFunc);
bool16 RunTextPrintersRetIsActive(u8 textPrinterId);
void DoYesNoFuncWithChoice(u8 taskId, const struct YesNoFuncTable *data);
void CreateYesNoMenuWithCallbacks(u8 taskId, const struct WindowTemplate *template, u8 arg2, u8 arg3, u8 arg4, u16 tileStart, u8 palette, const struct YesNoFuncTable *yesNo);
bool8 AdjustQuantityAccordingToDPadInput(s16 *arg0, u16 arg1);
u8 GetLRKeysState(void);
u8 sub_812210C(void);
bool8 sub_8122148(u16 itemId);
bool8 itemid_80BF6D8_mail_related(u16 itemId);
bool8 sub_81221AC(void);
bool8 sub_81221EC(void);
void sub_812220C(struct ItemSlot *slots, u8 count, u8 *arg2, u8 *usedSlotsCount, u8 maxUsedSlotsCount);
void sub_812225C(u16 *scrollOffset, u16 *cursorPos, u8 maxShownItems, u8 numItems);
void sub_8122298(u16 *arg0, u16 *arg1, u8 arg2, u8 arg3, u8 arg4);
void LoadListMenuArrowsGfx(void);
void sub_8122344(u8 *spriteIds, u8 count);
void sub_81223B0(u8 *spriteIds, u8 count);
void sub_81223FC(u8 *spriteIds, u8 count, bool8 invisible);
void sub_8122448(u8 *spriteIds, u8 count, s16 x, u16 y);
# 6 "include/item_menu.h" 2
# 22 "include/item_menu.h"
struct BagStruct
{
    void (*bagCallback)(void);
    u8 location;
    u8 pocket;
    u16 unk6;
    u16 cursorPosition[POCKETS_COUNT];
    u16 scrollPosition[POCKETS_COUNT];
};

extern struct BagStruct gBagPositionStruct;

struct BagMenuStruct
{
    void (*mainCallback2)(void);
    u8 tilemapBuffer[0x800];
    u8 spriteId[12];
    u8 windowPointers[7];
    u8 unk817;
    u8 unk818;
    u8 unk819;
    u8 unk81A;
    u8 unk81B:4;
    u8 unk81B_1:2;
    u8 unk81B_3:1;
    u8 hideCloseBagText:1;
    u8 filler3[2];
    u8 unk81E;
    u8 unk81F;
    const u8* unk820;
    u8 unk824;
    u8 unk825;
    u8 filler[2];
    u8 unk828;
    u8 numItemStacks[POCKETS_COUNT];
    u8 numShownItems[6];
    s16 unk834;
    u8 filler4[0xE];
    u8 pocketNameBuffer[32][32];
    u8 filler2[4];
};

extern struct BagMenuStruct *gBagMenu;



extern u16 gSpecialVar_ItemId;


void sub_81AAC14(void);
void FavorLadyOpenBagMenu(void);
void QuizLadyOpenBagMenu(void);
void sub_81AAC28(void);
void sub_81AABB0(void);
void SetInitialScrollAndCursorPositions(u8 pocketId);
void bag_menu_mail_related(void);
void CB2_BagMenuFromStartMenu(void);
u8 GetItemListPosition(u8 pocketId);
bool8 UseRegisteredKeyItemOnField(void);
void CB2_GoToSellMenu(void);
void GoToBagMenu(u8 bagMenuType, u8 pocketId, void ( *postExitMenuMainCallback2)());
void DoWallyTutorialBagMenu(void);
void ResetBagScrollPositions(void);
void sub_81AABF0(void (*callback)(void));
void CB2_ChooseBerry(void);
void unknown_ItemMenu_Confirm(u8 taskId);
void BagMenu_YesNo(u8, u8, const struct YesNoFuncTable*);
void sub_81AB9A8(u8 pocketId);
# 33 "src/party_menu.c" 2
# 1 "include/item_use.h" 1



void ItemUseOutOfBattle_Mail(u8);
void ItemUseOutOfBattle_Bike(u8);
void ItemUseOnFieldCB_Bike(u8);
void ItemUseOutOfBattle_Rod(u8);
void ItemUseOnFieldCB_Rod(u8);
void ItemUseOutOfBattle_Itemfinder(u8);
void ItemUseOnFieldCB_Itemfinder(u8);
void RunItemfinderResults(u8);
void ExitItemfinder(u8);
bool8 ItemfinderCheckForHiddenItems(const struct MapEvents *, u8);
void sub_80C9720(u8);
void sub_80C9838(u8, s16, s16);
u8 GetPlayerDirectionTowardsHiddenItem(s16, s16);
void SetPlayerDirectionTowardsItem(u8);
void DisplayItemRespondingMessageAndExitItemfinder(u8);
void RotatePlayerAndExitItemfinder(u8);
void ItemUseOutOfBattle_PokeblockCase(u8);
void ItemUseOutOfBattle_CoinCase(u8);
void ItemUseOutOfBattle_PowderJar(u8);
void ItemUseOutOfBattle_SSTicket(u8);
void sub_80C9D00(u8);
void ItemUseOutOfBattle_WailmerPail(u8);
void sub_80C9D74(u8);
void ItemUseOutOfBattle_Medicine(u8);
void ItemUseOutOfBattle_ReduceEV(u8);
void ItemUseOutOfBattle_SacredAsh(u8);
void ItemUseOutOfBattle_PPRecovery(u8);
void ItemUseOutOfBattle_PPUp(u8);
void ItemUseOutOfBattle_RareCandy(u8);
void ItemUseOutOfBattle_TMHM(u8);
void sub_80C9EE4(u8);
void sub_80C9F10(u8);
void sub_80C9F80(u8);
void sub_80C9FC0(u8);
void ItemUseOutOfBattle_Repel(u8);
void ItemUseOutOfBattle_BlackWhiteFlute(u8);
void task08_080A1C44(u8);
u8 CanUseEscapeRopeOnCurrMap(void);
void ItemUseOutOfBattle_EscapeRope(u8);
void ItemUseOutOfBattle_EvolutionStone(u8);
void ItemUseInBattle_PokeBall(u8);
void ItemUseInBattle_StatIncrease(u8);
void ItemUseInBattle_Medicine(u8);
void ItemUseInBattle_PPRecovery(u8);
void ItemUseInBattle_Escape(u8);
void ItemUseOutOfBattle_EnigmaBerry(u8);
void ItemUseInBattle_EnigmaBerry(u8);
void ItemUseOutOfBattle_CannotUse(u8);
u8 CheckIfItemIsTMHMOrEvolutionStone(u16 itemId);
void sub_80FDD10(u8);
# 34 "src/party_menu.c" 2
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
# 35 "src/party_menu.c" 2
# 1 "include/link_rfu.h" 1



# 1 "include/librfu.h" 1





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
# 36 "src/party_menu.c" 2
# 1 "include/mail.h" 1
# 18 "include/mail.h"
void ReadMail(struct MailStruct *mail, void (*callback)(void), bool8 flag);


void ClearMailData(void);
void ClearMailStruct(struct MailStruct *mail);
bool8 MonHasMail(struct Pokemon *mon);
u8 GiveMailToMon(struct Pokemon *mon, u16 itemId);
u16 SpeciesToMailSpecies(u16 species, u32 personality);
u16 MailSpeciesToSpecies(u16 mailSpecies, u16 *buffer);
u8 GiveMailToMon2(struct Pokemon *mon, struct MailStruct *mail);
void TakeMailFromMon(struct Pokemon *mon);
void ClearMailItemId(u8 mailId);
u8 TakeMailFromMon2(struct Pokemon *mon);
bool8 ItemIsMail(u16 itemId);
# 37 "src/party_menu.c" 2
# 1 "include/main.h" 1
# 38 "src/party_menu.c" 2
# 1 "include/menu.h" 1
# 39 "src/party_menu.c" 2
# 1 "include/menu_helpers.h" 1
# 40 "src/party_menu.c" 2
# 1 "include/menu_specialized.h" 1




# 1 "include/player_pc.h" 1
# 22 "include/player_pc.h"
enum
{
    PC_ITEM_ID,
    PC_QUANTITY
};


enum
{
    PLAYERPC_MENU_ITEMSTORAGE,
    PLAYERPC_MENU_MAILBOX,
    PLAYERPC_MENU_DECORATION,
    PLAYERPC_MENU_TURNOFF
};


enum
{
    ITEMPC_MENU_WITHDRAW,
    ITEMPC_MENU_DEPOSIT,
    ITEMPC_MENU_TOSS,
    ITEMPC_MENU_EXIT
};


enum
{
    MAILBOX_READ,
    MAILBOX_MOVE_TO_BAG,
    MAILBOX_GIVE,
    MAILBOX_CANCEL,
};


enum
{
    ITEMPC_SWITCH_WHICH_ITEM = 0xFFF7,
    ITEMPC_OKAY_TO_THROW_AWAY,
    ITEMPC_TOO_IMPORTANT,
    ITEMPC_NO_MORE_ROOM,
    ITEMPC_THREW_AWAY_ITEM,
    ITEMPC_HOW_MANY_TO_TOSS,
    ITEMPC_WITHDREW_THING,
    ITEMPC_HOW_MANY_TO_WITHDRAW,
    ITEMPC_GO_BACK_TO_PREV
};

struct PlayerPCItemPageStruct
{
    u16 cursorPos;
    u16 itemsAbove;
    u8 pageItems;
    u8 count;
    u8 filler[3];
    u8 scrollIndicatorId;
};




extern struct PlayerPCItemPageStruct playerPCItemPageInfo;


extern const struct MenuAction gMailboxMailOptions[];

void ReshowPlayerPC(u8 taskId);
void sub_816B31C(void);
void Mailbox_ReturnToMailListAfterDeposit(void);
void NewGameInitPCItems(void);
# 6 "include/menu_specialized.h" 2



struct UnknownSubStruct_81D1ED4
{
    u16 unk0;
    u16 unk2;
};

struct UnknownStruct_81D1ED4
{
              u8 unk0[4][5];
              struct UnknownSubStruct_81D1ED4 unk14[4][5];
              struct UnknownSubStruct_81D1ED4 unk64[10][5];
              struct UnknownSubStruct_81D1ED4 unk12C[5];
              u16 unk140[66][2];
              u16 unk248[66][2];
              u16 unk350;
              u16 unk352;
              u8 unk354;
              u8 unk355;
};

bool8 sub_81D1C44(u8 count);
u8 sub_81D1C84(u8 a0);
u8 sub_81D1DC0(struct PlayerPCItemPageStruct *page);
void sub_81D1E90(struct PlayerPCItemPageStruct *page);
void sub_81D1EC0(void);
void sub_81D1D04(u8 a0);
void sub_81D1ED4(struct UnknownStruct_81D1ED4 *a0);
void sub_81D2108(struct UnknownStruct_81D1ED4 *arg0);
void sub_81D21DC(u8 bg);
void sub_81D20AC(struct UnknownStruct_81D1ED4 *arg0);
void sub_81D2230(struct UnknownStruct_81D1ED4 *arg0);
bool8 sub_81D20BC(struct UnknownStruct_81D1ED4 *arg0);
bool32 sub_81D2074(struct UnknownStruct_81D1ED4 *a0);
void sub_81D2754(u8 *arg0, struct UnknownSubStruct_81D1ED4 *arg1);
void sub_81D1F84(struct UnknownStruct_81D1ED4 *arg0, struct UnknownSubStruct_81D1ED4 *arg1, struct UnknownSubStruct_81D1ED4 *arg2);
void MoveRelearnerPrintText(u8 *str);
bool16 MoveRelearnerRunTextPrinters(void);
void MoveRelearnerCreateYesNoMenu(void);
u8 LoadMoveRelearnerMovesList(const struct ListMenuItem *items, u16 numChoices);
void InitMoveRelearnerWindows(bool8 useContextWindow);
s32 GetBoxOrPartyMonData(u16 boxId, u16 monId, s32 request, u8 *dst);
void sub_81D2ED4(u8 *dst, u8 *nameDst, u16 boxId, u16 monId, u16 arg5, u16 arg6, bool8 arg7);
void sub_81D2F78(struct UnknownStruct_81D1ED4 *arg0, u8 *sheen, u16 boxId, u16 monId, u16 arg5, u16 id, u16 arg7, bool8 arg8);
void sub_81D3094(void *tilesDst, void *palDst, u16 boxId, u16 monId, u16 arg5, u16 arg6, bool8 arg7);
bool8 sub_81D312C(s16 *var);
bool8 sub_81D3150(s16 *var);
bool8 sub_81D3178(struct UnknownStruct_81D1ED4 *arg0, s16 *arg1);
bool8 sub_81D31A4(struct UnknownStruct_81D1ED4 *arg0, s16 *arg1);
void sub_81D31D0(struct SpriteSheet *sheet, struct SpriteTemplate *template, struct SpritePalette *pal);
void sub_81D321C(struct SpriteSheet *sheets, struct SpriteTemplate * template, struct SpritePalette *pals);
void sub_81D32B0(struct SpriteSheet *sheet, struct SpritePalette *pal);
void sub_81D3464(struct Sprite **sprites);
void sub_81D3480(struct Sprite **sprites, u8 arg1, u8 arg2);
void sub_81D3520(struct Sprite **sprites);
void sub_81D354C(struct Sprite **sprites);
void DrawLevelUpWindowPg1(u16 windowId, u16 *statsBefore, u16 *statsAfter, u8 bgClr, u8 fgClr, u8 shadowClr);
void DrawLevelUpWindowPg2(u16 windowId, u16 *currStats, u8 bgClr, u8 fgClr, u8 shadowClr);
void GetMonLevelUpWindowStats(struct Pokemon *mon, u16 *currStats);
# 41 "src/party_menu.c" 2
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
# 42 "src/party_menu.c" 2
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
# 43 "src/party_menu.c" 2
# 1 "include/palette.h" 1
# 44 "src/party_menu.c" 2
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
# 45 "src/party_menu.c" 2
# 1 "include/player_pc.h" 1
# 46 "src/party_menu.c" 2
# 1 "include/pokemon.h" 1
# 47 "src/party_menu.c" 2
# 1 "include/pokemon_icon.h" 1



extern const u8 gMonIconPaletteIndices[];

const u8 *GetMonIconTiles(u16 species, bool32);
void sub_80D304C(u16 offset);
u8 GetValidMonIconPalIndex(u16 species);
const u8 *GetMonIconPtr(u16 speciesId, u32 personality, u32 frameNo);
const u16 *GetValidMonIconPalettePtr(u16 speciesId);
u16 GetIconSpecies(u16 species, u32 personality);
u16 GetUnownLetterByPersonality(u32 personality);
u16 sub_80D2E84(u16 speciesId);
void LoadMonIconPalettes(void);
void LoadMonIconPalette(u16 species);
void FreeMonIconPalettes(void);
u8 sub_80D2D78(u16 species, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority, bool32 extra);
void FreeMonIconPalette(u16 species);
void sub_80D2EF8(struct Sprite *sprite);
u8 CreateMonIcon(u16 species, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority, u32 personality, bool32 extra);
u8 UpdateMonIconFrame(struct Sprite *sprite);
void LoadMonIconPalette(u16 species);
void sub_80D328C(struct Sprite *sprite);
void sub_80D3014(struct Sprite *sprite);
void sub_80D32C8(struct Sprite *sprite, u8 animNum);
u8 GetMonIconPaletteIndexFromSpecies(u16 species);
# 48 "src/party_menu.c" 2
# 1 "include/pokemon_jump.h" 1





void sub_802A9A8(u16 monId, MainCallback callback);
bool32 sub_802C908(u16 species);
void sub_802C920(void);
void ResetPokeJumpResults(void);
void sub_802E3C4(void);
void sub_802EB24(s16 tileTag, s16 palTag, s16 x, s16 y, u8 subpriority);
bool32 sub_802EB84(void);
# 49 "src/party_menu.c" 2
# 1 "include/pokemon_storage_system.h" 1
# 18 "include/pokemon_storage_system.h"
struct PokemonStorage
{
               u8 currentBox;
               struct BoxPokemon boxes[14][(6 * 5)];
               u8 boxNames[14][9];
               u8 boxWallpapers[14];
};

extern struct PokemonStorage *gPokemonStoragePtr;

void sub_80C6D80(const u8 *string, void *dst, u8 arg2, u8 arg3, s32 arg4);
u8 CountMonsInBox(u8 boxId);
s16 GetFirstFreeBoxSpot(u8 boxId);
u8 CountPartyAliveNonEggMonsExcept(u8 slotToIgnore);
u16 CountPartyAliveNonEggMons_IgnoreVar0x8004Slot(void);
u8 CountPartyMons(void);
u8 *StringCopyAndFillWithSpaces(u8 *dst, const u8 *src, u16 n);
void ShowPokemonStorageSystemPC(void);
void ResetPokemonStorageSystem(void);
s16 CompactPartySlots(void);
u8 StorageGetCurrentBox(void);
u32 GetBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request);
void SetBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request, const void *value);
u32 GetCurrentBoxMonData(u8 boxPosition, s32 request);
void SetCurrentBoxMonData(u8 boxPosition, s32 request, const void *value);
void GetBoxMonNickAt(u8 boxId, u8 boxPosition, u8 *dst);
u32 GetBoxMonLevelAt(u8 boxId, u8 boxPosition);
void SetBoxMonNickAt(u8 boxId, u8 boxPosition, const u8 *nick);
u32 GetAndCopyBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request, void *dst);
void SetBoxMonAt(u8 boxId, u8 boxPosition, struct BoxPokemon *src);
void CopyBoxMonAt(u8 boxId, u8 boxPosition, struct BoxPokemon *dst);
void CreateBoxMonAt(u8 boxId, u8 boxPosition, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 personality, u8 otIDType, u32 otID);
void ZeroBoxMonAt(u8 boxId, u8 boxPosition);
void BoxMonAtToMon(u8 boxId, u8 boxPosition, struct Pokemon *dst);
struct BoxPokemon *GetBoxedMonPtr(u8 boxId, u8 boxPosition);
u8 *GetBoxNamePtr(u8 boxId);
u8 GetBoxWallpaper(u8 boxId);
void SetBoxWallpaper(u8 boxId, u8 wallpaperId);
s16 sub_80D214C(struct BoxPokemon *boxMons, u8 currIndex, u8 maxIndex, u8 arg3);
bool8 CheckFreePokemonStorageSpace(void);
bool32 CheckBoxMonSanityAt(u32 boxId, u32 boxPosition);
u32 CountStorageNonEggMons(void);
u32 CountAllStorageMons(void);
bool32 AnyStorageMonWithMove(u16 moveId);
void ResetWaldaWallpaper(void);
void SetWaldaWallpaperLockedOrUnlocked(bool32 unlocked);
bool32 IsWaldaWallpaperUnlocked(void);
u32 GetWaldaWallpaperPatternId(void);
void SetWaldaWallpaperPatternId(u8 id);
u32 GetWaldaWallpaperIconId(void);
void SetWaldaWallpaperIconId(u8 id);
u16 *GetWaldaWallpaperColorsPtr(void);
void SetWaldaWallpaperColors(u16 color1, u16 color2);
u8 *GetWaldaPhrasePtr(void);
void SetWaldaPhrase(const u8 *src);
bool32 IsWaldaPhraseEmpty(void);
# 50 "src/party_menu.c" 2
# 1 "include/pokemon_summary_screen.h" 1





extern u8 gLastViewedMonIndex;

extern const u8 *const gMoveDescriptionPointers[];
extern const u8 *const gNatureNamePointers[];

void ShowPokemonSummaryScreen(u8 mode, void *mons, u8 monIndex, u8 maxMonIndex, void (*callback)(void));
void sub_81C4F98(u8, void(*)(void));
void ShowSelectMovePokemonSummaryScreen(struct Pokemon *, u8, u8, MainCallback, u16);
void ShowPokemonSummaryScreenSet40EF(u8 mode, struct BoxPokemon *mons, u8 monIndex, u8 maxMonIndex, void (*callback)(void));
u8 sub_81C1B94(void);
void SummaryScreen_SetUnknownTaskId(u8 a0);
void SummaryScreen_DestroyUnknownTask(void);



enum PokemonSummaryScreenMode
{
    PSS_MODE_NORMAL,
    PSS_MODE_UNK1,
    PSS_MODE_BOX,
    PSS_MODE_SELECT_MOVE,
};

enum PokemonSummaryScreenPage
{
    PSS_PAGE_INFO,
    PSS_PAGE_SKILLS,
    PSS_PAGE_BATTLE_MOVES,
    PSS_PAGE_CONTEST_MOVES,
};
# 51 "src/party_menu.c" 2
# 1 "include/region_map.h" 1



# 1 "include/bg.h" 1
# 5 "include/region_map.h" 2



enum
{
    INPUT_EVENT_NONE,
    INPUT_EVENT_MOVE_START,
    INPUT_EVENT_MOVE_CONT,
    INPUT_EVENT_MOVE_END,
    INPUT_EVENT_A_BUTTON,
    INPUT_EVENT_B_BUTTON,
};

enum {
    MAPSECTYPE_NONE,
    MAPSECTYPE_PLAIN,
    MAPSECTYPE_CITY_CANFLY,
    MAPSECTYPE_CITY_CANTFLY,
    MAPSECTYPE_BATTLE_FRONTIER
};

struct RegionMap {
              u16 mapSecId;
              u8 iconDrawType;
              u8 posWithinMapSec;
              u8 mapSecName[0x14];
              u8 (*inputCallback)(void);
              struct Sprite *cursorSprite;
              struct Sprite *playerIconSprite;
              s32 bg2x;
              s32 bg2y;
              u32 bg2pa;
              u32 bg2pc;
              u32 bg2pb;
              u32 bg2pd;
              s32 unk_03c;
              s32 unk_040;
              s32 unk_044;
              s32 unk_048;
              s32 unk_04c;
              s32 unk_050;
              u16 cursorPosX;
              u16 cursorPosY;
              u16 cursorTileTag;
              u16 cursorPaletteTag;
              s16 scrollX;
              s16 scrollY;
              s16 unk_060;
              s16 unk_062;
              u16 zoomedCursorPosX;
              u16 zoomedCursorPosY;
              s16 zoomedCursorDeltaY;
              s16 zoomedCursorDeltaX;
              u16 zoomedCursorMovementFrameCounter;
              u16 unk_06e;
              u16 playerIconTileTag;
              u16 playerIconPaletteTag;
              u16 playerIconSpritePosX;
              u16 playerIconSpritePosY;
              bool8 zoomed;
              u8 initStep;
              s8 cursorMovementFrameCounter;
              s8 cursorDeltaX;
              s8 cursorDeltaY;
              bool8 needUpdateVideoRegs;
              bool8 blinkPlayerIcon;
              bool8 playerIsInCave;
              u8 bgNum;
              u8 charBaseIdx;
              u8 mapBaseIdx;
              bool8 bgManaged;
              u8 filler_084[0x100];
              u8 cursorSmallImage[0x100];
              u8 cursorLargeImage[0x600];
};

struct RegionMapLocation
{
    u8 x;
    u8 y;
    u8 width;
    u8 height;
    const u8 *name;
};




void sub_8122CF8(struct RegionMap *regionMap, const struct BgTemplate *template, bool8 zoomed);
bool8 sub_8122DB0(void);
void UpdateRegionMapVideoRegs(void);
void InitRegionMap(struct RegionMap *regionMap, u8 argument);
u8 sub_81230AC(void);
bool8 sub_8123514(void);
void FreeRegionMapIconResources(void);
u16 GetRegionMapSectionIdAt(u16 x, u16 y);
void CreateRegionMapPlayerIcon(u16 x, u16 y);
void CreateRegionMapCursor(u16 tileTag, u16 paletteTag);
u8 *GetMapName(u8 *, u16, u16);
bool32 sub_8124668(u8 mapSecId);
u8 *sub_81245DC(u8 *dest, u16 mapSecId);
u8 *sub_8124610(u8 *dest, u16 mapSecId);
u16 CorrectSpecialMapSecId(u16 mapSecId);
void sub_8122D88(struct RegionMap *regionMap);
void PokedexAreaScreen_UpdateRegionMapVariablesAndVideoRegs(s16 x, s16 y);
void MCB2_FlyMap(void);
bool8 sub_8124658(void);
void sub_812454C(void);
void sub_8123030(u16 a0, u32 a1);
void sub_8123418(void);

extern const struct RegionMapLocation gRegionMapEntries[];
# 52 "src/party_menu.c" 2
# 1 "include/reshow_battle_screen.h" 1



void nullsub_35(void);
void ReshowBattleScreenAfterMenu(void);
# 53 "src/party_menu.c" 2
# 1 "include/scanline_effect.h" 1
# 17 "include/scanline_effect.h"
struct ScanlineEffectParams
{
    volatile void *dmaDest;
    u32 dmaControl;
    u8 initState;
    u8 unused9;
};

struct ScanlineEffect
{
    void *dmaSrcBuffers[2];
    volatile void *dmaDest;
    u32 dmaControl;
    void (*setFirstScanlineReg)(void);
    u8 srcBuffer;
    u8 state;
    u8 unused16;
    u8 unused17;
    u8 waveTaskId;
};

extern struct ScanlineEffect gScanlineEffect;

extern u16 gScanlineEffectRegBuffers[2][0x3C0];

void ScanlineEffect_Stop(void);
void ScanlineEffect_Clear(void);
void ScanlineEffect_SetParams(struct ScanlineEffectParams);
void ScanlineEffect_InitHBlankDmaTransfer(void);
u8 ScanlineEffect_InitWave(u8 startLine, u8 endLine, u8 frequency, u8 amplitude, u8 delayInterval, u8 regOffset, bool8 a7);
# 54 "src/party_menu.c" 2
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
# 55 "src/party_menu.c" 2
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
# 56 "src/party_menu.c" 2
# 1 "include/sprite.h" 1
# 57 "src/party_menu.c" 2
# 1 "include/start_menu.h" 1



extern bool8 (*gMenuCallback)(void);

void sub_809FA18(void);
void sub_809FA34(u8 taskId);
void ShowStartMenu(void);
void sub_809FDD4(void);
void SaveGame(void);
void sub_80A0514(void);
void sub_80A08CC(void);
void HideStartMenu(void);
void AppendToList(u8* list, u8* pos, u8 newEntry);
# 58 "src/party_menu.c" 2
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
# 59 "src/party_menu.c" 2
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
# 60 "src/party_menu.c" 2
# 1 "include/task.h" 1
# 61 "src/party_menu.c" 2
# 1 "include/text.h" 1
# 62 "src/party_menu.c" 2
# 1 "include/text_window.h" 1





struct TilesPal
{
    const u8 *tiles;
    const u16 *pal;
};

extern const u8 gTextWindowFrame1_Gfx[];
extern const u16 gTextWindowFrame1_Pal[];

const struct TilesPal *GetWindowFrameTilesPal(u8 id);
void LoadMessageBoxGfx(u8 windowId, u16 destOffset, u8 palOffset);
void LoadUserWindowBorderGfx(u8 windowId, u16 destOffset, u8 palOffset);
void LoadWindowGfx(u8 windowId, u8 frameId, u16 destOffset, u8 palOffset);
void LoadUserWindowBorderGfx_(u8 windowId, u16 destOffset, u8 palOffset);
void DrawTextBorderOuter(u8 windowId, u16 tileNum, u8 palNum);
void DrawTextBorderInner(u8 windowId, u16 tileNum, u8 palNum);
void rbox_fill_rectangle(u8 windowId);
const u16 *stdpal_get(u8 id);
const u16 *GetOverworldTextboxPalettePtr(void);
void sub_8098C6C(u8 bg, u16 destOffset, u8 palOffset);
# 63 "src/party_menu.c" 2
# 1 "include/trade.h" 1



# 1 "include/link_rfu.h" 1
# 5 "include/trade.h" 2




extern struct MailStruct gUnknown_020321C0[6];
extern u8 gUnknown_02032298[2];


extern const struct WindowTemplate gUnknown_0833900C;

s32 sub_807A728(void);
void sub_80773AC(void);
void sub_807AE50(void);
int sub_807A8D0(struct UnkLinkRfuStruct_02022B14Substruct a0, u16, u16, u8);
int sub_807A7E0(struct UnkLinkRfuStruct_02022B14Substruct a0, struct UnkLinkRfuStruct_02022B14Substruct a1, u16 a2, u16 a3, u8 a4, u16 a5, u8 a6);
int sub_807A918(struct Pokemon*, u16);
void sub_807B140(void);
void sub_807B154(void);
void sub_807F19C(void);
void sub_807F1A8(u8, const u8 *, u8);
# 64 "src/party_menu.c" 2
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
# 65 "src/party_menu.c" 2
# 1 "include/window.h" 1
# 66 "src/party_menu.c" 2
# 1 "include/constants/battle.h" 1
# 67 "src/party_menu.c" 2
# 1 "include/constants/battle_frontier.h" 1
# 68 "src/party_menu.c" 2
# 1 "include/constants/easy_chat.h" 1
# 69 "src/party_menu.c" 2
# 1 "include/constants/field_effects.h" 1
# 70 "src/party_menu.c" 2
# 1 "include/constants/flags.h" 1
# 71 "src/party_menu.c" 2
# 1 "include/constants/item_effects.h" 1
# 72 "src/party_menu.c" 2
# 1 "include/constants/items.h" 1
# 73 "src/party_menu.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 74 "src/party_menu.c" 2
# 1 "include/constants/moves.h" 1
# 75 "src/party_menu.c" 2
# 1 "include/constants/rgb.h" 1
# 76 "src/party_menu.c" 2
# 1 "include/constants/songs.h" 1
# 77 "src/party_menu.c" 2
# 1 "include/constants/species.h" 1
# 78 "src/party_menu.c" 2
# 1 "include/constants/vars.h" 1
# 79 "src/party_menu.c" 2

enum
{
    CAN_LEARN_MOVE,
    CANNOT_LEARN_MOVE,
    ALREADY_KNOWS_MOVE,
    CANNOT_LEARN_MOVE_IS_EGG
};

struct Unk_Rodata1
{
    void (*unk0)(u8, u8, u8, u8, u8, u8);
    u8 unk4[24];
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
};

struct Struct203CEC4
{
    TaskFunc task;
    MainCallback exitCallback;
    u32 unk8_0:1;
    u32 unk8_1:3;
    u32 unk8_2:7;
    u32 unk9_0:7;
    u32 messageId:14;
    u8 windowId[3];
    u8 actions[8];
    u8 listSize;




    u16 palBuffer[0x200 / sizeof(u16)];
    s16 data[16];
};

struct Struct203CEDC
{
    const struct Unk_Rodata1 *unk0;
    const u8 *unk4;
    u8 windowId;
    u8 monSpriteId;
    u8 itemSpriteId;
    u8 pokeballSpriteId;
    u8 statusSpriteId;
};


static __attribute__((section("ewram_data"))) struct Struct203CEC4 *gUnknown_0203CEC4 = ((void *)0);
__attribute__((section("ewram_data"))) struct Struct203CEC8 gUnknown_0203CEC8 = {0};
static __attribute__((section("ewram_data"))) struct Struct203CEDC *gUnknown_0203CEDC = ((void *)0);
static __attribute__((section("ewram_data"))) u8 *gUnknown_0203CEE0 = ((void *)0);
static __attribute__((section("ewram_data"))) u8 *gUnknown_0203CEE4 = ((void *)0);
__attribute__((section("ewram_data"))) u8 gUnknown_0203CEE8 = 0;
__attribute__((section("ewram_data"))) u8 gUnknown_0203CEE9 = 0;
__attribute__((section("ewram_data"))) MainCallback gPostMenuFieldCallback = ((void *)0);
static __attribute__((section("ewram_data"))) u16 *gUnknown_0203CEF0 = 0;
static __attribute__((section("ewram_data"))) u16 *gUnknown_0203CEF4 = 0;
__attribute__((section("ewram_data"))) u8 gSelectedOrderFromParty[4] = {0};
static __attribute__((section("ewram_data"))) u16 gUnknown_0203CEFC = 0;
static __attribute__((section("ewram_data"))) u16 gUnknown_0203CEFE = 0;
__attribute__((section("ewram_data"))) u8 gUnknown_0203CF00[3] = {0};


void (*gUnknown_03006328)(u8, TaskFunc);

static void reset_brm(void);
static void PartyMenuInitCallback(void);
static bool8 PartyMenuSetup(void);
static void sub_81B209C(void);
static void PartyMenuExit(void);
static bool8 AllocPartyMenuBg(void);
static bool8 AllocPartyMiscGfx(void);
static void sub_81B239C(u8);
static void PartyMenuInitHelperStructs(u8);
static void LoadPartyMenuPokeballGfx(void);
static void LoadPartyMenuAilmentGfx(void);
static bool8 party_menu_add_per_mon_objects(void);
static bool8 RenderPartyMenuBoxes(void);
static void sub_81B0F28(void);
static void sub_81B2428(u8);
static void PartyMenuExitTask(u8);
static void FreePartyPointers(void);
static void PartyPaletteBufferCopy(u8);
static void sub_81B0CEC(u8);
static void UpdateSelectedPartyBox(struct Struct203CEDC *, u8);
static void DrawEmptySlot(u8 windowId);
static void DisplayPartyPokemonSelectForRelearner(u8);
static void DisplayPartyPokemonSelectForContest(u8);
static void DisplayPartyPokemonSelectForBattle(u8);
static void sub_81B0B98(u8);
static void DisplayPartyPokemonSelectHeldItemRelated(u8);
static bool8 sub_81B0BFC(u8);
static void DisplayPartyPokemonData(u8);
static void DisplayPartyPokemonNickname(struct Pokemon *, struct Struct203CEDC *, u8);
static void DisplayPartyPokemonLevelCheck(struct Pokemon *, struct Struct203CEDC *, u8);
static void DisplayPartyPokemonGenderNidoranCheck(struct Pokemon *, struct Struct203CEDC *, u8);
static void DisplayPartyPokemonHPCheck(struct Pokemon *, struct Struct203CEDC *, u8);
static void DisplayPartyPokemonMaxHPCheck(struct Pokemon *, struct Struct203CEDC *, u8);
static void DisplayPartyPokemonHPBarCheck(struct Pokemon *, struct Struct203CEDC *);
static void DisplayPartyPokemonOtherText(u8, struct Struct203CEDC *, u8);
static u8 sub_81B8830(void);
static bool8 GetBattleEntryEligibility(struct Pokemon *);
static bool8 sub_81B218C(u8);
static void DisplayPartyPokemonSelectToTeachMove(u8, u16, u8);
static u8 CanMonLearnTMTutor(struct Pokemon *, u16, u8);
static void DisplayPartyPokemonBarDetail(u8, const u8*, u8, const u8*);
static void DisplayPartyPokemonLevel(u8, struct Struct203CEDC *);
static void DisplayPartyPokemonGender(u8, u16, u8*, struct Struct203CEDC *);
static void DisplayPartyPokemonHP(u16, struct Struct203CEDC *);
static void DisplayPartyPokemonMaxHP(u16, struct Struct203CEDC *);
static void DisplayPartyPokemonHPBar(u16, u16, struct Struct203CEDC *);
static void party_menu_link_mon_icon_anim(u16, u32, struct Struct203CEDC *, u8, u32);
static void party_menu_link_mon_held_item_object(u16, u16, struct Struct203CEDC *);
static void party_menu_link_mon_pokeball_object(u16, struct Struct203CEDC *);
static void party_menu_link_mon_status_condition_object(u16, u8, struct Struct203CEDC *);
static void party_menu_held_item_object(struct Pokemon *, struct Struct203CEDC *);
static void party_menu_pokeball_object(struct Pokemon *, struct Struct203CEDC *);
static void party_menu_icon_anim(struct Pokemon *, struct Struct203CEDC *, u32);
static void party_menu_status_condition_object(struct Pokemon *, struct Struct203CEDC *);
static u8 sub_81B5F74(u8, u8);
static void sub_81B120C(void);
static u8 sub_81B5F34(u8, u8);
static void AnimateSelectedPartyIcon(u8, u8);
static void sub_81B5F98(u8, u8);
static u8 GetPartyBoxPalBitfield(u8, u8);
static bool8 PartyBoxPal_ParnterOrDisqualifiedInArena(u8);
static u8 sub_81B8F38(u8);
static void c3_0811FAB4(u8);
static void sub_81B9080(void);
static void sub_81B4F88(void);
static void sub_81B15D0(u8, s8*);
static void sub_81B140C(u8, s8*);
static u16 PartyMenuButtonHandler(s8*);
static s8* sub_81B13EC(void);
static bool8 sub_81B15A4(u8*);
static void sub_81B302C(u8*);
static void sub_81B9140(void);
static void sub_81B6794(u8);
static void sub_81B7E4C(u8);
static void sub_81B8474(u8);
static void sub_81B7FAC(u8);
static void sub_81B3938(u8);
static void sub_81B21AC(u8, u8);
static void sub_81B36FC(u8);
static void sub_81B407C(u8);
static void sub_81B2210(u8);
static bool8 sub_81B1660(u8);
static const u8* sub_81B88BC(void);
static void sub_81B16D4(u8);
static void sub_81B334C(void);
static void sub_81B1708(u8);
static void sub_81B1C1C(u8);
static void UpdateCurrentPartySelection(s8*, s8);
static void SetNewPartySelectTarget1(s8*, s8);
static void SetNewPartySelectTarget2(s8*, s8);
static s8 sub_81B1B00(s8, s8);
static void sub_81B3300(const u8*);
static void sub_81B1B8C(u8);
static void DisplayPartyPokemonHPCheck(struct Pokemon*, struct Struct203CEDC*, u8);
static void DisplayPartyPokemonHPBarCheck(struct Pokemon*, struct Struct203CEDC*);
static bool16 sub_81B2134(struct Pokemon*);
static bool16 sub_81B2164(struct Pokemon*);
static void sub_81B2248(u8);
static void sub_81B227C(u8);
static bool8 CanLearnTutorMove(u16, u8);
static u16 GetTutorMove(u8);
static bool8 sub_81B314C(void);
static void CreateActionList(struct Pokemon*, u8);
static u8 sub_81B8A2C(struct Pokemon*);
static u8 sub_81B856C(s8);
static void sub_81B469C(u8);
static void HandleMenuInput(u8);
static void sub_81B3828(void);
static void pokemon_change_order(void);
static void sub_81B3894(void);
static void sub_81B3CC0(u8);
static void sub_81B3D48(u8);
static void swap_pokemon_and_oams(void);
static void sub_81B3E60(u8);
static void sub_81B41C4(void);
static void c2_8123744(void);
static void sub_81B452C(void);
static void sub_81B4350(u8);
static void sub_81B42D0(u8);
static void sub_81B43A8(u8);
static void sub_81B43DC(u8);
static void sub_81B44FC(u8);
static void sub_81B4578(void);
static void sub_81B4624(u8);
static void sub_81B5C94(struct Pokemon*, struct Struct203CEDC*);
static void sub_81B48A8(u8);
static void sub_81B48DC(u8);
static void sub_81B4988(u8);
static void sub_81B4A98(void);
static void sub_81B4AE0(void);
static void sub_81B4B6C(u8);
static void sub_81B4BA0(u8);
static void sub_81B4C60(u8);
static void sub_81B4C94(u8);
static bool8 sub_81B8A7C(void);
static void sub_81B53FC(u8);
static void sub_81B5430(u8);
static void task_brm_cancel_1_on_keypad_a_or_b(u8);
static void sub_81B5674(u8);
static void sub_81B57DC(void);
static void sub_81B5864(void);
static void sub_81B56A4(u8);
static void sub_81B56D8(u8);
static void task_launch_hm_phase_2(u8);
static u16 brm_get_selected_species(void);
static void sub_81B5B38(u8, struct Pokemon*);
static void UpdatePartyMonIconFrame(struct Sprite*);
static void UpdatePartyMonIconFrameAndBounce(struct Sprite*);
static void sub_81B5CB0(u16, struct Struct203CEDC*);
static void sub_81B5DF0(u8, u8);
static void SpriteCB_HeldItem(struct Sprite*);
static void party_menu_get_status_condition_and_update_object(struct Pokemon*, struct Struct203CEDC*);
static void party_menu_update_status_condition_object(u8, struct Struct203CEDC*);
static u8 sub_81B8984(void);
static void sub_81B6280(u8);
static void c2_815ABFC(void);
static void sub_81B672C(u8);
static u16 ItemEffectToMonEv(struct Pokemon*, u8);
static void ItemEffectToStatString(u8, u8*);
static void sub_81B6BB4(u8);
static void ether_effect_related_2(u8);
static void ether_effect_related(u8);
static void sub_81B6EB4(u8);
static void sub_81B6FF4(u8);
static void sub_81B6F60(u8);
static void sub_81B6F98(u8);
static void sub_81B77AC(u8);
static void sub_81B7028(u8);
static void sub_81B7088(u8);
static void sub_81B7230(u8);
static void sub_81B70B8(void);
static void sub_81B70F0(void);
static void sub_81B711C(u8);
static void sub_81B7154(u8);
static void sub_81B71D4(u8);
static void sub_81B7294(u8);
static void sub_81B72C8(u8);
static void sub_81B73E4(u8);
static void sub_81B79A0(struct Pokemon*, s16*);
static void sub_81B754C(u8, struct Pokemon*);
static void sub_81B75D4(u8);
static void sub_81B767C(u8);
static void sub_81B7634(u8);
static void sub_81B76C8(u8);
static void sub_81B7704(u8);
static void sub_81B7810(u8);
static void sub_81B787C(u8);
static void sub_81B7910(u8, u16);
static void sub_81B7A28(u8);
static void task_sacred_ash_party_loop(u8);
static void sub_81B7C10(u8);
static void sub_81B8044(u8);
static void sub_81B83B8(u8);
static void sub_81B82A0(u8);
static void sub_81B83F0(u16);
static void sub_81B814C(void);
static void sub_81B8088(u8);
static void sub_81B8104(u8);
static void sub_81B81A8(void);
static bool8 sub_81B841C(u16);
static void sub_81B8230(u8);
static void sub_81B82D4(u8);
static void sub_81B879C(u8);
static bool8 GetBattleEntryEligibility(struct Pokemon*);
static bool8 sub_81B8770(u8);
static u8 sub_81B8888(void);
static u8 sub_81B885C(void);
static void sub_81B87E8(u8);
static void sub_81B8C88(u8*, bool8);
static void sub_81B8D88(u8*, u8, u8);
static void sub_81B917C(u8);
static void sub_81B91B4(u8);
static void sub_81B9294(u8);
static void sub_81B9240(u8);
static void sub_81B9390(void);
static void task_hm_without_phase_2(u8);
static void sub_81B9424(u8);
static void sub_81B9470(void);
static void sub_81B94D0(u8);
static void sub_81B953C(u8);
static void sub_81B9588(void);
static void sub_81B9640(u8);
static void sub_81B97DC(struct Pokemon*, u8, u8);
static void BlitBitmapToPartyWindow_Default1(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 f);
static void BlitBitmapToPartyWindow_Default2(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 f);
static void CursorCb_Summary(u8 taskId);
static void CursorCb_Switch(u8 taskId);
static void CursorCb_Cancel1(u8 taskId);
static void CursorCb_Item(u8 taskId);
static void CursorCb_Give(u8 taskId);
static void CursorCb_TakeItem(u8 taskId);
static void CursorCb_Mail(u8 taskId);
static void CursorCb_Read(u8 taskId);
static void CursorCb_TakeMail(u8 taskId);
static void CursorCb_Cancel2(u8 taskId);
static void CursorCb_SendMon(u8 taskId);
static void CursorCb_Enter(u8 taskId);
static void CursorCb_NoEntry(u8 taskId);
static void CursorCb_Store(u8 taskId);
static void CursorCb_Register(u8 taskId);
static void CursorCb_Trade1(u8 taskId);
static void CursorCb_Trade2(u8 taskId);
static void CursorCb_Toss(u8 taskId);
static void CursorCb_FieldMove(u8 taskId);
static bool8 SetUpFieldMove_Surf(void);
static bool8 SetUpFieldMove_Fly(void);
static bool8 SetUpFieldMove_Waterfall(void);
static bool8 SetUpFieldMove_Dive(void);


# 1 "src/data/pokemon/tutor_learnsets.h" 1
# 32 "src/data/pokemon/tutor_learnsets.h"
const u16 gTutorMoves[] =
{
    [0] = 5,
    [1] = 14,
    [2] = 25,
    [3] = 34,
    [4] = 38,
    [5] = 68,
    [6] = 69,
    [7] = 102,
    [8] = 118,
    [9] = 135,
    [10] = 138,
    [11] = 86,
    [12] = 153,
    [13] = 157,
    [14] = 164,
    [15] = 223,
    [16] = 205,
    [17] = 244,
    [18] = 173,
    [19] = 196,
    [20] = 203,
    [21] = 189,
    [22] = 8,
    [23] = 207,
    [24] = 214,
    [25] = 129,
    [26] = 111,
    [27] = 9,
    [28] = 7,
    [29] = 210,
};




static const u32 sTutorLearnsets[] =
{
    [0] = ((u32)(0)),

    [1] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 84 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [2] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 97 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [3] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 110 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [4] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 131 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [5] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 152 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [6] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 173 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [7] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 192 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [8] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 211 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [9] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 230 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [10] = ((u32)(0)),

    [11] = ((u32)(0)),

    [12] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [13] = ((u32)(0)),

    [14] = ((u32)(0)),

    [15] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 259 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [16] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [17] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [18] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [19] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 304 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [20] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 319 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [21] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [22] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [23] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [24] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [25] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27))))
# 379 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [26] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27))))
# 399 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [27] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 418 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [28] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 437 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [29] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 449 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [30] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 461 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [31] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 483 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [32] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 495 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [33] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 507 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [34] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 529 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [35] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (9)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 554 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [36] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (9)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 579 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [37] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [38] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [39] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 622 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [40] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 645 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [41] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))






                                                                  ,

    [42] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))






                                                                  ,

    [43] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [44] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [45] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [46] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 703 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [47] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 715 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [48] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))






                                                                  ,

    [49] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))






                                                                  ,

    [50] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 744 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [51] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 755 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [52] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 770 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [53] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 785 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [54] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 804 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [55] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 824 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [56] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 847 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [57] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 870 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [58] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [59] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [60] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 901 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [61] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 919 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [62] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 938 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [63] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 959 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [64] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 980 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [65] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1001 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [66] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1021 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [67] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1041 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [68] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1061 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [69] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [70] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [71] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [72] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [73] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [74] = ((u32)(((u64)1 << (0)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (28))))
# 1129 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [75] = ((u32)(((u64)1 << (0)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (28))))
# 1149 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [76] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 1171 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [77] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [78] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [79] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1206 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [80] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 1228 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [81] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1239 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [82] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1250 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [83] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1263 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [84] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1274 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [85] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1285 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [86] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [87] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [88] = ((u32)(((u64)1 << (3)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1319 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [89] = ((u32)(((u64)1 << (3)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1333 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [90] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1344 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [91] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1355 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [92] = ((u32)(((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [93] = ((u32)(((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [94] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1396 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [95] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 1409 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [96] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1430 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [97] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1451 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [98] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 1464 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [99] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 1477 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [100] = ((u32)(((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1488 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [101] = ((u32)(((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1499 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [102] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 1511 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [103] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 1523 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [104] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1543 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [105] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1563 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [106] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1581 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [107] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1602 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [108] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1627 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [109] = ((u32)(((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [110] = ((u32)(((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [111] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 1660 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [112] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 1682 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [113] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (9)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 1705 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [114] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 1716 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [115] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 1737 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [116] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [117] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [118] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [119] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [120] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1789 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [121] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1802 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [122] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1823 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [123] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 1835 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [124] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 1855 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [125] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1875 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [126] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 1892 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [127] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 1905 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [128] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [129] = ((u32)(0)),

    [130] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 1928 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [131] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 1939 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [132] = ((u32)(0)),

    [133] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1952 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [134] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1964 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [135] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1976 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [136] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 1987 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [137] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2000 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [138] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 2012 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [139] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 2025 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [140] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 2037 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [141] = ((u32)(((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 2053 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [142] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [143] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 2087 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [144] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2098 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [145] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2109 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [146] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [147] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2131 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [148] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2143 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [149] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 2161 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [150] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 2185 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [151] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (9)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 2216 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [152] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 2228 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [153] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 2241 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [154] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 2254 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [155] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 2267 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [156] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 2281 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [157] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 2303 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [158] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 2322 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [159] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 2342 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [160] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 2362 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [161] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 2380 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [162] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 2398 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [163] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2409 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [164] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2420 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [165] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27))))
# 2435 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [166] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27))))
# 2450 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [167] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [168] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [169] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))






                                                                  ,

    [170] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [171] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [172] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 2513 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [173] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (9)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 2535 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [174] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 2555 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [175] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (9)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 2577 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [176] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (9)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 2599 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [177] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2611 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [178] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2623 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [179] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 2635 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [180] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 2654 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [181] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 2673 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [182] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [183] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 2701 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [184] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 2720 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [185] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 2743 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [186] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 2761 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [187] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))







                                                                         ,

    [188] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))







                                                                         ,

    [189] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))







                                                                         ,

    [190] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 2815 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [191] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [192] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))






                                                                       ,

    [193] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [194] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 2857 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [195] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 2875 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [196] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2888 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [197] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2901 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [198] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2915 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [199] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 2937 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [200] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 2950 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [201] = ((u32)(0)),

    [202] = ((u32)(0)),

    [203] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 2968 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [204] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 2982 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [205] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 2996 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [206] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3013 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [207] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 3027 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [208] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3041 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [209] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 3062 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [210] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 3084 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [211] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 3098 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [212] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 3110 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [213] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3123 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [214] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 3137 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [215] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 3156 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [216] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 3180 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [217] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 3205 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [218] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3218 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [219] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3231 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [220] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3244 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [221] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3257 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [222] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3271 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [223] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 3283 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [224] = ((u32)(((u64)1 << (4)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 3296 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [225] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3312 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [226] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3324 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [227] = ((u32)(((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3336 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [228] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3349 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [229] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3362 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [230] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3373 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [231] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3386 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [232] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3400 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [233] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 3414 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [234] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3428 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [235] = ((u32)(0)),

    [236] = ((u32)(((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3445 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [237] = ((u32)(((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3460 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [238] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 3480 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [239] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 3500 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [240] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 3517 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [241] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 3542 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [242] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (9)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3564 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [243] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3577 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [244] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3589 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [245] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3602 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [246] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 3613 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [247] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 3624 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [248] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 3643 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [249] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3658 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [250] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3671 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [251] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 3686 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [277] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (29))))
# 3705 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [278] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (29))))
# 3724 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [279] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (29))))
# 3743 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [280] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 3760 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [281] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 3781 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [282] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 3802 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [283] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3815 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [284] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3835 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [285] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3855 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [286] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 3867 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [287] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 3879 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [288] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 3895 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [289] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 3911 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [290] = ((u32)(0)),

    [291] = ((u32)(0)),

    [292] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))






                                                                  ,

    [293] = ((u32)(0)),

    [294] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))






                                                                  ,

    [295] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 3946 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [296] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 3962 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [297] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 3983 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [298] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 3996 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [299] = ((u32)(((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 4014 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [300] = ((u32)(((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 4032 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [301] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))







                                                                        ,

    [302] = ((u32)(((u64)1 << (1)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 4054 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [303] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 4065 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [304] = ((u32)(((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4076 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [305] = ((u32)(((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4087 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [306] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [307] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (29))))
# 4115 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [308] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 4141 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [309] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4152 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [310] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4163 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [311] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4174 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [312] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4185 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [313] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 4197 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [314] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 4209 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [315] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 4226 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [316] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 4243 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [317] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 4270 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [318] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 4283 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [319] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 4296 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [320] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 4315 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [321] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 4327 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [322] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 4349 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [323] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [324] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 4370 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [325] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4381 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [326] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 4395 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [327] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 4410 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [328] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))







                                                                  ,

    [329] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4433 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [330] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 4445 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [331] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 4457 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [332] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 4468 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [333] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4480 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [334] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 4494 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [335] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 4514 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [336] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 4534 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [337] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4546 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [338] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4558 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [339] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 4571 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [340] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 4585 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [341] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 4599 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [342] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 4613 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [343] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 4627 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [344] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (29))))
# 4644 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [345] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (29))))
# 4662 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [346] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [347] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 4685 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [348] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 4701 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [349] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 4717 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [350] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 4731 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [351] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4744 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [352] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 4766 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [353] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27))))
# 4787 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [354] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27))))
# 4808 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [355] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27))))
# 4829 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [356] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 4851 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [357] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 4874 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [358] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4887 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [359] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 4900 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [360] = ((u32)(0)),

    [361] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 4914 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [362] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 4937 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [363] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 4951 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [364] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 4972 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [365] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 4993 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [366] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 5014 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [367] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5033 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [368] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (12)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5052 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [369] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 5064 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [370] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5086 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [371] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5109 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [372] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5132 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [373] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))







                                                                       ,

    [374] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 5154 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [375] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25))))
# 5166 "src/data/pokemon/tutor_learnsets.h"
                                                                  ,

    [376] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 5185 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [377] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 5198 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [378] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 5213 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [379] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 5225 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [380] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 5251 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [381] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 5264 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [382] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 5278 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [383] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 5292 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [384] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 5316 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [385] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 5330 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [386] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27))))
# 5351 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [387] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27))))
# 5372 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [388] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 5384 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [389] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24))))
# 5396 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [390] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 5409 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [391] = ((u32)(((u64)1 << (1)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 5423 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [392] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5441 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [393] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5459 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [394] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5477 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [395] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (29))))
# 5489 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [396] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 5503 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [397] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (29))))
# 5518 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [398] = ((u32)(0)),

    [399] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (29))))
# 5541 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [400] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (29))))
# 5562 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [401] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5586 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [402] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27))))
# 5610 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [403] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (12)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26)) | ((u64)1 << (27))))
# 5633 "src/data/pokemon/tutor_learnsets.h"
                                                                          ,

    [404] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26))))
# 5649 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

    [405] = ((u32)(((u64)1 << (0)) | ((u64)1 << (1)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28)) | ((u64)1 << (29))))
# 5674 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [406] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 5690 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [407] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 5706 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [408] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (29))))
# 5722 "src/data/pokemon/tutor_learnsets.h"
                                                                        ,

    [409] = ((u32)(((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (8)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (26)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5743 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [410] = ((u32)(((u64)1 << (0)) | ((u64)1 << (2)) | ((u64)1 << (3)) | ((u64)1 << (4)) | ((u64)1 << (5)) | ((u64)1 << (6)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (11)) | ((u64)1 << (13)) | ((u64)1 << (14)) | ((u64)1 << (15)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (21)) | ((u64)1 << (22)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (25)) | ((u64)1 << (27)) | ((u64)1 << (28))))
# 5767 "src/data/pokemon/tutor_learnsets.h"
                                                                       ,

    [411] = ((u32)(((u64)1 << (4)) | ((u64)1 << (7)) | ((u64)1 << (10)) | ((u64)1 << (14)) | ((u64)1 << (16)) | ((u64)1 << (17)) | ((u64)1 << (18)) | ((u64)1 << (19)) | ((u64)1 << (20)) | ((u64)1 << (23)) | ((u64)1 << (24)) | ((u64)1 << (26))))
# 5780 "src/data/pokemon/tutor_learnsets.h"
                                                                         ,

};
# 399 "src/party_menu.c" 2

static const struct BgTemplate gUnknown_086156B8[] =
{
    {
        .bg = 0,
        .charBaseIndex = 0,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0
    },
    {
        .bg = 1,
        .charBaseIndex = 0,
        .mapBaseIndex = 30,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0
    },
    {
        .bg = 2,
        .charBaseIndex = 0,
        .mapBaseIndex = 28,
        .screenSize = 1,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0
    },
};

static const struct Unk_Rodata1 gUnknown_086156C4[] =
{
    {BlitBitmapToPartyWindow_Default1, {0x18, 0xB, 0x28, 0xD, 0x20, 0x14, 0x20, 8, 0x40, 0x14, 8, 8, 0x26, 0x25, 0x18, 8, 0x35, 0x25, 0x18, 8, 0x18, 0x23, 0x30, 3}, 0xC, 0x22, 0x40, 0x10},
    {BlitBitmapToPartyWindow_Default2, {0x16, 3, 0x28, 0xD, 0x1E, 0xC, 0x20, 8, 0x3E, 0xC, 8, 8, 0x66, 0xC, 0x18, 8, 0x75, 0xC, 0x18, 8, 0x58, 0xA, 0x30, 3}, 0x4D, 4, 0x40, 0x10},
};

static const u8 gUnknown_08615704[][6][8] =
{
 {
  {16, 40, 20, 50, 50, 52, 16, 34},
  {104, 18, 108, 28, 136, 27, 102, 25},
  {104, 42, 108, 52, 136, 51, 102, 49},
  {104, 66, 108, 76, 136, 75, 102, 73},
  {104, 90, 108, 100, 136, 99, 102, 97},
  {104, 114, 108, 124, 136, 123, 102, 121},
 },
 {
  {16, 24, 20, 34, 50, 36, 16, 18},
  {16, 80, 20, 90, 50, 92, 16, 74},
  {104, 18, 108, 28, 136, 27, 102, 25},
  {104, 50, 108, 60, 136, 59, 102, 57},
  {104, 82, 108, 92, 136, 91, 102, 89},
  {104, 114, 108, 124, 136, 123, 102, 121},
 },
 {
  {16, 24, 20, 34, 50, 36, 16, 18},
  {16, 80, 20, 90, 50, 92, 16, 74},
  {104, 26, 106, 36, 136, 35, 102, 33},
  {104, 50, 106, 60, 136, 59, 102, 57},
  {104, 82, 106, 92, 136, 91, 102, 89},
  {104, 106, 106, 116, 136, 115, 102, 113},
 },
 {
  {16, 32, 20, 42, 50, 44, 16, 26},
  {104, 34, 106, 44, 136, 43, 102, 41},
  {104, 58, 106, 68, 136, 67, 102, 65},
  {16, 104, 20, 114, 50, 116, 16, 98},
  {104, 106, 106, 116, 136, 115, 102, 113},
  {104, 130, 106, 140, 136, 139, 102, 137},
 },
};

static const u32 gUnknown_086157C4[] = INCBIN_U32("graphics/interface/unknown_6157C4.bin");
static const u32 gUnknown_086157E0[] = INCBIN_U32("graphics/interface/unknown_6157E0.bin");

static const u8 sFontColorTable[][3] =
{
 {0, 3, 2},
 {0, 1, 6},
 {0, 11, 12},
 {1, 2, 3},
 {1, 8, 9},
 {0, 1, 2},
};

static const struct WindowTemplate gUnknown_08615810[] =
{
 {
  .bg = 0,
  .tilemapLeft = 1,
  .tilemapTop = 3,
  .width = 10,
  .height = 7,
  .paletteNum = 3,
  .baseBlock = 0x63,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 1,
  .width = 18,
  .height = 3,
  .paletteNum = 4,
  .baseBlock = 0xA9,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 4,
  .width = 18,
  .height = 3,
  .paletteNum = 5,
  .baseBlock = 0xDF,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 7,
  .width = 18,
  .height = 3,
  .paletteNum = 6,
  .baseBlock = 0x115,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 10,
  .width = 18,
  .height = 3,
  .paletteNum = 7,
  .baseBlock = 0x14B,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 13,
  .width = 18,
  .height = 3,
  .paletteNum = 8,
  .baseBlock = 0x181,
 },
 {
  .bg = 2,
  .tilemapLeft = 1,
  .tilemapTop = 15,
  .width = 28,
  .height = 4,
  .paletteNum = 14,
  .baseBlock = 0x1DF,
 },
 { 0xFF, 0, 0, 0, 0, 0, 0, }
};

static const struct WindowTemplate gUnknown_08615850[] =
{
 {
  .bg = 0,
  .tilemapLeft = 1,
  .tilemapTop = 1,
  .width = 10,
  .height = 7,
  .paletteNum = 3,
  .baseBlock = 0x63,
 },
 {
  .bg = 0,
  .tilemapLeft = 1,
  .tilemapTop = 8,
  .width = 10,
  .height = 7,
  .paletteNum = 4,
  .baseBlock = 0xA9,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 1,
  .width = 18,
  .height = 3,
  .paletteNum = 5,
  .baseBlock = 0xEF,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 5,
  .width = 18,
  .height = 3,
  .paletteNum = 6,
  .baseBlock = 0x125,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 9,
  .width = 18,
  .height = 3,
  .paletteNum = 7,
  .baseBlock = 0x15B,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 13,
  .width = 18,
  .height = 3,
  .paletteNum = 8,
  .baseBlock = 0x191,
 },
 {
  .bg = 2,
  .tilemapLeft = 1,
  .tilemapTop = 15,
  .width = 28,
  .height = 4,
  .paletteNum = 14,
  .baseBlock = 0x1DF,
 },
 { 0xFF, 0, 0, 0, 0, 0, 0, }
};

static const struct WindowTemplate gUnknown_08615890[] =
{
 {
  .bg = 0,
  .tilemapLeft = 1,
  .tilemapTop = 1,
  .width = 10,
  .height = 7,
  .paletteNum = 3,
  .baseBlock = 0x63,
 },
 {
  .bg = 0,
  .tilemapLeft = 1,
  .tilemapTop = 8,
  .width = 10,
  .height = 7,
  .paletteNum = 4,
  .baseBlock = 0xA9,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 2,
  .width = 18,
  .height = 3,
  .paletteNum = 5,
  .baseBlock = 0xEF,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 5,
  .width = 18,
  .height = 3,
  .paletteNum = 6,
  .baseBlock = 0x125,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 9,
  .width = 18,
  .height = 3,
  .paletteNum = 7,
  .baseBlock = 0x15B,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 12,
  .width = 18,
  .height = 3,
  .paletteNum = 8,
  .baseBlock = 0x191,
 },
 {
  .bg = 2,
  .tilemapLeft = 1,
  .tilemapTop = 15,
  .width = 28,
  .height = 4,
  .paletteNum = 14,
  .baseBlock = 0x1DF,
 },
 { 0xFF, 0, 0, 0, 0, 0, 0, }
};

static const struct WindowTemplate gUnknown_086158D0[] =
{
 {
  .bg = 0,
  .tilemapLeft = 1,
  .tilemapTop = 2,
  .width = 10,
  .height = 7,
  .paletteNum = 3,
  .baseBlock = 0x63,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 3,
  .width = 18,
  .height = 3,
  .paletteNum = 5,
  .baseBlock = 0xA9,
 },
 {
  .bg = 0,
  .tilemapLeft = 12,
  .tilemapTop = 6,
  .width = 18,
  .height = 3,
  .paletteNum = 6,
  .baseBlock = 0xDF,
 },
 {
  .bg = 2,
  .tilemapLeft = 1,
  .tilemapTop = 11,
  .width = 10,
  .height = 7,
  .paletteNum = 4,
  .baseBlock = 0x115,
 },
 {
  .bg = 2,
  .tilemapLeft = 12,
  .tilemapTop = 12,
  .width = 18,
  .height = 3,
  .paletteNum = 7,
  .baseBlock = 0x16B,
 },
 {
  .bg = 2,
  .tilemapLeft = 12,
  .tilemapTop = 15,
  .width = 18,
  .height = 3,
  .paletteNum = 8,
  .baseBlock = 0x1A1,
 },
 { 0xFF, 0, 0, 0, 0, 0, 0, }
};

static const struct WindowTemplate gUnknown_08615908 =
{
 .bg = 0,
 .tilemapLeft = 24,
 .tilemapTop = 17,
 .width = 6,
 .height = 2,
 .paletteNum = 3,
 .baseBlock = 0x1C7,
};

static const struct WindowTemplate gUnknown_08615910 =
{
 .bg = 0,
 .tilemapLeft = 24,
 .tilemapTop = 18,
 .width = 6,
 .height = 2,
 .paletteNum = 3,
 .baseBlock = 0x1C7,
};

static const struct WindowTemplate gUnknown_08615918 =
{
 .bg = 0,
 .tilemapLeft = 24,
 .tilemapTop = 16,
 .width = 6,
 .height = 2,
 .paletteNum = 3,
 .baseBlock = 0x1D3,
};

static const struct WindowTemplate gUnknown_08615920 =
{
 .bg = 2,
 .tilemapLeft = 1,
 .tilemapTop = 17,
 .width = 21,
 .height = 2,
 .paletteNum = 15,
 .baseBlock = 0x24F,
};

static const struct WindowTemplate gUnknown_08615928 =
{
 .bg = 2,
 .tilemapLeft = 1,
 .tilemapTop = 17,
 .width = 16,
 .height = 2,
 .paletteNum = 15,
 .baseBlock = 0x279,
};

static const struct WindowTemplate gUnknown_08615930 =
{
 .bg = 2,
 .tilemapLeft = 1,
 .tilemapTop = 17,
 .width = 20,
 .height = 2,
 .paletteNum = 15,
 .baseBlock = 0x299,
};

static const struct WindowTemplate gUnknown_08615938 =
{
 .bg = 2,
 .tilemapLeft = 1,
 .tilemapTop = 17,
 .width = 18,
 .height = 2,
 .paletteNum = 15,
 .baseBlock = 0x299,
};

static const struct WindowTemplate gUnknown_08615940 =
{
 .bg = 2,
 .tilemapLeft = 1,
 .tilemapTop = 17,
 .width = 16,
 .height = 2,
 .paletteNum = 15,
 .baseBlock = 0x299,
};

static const struct WindowTemplate gUnknown_08615948 =
{
 .bg = 2,
 .tilemapLeft = 1,
 .tilemapTop = 15,
 .width = 20,
 .height = 4,
 .paletteNum = 15,
 .baseBlock = 0x299,
};

static const struct WindowTemplate gUnknown_08615950 =
{
 .bg = 2,
 .tilemapLeft = 23,
 .tilemapTop = 13,
 .width = 6,
 .height = 6,
 .paletteNum = 14,
 .baseBlock = 0x39D,
};

static const struct WindowTemplate gUnknown_08615958 =
{
 .bg = 2,
 .tilemapLeft = 21,
 .tilemapTop = 13,
 .width = 8,
 .height = 6,
 .paletteNum = 14,
 .baseBlock = 0x39D,
};

static const struct WindowTemplate gUnknown_08615960 =
{
 .bg = 2,
 .tilemapLeft = 19,
 .tilemapTop = 11,
 .width = 10,
 .height = 8,
 .paletteNum = 14,
 .baseBlock = 0x2E9,
};

static const struct WindowTemplate gUnknown_08615968 =
{
 .bg = 2,
 .tilemapLeft = 21,
 .tilemapTop = 9,
 .width = 5,
 .height = 4,
 .paletteNum = 14,
 .baseBlock = 0x2E9,
};

static const struct WindowTemplate gUnknown_08615970 =
{
 .bg = 2,
 .tilemapLeft = 19,
 .tilemapTop = 1,
 .width = 10,
 .height = 11,
 .paletteNum = 14,
 .baseBlock = 0x2E9,
};


static const struct WindowTemplate gUnknown_08615978 =
{
 .bg = 2,
 .tilemapLeft = 2,
 .tilemapTop = 15,
 .width = 27,
 .height = 4,
 .paletteNum = 14,
 .baseBlock = 0x1DF,
};


static const struct WindowTemplate gUnknown_08615980 =
{
 .bg = 2,
 .tilemapLeft = 0,
 .tilemapTop = 13,
 .width = 18,
 .height = 3,
 .paletteNum = 12,
 .baseBlock = 0x39D,
};

static const u8 sMainSlotTileNums[] = {24, 25, 25, 25, 25, 25, 25, 25, 25, 26,
                                       32, 33, 33, 33, 33, 33, 33, 33, 33, 34,
                                       32, 33, 33, 33, 33, 33, 33, 33, 33, 34,
                                       32, 33, 33, 33, 33, 33, 33, 33, 33, 34,
                                       40, 59, 60, 58, 58, 58, 58, 58, 58, 61,
                                       15, 16, 16, 16, 16, 16, 16, 16, 16, 17,
                                       46, 47, 47, 47, 47, 47, 47, 47, 47, 48};

static const u8 sMainSlotTileNums_Egg[] = {24, 25, 25, 25, 25, 25, 25, 25, 25, 26,
                                           32, 33, 33, 33, 33, 33, 33, 33, 33, 34,
                                           32, 33, 33, 33, 33, 33, 33, 33, 33, 34,
                                           32, 33, 33, 33, 33, 33, 33, 33, 33, 34,
                                           40, 41, 41, 41, 41, 41, 41, 41, 41, 42,
                                           15, 16, 16, 16, 16, 16, 16, 16, 16, 17,
                                           46, 47, 47, 47, 47, 47, 47, 47, 47, 48};

static const u8 sOtherSlotsTileNums[] = {43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 45,
                                         49, 33, 33, 33, 33, 33, 33, 33, 33, 52, 53, 51, 51, 51, 51, 51, 51, 54,
                                         55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57};

static const u8 sOtherSlotsTileNums_Egg[] = {43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 45,
                                             49, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 50,
                                             55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57};

static const u8 sEmptySlotTileNums[] = {21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23,
                                        30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31,
                                        37, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 39};
static const u8 gUnknown_08615AB6[] = {11, 12};
static const u8 gUnknown_08615AB8[] = {9, 10};
static const u8 gUnknown_08615ABA[] = {4, 5, 6};
static const u8 gUnknown_08615ABD[] = {1, 7, 8};
static const u8 gUnknown_08615AC0[] = {1, 11, 12};
static const u8 gUnknown_08615AC3[] = {59, 60};
static const u8 gUnknown_08615AC5[] = {75, 76};
static const u8 gUnknown_08615AC7[] = {57, 58};
static const u8 gUnknown_08615AC9[] = {73, 74};
static const u8 gUnknown_08615ACB[] = {89, 90};
static const u8 gUnknown_08615ACD[] = {52, 53, 54};
static const u8 gUnknown_08615AD0[] = {68, 69, 70};
static const u8 gUnknown_08615AD3[] = {84, 85, 86};
static const u8 gUnknown_08615AD6[] = {116, 117, 118};
static const u8 gUnknown_08615AD9[] = {132, 133, 134};
static const u8 gUnknown_08615ADC[] = {148, 149, 150};
static const u8 gUnknown_08615ADF[] = {100, 101, 102};
static const u8 gUnknown_08615AE2[] = {49, 55, 56};
static const u8 gUnknown_08615AE5[] = {65, 71, 72};
static const u8 gUnknown_08615AE8[] = {81, 87, 88};
static const u8 gUnknown_08615AEB[] = {97, 103, 104};
static const u8 gUnknown_08615AEE[] = {161, 167, 168};
static const u8 gUnknown_08615AF1[] = {17, 27, 28};

static const u8 *const sActionStringTable[] =
{
    gText_ChoosePokemon,
    gText_ChoosePokemonCancel,
    gText_ChoosePokemonConfirm,
    gText_MoveToWhere,
    gText_TeachWhichPokemon,
    gText_UseOnWhichPokemon,
    gText_GiveToWhichPokemon,
    gText_NothingToCut,
    gText_CantSurfHere,
    gText_AlreadySurfing,
    gText_CurrentIsTooFast,
    gText_EnjoyCycling,
    gText_InUseAlready_PM,
    gText_CantUseHere,
    gText_NoPokemonForBattle,
    gText_ChoosePokemon2,
    gText_NotEnoughHp,
    gText_PokemonAreNeeded,
    gText_PokemonCantBeSame,
    gText_NoIdenticalHoldItems,
    gText_EmptyString2,
    gText_DoWhatWithPokemon,
    gText_RestoreWhichMove,
    gText_BoostPp,
    gText_DoWhatWithItem,
    gText_DoWhatWithMail,
    gText_AlreadyHoldingOne,
};

static const u8 *const sSelectionStringTable[] =
{
    gText_NoUse,
    gText_Able,
    gText_First_PM,
    gText_Second_PM,
    gText_Third_PM,
    gText_Fourth,
    gText_Able2,
    gText_NotAble,
    gText_Able3,
    gText_NotAble2,
    gText_Learned,
    gText_Have,
    gText_DontHave,
};


static const u16 gUnknown_08615B94[] =
{
    0x0108, 0x0151, 0x0160, 0x015b, 0x002e, 0x005c, 0x0102, 0x0153, 0x014b, 0x00ed, 0x00f1, 0x010d, 0x003a, 0x003b, 0x003f, 0x0071,
    0x00b6, 0x00f0, 0x00ca, 0x00db, 0x00da, 0x004c, 0x00e7, 0x0055, 0x0057, 0x0059, 0x00d8, 0x005b, 0x005e, 0x00f7, 0x0118, 0x0068,
    0x0073, 0x015f, 0x0035, 0x00bc, 0x00c9, 0x007e, 0x013d, 0x014c, 0x0103, 0x0107, 0x0122, 0x009c, 0x00d5, 0x00a8, 0x00d3, 0x011d,
    0x0121, 0x013b, 0x000f, 0x0013, 0x0039, 0x0046, 0x0094, 0x00f9, 0x007f, 0x0123,
};

enum
{
    MENU_SUMMARY,
    MENU_SWITCH,
    MENU_CANCEL1,
    MENU_ITEM,
    MENU_GIVE,
    MENU_TAKE_ITEM,
    MENU_MAIL,
    MENU_TAKE_MAIL,
    MENU_READ,
    MENU_CANCEL2,
    MENU_SHIFT,
    MENU_SEND_OUT,
    MENU_ENTER,
    MENU_NO_ENTRY,
    MENU_STORE,
    MENU_REGISTER,
    MENU_TRADE1,
    MENU_TRADE2,
    MENU_TOSS,
    MENU_FIELD_MOVES,
};

enum
{
    FIELD_MOVE_CUT,
    FIELD_MOVE_FLASH,
    FIELD_MOVE_ROCK_SMASH,
    FIELD_MOVE_STRENGTH,
    FIELD_MOVE_SURF,
    FIELD_MOVE_FLY,
    FIELD_MOVE_DIVE,
    FIELD_MOVE_WATERFALL,
    FIELD_MOVE_TELEPORT,
    FIELD_MOVE_DIG,
    FIELD_MOVE_SECRET_POWER,
    FIELD_MOVE_MILK_DRINK,
    FIELD_MOVE_SOFT_BOILED,
    FIELD_MOVE_SWEET_SCENT,
};




struct
{
    const u8 *text;
    TaskFunc func;
} static const sCursorOptions[] =
{
    [MENU_SUMMARY] = {gText_Summary5, CursorCb_Summary},
    [MENU_SWITCH] = {gText_Switch2, CursorCb_Switch},
    [MENU_CANCEL1] = {gText_Cancel2, CursorCb_Cancel1},
    [MENU_ITEM] = {gText_Item, CursorCb_Item},
    [MENU_GIVE] = {gMenuText_Give, CursorCb_Give},
    [MENU_TAKE_ITEM] = {gText_Take, CursorCb_TakeItem},
    [MENU_MAIL] = {gText_Mail, CursorCb_Mail},
    [MENU_TAKE_MAIL] = {gText_Take2, CursorCb_TakeMail},
    [MENU_READ] = {gText_Read2, CursorCb_Read},
    [MENU_CANCEL2] = {gText_Cancel2, CursorCb_Cancel2},
    [MENU_SHIFT] = {gText_Shift, CursorCb_SendMon},
    [MENU_SEND_OUT] = {gText_SendOut, CursorCb_SendMon},
    [MENU_ENTER] = {gText_Enter, CursorCb_Enter},
    [MENU_NO_ENTRY] = {gText_NoEntry, CursorCb_NoEntry},
    [MENU_STORE] = {gText_Store, CursorCb_Store},
    [MENU_REGISTER] = {gText_Register, CursorCb_Register},
    [MENU_TRADE1] = {gText_Trade4, CursorCb_Trade1},
    [MENU_TRADE2] = {gText_Trade4, CursorCb_Trade2},
    [MENU_TOSS] = {gMenuText_Toss, CursorCb_Toss},
    [MENU_FIELD_MOVES + FIELD_MOVE_CUT] = {gMoveNames[15], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_FLASH] = {gMoveNames[148], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_ROCK_SMASH] = {gMoveNames[249], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_STRENGTH] = {gMoveNames[70], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_SURF] = {gMoveNames[57], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_FLY] = {gMoveNames[19], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_DIVE] = {gMoveNames[291], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_WATERFALL] = {gMoveNames[127], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_TELEPORT] = {gMoveNames[100], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_DIG] = {gMoveNames[91], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_SECRET_POWER] = {gMoveNames[290], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_MILK_DRINK] = {gMoveNames[208], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_SOFT_BOILED] = {gMoveNames[135], CursorCb_FieldMove},
    [MENU_FIELD_MOVES + FIELD_MOVE_SWEET_SCENT] = {gMoveNames[230], CursorCb_FieldMove},
};

static const u8 gUnknown_08615D10[] = {MENU_SUMMARY, MENU_SWITCH, MENU_CANCEL1};
static const u8 gUnknown_08615D13[] = {MENU_SHIFT, MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D16[] = {MENU_SEND_OUT, MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D19[] = {MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D1B[] = {MENU_ENTER, MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D1E[] = {MENU_NO_ENTRY, MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D21[] = {MENU_STORE, MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D24[] = {MENU_GIVE, MENU_TAKE_ITEM, MENU_CANCEL2};
static const u8 gUnknown_08615D27[] = {MENU_READ, MENU_TAKE_MAIL, MENU_CANCEL2};
static const u8 gUnknown_08615D2A[] = {MENU_REGISTER, MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D2D[] = {MENU_TRADE1, MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D30[] = {MENU_TRADE2, MENU_SUMMARY, MENU_CANCEL1};
static const u8 gUnknown_08615D33[] = {MENU_TAKE_ITEM, MENU_TOSS, MENU_CANCEL1};

static const u8 *const sActionTable[] =
{
    ((void *)0),
    gUnknown_08615D10,
    gUnknown_08615D13,
    gUnknown_08615D16,
    gUnknown_08615D1B,
    gUnknown_08615D1E,
    gUnknown_08615D21,
    gUnknown_08615D19,
    gUnknown_08615D24,
    gUnknown_08615D27,
    gUnknown_08615D2A,
    gUnknown_08615D2D,
    gUnknown_08615D30,
    gUnknown_08615D33,
};

static const u8 sListSizeTable[] =
{
    0x00,
    (size_t)(sizeof(gUnknown_08615D10) / sizeof((gUnknown_08615D10)[0])),
    (size_t)(sizeof(gUnknown_08615D13) / sizeof((gUnknown_08615D13)[0])),
    (size_t)(sizeof(gUnknown_08615D16) / sizeof((gUnknown_08615D16)[0])),
    (size_t)(sizeof(gUnknown_08615D1B) / sizeof((gUnknown_08615D1B)[0])),
    (size_t)(sizeof(gUnknown_08615D1E) / sizeof((gUnknown_08615D1E)[0])),
    (size_t)(sizeof(gUnknown_08615D21) / sizeof((gUnknown_08615D21)[0])),
    (size_t)(sizeof(gUnknown_08615D19) / sizeof((gUnknown_08615D19)[0])),
    (size_t)(sizeof(gUnknown_08615D24) / sizeof((gUnknown_08615D24)[0])),
    (size_t)(sizeof(gUnknown_08615D27) / sizeof((gUnknown_08615D27)[0])),
    (size_t)(sizeof(gUnknown_08615D2A) / sizeof((gUnknown_08615D2A)[0])),
    (size_t)(sizeof(gUnknown_08615D2D) / sizeof((gUnknown_08615D2D)[0])),
    (size_t)(sizeof(gUnknown_08615D30) / sizeof((gUnknown_08615D30)[0])),
    (size_t)(sizeof(gUnknown_08615D33) / sizeof((gUnknown_08615D33)[0]))
};

static const u16 sFieldMoves[] =
{
    15, 148, 249, 70, 57, 19, 291, 127, 100,
    91, 290, 208, 135, 230, 14
};

struct
{
    bool8 (*fieldMoveFunc)(void);
    u8 msgId;
} static const sFieldMoveCursorCallbacks[] =
{
    [FIELD_MOVE_CUT] = {SetUpFieldMove_Cut, 0x07},
    [FIELD_MOVE_FLASH] = {SetUpFieldMove_Flash, 0x0d},
    [FIELD_MOVE_ROCK_SMASH] = {SetUpFieldMove_RockSmash, 0x0d},
    [FIELD_MOVE_STRENGTH] = {SetUpFieldMove_Strength, 0x0d},
    [FIELD_MOVE_SURF] = {SetUpFieldMove_Surf, 0x08},
    [FIELD_MOVE_FLY] = {SetUpFieldMove_Fly, 0x0d},
    [FIELD_MOVE_DIVE] = {SetUpFieldMove_Dive, 0x0d},
    [FIELD_MOVE_WATERFALL] = {SetUpFieldMove_Waterfall, 0x0d},
    [FIELD_MOVE_TELEPORT] = {SetUpFieldMove_Teleport, 0x0d},
    [FIELD_MOVE_DIG] = {SetUpFieldMove_Dig, 0x0d},
    [FIELD_MOVE_SECRET_POWER] = {SetUpFieldMove_SecretPower, 0x0d},
    [FIELD_MOVE_MILK_DRINK] = {SetUpFieldMove_SoftBoiled, 0x10},
    [FIELD_MOVE_SOFT_BOILED] = {SetUpFieldMove_SoftBoiled, 0x10},
    [FIELD_MOVE_SWEET_SCENT] = {SetUpFieldMove_SweetScent, 0x0d},
};

static const u8 *const gUnknown_08615E0C[] =
{
    gText_NotPkmnOtherTrainerWants,
    gText_ThatIsntAnEgg,
    gText_PkmnCantBeTradedNow,
    gText_PkmnCantBeTradedNow,
    gText_OtherTrainersPkmnCantBeTraded,
    gText_EggCantBeTradedNow,
    gText_OtherTrainerCantAcceptPkmn,
    gText_CantTradeWithTrainer,
    gText_CantTradeWithTrainer,
};

static const u32 sHeldItemGfx[] = INCBIN_U32("graphics/interface/hold_icons.4bpp");
static const u16 sHeldItemPalette[] = INCBIN_U16("graphics/interface/hold_icons.gbapal");

static const struct OamData sOamData_HeldItem =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((0 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((0 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sSpriteAnim_HeldItem[] =
{
    {.frame = {0, 1}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_HeldMail[] =
{
    {.frame = {1, 1}},
    {.type = -1}
};

static const union AnimCmd *const sSpriteAnimTable_HeldItem[] =
{
    sSpriteAnim_HeldItem,
    sSpriteAnim_HeldMail,
};

static const struct SpriteSheet sSpriteSheet_HeldItem =
{
    sHeldItemGfx, sizeof(sHeldItemGfx), 0xd750
};

static const struct SpritePalette sSpritePalette_HeldItem =
{
    sHeldItemPalette, 0xd750
};

static const struct SpriteTemplate sSpriteTemplate_HeldItem =
{
    0xd750,
    0xd750,
    &sOamData_HeldItem,
    sSpriteAnimTable_HeldItem,
    ((void *)0),
    gDummySpriteAffineAnimTable,
    SpriteCallbackDummy
};

static const struct OamData sOamData_MenuPokeball =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((2 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0
};

static const union AnimCmd sPokeballAnim_Closed[] =
{
    {.frame = {0, 0}},
    {.type = -1}
};

static const union AnimCmd sPokeballAnim_Open[] =
{
    {.frame = {16, 0}},
    {.type = -1}
};

static const union AnimCmd *const sSpriteAnimTable_Pokeball[] =
{
    sPokeballAnim_Closed,
    sPokeballAnim_Open
};

static const struct CompressedSpriteSheet sSpriteSheet_MenuPokeball =
{
    gPartyMenuPokeball_Gfx, 0x400, 0x04b0
};

static const struct CompressedSpritePalette sSpritePalette_MenuPokeball =
{
    gPartyMenuPokeball_Pal, 0x04b0
};

static const struct SpriteTemplate sSpriteTemplate_MenuPokeball =
{
    .tileTag = 0x04b0,
    .paletteTag = 0x04b0,
    .oam = &sOamData_MenuPokeball,
    .anims = sSpriteAnimTable_Pokeball,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct OamData sOamData_8615F20 =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((1 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 2,
    .paletteNum = 0,
    .affineParam = 0
};

static const union AnimCmd sSpriteAnim_8615F28[] =
{
    {.frame = {0, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_8615F30[] =
{
    {.frame = {4, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_8615F38[] =
{
    {.frame = {8, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_8615F40[] =
{
    {.frame = {12, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_8615F48[] =
{
    {.frame = {16, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_8615F50[] =
{
    {.frame = {20, 0}},
    {.type = -1}
};

static const union AnimCmd *const sSpriteAnimTable_8615F58[] =
{
    sSpriteAnim_8615F28,
    sSpriteAnim_8615F30,
    sSpriteAnim_8615F38,
    sSpriteAnim_8615F40,
    sSpriteAnim_8615F48,
    sSpriteAnim_8615F50
};

static const struct CompressedSpriteSheet sSpriteSheet_MenuPokeballSmall =
{
    gPartyMenuPokeballSmall_Gfx, 0x0300, 0x04b1
};

static const struct SpriteTemplate gSpriteTemplate_8615F78 =
{
    .tileTag = 1201,
    .paletteTag = 1200,
    .oam = &sOamData_8615F20,
    .anims = sSpriteAnimTable_8615F58,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct OamData sOamData_StatusCondition =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((1 << 2) | (1)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((1 << 2) | (1)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0
};

static const union AnimCmd sSpriteAnim_StatusPoison[] =
{
    {.frame = {0, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_StatusParalyzed[] =
{
    {.frame = {4, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_StatusSleep[] =
{
    {.frame = {8, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_StatusFrozen[] =
{
    {.frame = {12, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_StatusBurn[] =
{
    {.frame = {16, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_StatusPokerus[] =
{
    {.frame = {20, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_StatusFaint[] =
{
    {.frame = {24, 0}},
    {.type = -1}
};

static const union AnimCmd sSpriteAnim_Blank[] =
{
    {.frame = {28, 0}},
    {.type = -1}
};

static const union AnimCmd *const sSpriteTemplate_StatusCondition[] =
{
    sSpriteAnim_StatusPoison,
    sSpriteAnim_StatusParalyzed,
    sSpriteAnim_StatusSleep,
    sSpriteAnim_StatusFrozen,
    sSpriteAnim_StatusBurn,
    sSpriteAnim_StatusPokerus,
    sSpriteAnim_StatusFaint,
    sSpriteAnim_Blank
};

static const struct CompressedSpriteSheet sSpriteSheet_StatusIcons =
{
    gStatusGfx_Icons, 0x400, 1202
};

static const struct CompressedSpritePalette sSpritePalette_StatusIcons =
{
    gStatusPal_Icons, 1202
};

static const struct SpriteTemplate sSpriteTemplate_StatusIcons =
{
    .tileTag = 1202,
    .paletteTag = 1202,
    .oam = &sOamData_StatusCondition,
    .anims = sSpriteTemplate_StatusCondition,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const u8 gUnknown_08616020[] = {0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00};


static const u8 *const gUnknown_08616028[] =
{
    gText_HP4,
    gText_Attack3,
    gText_Defense3,
    gText_SpAtk4,
    gText_SpDef4,
    gText_Speed2
};

static const u16 gTMHMMoves[] =
{
    264,
    337,
    352,
    347,
    46,
    92,
    258,
    339,
    331,
    237,
    241,
    269,
    58,
    59,
    63,
    113,
    182,
    240,
    202,
    219,
    218,
    76,
    231,
    85,
    87,
    89,
    216,
    91,
    94,
    247,
    280,
    104,
    115,
    351,
    53,
    188,
    201,
    126,
    317,
    332,
    259,
    263,
    290,
    156,
    213,
    168,
    211,
    285,
    289,
    315,
    15,
    19,
    57,
    70,
    148,
    249,
    127,
    291,
};


static void InitPartyMenu(u8 a, u8 b, u8 c, u8 d, u8 messageId, TaskFunc task, MainCallback callback)
{
    u16 i;

    reset_brm();
    gUnknown_0203CEC4 = Alloc(sizeof(struct Struct203CEC4));
    if (gUnknown_0203CEC4 == ((void *)0))
    {
        SetMainCallback2(callback);
    }
    else
    {
        gUnknown_0203CEC8.unk8_0 = a;
        gUnknown_0203CEC8.exitCallback = callback;
        gUnknown_0203CEC8.unkB = c;
        gUnknown_0203CEC4->messageId = messageId;
        gUnknown_0203CEC4->task = task;
        gUnknown_0203CEC4->exitCallback = ((void *)0);
        gUnknown_0203CEC4->unk8_1 = 0;
        gUnknown_0203CEC4->unk8_2 = 0x7F;
        gUnknown_0203CEC4->unk9_0 = 0x7F;

        if (a == 4)
            gUnknown_0203CEC4->unk8_0 = 1;
        else
            gUnknown_0203CEC4->unk8_0 = 0;

        if (b != 0xFF)
            gUnknown_0203CEC8.mode = b;

        for (i = 0; i <= 15; i++)
            gUnknown_0203CEC4->data[i] = 0;
        for (i = 0; i < (size_t)(sizeof(gUnknown_0203CEC4->windowId) / sizeof((gUnknown_0203CEC4->windowId)[0])); i++)
            gUnknown_0203CEC4->windowId[i] = 0xFF;

        if (d == 0)
            gUnknown_0203CEC8.slotId = 0;
        else if (gUnknown_0203CEC8.slotId > 5 || GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 11) == 0)
            gUnknown_0203CEC8.slotId = 0;

        gTextFlags.autoScroll = 0;
        CalculatePlayerPartyCount();
        SetMainCallback2(PartyMenuInitCallback);
    }
}

static void PartyMenuCallback(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    do_scheduled_bg_tilemap_copies_to_vram();
    UpdatePaletteFade();
}

static void PartyMenuVBlankCallback(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void PartyMenuInitCallback(void)
{
    while (1)
    {
        if (sub_81221EC() == 1 || PartyMenuSetup() == 1 || sub_81221AC() == 1)
            break;
    }
}

static bool8 PartyMenuSetup(void)
{
    switch (gMain.state)
    {
    case 0:
        SetVBlankHBlankCallbacksToNull();
        ResetVramOamAndBgCntRegs();
        clear_scheduled_bg_copies_to_vram();
        gMain.state++;
        break;
    case 1:
        ScanlineEffect_Stop();
        gMain.state++;
        break;
    case 2:
        ResetPaletteFade();
        gPaletteFade.bufferTransferDisabled = 1;
        gMain.state++;
        break;
    case 3:
        ResetSpriteData();
        gMain.state++;
        break;
    case 4:
        FreeAllSpritePalettes();
        gMain.state++;
        break;
    case 5:
        if (!sub_81221AC())
            ResetTasks();
        gMain.state++;
        break;
    case 6:
        sub_81B209C();
        gMain.state++;
        break;
    case 7:
        if (!AllocPartyMenuBg())
        {
            PartyMenuExit();
            return 1;
        }
        else
        {
            gUnknown_0203CEC4->data[0] = 0;
            gMain.state++;
        }
        break;
    case 8:
        if (AllocPartyMiscGfx())
            gMain.state++;
        break;
    case 9:
        sub_81B239C(gUnknown_0203CEC8.mode);
        gMain.state++;
        break;
    case 10:
        PartyMenuInitHelperStructs(gUnknown_0203CEC8.mode);
        gUnknown_0203CEC4->data[0] = 0;
        gMain.state++;
        break;
    case 11:
        LoadHeldItemIcons();
        gMain.state++;
        break;
    case 12:
        LoadPartyMenuPokeballGfx();
        gMain.state++;
        break;
    case 13:
        LoadPartyMenuAilmentGfx();
        gMain.state++;
        break;
    case 14:
        LoadMonIconPalettes();
        gMain.state++;
        break;
    case 15:
        if (party_menu_add_per_mon_objects())
        {
            gUnknown_0203CEC4->data[0] = 0;
            gMain.state++;
        }
        break;
    case 16:
        if (RenderPartyMenuBoxes())
        {
            gUnknown_0203CEC4->data[0] = 0;
            gMain.state++;
        }
        break;
    case 17:
        sub_81B0F28();
        gMain.state++;
        break;
    case 18:
        sub_81B2428(gUnknown_0203CEC4->unk8_0);
        gMain.state++;
        break;
    case 19:
        gMain.state++;
        break;
    case 20:
        CreateTask(gUnknown_0203CEC4->task, 0);
        display_pokemon_menu_message(gUnknown_0203CEC4->messageId);
        gMain.state++;
        break;
    case 21:
        BlendPalettes(0xFFFFFFFF, 16, 0);
        gPaletteFade.bufferTransferDisabled = 0;
        gMain.state++;
        break;
    case 22:
        BeginNormalPaletteFade(0xFFFFFFFF, 0, 16, 0, ((0) | ((0) << 5) | ((0) << 10)));
        gMain.state++;
        break;
    default:
        SetVBlankCallback(PartyMenuVBlankCallback);
        SetMainCallback2(PartyMenuCallback);
        return 1;
    }
    return 0;
}

static void PartyMenuExit(void)
{
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
    CreateTask(PartyMenuExitTask, 0);
    SetVBlankCallback(PartyMenuVBlankCallback);
    SetMainCallback2(PartyMenuCallback);
}

static void PartyMenuExitTask(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        SetMainCallback2(gUnknown_0203CEC8.exitCallback);
        FreePartyPointers();
        DestroyTask(taskId);
    }
}

static void reset_brm(void)
{
    gUnknown_0203CEC4 = ((void *)0);
    gUnknown_0203CEE4 = ((void *)0);
    gUnknown_0203CEDC = ((void *)0);
    gUnknown_0203CEE0 = ((void *)0);
}

static bool8 AllocPartyMenuBg(void)
{
    gUnknown_0203CEE4 = Alloc(0x800);
    if (gUnknown_0203CEE4 == ((void *)0))
        return 0;

    memset(gUnknown_0203CEE4, 0, 0x800);
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, gUnknown_086156B8, (size_t)(sizeof(gUnknown_086156B8) / sizeof((gUnknown_086156B8)[0])));
    SetBgTilemapBuffer(1, gUnknown_0203CEE4);
    ResetAllBgsCoordinates();
    schedule_bg_copy_tilemap_to_vram(1);
    SetGpuReg(0x0, 0x1000 | 0x0040);
    SetGpuReg(0x50, 0);
    ShowBg(0);
    ShowBg(1);
    ShowBg(2);
    return 1;
}

static bool8 AllocPartyMiscGfx(void)
{
    u32 sizeout;

    switch (gUnknown_0203CEC4->data[0])
    {
    case 0:
        gUnknown_0203CEE0 = malloc_and_decompress(gPartyMenuMisc_Gfx, &sizeout);
        LoadBgTiles(1, gUnknown_0203CEE0, sizeout, 0);
        gUnknown_0203CEC4->data[0]++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            LZDecompressWram(gPartyMenuMisc_Tilemap, gUnknown_0203CEE4);
            gUnknown_0203CEC4->data[0]++;
        }
        break;
    case 2:
        LoadCompressedPalette(gPartyMenuMisc_Pal, 0, 0x160);
        CpuSet(gPlttBufferUnfaded, gUnknown_0203CEC4->palBuffer, 0x00000000 | ((0x160)/(16/8) & 0x1FFFFF));
        gUnknown_0203CEC4->data[0]++;
        break;
    case 3:
        PartyPaletteBufferCopy(4);
        gUnknown_0203CEC4->data[0]++;
        break;
    case 4:
        PartyPaletteBufferCopy(5);
        gUnknown_0203CEC4->data[0]++;
        break;
    case 5:
        PartyPaletteBufferCopy(6);
        gUnknown_0203CEC4->data[0]++;
        break;
    case 6:
        PartyPaletteBufferCopy(7);
        gUnknown_0203CEC4->data[0]++;
        break;
    case 7:
        PartyPaletteBufferCopy(8);
        gUnknown_0203CEC4->data[0]++;
        break;
    default:
        return 1;
    }
    return 0;
}

static void PartyPaletteBufferCopy(u8 offset)
{
    offset *= 16;
    CpuSet(&gPlttBufferUnfaded[0x30], &gPlttBufferUnfaded[offset], 0x00000000 | ((32)/(16/8) & 0x1FFFFF));
    CpuSet(&gPlttBufferUnfaded[0x30], &gPlttBufferFaded[offset], 0x00000000 | ((32)/(16/8) & 0x1FFFFF));
}

static void FreePartyPointers(void)
{
    if (gUnknown_0203CEC4)
        Free(gUnknown_0203CEC4);
    if (gUnknown_0203CEE4)
        Free(gUnknown_0203CEE4);
    if (gUnknown_0203CEE0)
        Free(gUnknown_0203CEE0);
    if (gUnknown_0203CEDC)
        Free(gUnknown_0203CEDC);
    FreeAllWindowBuffers();
}

static void PartyMenuInitHelperStructs(u8 a)
{
    u8 i;

    gUnknown_0203CEDC = Alloc(sizeof(struct Struct203CEDC[6]));

    for (i = 0; i < 6; i++)
    {
        gUnknown_0203CEDC[i].unk0 = &gUnknown_086156C4[1];
        gUnknown_0203CEDC[i].unk4 = gUnknown_08615704[a][i];
        gUnknown_0203CEDC[i].windowId = i;
        gUnknown_0203CEDC[i].monSpriteId = 0xFF;
        gUnknown_0203CEDC[i].itemSpriteId = 0xFF;
        gUnknown_0203CEDC[i].pokeballSpriteId = 0xFF;
        gUnknown_0203CEDC[i].statusSpriteId = 0xFF;
    }
    gUnknown_0203CEDC[0].unk0 = &gUnknown_086156C4[0];
    if (a == 3)
        gUnknown_0203CEDC[3].unk0 = &gUnknown_086156C4[0];
    else if (a != 0)
        gUnknown_0203CEDC[1].unk0 = &gUnknown_086156C4[0];
}

static void RenderPartyMenuBox(u8 slot)
{
    if (gUnknown_0203CEC8.unk8_0 == 5 && slot > 2)
    {
        sub_81B0CEC(slot);
        if (gUnknown_02022FF8[slot - 3].species == 0)
            UpdateSelectedPartyBox(&gUnknown_0203CEDC[slot], 0x40);
        else
            UpdateSelectedPartyBox(&gUnknown_0203CEDC[slot], 8);
        CopyWindowToVram(gUnknown_0203CEDC[slot].windowId, 2);
        PutWindowTilemap(gUnknown_0203CEDC[slot].windowId);
        schedule_bg_copy_tilemap_to_vram(2);
    }
    else
    {
        if (GetMonData(&gPlayerParty[slot], 11) == 0)
        {
            DrawEmptySlot(gUnknown_0203CEDC[slot].windowId);
            UpdateSelectedPartyBox(&gUnknown_0203CEDC[slot], 0x40);
            CopyWindowToVram(gUnknown_0203CEDC[slot].windowId, 2);
        }
        else
        {
            if (gUnknown_0203CEC8.unk8_0 == 7)
                DisplayPartyPokemonSelectForRelearner(slot);
            else if (gUnknown_0203CEC8.unk8_0 == 2)
                DisplayPartyPokemonSelectForContest(slot);
            else if (gUnknown_0203CEC8.unk8_0 == 4)
                DisplayPartyPokemonSelectForBattle(slot);
            else if (gUnknown_0203CEC8.unk8_0 == 11)
                sub_81B0B98(slot);
            else if (gUnknown_0203CEC8.unk8_0 == 12)
                DisplayPartyPokemonSelectHeldItemRelated(slot);
            else if (!sub_81B0BFC(slot))
                DisplayPartyPokemonData(slot);

            if (gUnknown_0203CEC8.unk8_0 == 5)
                sub_81B0FCC(slot, 0);
            else if (gUnknown_0203CEC8.slotId == slot)
                sub_81B0FCC(slot, 1);
            else
                sub_81B0FCC(slot, 0);
        }
        PutWindowTilemap(gUnknown_0203CEDC[slot].windowId);
        schedule_bg_copy_tilemap_to_vram(0);
    }
}

static void DisplayPartyPokemonData(u8 slot)
{
    if (GetMonData(&gPlayerParty[slot], 45))
    {
        gUnknown_0203CEDC[slot].unk0->unk0(gUnknown_0203CEDC[slot].windowId, 0, 0, 0, 0, 1);
        DisplayPartyPokemonNickname(&gPlayerParty[slot], &gUnknown_0203CEDC[slot], 0);
    }
    else
    {
        gUnknown_0203CEDC[slot].unk0->unk0(gUnknown_0203CEDC[slot].windowId, 0, 0, 0, 0, 0);
        DisplayPartyPokemonNickname(&gPlayerParty[slot], &gUnknown_0203CEDC[slot], 0);
        DisplayPartyPokemonLevelCheck(&gPlayerParty[slot], &gUnknown_0203CEDC[slot], 0);
        DisplayPartyPokemonGenderNidoranCheck(&gPlayerParty[slot], &gUnknown_0203CEDC[slot], 0);
        DisplayPartyPokemonHPCheck(&gPlayerParty[slot], &gUnknown_0203CEDC[slot], 0);
        DisplayPartyPokemonMaxHPCheck(&gPlayerParty[slot], &gUnknown_0203CEDC[slot], 0);
        DisplayPartyPokemonHPBarCheck(&gPlayerParty[slot], &gUnknown_0203CEDC[slot]);
    }
}

static void DisplayPartyPokemonSelectData(u8 slot, u8 stringID)
{
    struct Pokemon *mon = &gPlayerParty[slot];

    gUnknown_0203CEDC[slot].unk0->unk0(gUnknown_0203CEDC[slot].windowId, 0, 0, 0, 0, 1);
    DisplayPartyPokemonNickname(mon, &gUnknown_0203CEDC[slot], 0);
    if (!GetMonData(mon, 45))
    {
        DisplayPartyPokemonLevelCheck(mon, &gUnknown_0203CEDC[slot], 0);
        DisplayPartyPokemonGenderNidoranCheck(mon, &gUnknown_0203CEDC[slot], 0);
    }
    DisplayPartyPokemonOtherText(stringID, &gUnknown_0203CEDC[slot], 0);
}

static void DisplayPartyPokemonSelectForBattle(u8 slot)
{
    u8 i;
    struct Pokemon *mon = &gPlayerParty[slot];
    u8 *ptr = gSelectedOrderFromParty;

    if (!GetBattleEntryEligibility(mon))
    {
        DisplayPartyPokemonSelectData(slot, 7);
        return;
    }
    else
    {
        for (i = 0; i < sub_81B8830(); i++)
        {
            if (ptr[i] != 0 && (ptr[i] - 1) == slot)
            {
                DisplayPartyPokemonSelectData(slot, i + 2);
                return;
            }
        }
        DisplayPartyPokemonSelectData(slot, 1);
    }
}

static void DisplayPartyPokemonSelectForContest(u8 slot)
{
    switch (sub_80DAE0C(&gPlayerParty[slot]))
    {
    case 0:
    case 3:
    case 4:
        DisplayPartyPokemonSelectData(slot, 7);
        break;
    case 1:
    case 2:
        DisplayPartyPokemonSelectData(slot, 6);
        break;
    }
}

static void DisplayPartyPokemonSelectForRelearner(u8 slot)
{
    if (GetNumberOfRelearnableMoves(&gPlayerParty[slot]) == 0)
        DisplayPartyPokemonSelectData(slot, 9);
    else
        DisplayPartyPokemonSelectData(slot, 8);
}

static void sub_81B0B98(u8 slot)
{
    if (sub_81B218C(slot) == 1)
        DisplayPartyPokemonSelectData(slot, 6);
    else
        DisplayPartyPokemonSelectData(slot, 7);
}

static void DisplayPartyPokemonSelectHeldItemRelated(u8 slot)
{
    if (GetMonData(&gPlayerParty[slot], 12))
        DisplayPartyPokemonSelectData(slot, 11);
    else
        DisplayPartyPokemonSelectData(slot, 12);
}

static bool8 sub_81B0BFC(u8 slot)
{
    struct Pokemon *currentPokemon = &gPlayerParty[slot];
    u16 item = gSpecialVar_ItemId;

    if (gUnknown_0203CEC8.unkB == 12)
    {
        gSpecialVar_Result = 0;
        DisplayPartyPokemonSelectToTeachMove(slot, 0, gSpecialVar_0x8005);
    }
    else
    {
        if (gUnknown_0203CEC8.unkB != 3)
            return 0;

        switch (CheckIfItemIsTMHMOrEvolutionStone(item))
        {
        default:
            return 0;
        case 1:
            DisplayPartyPokemonSelectToTeachMove(slot, item, 0);
            break;
        case 2:
            if (!GetMonData(currentPokemon, 45) && GetEvolutionTargetSpecies(currentPokemon, 3, item) != 0)
                return 0;
            DisplayPartyPokemonSelectData(slot, 0);
            break;
        }
    }
    return 1;
}

static void DisplayPartyPokemonSelectToTeachMove(u8 slot, u16 item, u8 tutor)
{
    switch (CanMonLearnTMTutor(&gPlayerParty[slot], item, tutor))
    {
    case CANNOT_LEARN_MOVE:
    case CANNOT_LEARN_MOVE_IS_EGG:
        DisplayPartyPokemonSelectData(slot, 9);
        break;
    case ALREADY_KNOWS_MOVE:
        DisplayPartyPokemonSelectData(slot, 10);
        break;
    default:
        DisplayPartyPokemonSelectData(slot, 8);
        break;
    }
}

static void sub_81B0CEC(u8 slot)
{
    struct Struct203CEDC *structPtr = &gUnknown_0203CEDC[slot];
    u8 actualSlot = slot - 3;

    if (gUnknown_02022FF8[actualSlot].species == 0)
    {
        DrawEmptySlot(structPtr->windowId);
    }
    else
    {
        structPtr->unk0->unk0(structPtr->windowId, 0, 0, 0, 0, 0);
        StringCopy(gStringVar1, gUnknown_02022FF8[actualSlot].nickname);
        StringGetEnd10(gStringVar1);
        sub_81DB52C(gStringVar1);
        DisplayPartyPokemonBarDetail(structPtr->windowId, gStringVar1, 0, structPtr->unk0->unk4);
        DisplayPartyPokemonLevel(gUnknown_02022FF8[actualSlot].level, structPtr);
        DisplayPartyPokemonGender(gUnknown_02022FF8[actualSlot].gender, gUnknown_02022FF8[actualSlot].species, gUnknown_02022FF8[actualSlot].nickname, structPtr);
        DisplayPartyPokemonHP(gUnknown_02022FF8[actualSlot].hp, structPtr);
        DisplayPartyPokemonMaxHP(gUnknown_02022FF8[actualSlot].maxhp, structPtr);
        DisplayPartyPokemonHPBar(gUnknown_02022FF8[actualSlot].hp, gUnknown_02022FF8[actualSlot].maxhp, structPtr);
    }
}

static bool8 RenderPartyMenuBoxes(void)
{
    RenderPartyMenuBox(gUnknown_0203CEC4->data[0]);
    if (++gUnknown_0203CEC4->data[0] == 6)
        return 1;
    else
        return 0;
}

static u8* GetPartyMiscGraphicsTile(u16 tileId)
{
    return &gUnknown_0203CEE0[tileId << 5];
}

static void party_menu_add_per_mon_objects_internal(u8 slot)
{
    u8 actualSlot;

    if (gUnknown_0203CEC8.unk8_0 == 5 && slot > 2)
    {
        u8 status;
        actualSlot = slot - 3;

        if (gUnknown_02022FF8[actualSlot].species != 0)
        {
            party_menu_link_mon_icon_anim(gUnknown_02022FF8[actualSlot].species, gUnknown_02022FF8[actualSlot].personality, &gUnknown_0203CEDC[slot], 0, 0);
            party_menu_link_mon_held_item_object(gUnknown_02022FF8[actualSlot].species, gUnknown_02022FF8[actualSlot].heldItem, &gUnknown_0203CEDC[slot]);
            party_menu_link_mon_pokeball_object(gUnknown_02022FF8[actualSlot].species, &gUnknown_0203CEDC[slot]);
            if (gUnknown_02022FF8[actualSlot].hp == 0)
                status = AILMENT_FNT;
            else
                status = pokemon_ailments_get_primary(gUnknown_02022FF8[actualSlot].status);
            party_menu_link_mon_status_condition_object(gUnknown_02022FF8[actualSlot].species, status, &gUnknown_0203CEDC[slot]);
        }
    }
    else if (GetMonData(&gPlayerParty[slot], 11) != 0)
    {
        party_menu_icon_anim(&gPlayerParty[slot], &gUnknown_0203CEDC[slot], slot);
        party_menu_held_item_object(&gPlayerParty[slot], &gUnknown_0203CEDC[slot]);
        party_menu_pokeball_object(&gPlayerParty[slot], &gUnknown_0203CEDC[slot]);
        party_menu_status_condition_object(&gPlayerParty[slot], &gUnknown_0203CEDC[slot]);
    }
}

static bool8 party_menu_add_per_mon_objects(void)
{
    party_menu_add_per_mon_objects_internal(gUnknown_0203CEC4->data[0]);
    if (++gUnknown_0203CEC4->data[0] == 6)
        return 1;
    else
        return 0;
}

static void sub_81B0F28(void)
{
    if (gUnknown_0203CEC8.unk8_0 == 5)
    {
        FillBgTilemapBufferRect(1, 14, 23, 17, 7, 2, 1);
    }
    else
    {
        if (gUnknown_0203CEC4->unk8_0)
        {
            gUnknown_0203CEC4->unk8_2 = sub_81B5F74(0xBF, 0x88);
            sub_81B120C();
            gUnknown_0203CEC4->unk9_0 = sub_81B5F74(0xBF, 0x98);
        }
        else
        {
            gUnknown_0203CEC4->unk9_0 = sub_81B5F34(0xC6, 0x94);
        }
        sub_81B0FCC(gUnknown_0203CEC8.slotId, 1);
    }
}

void sub_81B0FCC(u8 slot, u8 b)
{
    u8 spriteId;

    switch (slot)
    {
    default:
        if (GetMonData(&gPlayerParty[slot], 11) != 0)
        {
            UpdateSelectedPartyBox(&gUnknown_0203CEDC[slot], GetPartyBoxPalBitfield(slot, b));
            AnimateSelectedPartyIcon(gUnknown_0203CEDC[slot].monSpriteId, b);
            sub_81B5F98(gUnknown_0203CEDC[slot].pokeballSpriteId, b);
        }
        return;
    case 6:
        if (b == 0)
            sub_8199C30(1, 23, 16, 7, 2, 1);
        else
            sub_8199C30(1, 23, 16, 7, 2, 2);
        spriteId = gUnknown_0203CEC4->unk8_2;
        break;
    case 7:
        if (!gUnknown_0203CEC4->unk8_0)
        {
            if (b == 0)
                sub_8199C30(1, 23, 17, 7, 2, 1);
            else
                sub_8199C30(1, 23, 17, 7, 2, 2);
        }
        else if (b == 0)
        {
            sub_8199C30(1, 23, 18, 7, 2, 1);
        }
        else
        {
            sub_8199C30(1, 23, 18, 7, 2, 2);
        }
        spriteId = gUnknown_0203CEC4->unk9_0;
        break;
    }
    sub_81B5F98(spriteId, b);
    schedule_bg_copy_tilemap_to_vram(1);
}

static u8 GetPartyBoxPalBitfield(u8 slot, u8 b)
{
    u8 returnVar = 0;

    if (b == 1)
        returnVar |= 1;
    if (GetMonData(&gPlayerParty[slot], 57) == 0)
        returnVar |= 2;
    if (PartyBoxPal_ParnterOrDisqualifiedInArena(slot) == 1)
        returnVar |= 8;
    if (gUnknown_0203CEC8.unkB == 9)
        returnVar |= 16;
    if (gUnknown_0203CEC8.unkB == 8)
    {
        if (slot == gUnknown_0203CEC8.slotId || slot == gUnknown_0203CEC8.unkA)
            returnVar |= 4;
    }
    if (gUnknown_0203CEC8.unkB == 10 && slot == gUnknown_0203CEC8.slotId )
        returnVar |= 32;

    return returnVar;
}

static bool8 PartyBoxPal_ParnterOrDisqualifiedInArena(u8 slot)
{
    if (gUnknown_0203CEC8.mode == 2 && (slot == 1 || slot == 4 || slot == 5))
        return 1;

    if (slot < 3 && (gBattleTypeFlags & 0x40000) && gMain.inBattle && (gBattleStruct->arenaLostPlayerMons >> sub_81B8F38(slot) & 1))
        return 1;

    return 0;
}

static void sub_81B120C(void)
{
    CopyToBgTilemapBufferRect_ChangePalette(1, gUnknown_086157C4, 23, 16, 7, 2, 17);
    CopyToBgTilemapBufferRect_ChangePalette(1, gUnknown_086157E0, 23, 18, 7, 2, 17);
    schedule_bg_copy_tilemap_to_vram(1);
}

bool8 IsMultiBattle(void)
{
    if (gBattleTypeFlags & 0x0040 && gBattleTypeFlags & 0x0001 && gBattleTypeFlags & 0x0008 && gMain.inBattle)
        return 1;
    else
        return 0;
}

static void sub_81B1288(struct Pokemon *partySlot, struct Pokemon *pokemon)
{
    struct Pokemon *temp = Alloc(sizeof(struct Pokemon));

    *temp = *partySlot;
    *partySlot = *pokemon;
    *pokemon = *temp;

    Free(temp);
}

static void sub_81B12C0(u8 taskId)
{
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
    gTasks[taskId].func = c3_0811FAB4;
}

static void c3_0811FAB4(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        if (gUnknown_0203CEC8.unk8_0 == 1)
            sub_81B9080();

        if (gUnknown_0203CEC4->exitCallback != ((void *)0))
            SetMainCallback2(gUnknown_0203CEC4->exitCallback);
        else
            SetMainCallback2(gUnknown_0203CEC8.exitCallback);

        ResetSpriteData();
        FreePartyPointers();
        DestroyTask(taskId);
    }
}

u8 GetCursorSelectionMonId(void)
{
    return gUnknown_0203CEC8.slotId;
}

u8 sub_81B1360(void)
{
    return gUnknown_0203CEC8.unk8_0;
}

void sub_81B1370(u8 taskId)
{
    if (!gPaletteFade.active && sub_81221EC() != 1)
    {
        s8 *ptr = sub_81B13EC();

        switch (PartyMenuButtonHandler(ptr))
        {
        case 1:
            sub_81B140C(taskId, ptr);
            break;
        case 2:
            sub_81B15D0(taskId, ptr);
            break;
        case 8:
            if (gUnknown_0203CEC4->unk8_0)
            {
                PlaySE(5);
                sub_81B4F88();
            }
            break;
        }
    }
}

static s8* sub_81B13EC(void)
{
    if (gUnknown_0203CEC8.unkB == 8 || gUnknown_0203CEC8.unkB == 10)
        return &gUnknown_0203CEC8.unkA;
    else
        return &gUnknown_0203CEC8.slotId;
}

static void sub_81B140C(u8 taskId, s8 *ptr)
{
    if (*ptr == 6)
    {
        gUnknown_0203CEC8.unk4(taskId);
    }
    else
    {
        switch (gUnknown_0203CEC8.unkB - 3)
        {
        case 7:
            if (sub_81B15A4((u8*)ptr))
            {
                sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
                sub_81615A8(taskId);
            }
            break;
        case 0:
            if (sub_81B15A4((u8*)ptr))
            {
                if (gUnknown_0203CEC8.unk8_0 == 1)
                    gUnknown_0203CEC4->exitCallback = sub_81B9140;

                sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
                gUnknown_03006328(taskId, sub_81B6794);
            }
            break;
        case 9:
            if (sub_81B15A4((u8*)ptr))
            {
                PlaySE(5);
                sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
                sub_81B7E4C(taskId);
            }
            break;
        case 4:
            if (sub_81B15A4((u8*)ptr))
            {
                PlaySE(5);
                sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
                sub_81B8474(taskId);
            }
            break;
        case 2:
        case 3:
            if (sub_81B15A4((u8*)ptr))
            {
                PlaySE(5);
                sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
                sub_81B7FAC(taskId);
            }
            break;
        case 5:
            PlaySE(5);
            sub_81B3938(taskId);
            break;
        case 8:
            PlaySE(5);
            sub_81B12C0(taskId);
            break;
        case 10:
            if (sub_81B15A4((u8*)ptr))
            {
                sub_81B21AC(taskId, (u8)*ptr);
            }
            break;
        default:
        case 1:
        case 6:
            PlaySE(5);
            sub_81B36FC(taskId);
            break;
        }
    }
}

static bool8 sub_81B15A4(u8 *slotPtr)
{
    if (GetMonData(&gPlayerParty[*slotPtr], 45) == 1)
    {
        PlaySE(32);
        return 0;
    }
    return 1;
}

static void sub_81B15D0(u8 taskId, s8 *ptr)
{
    switch (gUnknown_0203CEC8.unkB)
    {
    case 1:
        PlaySE(32);
        break;
    case 8:
    case 10:
        PlaySE(5);
        sub_81B407C(taskId);
        break;
    case 13:
        PlaySE(5);
        sub_81B2210(taskId);
        break;
    default:
        PlaySE(5);
        if (sub_81B1660(taskId) != 1)
        {
            if (!sub_81221AC())
                gSpecialVar_0x8004 = 7;
            gUnknown_0203CEE8 = 0;
            *ptr = 7;
            sub_81B12C0(taskId);
        }
        break;
    }
}

static bool8 sub_81B1660(u8 taskId)
{
    const u8* stringPtr = ((void *)0);

    if (gUnknown_0203CEC8.unk8_0 == 2)
        stringPtr = gText_CancelParticipation;
    else if (gUnknown_0203CEC8.unk8_0 == 4)
        stringPtr = sub_81B88BC();

    if (stringPtr == ((void *)0))
        return 0;

    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    StringExpandPlaceholders(gStringVar4, stringPtr);
    sub_81B1B5C(gStringVar4, 1);
    gTasks[taskId].func = sub_81B16D4;
    return 1;
}

static void sub_81B16D4(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B1708;
    }
}

static void sub_81B1708(u8 taskId)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        gUnknown_0203CEE8 = 0;
        gUnknown_0203CEC8.slotId = 7;
        sub_81B8558();
        sub_81B12C0(taskId);
        break;
    case -1:
        PlaySE(5);
    case 1:
        sub_81B1C1C(taskId);
        break;
    }
}

static u16 PartyMenuButtonHandler(s8 *ptr)
{
    s8 movementDir;

    switch (gMain.newAndRepeatedKeys)
    {
    case 0x0040:
        movementDir = -1;
        break;
    case 0x0080:
        movementDir = 1;
        break;
    case 0x0020:
        movementDir = -2;
        break;
    case 0x0010:
        movementDir = 2;
        break;
    default:
        switch (sub_812210C())
        {
        case 1:
            movementDir = -1;
            break;
        case 2:
            movementDir = 1;
            break;
        default:
            movementDir = 0;
            break;
        }
        break;
    }

    if (gMain.newKeys & 0x0008)
        return 8;

    if (movementDir)
    {
        UpdateCurrentPartySelection(ptr, movementDir);
        return 0;
    }

    if ((gMain.newKeys & 0x0001) && *ptr == 7)
        return 2;

    return gMain.newKeys & (0x0001 | 0x0002);
}

static void UpdateCurrentPartySelection(s8 *ptr, s8 movementDir)
{
    s8 slot = *ptr;
    u8 mode = gUnknown_0203CEC8.mode;

    if (mode == 0)
        SetNewPartySelectTarget1(ptr, movementDir);
    else
        SetNewPartySelectTarget2(ptr, movementDir);

    if (*ptr != slot)
    {
        PlaySE(5);
        sub_81B0FCC(slot, 0);
        sub_81B0FCC(*ptr, 1);
    }
}

static void SetNewPartySelectTarget1(s8 *ptr, s8 b)
{
    switch (b)
    {
    case -1:
        if (*ptr == 0)
        {
            *ptr = 7;
        }
        else if (*ptr == 6)
        {
            *ptr = gPlayerPartyCount - 1;
        }
        else if (*ptr == 7)
        {
            if (gUnknown_0203CEC4->unk8_0)
                *ptr = 6;
            else
                *ptr = gPlayerPartyCount - 1;
        }
        else
        {
            (*ptr)--;
        }
        break;
    case 1:
        if (*ptr == 7)
        {
            *ptr = 0;
        }
        else
        {
            if (*ptr == gPlayerPartyCount - 1)
            {
                if (gUnknown_0203CEC4->unk8_0)
                    *ptr = 6;
                else
                    *ptr = 7;
            }
            else
            {
                (*ptr)++;
            }
        }
        break;
    case 2:
        if (gPlayerPartyCount != 1 && *ptr == 0)
        {
            if (gUnknown_0203CEC4->unk8_1 == 0)
                *ptr = 1;
            else
                *ptr = gUnknown_0203CEC4->unk8_1;
        }
        break;
    case -2:
        if (*ptr != 0 && *ptr != 6 && *ptr != 7)
        {
            gUnknown_0203CEC4->unk8_1 = *ptr;
            *ptr = 0;
        }
        break;
    }
}

static void SetNewPartySelectTarget2(s8 *ptr, s8 b)
{
    s8 unk2 = b;

    switch (b)
    {
    case -1:
        if (*ptr == 0)
        {
            *ptr = 7;
            break;
        }
        else if (*ptr == 6)
        {
            *ptr = gPlayerPartyCount - 1;
            break;
        }
        else if (*ptr == 7)
        {
            if (gUnknown_0203CEC4->unk8_0)
            {
                *ptr = 6;
                break;
            }
            (*ptr)--;
        }
        unk2 = sub_81B1B00(*ptr, unk2);
        if (unk2 != -1)
            *ptr = unk2;
        break;
    case 1:
        if (*ptr == 6)
        {
            *ptr = 7;
        }
        else if (*ptr == 7)
        {
            *ptr = 0;
        }
        else
        {
            unk2 = sub_81B1B00(*ptr, 1);
            if (unk2 == -1)
            {
                if (gUnknown_0203CEC4->unk8_0)
                    *ptr = 6;
                else
                    *ptr = 7;
            }
            else
            {
                *ptr = unk2;
            }
        }
        break;
    case 2:
        if (*ptr == 0)
        {
            if (gUnknown_0203CEC4->unk8_1 == 3)
            {
                if (GetMonData(&gPlayerParty[3], 11) != 0)
                    *ptr = 3;
            }
            else if (GetMonData(&gPlayerParty[2], 11) != 0)
            {
                *ptr = 2;
            }
        }
        else if (*ptr == 1)
        {
            if (gUnknown_0203CEC4->unk8_1 == 5)
            {
                if (GetMonData(&gPlayerParty[5], 11) != 0)
                    *ptr = 5;
            }
            else if (GetMonData(&gPlayerParty[4], 11) != 0)
            {
                *ptr = 4;
            }
        }
        break;
    case -2:
        if (*ptr == 2 || *ptr == 3)
        {
            gUnknown_0203CEC4->unk8_1 = *ptr;
            *ptr = 0;
        }
        else if (*ptr == 4 || *ptr == 5)
        {
            gUnknown_0203CEC4->unk8_1 = *ptr;
            *ptr = 1;
        }
        break;
    }
}

static s8 sub_81B1B00(s8 a, s8 b)
{
    while (1)
    {
        a += b;
        if ((u8)a >= 6)
            return -1;
        if (GetMonData(&gPlayerParty[a], 11) != 0)
            return a;
    }
}

u8* GetMonNickname(struct Pokemon *mon, u8 *dest)
{
    GetMonData(mon, 2, dest);
    return StringGetEnd10(dest);
}

u8 sub_81B1B5C(const u8* str, u8 b)
{
    u8 taskId;

    sub_81B3300(str);
    taskId = CreateTask(sub_81B1B8C, 1);
    gTasks[taskId].data[0] = b;
    return taskId;
}

static void sub_81B1B8C(u8 taskId)
{
    if (RunTextPrintersRetIsActive(6) != 1)
    {
        if (gTasks[taskId].data[0] == 0)
        {
            ClearStdWindowAndFrameToTransparent(6, 0);
            ClearWindowTilemap(6);
        }
        DestroyTask(taskId);
    }
}

bool8 sub_81B1BD4(void)
{
    return FuncIsActiveTask(sub_81B1B8C);
}

static void sub_81B1BE8(u8 taskId)
{
    if (sub_81221EC() != 1)
    {
        display_pokemon_menu_message(0);
        gTasks[taskId].func = sub_81B1370;
    }
}

static void sub_81B1C1C(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        ClearStdWindowAndFrameToTransparent(6, 0);
        ClearWindowTilemap(6);
        if (sub_81221AC() == 1)
        {
            gTasks[taskId].func = sub_81B1BE8;
        }
        else
        {
            display_pokemon_menu_message(0);
            gTasks[taskId].func = sub_81B1370;
        }
    }
}

static void sub_81B1C84(struct Pokemon *mon, u16 item, u8 c, u8 unused)
{
    GetMonNickname(mon, gStringVar1);
    CopyItemName(item, gStringVar2);
    StringExpandPlaceholders(gStringVar4, gText_PkmnWasGivenItem);
    sub_81B1B5C(gStringVar4, c);
    schedule_bg_copy_tilemap_to_vram(2);
}

static void sub_81B1CD0(struct Pokemon *mon, u16 item, u8 c)
{
    GetMonNickname(mon, gStringVar1);
    CopyItemName(item, gStringVar2);
    StringExpandPlaceholders(gStringVar4, gText_ReceivedItemFromPkmn);
    sub_81B1B5C(gStringVar4, c);
    schedule_bg_copy_tilemap_to_vram(2);
}

static void sub_81B1D1C(struct Pokemon *mon, u16 item, u8 c)
{
    GetMonNickname(mon, gStringVar1);
    CopyItemName(item, gStringVar2);
    StringExpandPlaceholders(gStringVar4, gText_SwitchPkmnItem);
    sub_81B1B5C(gStringVar4, c);
    schedule_bg_copy_tilemap_to_vram(2);
}

static void sub_81B1D68(u16 item, u16 item2, u8 c)
{
    CopyItemName(item, gStringVar1);
    CopyItemName(item2, gStringVar2);
    StringExpandPlaceholders(gStringVar4, gText_SwitchedPkmnItem);
    sub_81B1B5C(gStringVar4, c);
    schedule_bg_copy_tilemap_to_vram(2);
}

static void sub_81B1DB8(struct Pokemon *mon, u16 item)
{
    u8 itemBytes[2];

    if (ItemIsMail(item) == 1)
    {
        if (GiveMailToMon(mon, item) == 0xFF)
            return;
    }
    itemBytes[0] = item;
    itemBytes[1] = item >> 8;
    SetMonData(mon, 12, itemBytes);
}

static u8 TryTakeMonItem(struct Pokemon* mon)
{
    u16 item = GetMonData(mon, 12);

    if (item == 0)
        return 0;
    if (AddBagItem(item, 1) == 0)
        return 1;

    item = 0;
    SetMonData(mon, 12, &item);
    return 2;
}

static void pokemon_item_not_removed(u16 itemUnused)
{
    StringExpandPlaceholders(gStringVar4, gText_BagFullCouldNotRemoveItem);
}

static void sub_81B1E60(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    data[0] += data[2];
    data[3]--;
    SetMonData(&gPlayerParty[data[4]], 57, &data[0]);
    DisplayPartyPokemonHPCheck(&gPlayerParty[data[4]], &gUnknown_0203CEDC[data[4]], 1);
    DisplayPartyPokemonHPBarCheck(&gPlayerParty[data[4]], &gUnknown_0203CEDC[data[4]]);
    if (data[3] == 0 || data[0] == 0 || data[0] == data[1])
    {
        if (data[0] > data[5])
            ConvertIntToDecimalStringN(gStringVar2, data[0] - data[5], 0, 3);
        SwitchTaskToFollowupFunc(taskId);
    }
}

void sub_81B1F18(u8 taskId, u8 slot, s8 c, s16 HPDifference, TaskFunc func)
{
    struct Pokemon *mon = &gPlayerParty[slot];
    s16 *data = gTasks[taskId].data;

    data[0] = GetMonData(mon, 57);
    data[1] = GetMonData(mon, 58);
    data[2] = c;
    data[3] = HPDifference;
    data[4] = slot;
    data[5] = data[0];
    SetTaskFuncWithFollowupFunc(taskId, sub_81B1E60, func);
}

static void sub_81B1FA8(u8 taskId, u8 b, u32 hp)
{
    s16 *data = gTasks[taskId].data;

    switch (b)
    {
        case 0:
            data[0] = hp;
            data[5] = hp;
            break;
        case 1:
            data[1] = hp;
            break;
        case 2:
            data[2] = hp;
            break;
        case 3:
            data[3] = hp;
            break;
        case 4:
            data[4] = hp;
            break;
        case 5:
            SetTaskFuncWithFollowupFunc(taskId, sub_81B1E60, (TaskFunc)hp);
            break;
    }
}

u8 pokemon_ailments_get_primary(u32 status)
{
    if (status & (0x8 | 0x80))
        return AILMENT_PSN;
    if (status & 0x40)
        return AILMENT_PRZ;
    if (status & 0x7)
        return AILMENT_SLP;
    if (status & 0x20)
        return AILMENT_FRZ;
    if (status & 0x10)
        return AILMENT_BRN;
    return AILMENT_NONE;
}

u8 GetMonAilment(struct Pokemon *mon)
{
    u8 ailment;

    if (GetMonData(mon, 57) == 0)
        return AILMENT_FNT;
    ailment = pokemon_ailments_get_primary(GetMonData(mon, 55));
    if (ailment != AILMENT_NONE)
        return ailment;
    if (CheckPartyPokerus(mon, 0))
        return AILMENT_PKRS;
    return AILMENT_NONE;
}

static void sub_81B209C(void)
{
    u16 *ptr;

    if (gUnknown_0203CEC8.unk8_0 == 11)
    {
        u8 i;

        ptr = &gUnknown_0203CEC8.unkE;
        gUnknown_0203CEC8.unkE = 0;
        if (gSpecialVar_0x8005 == 0)
        {
            for (i = 0; i < gPlayerPartyCount; i++)
                *ptr += sub_81B2134(&gPlayerParty[i]) << i;
        }
        else
        {
            for (i = 0; i < gPlayerPartyCount; i++)
                *ptr += sub_81B2164(&gPlayerParty[i]) << i;
        }
    }
}

static bool16 sub_81B2134(struct Pokemon *mon)
{
    if (GetMonData(mon, 45) != 1 && sub_802C908(GetMonData(mon, 11)))
        return 1;
    return 0;
}



static bool16 sub_81B2164(struct Pokemon *mon)
{
    if (GetMonData(mon, 45) != 1 && GetMonData(mon, 11) == 85)
        return 1;
    return 0;
}

static bool8 sub_81B218C(u8 slot)
{
    if (!((gUnknown_0203CEC8.unkE >> slot) & 1))
        return 0;
    return 1;
}

static void sub_81B21AC(u8 taskId, u8 slot)
{
    if (sub_81B218C(slot) == 1)
    {
        PlaySE(5);
        gSpecialVar_0x8004 = slot;
        sub_81B12C0(taskId);
    }
    else
    {
        PlaySE(32);
        sub_81B1B5C(gText_PkmnCantParticipate, 0);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = sub_81B1C1C;
    }
}

static void sub_81B2210(u8 taskId)
{
    sub_81B1B5C(gText_CancelParticipation, 1);
    schedule_bg_copy_tilemap_to_vram(2);
    gTasks[taskId].func = sub_81B2248;
}

static void sub_81B2248(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B227C;
    }
}

static void sub_81B227C(u8 taskId)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        gSpecialVar_0x8004 = 7;
        sub_81B12C0(taskId);
        break;
    case -1:
        PlaySE(5);
    case 1:
        gTasks[taskId].func = sub_81B1C1C;
        break;
    }
}

static u8 CanMonLearnTMTutor(struct Pokemon *mon, u16 item, u8 tutor)
{
    u16 move;

    if (GetMonData(mon, 45))
        return CANNOT_LEARN_MOVE_IS_EGG;

    if (item >= 289)
    {
        if (CanMonLearnTMHM(mon, item - 289))
            move = ItemIdToBattleMoveId(item);
        else
            return CANNOT_LEARN_MOVE;
        do {} while (0);
    }
    else if (CanLearnTutorMove(GetMonData(mon, 11), tutor) == 0)
    {
        return CANNOT_LEARN_MOVE;
    }
    else
    {
        move = GetTutorMove(tutor);
    }

    if (MonKnowsMove(mon, move) == 1)
        return ALREADY_KNOWS_MOVE;
    else
        return CAN_LEARN_MOVE;
}

static u16 GetTutorMove(u8 tutor)
{
    return gTutorMoves[tutor];
}

static bool8 CanLearnTutorMove(u16 species, u8 tutor)
{
    if (sTutorLearnsets[species] & (1 << tutor))
        return 1;
    else
        return 0;
}

static void sub_81B239C(u8 a)
{
    u8 i;

    switch (a)
    {
    case 0:
        InitWindows(gUnknown_08615810);
        break;
    case 1:
        InitWindows(gUnknown_08615850);
        break;
    case 2:
        InitWindows(gUnknown_08615890);
        break;
    default:
        InitWindows(gUnknown_086158D0);
        break;
    }
    DeactivateAllTextPrinters();
    for (i = 0; i < 6; i++)
        FillWindowPixelBuffer(i, ((0) | ((0) << 4)));
    LoadUserWindowBorderGfx(0, 0x4F, 0xD0);
    LoadPalette(GetOverworldTextboxPalettePtr(), 0xE0, 0x20);
    LoadPalette(gUnknown_0860F074, 0xF0, 0x20);
}

static void sub_81B2428(bool8 a)
{
    u8 firstWindowId;
    u8 windowId;
    u8 offset;
    u8 mainOffset;

    if (gUnknown_0203CEC8.unk8_0 != 5)
    {
        if (a == 1)
        {
            firstWindowId = AddWindow(&gUnknown_08615918);
            FillWindowPixelBuffer(firstWindowId, ((0) | ((0) << 4)));
            mainOffset = GetStringCenterAlignXOffset(0, gMenuText_Confirm, 48);
            AddTextPrinterParameterized4(firstWindowId, 0, mainOffset, 1, 0, 0, sFontColorTable[0], -1, gMenuText_Confirm);
            PutWindowTilemap(firstWindowId);
            CopyWindowToVram(firstWindowId, 2);
            windowId = AddWindow(&gUnknown_08615910);
            offset = 0;
        }
        else
        {
            windowId = AddWindow(&gUnknown_08615908);
            offset = 3;
        }
        FillWindowPixelBuffer(windowId, ((0) | ((0) << 4)));
        if (gUnknown_0203CEC8.unk8_0 != 10)
        {
            mainOffset = GetStringCenterAlignXOffset(0, gText_Cancel, 48);
            AddTextPrinterParameterized3(windowId, 0, mainOffset + offset, 1, sFontColorTable[0], -1, gText_Cancel);
        }
        else
        {
            mainOffset = GetStringCenterAlignXOffset(0, gText_Cancel2, 48);
            AddTextPrinterParameterized3(windowId, 0, mainOffset + offset, 1, sFontColorTable[0], -1, gText_Cancel2);
        }
        PutWindowTilemap(windowId);
        CopyWindowToVram(windowId, 2);
        schedule_bg_copy_tilemap_to_vram(0);
    }
}

static u16* GetPartyMenuPaletteFromBuffer(u8 paletteId)
{
    return &gUnknown_0203CEC4->palBuffer[paletteId];
}

static void BlitBitmapToPartyWindow(u8 windowId, const u8 *b, u8 c, u8 x, u8 y, u8 width, u8 height)
{
    u8 *pixels = AllocZeroed(height * width * 32);
    u8 i, j;

    if (pixels != ((void *)0))
    {
        for (i = 0; i < height; i++)
        {
            for (j = 0; j < width; j++)
                CpuSet(GetPartyMiscGraphicsTile(b[x + j + ((y + i) * c)]), &pixels[(i * width + j) * 32], 0x00000000 | ((32)/(16/8) & 0x1FFFFF));
        }
        BlitBitmapToWindow(windowId, pixels, x * 8, y * 8, width * 8, height * 8);
        Free(pixels);
    }
}

static void BlitBitmapToPartyWindow_Default1(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 isEgg)
{
    if (width == 0 && height == 0)
    {
        width = 10;
        height = 7;
    }
    if (isEgg == 0)
        BlitBitmapToPartyWindow(windowId, sMainSlotTileNums, 10, x, y, width, height);
    else
        BlitBitmapToPartyWindow(windowId, sMainSlotTileNums_Egg, 10, x, y, width, height);
}

static void BlitBitmapToPartyWindow_Default2(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 isEgg)
{
    if (width == 0 && height == 0)
    {
        width = 18;
        height = 3;
    }
    if (isEgg == 0)
        BlitBitmapToPartyWindow(windowId, sOtherSlotsTileNums, 18, x, y, width, height);
    else
        BlitBitmapToPartyWindow(windowId, sOtherSlotsTileNums_Egg, 18, x, y, width, height);
}

static void DrawEmptySlot(u8 windowId)
{
    BlitBitmapToPartyWindow(windowId, sEmptySlotTileNums, 18, 0, 0, 18, 3);
}

static void UpdateSelectedPartyBox(struct Struct203CEDC *ptr, u8 bitfield)
{
    u8 palNum = GetWindowAttribute(ptr->windowId, WINDOW_PALETTE_NUM) * 16;

    if (bitfield & 0x40)
    {
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AF1[0]), gUnknown_08615AC0[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AF1[1]), gUnknown_08615AC0[1] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AF1[2]), gUnknown_08615AC0[2] + palNum, 2);
    }
    else if (bitfield & 0x20)
    {
        if (bitfield & 1)
        {
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[0]), gUnknown_08615ABA[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[1]), gUnknown_08615ABA[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[2]), gUnknown_08615ABA[2] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[0]), gUnknown_08615ABD[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[1]), gUnknown_08615ABD[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[2]), gUnknown_08615ABD[2] + palNum, 2);
        }
        else
        {
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[0]), gUnknown_08615ABA[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[1]), gUnknown_08615ABA[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[2]), gUnknown_08615ABA[2] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[0]), gUnknown_08615ABD[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[1]), gUnknown_08615ABD[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[2]), gUnknown_08615ABD[2] + palNum, 2);
        }
    }
    else if (bitfield & 0x10)
    {
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[0]), gUnknown_08615ABA[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[1]), gUnknown_08615ABA[1] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[2]), gUnknown_08615ABA[2] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[0]), gUnknown_08615ABD[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[1]), gUnknown_08615ABD[1] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[2]), gUnknown_08615ABD[2] + palNum, 2);
    }
    else if (bitfield & 4)
    {
        if (bitfield & 1)
        {
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[0]), gUnknown_08615ABA[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[1]), gUnknown_08615ABA[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[2]), gUnknown_08615ABA[2] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[0]), gUnknown_08615ABD[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[1]), gUnknown_08615ABD[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[2]), gUnknown_08615ABD[2] + palNum, 2);
        }
        else
        {
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[0]), gUnknown_08615ABA[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[1]), gUnknown_08615ABA[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADF[2]), gUnknown_08615ABA[2] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[0]), gUnknown_08615ABD[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[1]), gUnknown_08615ABD[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEE[2]), gUnknown_08615ABD[2] + palNum, 2);
        }
    }
    else if (bitfield & 2)
    {
        if (bitfield & 1)
        {
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADC[0]), gUnknown_08615ABA[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADC[1]), gUnknown_08615ABA[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ADC[2]), gUnknown_08615ABA[2] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[0]), gUnknown_08615ABD[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[1]), gUnknown_08615ABD[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[2]), gUnknown_08615ABD[2] + palNum, 2);
        }
        else
        {
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD3[0]), gUnknown_08615ABA[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD3[1]), gUnknown_08615ABA[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD3[2]), gUnknown_08615ABA[2] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE8[0]), gUnknown_08615ABD[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE8[1]), gUnknown_08615ABD[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE8[2]), gUnknown_08615ABD[2] + palNum, 2);
        }
    }
    else if (bitfield & 8)
    {
        if (bitfield & 1)
        {
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD9[0]), gUnknown_08615ABA[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD9[1]), gUnknown_08615ABA[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD9[2]), gUnknown_08615ABA[2] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[0]), gUnknown_08615ABD[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[1]), gUnknown_08615ABD[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[2]), gUnknown_08615ABD[2] + palNum, 2);
        }
        else
        {
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD0[0]), gUnknown_08615ABA[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD0[1]), gUnknown_08615ABA[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD0[2]), gUnknown_08615ABA[2] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE5[0]), gUnknown_08615ABD[0] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE5[1]), gUnknown_08615ABD[1] + palNum, 2);
            LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE5[2]), gUnknown_08615ABD[2] + palNum, 2);
        }
    }
    else if (bitfield & 1)
    {
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD6[0]), gUnknown_08615ABA[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD6[1]), gUnknown_08615ABA[1] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AD6[2]), gUnknown_08615ABA[2] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[0]), gUnknown_08615ABD[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[1]), gUnknown_08615ABD[1] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AEB[2]), gUnknown_08615ABD[2] + palNum, 2);
    }
    else
    {
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ACD[0]), gUnknown_08615ABA[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ACD[1]), gUnknown_08615ABA[1] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ACD[2]), gUnknown_08615ABA[2] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE2[0]), gUnknown_08615ABD[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE2[1]), gUnknown_08615ABD[1] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AE2[2]), gUnknown_08615ABD[2] + palNum, 2);
    }
}

static void DisplayPartyPokemonBarDetail(u8 windowId, const u8 *str, u8 color, const u8 *align)
{
    AddTextPrinterParameterized3(windowId, 0, align[0], align[1], sFontColorTable[color], 0, str);
}

static void DisplayPartyPokemonNickname(struct Pokemon *mon, struct Struct203CEDC *ptr, u8 c)
{
    u8 nickname[10 + 1];

    if (GetMonData(mon, 11) != 0)
    {
        if (c == 1)
            ptr->unk0->unk0(ptr->windowId, ptr->unk0->unk4[0] >> 3, ptr->unk0->unk4[1] >> 3, ptr->unk0->unk4[2] >> 3, ptr->unk0->unk4[3] >> 3, 0);
        GetMonNickname(mon, nickname);
        DisplayPartyPokemonBarDetail(ptr->windowId, nickname, 0, ptr->unk0->unk4);
    }
}

static void DisplayPartyPokemonLevelCheck(struct Pokemon *mon, struct Struct203CEDC *ptr, u8 c)
{
    if (GetMonData(mon, 11) != 0)
    {
        u8 ailment = GetMonAilment(mon);
        if (ailment == AILMENT_NONE || ailment == AILMENT_PKRS)
        {
            if (c != 0)
                ptr->unk0->unk0(ptr->windowId, ptr->unk0->unk4[4] >> 3, (ptr->unk0->unk4[5] >> 3) + 1, ptr->unk0->unk4[6] >> 3, ptr->unk0->unk4[7] >> 3, 0);
            if (c != 2)
                DisplayPartyPokemonLevel(GetMonData(mon, 56), ptr);
        }
    }
}

static void DisplayPartyPokemonLevel(u8 level, struct Struct203CEDC *ptr)
{
    ConvertIntToDecimalStringN(gStringVar2, level, 0, 3);
    StringCopy(gStringVar1, gText_LevelSymbol);
    StringAppend(gStringVar1, gStringVar2);
    DisplayPartyPokemonBarDetail(ptr->windowId, gStringVar1, 0, &ptr->unk0->unk4[4]);
}

static void DisplayPartyPokemonGenderNidoranCheck(struct Pokemon *mon, struct Struct203CEDC *ptr, u8 c)
{
    u8 nickname[10 + 1];

    if (c == 1)
        ptr->unk0->unk0(ptr->windowId, ptr->unk0->unk4[8] >> 3, (ptr->unk0->unk4[9] >> 3) + 1, ptr->unk0->unk4[10] >> 3, ptr->unk0->unk4[11] >> 3, 0);
    GetMonNickname(mon, nickname);
    DisplayPartyPokemonGender(GetMonGender(mon), GetMonData(mon, 11), nickname, ptr);
}

static void DisplayPartyPokemonGender(u8 gender, u16 species, u8 *nickname, struct Struct203CEDC *ptr)
{
    u8 palNum = GetWindowAttribute(ptr->windowId, WINDOW_PALETTE_NUM) * 16;

    if (species == 0)
        return;
    if ((species == 32 || species == 29) && StringCompare(nickname, gSpeciesNames[species]) == 0)
        return;
    switch (gender)
    {
    case 0x00:
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AC3[0]), gUnknown_08615AB6[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AC3[1]), gUnknown_08615AB6[1] + palNum, 2);
        DisplayPartyPokemonBarDetail(ptr->windowId, gText_MaleSymbol, 2, &ptr->unk0->unk4[8]);
        break;
    case 0xFE:
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AC5[0]), gUnknown_08615AB6[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AC5[1]), gUnknown_08615AB6[1] + palNum, 2);
        DisplayPartyPokemonBarDetail(ptr->windowId, gText_FemaleSymbol, 2, &ptr->unk0->unk4[8]);
        break;
    }
}

static void DisplayPartyPokemonHPCheck(struct Pokemon *mon, struct Struct203CEDC *ptr, u8 c)
{
    if (GetMonData(mon, 11) != 0)
    {
        if (c != 0)
            ptr->unk0->unk0(ptr->windowId, ptr->unk0->unk4[12] >> 3, (ptr->unk0->unk4[13] >> 3) + 1, ptr->unk0->unk4[14] >> 3, ptr->unk0->unk4[15] >> 3, 0);
        if (c != 2)
            DisplayPartyPokemonHP(GetMonData(mon, 57), ptr);
    }
}

static void DisplayPartyPokemonHP(u16 hp, struct Struct203CEDC *ptr)
{
    u8 *strOut = ConvertIntToDecimalStringN(gStringVar1, hp, 1, 3);

    strOut[0] = 0xBA;
    strOut[1] = 0xFF;

    DisplayPartyPokemonBarDetail(ptr->windowId, gStringVar1, 0, &ptr->unk0->unk4[12]);
}

static void DisplayPartyPokemonMaxHPCheck(struct Pokemon *mon, struct Struct203CEDC *ptr, u8 c)
{
    if (GetMonData(mon, 11) != 0)
    {
        if (c != 0)
            ptr->unk0->unk0(ptr->windowId, (ptr->unk0->unk4[16] >> 3) + 1, (ptr->unk0->unk4[17] >> 3) + 1, ptr->unk0->unk4[18] >> 3, ptr->unk0->unk4[19] >> 3, 0);
        if (c != 2)
            DisplayPartyPokemonMaxHP(GetMonData(mon, 58), ptr);
    }
}

static void DisplayPartyPokemonMaxHP(u16 maxhp, struct Struct203CEDC *ptr)
{
    ConvertIntToDecimalStringN(gStringVar2, maxhp, 1, 3);
    StringCopy(gStringVar1, gText_Slash);
    StringAppend(gStringVar1, gStringVar2);
    DisplayPartyPokemonBarDetail(ptr->windowId, gStringVar1, 0, &ptr->unk0->unk4[16]);
}

static void DisplayPartyPokemonHPBarCheck(struct Pokemon *mon, struct Struct203CEDC *ptr)
{
    if (GetMonData(mon, 11) != 0)
        DisplayPartyPokemonHPBar(GetMonData(mon, 57), GetMonData(mon, 58), ptr);
}

static void DisplayPartyPokemonHPBar(u16 hp, u16 maxhp, struct Struct203CEDC *ptr)
{
    u8 palNum = GetWindowAttribute(ptr->windowId, WINDOW_PALETTE_NUM) * 16;
    u8 hpFraction;

    switch (GetHPBarLevel(hp, maxhp))
    {
    case HP_BAR_GREEN:
    case HP_BAR_FULL:
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AC7[0]), gUnknown_08615AB8[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AC7[1]), gUnknown_08615AB8[1] + palNum, 2);
        break;
    case HP_BAR_YELLOW:
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AC9[0]), gUnknown_08615AB8[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615AC9[1]), gUnknown_08615AB8[1] + palNum, 2);
        break;
    default:
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ACB[0]), gUnknown_08615AB8[0] + palNum, 2);
        LoadPalette(GetPartyMenuPaletteFromBuffer(gUnknown_08615ACB[1]), gUnknown_08615AB8[1] + palNum, 2);
        break;
    }

    hpFraction = GetScaledHPFraction(hp, maxhp, ptr->unk0->unk4[22]);
    FillWindowPixelRect(ptr->windowId, gUnknown_08615AB8[1], ptr->unk0->unk4[20], ptr->unk0->unk4[21], hpFraction, 1);
    FillWindowPixelRect(ptr->windowId, gUnknown_08615AB8[0], ptr->unk0->unk4[20], ptr->unk0->unk4[21] + 1, hpFraction, 2);
    if (hpFraction != ptr->unk0->unk4[22])
    {

        FillWindowPixelRect(ptr->windowId, 0x0D, ptr->unk0->unk4[20] + hpFraction, ptr->unk0->unk4[21], ptr->unk0->unk4[22] - hpFraction, 1);
        FillWindowPixelRect(ptr->windowId, 0x02, ptr->unk0->unk4[20] + hpFraction, ptr->unk0->unk4[21] + 1, ptr->unk0->unk4[22] - hpFraction, 2);
    }
    CopyWindowToVram(ptr->windowId, 2);
}

static void DisplayPartyPokemonOtherText(u8 stringID, struct Struct203CEDC *ptr, u8 c)
{
    if (c != 0)
    {
        int unk = ((ptr->unk0->unk1C % 8) + ptr->unk0->unk1E + 7) / 8;
        int unk2 = ((ptr->unk0->unk1D % 8) + ptr->unk0->unk1F + 7) / 8;
        ptr->unk0->unk0(ptr->windowId, ptr->unk0->unk1C >> 3, ptr->unk0->unk1D >> 3, unk, unk2, 1);
    }
    if (c != 2)
        AddTextPrinterParameterized3(ptr->windowId, 1, ptr->unk0->unk1C, ptr->unk0->unk1D, sFontColorTable[0], 0, sSelectionStringTable[stringID]);
}

static void sub_81B302C(u8 *ptr)
{
    if (*ptr != 0xFF)
    {
        ClearStdWindowAndFrameToTransparent(*ptr, 0);
        RemoveWindow(*ptr);
        *ptr = 0xFF;
        schedule_bg_copy_tilemap_to_vram(2);
    }
}

void display_pokemon_menu_message(u32 stringID)
{
    u8 *windowPtr = &gUnknown_0203CEC4->windowId[1];

    if (*windowPtr != 0xFF)
        sub_81B302C(windowPtr);

    if (stringID != 0x7F)
    {
        switch (stringID)
        {
        case 21:
            *windowPtr = AddWindow(&gUnknown_08615928);
            break;
        case 24:
            *windowPtr = AddWindow(&gUnknown_08615930);
            break;
        case 25:
            *windowPtr = AddWindow(&gUnknown_08615938);
            break;
        case 22:
        case 23:
            *windowPtr = AddWindow(&gUnknown_08615940);
            break;
        case 26:
            *windowPtr = AddWindow(&gUnknown_08615948);
            break;
        default:
            *windowPtr = AddWindow(&gUnknown_08615920);
            break;
        }
        if (stringID == 0)
        {
            if (gUnknown_0203CEC4->unk8_0)
                stringID = 2;
            else if (sub_81B314C() == 0)
                stringID = 1;
        }
        DrawStdFrameWithCustomTileAndPalette(*windowPtr, 0, 0x4F, 0xD);
        StringExpandPlaceholders(gStringVar4, sActionStringTable[stringID]);
        AddTextPrinterParameterized(*windowPtr, 1, gStringVar4, 0, 1, 0, 0);
        schedule_bg_copy_tilemap_to_vram(2);
    }
}

static bool8 sub_81B314C(void)
{
    struct Pokemon *party = gPlayerParty;
    u8 i;
    u8 j = 0;

    if (gUnknown_0203CEC8.unkB == 1)
        return 1;

    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&party[i], 11) != 0 && (GetMonData(&party[i], 57) != 0 || GetMonData(&party[i], 45)))
            j++;
        if (j > 1)
            return 1;
    }
    return 0;
}

static u8 sub_81B31B0(u8 a)
{
    struct WindowTemplate window;
    u8 cursorDimension;
    u8 fontAttribute;
    u8 i;

    switch (a)
    {
    case 0:
        SetWindowTemplateFields(&window, 2, 19, 19 - (gUnknown_0203CEC4->listSize * 2), 10, gUnknown_0203CEC4->listSize * 2, 14, 0x2E9);
        break;
    case 1:
        window = gUnknown_08615950;
        break;
    case 2:
        window = gUnknown_08615958;
        break;
    default:
        window = gUnknown_08615960;
        break;
    }

    gUnknown_0203CEC4->windowId[0] = AddWindow(&window);
    DrawStdFrameWithCustomTileAndPalette(gUnknown_0203CEC4->windowId[0], 0, 0x4F, 13);
    if (a == 3)
        return gUnknown_0203CEC4->windowId[0];
    cursorDimension = GetMenuCursorDimensionByFont(1, 0);
    fontAttribute = GetFontAttribute(1, 2);

    for (i = 0; i < gUnknown_0203CEC4->listSize; i++)
    {
        u8 unk = (gUnknown_0203CEC4->actions[i] >= MENU_FIELD_MOVES) ? 4 : 3;
        AddTextPrinterParameterized4(gUnknown_0203CEC4->windowId[0], 1, cursorDimension, (i * 16) + 1, fontAttribute, 0, sFontColorTable[unk], 0, sCursorOptions[gUnknown_0203CEC4->actions[i]].text);
    }

    InitMenuInUpperLeftCorner(gUnknown_0203CEC4->windowId[0], gUnknown_0203CEC4->listSize, 0, 1);
    schedule_bg_copy_tilemap_to_vram(2);

    return gUnknown_0203CEC4->windowId[0];
}

static void sub_81B3300(const u8 *text)
{
    DrawStdFrameWithCustomTileAndPalette(6, 0, 0x4F, 13);
    gTextFlags.canABSpeedUpPrint = 1;
    AddTextPrinterParameterized2(6, 1, text, GetPlayerTextSpeedDelay(), 0, 2, 1, 3);
}

static void sub_81B334C(void)
{
    CreateYesNoMenu(&gUnknown_08615968, 0x4F, 13, 0);
}

static u8 sub_81B3364(void)
{
    gUnknown_0203CEC4->windowId[0] = AddWindow(&gUnknown_08615970);
    DrawStdFrameWithCustomTileAndPalette(gUnknown_0203CEC4->windowId[0], 0, 0x4F, 13);
    return gUnknown_0203CEC4->windowId[0];
}

static void sub_81B3394(void)
{
    ClearWindowTilemap(gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
}

static void sub_81B33B4(struct Pokemon *mons, u8 slotId, u8 b)
{
    u8 i;

    if (b == 0)
    {
        CreateActionList(mons, slotId);
    }
    else
    {
        gUnknown_0203CEC4->listSize = sListSizeTable[b];
        for (i = 0; i < gUnknown_0203CEC4->listSize; i++)
            gUnknown_0203CEC4->actions[i] = sActionTable[b][i];
    }
}

static void CreateActionList(struct Pokemon *mons, u8 slotId)
{
    u8 i, j;

    gUnknown_0203CEC4->listSize = 0;
    AppendToList(gUnknown_0203CEC4->actions, &gUnknown_0203CEC4->listSize, MENU_SUMMARY);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; sFieldMoves[j] != 14; j++)
        {
            if (GetMonData(&mons[slotId], i + 13) == sFieldMoves[j])
            {
                AppendToList(gUnknown_0203CEC4->actions, &gUnknown_0203CEC4->listSize, j + MENU_FIELD_MOVES);
                break;
            }
        }
    }

    if (!InBattlePike())
    {
        if (GetMonData(&mons[1], 11) != 0)
            AppendToList(gUnknown_0203CEC4->actions, &gUnknown_0203CEC4->listSize, MENU_SWITCH);
        if (ItemIsMail(GetMonData(&mons[slotId], 12)))
            AppendToList(gUnknown_0203CEC4->actions, &gUnknown_0203CEC4->listSize, MENU_MAIL);
        else
            AppendToList(gUnknown_0203CEC4->actions, &gUnknown_0203CEC4->listSize, MENU_ITEM);
    }
    AppendToList(gUnknown_0203CEC4->actions, &gUnknown_0203CEC4->listSize, MENU_CANCEL1);
}

static u8 sub_81B353C(struct Pokemon *mon)
{
    u32 returnVar;

    switch (gUnknown_0203CEC8.unk8_0)
    {
    case 0:
        if (InMultiBattleRoom() == 1 || GetMonData(mon, 45))
            returnVar = 1;
        else
            returnVar = 0;
        break;
    case 1:
        returnVar = sub_81B8A2C(mon);
        break;
    case 4:
        switch (sub_81B856C(gUnknown_0203CEC8.slotId))
        {
        default:
            returnVar = 7;
            break;
        case 0:
            returnVar = 4;
            break;
        case 1:
            returnVar = 5;
            break;
        }
        break;
    case 6:
        returnVar = (GetMonData(mon, 45)) ? 7 : 6;
        break;
    case 8:
        returnVar = 10;
        break;
    case 9:
        returnVar = 11;
        break;
    case 10:
        returnVar = 12;
        break;
    case 12:
        returnVar = 13;
        break;
    default:
        returnVar = 0;
        break;
    }
    return returnVar;
}

static bool8 sub_81B3608(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 item;

    GetMonNickname(mon, gStringVar1);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    if (gUnknown_0203CEC8.unk8_0 != 12)
    {
        sub_81B33B4(gPlayerParty, gUnknown_0203CEC8.slotId, sub_81B353C(mon));
        sub_81B31B0(0);
        display_pokemon_menu_message(21);
    }
    else
    {
        item = GetMonData(mon, 12);
        if (item != 0)
        {
            sub_81B33B4(gPlayerParty, gUnknown_0203CEC8.slotId, sub_81B353C(mon));
            sub_81B31B0(1);
            CopyItemName(item, gStringVar2);
            display_pokemon_menu_message(26);
        }
        else
        {
            StringExpandPlaceholders(gStringVar4, gText_PkmnNotHolding);
            sub_81B1B5C(gStringVar4, 1);
            schedule_bg_copy_tilemap_to_vram(2);
            gTasks[taskId].func = sub_81B469C;
            return 0;
        }
    }
    return 1;
}

static void sub_81B36FC(u8 taskId)
{
    if (sub_81B3608(taskId))
    {
        gTasks[taskId].data[0] = 0xFF;
        gTasks[taskId].func = HandleMenuInput;
    }
}

static void HandleMenuInput(u8 taskId)
{
    if (!gPaletteFade.active && sub_81221EC() != 1)
    {
        s8 input;
        s16 *data = gTasks[taskId].data;

        if (gUnknown_0203CEC4->listSize <= 3)
            input = Menu_ProcessInputNoWrapAround_other();
        else
            input = ProcessMenuInput_other();

        data[0] = Menu_GetCursorPos();
        switch (input)
        {
        case -2:
            break;
        case -1:
            PlaySE(5);
            sub_81B302C(&gUnknown_0203CEC4->windowId[2]);
            sCursorOptions[gUnknown_0203CEC4->actions[gUnknown_0203CEC4->listSize - 1]].func(taskId);
            break;
        default:
            sub_81B302C(&gUnknown_0203CEC4->windowId[2]);
            sCursorOptions[gUnknown_0203CEC4->actions[input]].func(taskId);
            break;
        }
    }
}

static void CursorCb_Summary(u8 taskId)
{
    PlaySE(5);
    gUnknown_0203CEC4->exitCallback = sub_81B3828;
    sub_81B12C0(taskId);
}

static void sub_81B3828(void)
{
    if (gUnknown_0203CEC8.unk8_0 == 1)
    {
        pokemon_change_order();
        ShowPokemonSummaryScreen(PSS_MODE_UNK1, gPlayerParty, gUnknown_0203CEC8.slotId, gPlayerPartyCount - 1, sub_81B3894);
    }
    else
    {
        ShowPokemonSummaryScreen(PSS_MODE_NORMAL, gPlayerParty, gUnknown_0203CEC8.slotId, gPlayerPartyCount - 1, sub_81B3894);
    }
}

static void sub_81B3894(void)
{
    gPaletteFade.bufferTransferDisabled = 1;
    gUnknown_0203CEC8.slotId = gLastViewedMonIndex;
    InitPartyMenu(gUnknown_0203CEC8.unk8_0, 0xFF, gUnknown_0203CEC8.unkB, 1, 21, sub_81B36FC, gUnknown_0203CEC8.exitCallback);
}

static void CursorCb_Switch(u8 taskId)
{
    PlaySE(5);
    gUnknown_0203CEC8.unkB = 8;
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    display_pokemon_menu_message(3);
    sub_81B0FCC(gUnknown_0203CEC8.slotId, 1);
    gUnknown_0203CEC8.unkA = gUnknown_0203CEC8.slotId;
    gTasks[taskId].func = sub_81B1370;
}

static void sub_81B3938(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u8 windowIds[2];

    if (gUnknown_0203CEC8.unkA == gUnknown_0203CEC8.slotId)
    {
        sub_81B407C(taskId);
    }
    else
    {
        windowIds[0] = gUnknown_0203CEDC[gUnknown_0203CEC8.slotId].windowId;
        data[0] = GetWindowAttribute(windowIds[0], WINDOW_TILEMAP_LEFT);
        data[1] = GetWindowAttribute(windowIds[0], WINDOW_TILEMAP_TOP);
        data[2] = GetWindowAttribute(windowIds[0], WINDOW_WIDTH);
        data[3] = GetWindowAttribute(windowIds[0], WINDOW_HEIGHT);
        data[8] = 0;
        if (data[2] == 10)
            data[10] = -1;
        else
            data[10] = 1;
        windowIds[1] = gUnknown_0203CEDC[gUnknown_0203CEC8.unkA].windowId;
        data[4] = GetWindowAttribute(windowIds[1], WINDOW_TILEMAP_LEFT);
        data[5] = GetWindowAttribute(windowIds[1], WINDOW_TILEMAP_TOP);
        data[6] = GetWindowAttribute(windowIds[1], WINDOW_WIDTH);
        data[7] = GetWindowAttribute(windowIds[1], WINDOW_HEIGHT);
        data[9] = 0;
        if (data[6] == 10)
            data[11] = -1;
        else
            data[11] = 1;
        gUnknown_0203CEF0 = Alloc(data[2] * (data[3] << 1));
        gUnknown_0203CEF4 = Alloc(data[6] * (data[7] << 1));
        sub_8199CBC(0, gUnknown_0203CEF0, data[0], data[1], data[2], data[3]);
        sub_8199CBC(0, gUnknown_0203CEF4, data[4], data[5], data[6], data[7]);
        ClearWindowTilemap(windowIds[0]);
        ClearWindowTilemap(windowIds[1]);
        gUnknown_0203CEC8.unkB = 9;
        sub_81B0FCC(gUnknown_0203CEC8.slotId, 1);
        sub_81B0FCC(gUnknown_0203CEC8.unkA, 1);
        sub_81B3CC0(taskId);
        gTasks[taskId].func = sub_81B3D48;
    }
}

static bool8 sub_81B3AD8(s16 a, s16 b, u8 *c, u8 *d, u8 *e)
{
    if ((a + b) < 0)
        return 0;
    if (a > 31)
        return 0;

    if (a < 0)
    {
        *c = a * -1;
        *d = 0;
        *e = b + a;
    }
    else
    {
        *c = 0;
        *d = a;
        if ((a + b) > 31)
            *e = 32 - a;
        else
            *e = b;

    }
    return 1;
}

static void sub_81B3B40(const void *rectSrc, s16 a, s16 b, s16 c, s16 d, s16 e)
{
    u8 f, g, h;

    if (sub_81B3AD8(a, c, &f, &g, &h))
    {
        FillBgTilemapBufferRect_Palette0(0, 0, g, b, h, d);
        if (sub_81B3AD8(a + e, c, &f, &g, &h))
            CopyRectToBgTilemapBufferRect(0, rectSrc, f, 0, c, d, g, b, h, d, 17, 0, 0);
    }
}

static void sub_81B3C0C(struct Struct203CEDC *ptr, s16 a)
{
    gSprites[ptr->pokeballSpriteId].pos2.x += a * 8;
    gSprites[ptr->itemSpriteId].pos2.x += a * 8;
    gSprites[ptr->monSpriteId].pos2.x += a * 8;
    gSprites[ptr->statusSpriteId].pos2.x += a * 8;
}

static void sub_81B3C60(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (data[10] != 0)
        sub_81B3C0C(&gUnknown_0203CEDC[gUnknown_0203CEC8.slotId], data[10]);
    if (data[11] != 0)
        sub_81B3C0C(&gUnknown_0203CEDC[gUnknown_0203CEC8.unkA], data[11]);
}

static void sub_81B3CC0(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (data[10] != 0)
        sub_81B3B40(gUnknown_0203CEF0, data[0] + data[8], data[1], data[2], data[3], data[10]);
    if (data[11] != 0)
        sub_81B3B40(gUnknown_0203CEF4, data[4] + data[9], data[5], data[6], data[7], data[11]);
    schedule_bg_copy_tilemap_to_vram(0);
}

static void sub_81B3D48(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u16 tilemapRelatedMaybe[2];

    sub_81B3CC0(taskId);
    sub_81B3C60(taskId);
    data[8] += data[10];
    data[9] += data[11];
    tilemapRelatedMaybe[0] = data[0] + data[8];
    tilemapRelatedMaybe[1] = data[4] + data[9];
    if (tilemapRelatedMaybe[0] > 33 && tilemapRelatedMaybe[1] > 33)
    {
        data[10] *= -1;
        data[11] *= -1;
        swap_pokemon_and_oams();
        DisplayPartyPokemonData(gUnknown_0203CEC8.slotId);
        DisplayPartyPokemonData(gUnknown_0203CEC8.unkA);
        PutWindowTilemap(gUnknown_0203CEDC[gUnknown_0203CEC8.slotId].windowId);
        PutWindowTilemap(gUnknown_0203CEDC[gUnknown_0203CEC8.unkA].windowId);
        sub_8199CBC(0, gUnknown_0203CEF0, data[0], data[1], data[2], data[3]);
        sub_8199CBC(0, gUnknown_0203CEF4, data[4], data[5], data[6], data[7]);
        ClearWindowTilemap(gUnknown_0203CEDC[gUnknown_0203CEC8.slotId].windowId);
        ClearWindowTilemap(gUnknown_0203CEDC[gUnknown_0203CEC8.unkA].windowId);
        gTasks[taskId].func = sub_81B3E60;
    }
}

static void sub_81B3E60(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    sub_81B3CC0(taskId);
    sub_81B3C60(taskId);
    if (data[10] == 0 && data[11] == 0)
    {
        PutWindowTilemap(gUnknown_0203CEDC[gUnknown_0203CEC8.slotId].windowId);
        PutWindowTilemap(gUnknown_0203CEDC[gUnknown_0203CEC8.unkA].windowId);
        schedule_bg_copy_tilemap_to_vram(0);
        Free(gUnknown_0203CEF0);
        Free(gUnknown_0203CEF4);
        sub_81B407C(taskId);
    }
    else
    {
        data[8] += data[10];
        data[9] += data[11];
        if (data[8] == 0)
            data[10] = 0;
        if (data[9] == 0)
            data[11] = 0;
    }
}

static void oamt_swap_pos(u8 *spriteIdPtr1, u8 *spriteIdPtr2)
{
    u8 spriteIdBuffer = *spriteIdPtr1;
    u16 xBuffer1, yBuffer1, xBuffer2, yBuffer2;

    *spriteIdPtr1 = *spriteIdPtr2;
    *spriteIdPtr2 = spriteIdBuffer;
    xBuffer1 = gSprites[*spriteIdPtr1].pos1.x;
    yBuffer1 = gSprites[*spriteIdPtr1].pos1.y;
    xBuffer2 = gSprites[*spriteIdPtr1].pos2.x;
    yBuffer2 = gSprites[*spriteIdPtr1].pos2.y;
    gSprites[*spriteIdPtr1].pos1.x = gSprites[*spriteIdPtr2].pos1.x;
    gSprites[*spriteIdPtr1].pos1.y = gSprites[*spriteIdPtr2].pos1.y;
    gSprites[*spriteIdPtr1].pos2.x = gSprites[*spriteIdPtr2].pos2.x;
    gSprites[*spriteIdPtr1].pos2.y = gSprites[*spriteIdPtr2].pos2.y;
    gSprites[*spriteIdPtr2].pos1.x = xBuffer1;
    gSprites[*spriteIdPtr2].pos1.y = yBuffer1;
    gSprites[*spriteIdPtr2].pos2.x = xBuffer2;
    gSprites[*spriteIdPtr2].pos2.y = yBuffer2;
}

static void swap_pokemon_and_oams(void)
{
    struct Struct203CEDC *structPtrs[2];
    struct Pokemon *mon1, *mon2;
    struct Pokemon *monBuffer;

    structPtrs[0] = &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId];
    structPtrs[1] = &gUnknown_0203CEDC[gUnknown_0203CEC8.unkA];
    mon1 = &gPlayerParty[gUnknown_0203CEC8.slotId];
    mon2 = &gPlayerParty[gUnknown_0203CEC8.unkA];
    monBuffer = Alloc(sizeof(struct Pokemon));
    *monBuffer = *mon1;
    *mon1 = *mon2;
    *mon2 = *monBuffer;
    Free(monBuffer);
    oamt_swap_pos(&structPtrs[0]->pokeballSpriteId, &structPtrs[1]->pokeballSpriteId);
    oamt_swap_pos(&structPtrs[0]->itemSpriteId, &structPtrs[1]->itemSpriteId);
    oamt_swap_pos(&structPtrs[0]->monSpriteId, &structPtrs[1]->monSpriteId);
    oamt_swap_pos(&structPtrs[0]->statusSpriteId, &structPtrs[1]->statusSpriteId);
}

static void sub_81B407C(u8 taskId)
{
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    gUnknown_0203CEC8.unkB = 0;
    sub_81B0FCC(gUnknown_0203CEC8.slotId, 0);
    gUnknown_0203CEC8.slotId = gUnknown_0203CEC8.unkA;
    sub_81B0FCC(gUnknown_0203CEC8.unkA, 1);
    display_pokemon_menu_message(0);
    gTasks[taskId].func = sub_81B1370;
}

static void CursorCb_Cancel1(u8 taskId)
{
    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    if (gUnknown_0203CEC8.unk8_0 == 6)
        display_pokemon_menu_message(15);
    else
        display_pokemon_menu_message(0);
    gTasks[taskId].func = sub_81B1370;
}

static void CursorCb_Item(u8 taskId)
{
    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    sub_81B33B4(gPlayerParty, gUnknown_0203CEC8.slotId, 8);
    sub_81B31B0(1);
    display_pokemon_menu_message(24);
    gTasks[taskId].data[0] = 0xFF;
    gTasks[taskId].func = HandleMenuInput;
}

static void CursorCb_Give(u8 taskId)
{
    PlaySE(5);
    gUnknown_0203CEC4->exitCallback = sub_81B41C4;
    sub_81B12C0(taskId);
}

static void sub_81B41C4(void)
{
    if (InBattlePyramid() == 0)
        GoToBagMenu(2, POCKETS_COUNT, c2_8123744);
    else
        sub_81C4F98(2, c2_8123744);
}

static void c2_8123744(void)
{
    if (gSpecialVar_ItemId == 0)
    {
        InitPartyMenu(gUnknown_0203CEC8.unk8_0, 0xFF, gUnknown_0203CEC8.unkB, 1, 0x7F, sub_81B36FC, gUnknown_0203CEC8.exitCallback);
    }
    else
    {
        gUnknown_0203CEFC = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 12);
        if (gUnknown_0203CEFC != 0)
        {
            InitPartyMenu(gUnknown_0203CEC8.unk8_0, 0xFF, gUnknown_0203CEC8.unkB, 1, 0x7F, sub_81B4350, gUnknown_0203CEC8.exitCallback);
        }
        else if (ItemIsMail(gSpecialVar_ItemId))
        {
            RemoveBagItem(gSpecialVar_ItemId, 1);
            sub_81B1DB8(&gPlayerParty[gUnknown_0203CEC8.slotId], gSpecialVar_ItemId);
            sub_81B452C();
        }
        else
        {
            InitPartyMenu(gUnknown_0203CEC8.unk8_0, 0xFF, gUnknown_0203CEC8.unkB, 1, 0x7F, sub_81B42D0, gUnknown_0203CEC8.exitCallback);
        }
    }
}

static void sub_81B42D0(u8 taskId)
{
    u16 item;

    if (!gPaletteFade.active)
    {
        item = gSpecialVar_ItemId;
        sub_81B1C84(&gPlayerParty[gUnknown_0203CEC8.slotId], item, 0, 0);
        sub_81B1DB8(&gPlayerParty[gUnknown_0203CEC8.slotId], item);
        RemoveBagItem(item, 1);
        gTasks[taskId].func = sub_81B469C;
    }
}

static void sub_81B4350(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        sub_81B1D1C(&gPlayerParty[gUnknown_0203CEC8.slotId], gUnknown_0203CEFC, 1);
        gTasks[taskId].func = sub_81B43A8;
    }
}

static void sub_81B43A8(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B43DC;
    }
}

static void sub_81B43DC(u8 taskId)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        RemoveBagItem(gSpecialVar_ItemId, 1);
        if (AddBagItem(gUnknown_0203CEFC, 1) == 0)
        {
            AddBagItem(gSpecialVar_ItemId, 1);
            pokemon_item_not_removed(gUnknown_0203CEFC);
            sub_81B1B5C(gStringVar4, 0);
            gTasks[taskId].func = sub_81B1C1C;
        }
        else if (ItemIsMail(gSpecialVar_ItemId))
        {
            sub_81B1DB8(&gPlayerParty[gUnknown_0203CEC8.slotId], gSpecialVar_ItemId);
            gTasks[taskId].func = sub_81B44FC;
        }
        else
        {
            sub_81B1DB8(&gPlayerParty[gUnknown_0203CEC8.slotId], gSpecialVar_ItemId);
            sub_81B1D68(gSpecialVar_ItemId, gUnknown_0203CEFC, 1);
            gTasks[taskId].func = sub_81B469C;
        }
        break;
    case -1:
        PlaySE(5);
    case 1:
        gTasks[taskId].func = sub_81B1C1C;
        break;
    }
}

static void sub_81B44FC(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        gUnknown_0203CEC4->exitCallback = sub_81B452C;
        sub_81B12C0(taskId);
    }
}

static void sub_81B452C(void)
{
    u8 mail = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 64);

    DoEasyChatScreen(
     4,
     gSaveBlock1Ptr->mail[mail].words,
     sub_81B4578,
     3);
}

static void sub_81B4578(void)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 item = GetMonData(mon, 12);

    if (gSpecialVar_Result == 0)
    {
        TakeMailFromMon(mon);
        SetMonData(mon, 12, &gUnknown_0203CEFC);
        RemoveBagItem(gUnknown_0203CEFC, 1);
        AddBagItem(item, 1);
        InitPartyMenu(gUnknown_0203CEC8.unk8_0, 0xFF, gUnknown_0203CEC8.unkB, 1, 0, sub_81B36FC, gUnknown_0203CEC8.exitCallback);
    }
    else
    {
        InitPartyMenu(gUnknown_0203CEC8.unk8_0, 0xFF, gUnknown_0203CEC8.unkB, 1, 0x7F, sub_81B4624, gUnknown_0203CEC8.exitCallback);
    }
}

static void sub_81B4624(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        if (gUnknown_0203CEFC == 0)
            sub_81B1C84(&gPlayerParty[gUnknown_0203CEC8.slotId], gSpecialVar_ItemId, 0, 0);
        else
            sub_81B1D68(gSpecialVar_ItemId, gUnknown_0203CEFC, 0);
        gTasks[taskId].func = sub_81B469C;
    }
}

static void sub_81B469C(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];

    if (sub_81B1BD4() != 1)
    {
        sub_81B5C94(mon, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId]);
        if (gUnknown_0203CEC8.unk8_0 == 12)
        {
            if (GetMonData(mon, 12) != 0)
                DisplayPartyPokemonOtherText(11, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId], 1);
            else
                DisplayPartyPokemonOtherText(12, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId], 1);
        }
        sub_81B1C1C(taskId);
    }
}

static void CursorCb_TakeItem(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 item = GetMonData(mon, 12);

    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    switch (TryTakeMonItem(mon))
    {
    case 0:
        GetMonNickname(mon, gStringVar1);
        StringExpandPlaceholders(gStringVar4, gText_PkmnNotHolding);
        sub_81B1B5C(gStringVar4, 1);
        break;
    case 1:
        pokemon_item_not_removed(item);
        sub_81B1B5C(gStringVar4, 1);
        break;
    default:
        sub_81B1CD0(mon, item, 1);
        break;
    }
    schedule_bg_copy_tilemap_to_vram(2);
    gTasks[taskId].func = sub_81B469C;
}

static void CursorCb_Toss(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 item = GetMonData(mon, 12);

    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    if (item == 0)
    {
        GetMonNickname(mon, gStringVar1);
        StringExpandPlaceholders(gStringVar4, gText_PkmnNotHolding);
        sub_81B1B5C(gStringVar4, 1);
        gTasks[taskId].func = sub_81B469C;
    }
    else
    {
        CopyItemName(item, gStringVar1);
        StringExpandPlaceholders(gStringVar4, gText_ThrowAwayItem);
        sub_81B1B5C(gStringVar4, 1);
        gTasks[taskId].func = sub_81B48A8;
    }
}

static void sub_81B48A8(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B48DC;
    }
}

static void sub_81B48DC(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];

    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        CopyItemName(GetMonData(mon, 12), gStringVar1);
        StringExpandPlaceholders(gStringVar4, gText_ItemThrownAway);
        sub_81B1B5C(gStringVar4, 0);
        gTasks[taskId].func = sub_81B4988;
        break;
    case -1:
        PlaySE(5);
    case 1:
        gTasks[taskId].func = sub_81B1C1C;
        break;
    }
}

static void sub_81B4988(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];

    if (sub_81B1BD4() != 1)
    {
        u16 item = 0;

        SetMonData(mon, 12, &item);
        sub_81B5C94(mon, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId]);
        DisplayPartyPokemonOtherText(12, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId], 1);
        gTasks[taskId].func = sub_81B1C1C;
    }
}

static void CursorCb_Mail(u8 taskId)
{
    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    sub_81B33B4(gPlayerParty, gUnknown_0203CEC8.slotId, 9);
    sub_81B31B0(2);
    display_pokemon_menu_message(25);
    gTasks[taskId].data[0] = 0xFF;
    gTasks[taskId].func = HandleMenuInput;
}

static void CursorCb_Read(u8 taskId)
{
    PlaySE(5);
    gUnknown_0203CEC4->exitCallback = sub_81B4A98;
    sub_81B12C0(taskId);
}

static void sub_81B4A98(void)
{
    ReadMail(&gSaveBlock1Ptr->mail[GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 64)], sub_81B4AE0, 1);
}

static void sub_81B4AE0(void)
{
    gPaletteFade.bufferTransferDisabled = 1;
    InitPartyMenu(gUnknown_0203CEC8.unk8_0, 0xFF, gUnknown_0203CEC8.unkB, 1, 21, sub_81B36FC, gUnknown_0203CEC8.exitCallback);
}

static void CursorCb_TakeMail(u8 taskId)
{
    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B1B5C(gText_SendMailToPC, 1);
    gTasks[taskId].func = sub_81B4B6C;
}

static void sub_81B4B6C(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B4BA0;
    }
}

static void sub_81B4BA0(u8 taskId)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        if (TakeMailFromMon2(&gPlayerParty[gUnknown_0203CEC8.slotId]) != 0xFF)
        {
            sub_81B1B5C(gText_MailSentToPC, 0);
            gTasks[taskId].func = sub_81B469C;
        }
        else
        {
            sub_81B1B5C(gText_PCMailboxFull, 0);
            gTasks[taskId].func = sub_81B1C1C;
        }
        break;
    case -1:
        PlaySE(5);
    case 1:
        sub_81B1B5C(gText_MailMessageWillBeLost, 1);
        gTasks[taskId].func = sub_81B4C60;
        break;
    }
}

static void sub_81B4C60(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B4C94;
    }
}

static void sub_81B4C94(u8 taskId)
{
    u16 item;

    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        item = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 12);
        if (AddBagItem(item, 1) == 1)
        {
            TakeMailFromMon(&gPlayerParty[gUnknown_0203CEC8.slotId]);
            sub_81B1B5C(gText_MailTakenFromPkmn, 0);
            gTasks[taskId].func = sub_81B469C;
        }
        else
        {
            pokemon_item_not_removed(item);
            sub_81B1B5C(gStringVar4, 0);
            gTasks[taskId].func = sub_81B1C1C;
        }
        break;
    case -1:
        PlaySE(5);
    case 1:
        gTasks[taskId].func = sub_81B1C1C;
        break;
    }
}

static void CursorCb_Cancel2(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];

    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    sub_81B33B4(gPlayerParty, gUnknown_0203CEC8.slotId, sub_81B353C(mon));
    if (gUnknown_0203CEC8.unk8_0 != 12)
    {
        sub_81B31B0(0);
        display_pokemon_menu_message(21);
    }
    else
    {
        sub_81B31B0(1);
        CopyItemName(GetMonData(mon, 12), gStringVar2);
        display_pokemon_menu_message(26);
    }
    gTasks[taskId].data[0] = 0xFF;
    gTasks[taskId].func = HandleMenuInput;
}

static void CursorCb_SendMon(u8 taskId)
{
    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    if (sub_81B8A7C() == 1)
    {
        sub_81B12C0(taskId);
    }
    else
    {
        sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
        sub_81B1B5C(gStringVar4, 1);
        gTasks[taskId].func = sub_81B1C1C;
    }
}

static void CursorCb_Enter(u8 taskId)
{
    u8 unk;
    u8 i;

    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    unk = sub_81B8830();
    for (i = 0; i < unk; i++)
    {
        if (gSelectedOrderFromParty[i] == 0)
        {
            PlaySE(5);
            gSelectedOrderFromParty[i] = gUnknown_0203CEC8.slotId + 1;
            DisplayPartyPokemonOtherText(i + 2, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId], 1);
            if (i == (unk - 1))
                sub_81B4F88();
            display_pokemon_menu_message(0);
            gTasks[taskId].func = sub_81B1370;
            return;
        }
    }
    ConvertIntToDecimalStringN(gStringVar1, unk, 0, 1);
    StringExpandPlaceholders(gStringVar4, gText_NoMoreThanVar1Pkmn);
    PlaySE(32);
    sub_81B1B5C(gStringVar4, 1);
    gTasks[taskId].func = sub_81B1C1C;
}

static void sub_81B4F88(void)
{
    sub_81B0FCC(gUnknown_0203CEC8.slotId, 0);
    gUnknown_0203CEC8.slotId = 6;
    sub_81B0FCC(gUnknown_0203CEC8.slotId, 1);
}

static void CursorCb_NoEntry(u8 taskId)
{
    u8 unk;
    u8 i, j;

    PlaySE(5);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    unk = sub_81B8830();
    for (i = 0; i < unk; i++)
    {
        if (gSelectedOrderFromParty[i] == (gUnknown_0203CEC8.slotId + 1))
        {
            for (j = i; j < (unk - 1); j++)
                gSelectedOrderFromParty[j] = gSelectedOrderFromParty[j + 1];
            gSelectedOrderFromParty[j] = 0;
            break;
        }
    }
    DisplayPartyPokemonOtherText(1, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId], 1);
    for (i = 0; i < (unk - 1); i++)
    {
        if (gSelectedOrderFromParty[i] != 0)
            DisplayPartyPokemonOtherText(i + 2, &gUnknown_0203CEDC[gSelectedOrderFromParty[i] - 1], 1);
    }
    display_pokemon_menu_message(0);
    gTasks[taskId].func = sub_81B1370;
}

static void CursorCb_Store(u8 taskId)
{
    PlaySE(5);
    sub_81B12C0(taskId);
}

static void CursorCb_Register(u8 taskId)
{
    u16 species2 = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 65);
    u16 species = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 11);
    u8 obedience = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 80);

    switch (sub_807A8D0(*(struct UnkLinkRfuStruct_02022B14Substruct *)sub_800F7DC(), species2, species, obedience))
    {
    case 1:
        StringExpandPlaceholders(gStringVar4, gText_PkmnCantBeTradedNow);
        break;
    case 2:
        StringExpandPlaceholders(gStringVar4, gText_EggCantBeTradedNow);
        break;
    default:
        PlaySE(5);
        sub_81B12C0(taskId);
        return;
    }
    PlaySE(32);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    StringAppend(gStringVar4, gText_PauseUntilPress);
    sub_81B1B5C(gStringVar4, 1);
    gTasks[taskId].func = sub_81B1C1C;
}

static void CursorCb_Trade1(u8 taskId)
{
    u16 species2 = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 65);
    u16 species = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 11);
    u8 obedience = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 80);
    u32 stringId = sub_807A7E0(*(struct UnkLinkRfuStruct_02022B14Substruct *)sub_800F7DC(), gUnknown_02022C38, species2, gUnknown_02022C3C, gUnknown_02022C3E, species, obedience);

    if (stringId != 0)
    {
        StringExpandPlaceholders(gStringVar4, gUnknown_08615E0C[stringId - 1]);
        PlaySE(32);
        sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
        sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
        StringAppend(gStringVar4, gText_PauseUntilPress);
        sub_81B1B5C(gStringVar4, 1);
        gTasks[taskId].func = sub_81B1C1C;
    }
    else
    {
        PlaySE(5);
        sub_81B12C0(taskId);
    }
}

static void CursorCb_Trade2(u8 taskId)
{
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    switch (sub_807A918(gPlayerParty, gUnknown_0203CEC8.slotId))
    {
    case 1:
        StringExpandPlaceholders(gStringVar4, gText_OnlyPkmnForBattle);
        break;
    case 2:
        StringExpandPlaceholders(gStringVar4, gText_PkmnCantBeTradedNow);
        break;
    case 3:
        StringExpandPlaceholders(gStringVar4, gText_EggCantBeTradedNow);
        break;
    default:
        PlaySE(5);
        GetMonNickname(&gPlayerParty[gUnknown_0203CEC8.slotId], gStringVar1);
        StringExpandPlaceholders(gStringVar4, gJPText_PutVar1IntoSpinner);
        sub_81B1B5C(gStringVar4, 1);
        gTasks[taskId].func = sub_81B53FC;
        return;
    }
    PlaySE(32);
    StringAppend(gStringVar4, gText_PauseUntilPress);
    sub_81B1B5C(gStringVar4, 1);
    gTasks[taskId].func = sub_81B1C1C;
}

static void sub_81B53FC(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B5430;
    }
}

static void sub_81B5430(u8 taskId)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        sub_81B12C0(taskId);
        break;
    case -1:
        PlaySE(5);
    case 1:
        sub_81B1C1C(taskId);
        break;
    }
}

static void CursorCb_FieldMove(u8 taskId)
{
    u8 fieldMove = gUnknown_0203CEC4->actions[Menu_GetCursorPos()] - MENU_FIELD_MOVES;
    const struct MapHeader *mapHeader;

    PlaySE(5);
    if (sFieldMoveCursorCallbacks[fieldMove].fieldMoveFunc == ((void *)0))
        return;

    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
    if (sub_81221AC() == 1 || InUnionRoom() == 1)
    {
        if (fieldMove == FIELD_MOVE_MILK_DRINK || fieldMove == FIELD_MOVE_SOFT_BOILED)
            display_pokemon_menu_message(13);
        else
            display_pokemon_menu_message(sFieldMoveCursorCallbacks[fieldMove].msgId);

        gTasks[taskId].func = task_brm_cancel_1_on_keypad_a_or_b;
    }
    else
    {

        if (fieldMove <= FIELD_MOVE_WATERFALL && FlagGet(((0x500 + 0x356 + 0xA) + 7) + fieldMove) != 1)
        {
            sub_81B1B5C(gText_CantUseUntilNewBadge, 1);
            gTasks[taskId].func = sub_81B1C1C;
        }
        else if (sFieldMoveCursorCallbacks[fieldMove].fieldMoveFunc() == 1)
        {
            switch (fieldMove)
            {
            case FIELD_MOVE_MILK_DRINK:
            case FIELD_MOVE_SOFT_BOILED:
                sub_8161560(taskId);
                break;
            case FIELD_MOVE_TELEPORT:
                mapHeader = Overworld_GetMapHeaderByGroupAndId(gSaveBlock1Ptr->lastHealLocation.mapGroup, gSaveBlock1Ptr->lastHealLocation.mapNum);
                sub_81245DC(gStringVar1, mapHeader->regionMapSectionId);
                StringExpandPlaceholders(gStringVar4, gText_ReturnToHealingSpot);
                sub_81B5674(taskId);
                gUnknown_0203CEC4->data[0] = fieldMove;
                break;
            case FIELD_MOVE_DIG:
                mapHeader = Overworld_GetMapHeaderByGroupAndId(gSaveBlock1Ptr->escapeWarp.mapGroup, gSaveBlock1Ptr->escapeWarp.mapNum);
                sub_81245DC(gStringVar1, mapHeader->regionMapSectionId);
                StringExpandPlaceholders(gStringVar4, gText_EscapeFromHere);
                sub_81B5674(taskId);
                gUnknown_0203CEC4->data[0] = fieldMove;
                break;
            case FIELD_MOVE_FLY:
                gUnknown_0203CEC8.exitCallback = MCB2_FlyMap;
                sub_81B12C0(taskId);
                break;
            default:
                gUnknown_0203CEC8.exitCallback = CB2_ReturnToField;
                sub_81B12C0(taskId);
                break;
            }
        }
        else
        {
            switch (fieldMove)
            {
            case FIELD_MOVE_SURF:
                sub_81B5864();
                break;
            case FIELD_MOVE_FLASH:
                sub_81B57DC();
                break;
            default:
                display_pokemon_menu_message(sFieldMoveCursorCallbacks[fieldMove].msgId);
                break;
            }
            gTasks[taskId].func = task_brm_cancel_1_on_keypad_a_or_b;
        }
    }
}

static void sub_81B5674(u8 taskId)
{
    sub_81B1B5C(gStringVar4, 1);
    gTasks[taskId].func = sub_81B56A4;
}

static void sub_81B56A4(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B56D8;
    }
}

static void sub_81B56D8(u8 taskId)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        gUnknown_0203CEC8.exitCallback = CB2_ReturnToField;
        sub_81B12C0(taskId);
        break;
    case -1:
        PlaySE(5);
    case 1:
        gFieldCallback2 = ((void *)0);
        gPostMenuFieldCallback = ((void *)0);
        sub_81B1C1C(taskId);
        break;
    }
}

bool8 FieldCallback_PrepareFadeInFromMenu(void)
{
    pal_fill_black();
    CreateTask(task_launch_hm_phase_2, 8);
    return 1;
}

static void task_launch_hm_phase_2(u8 taskId)
{
    if (IsWeatherNotFadingIn() == 1)
    {
        gFieldEffectArguments[0] = brm_get_selected_species();
        gPostMenuFieldCallback();
        DestroyTask(taskId);
    }
}

static u16 brm_get_selected_species(void)
{
    return GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 11);
}

static void task_brm_cancel_1_on_keypad_a_or_b(u8 taskId)
{
    if ((gMain.newKeys & 0x0001) || (gMain.newKeys & 0x0002))
        CursorCb_Cancel1(taskId);
}

static void sub_81B57DC(void)
{
    if (FlagGet(((0x500 + 0x356 + 0xA) + 0x28)) == 1)
        display_pokemon_menu_message(12);
    else
        display_pokemon_menu_message(13);
}

static void hm_surf_run_dp02scr(void)
{
    gFieldEffectArguments[0] = GetCursorSelectionMonId();
    FieldEffectStart(9);
}

static bool8 SetUpFieldMove_Surf(void)
{
    if (PartyHasMonWithSurf() == 1 && IsPlayerFacingSurfableFishableWater() == 1)
    {
        gFieldCallback2 = FieldCallback_PrepareFadeInFromMenu;
        gPostMenuFieldCallback = hm_surf_run_dp02scr;
        return 1;
    }
    return 0;
}

static void sub_81B5864(void)
{
    if (TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_SURFING)))
        display_pokemon_menu_message(9);
    else
        display_pokemon_menu_message(8);
}

static bool8 SetUpFieldMove_Fly(void)
{
    if (Overworld_MapTypeAllowsTeleportAndFly(gMapHeader.mapType) == 1)
        return 1;
    else
        return 0;
}

void sub_81B58A8(void)
{
    InitPartyMenu(0, 0, 0, 1, 0, sub_81B1370, CB2_ReturnToFieldWithOpenMenu);
}

static void hm2_waterfall(void)
{
    gFieldEffectArguments[0] = GetCursorSelectionMonId();
    FieldEffectStart(43);
}

static bool8 SetUpFieldMove_Waterfall(void)
{
    s16 x, y;

    GetXYCoordsOneStepInFrontOfPlayer(&x, &y);
    if (MetatileBehavior_IsWaterfall(MapGridGetMetatileBehaviorAt(x, y)) == 1 && IsPlayerSurfingNorth() == 1)
    {
        gFieldCallback2 = FieldCallback_PrepareFadeInFromMenu;
        gPostMenuFieldCallback = hm2_waterfall;
        return 1;
    }
    return 0;
}

static void sub_81B5958(void)
{
    gFieldEffectArguments[0] = GetCursorSelectionMonId();
    FieldEffectStart(44);
}

static bool8 SetUpFieldMove_Dive(void)
{
    gFieldEffectArguments[1] = TrySetDiveWarp();
    if (gFieldEffectArguments[1] != 0)
    {
        gFieldCallback2 = FieldCallback_PrepareFadeInFromMenu;
        gPostMenuFieldCallback = sub_81B5958;
        return 1;
    }
    return 0;
}

static void party_menu_icon_anim(struct Pokemon *mon, struct Struct203CEDC *ptr, u32 a)
{
    u32 bit = 1;
    u16 species2;

    if (IsMultiBattle() == 1 && gMain.inBattle)
        bit = (gUnknown_08616020[a] ^ bit) ? 1 : 0;
    species2 = GetMonData(mon, 65);
    party_menu_link_mon_icon_anim(species2, GetMonData(mon, 0), ptr, 1, bit);
    sub_81B5B38(ptr->monSpriteId, mon);
}

static void party_menu_link_mon_icon_anim(u16 species, u32 pid, struct Struct203CEDC *ptr, u8 priority, u32 bit)
{
    if (species != 0)
    {
        ptr->monSpriteId = CreateMonIcon(species, sub_80D3014, ptr->unk4[0], ptr->unk4[1], 4, pid, bit);
        gSprites[ptr->monSpriteId].oam.priority = priority;
    }
}

static void sub_81B5A8C(u8 spriteId, u16 hp, u16 maxhp)
{
    switch (GetHPBarLevel(hp, maxhp))
    {
    case HP_BAR_FULL:
        sub_80D32C8(&gSprites[spriteId], 0);
        break;
    case HP_BAR_GREEN:
        sub_80D32C8(&gSprites[spriteId], 1);
        break;
    case HP_BAR_YELLOW:
        sub_80D32C8(&gSprites[spriteId], 2);
        break;
    case HP_BAR_RED:
        sub_80D32C8(&gSprites[spriteId], 3);
        break;
    default:
        sub_80D32C8(&gSprites[spriteId], 4);
        break;
    }
}

static void sub_81B5B38(u8 spriteId, struct Pokemon *mon)
{
    sub_81B5A8C(spriteId, GetMonData(mon, 57), GetMonData(mon, 58));
}

static void AnimateSelectedPartyIcon(u8 spriteId, u8 a)
{
    gSprites[spriteId].data[0] = 0;
    if (a == 0)
    {
        if (gSprites[spriteId].pos1.x == 16)
        {
            gSprites[spriteId].pos2.x = 0;
            gSprites[spriteId].pos2.y = -4;
        }
        else
        {
            gSprites[spriteId].pos2.x = -4;
            gSprites[spriteId].pos2.y = 0;
        }
        gSprites[spriteId].callback = UpdatePartyMonIconFrame;
    }
    else
    {
        gSprites[spriteId].pos2.x = 0;
        gSprites[spriteId].pos2.y = 0;
        gSprites[spriteId].callback = UpdatePartyMonIconFrameAndBounce;
    }
}

static void UpdatePartyMonIconFrameAndBounce(struct Sprite *sprite)
{
    u8 unk = UpdateMonIconFrame(sprite);

    if (unk != 0)
    {
        if (unk & 1)
            sprite->pos2.y = -3;
        else
            sprite->pos2.y = 1;
    }
}

static void UpdatePartyMonIconFrame(struct Sprite *sprite)
{
    UpdateMonIconFrame(sprite);
}

static void party_menu_held_item_object(struct Pokemon *mon, struct Struct203CEDC *ptr)
{
    if (GetMonData(mon, 11) != 0)
    {
        ptr->itemSpriteId = CreateSprite(&sSpriteTemplate_HeldItem, ptr->unk4[2], ptr->unk4[3], 0);
        sub_81B5C94(mon, ptr);
    }
}

static void party_menu_link_mon_held_item_object(u16 species, u16 item, struct Struct203CEDC *ptr)
{
    if (species != 0)
    {
        ptr->itemSpriteId = CreateSprite(&sSpriteTemplate_HeldItem, ptr->unk4[2], ptr->unk4[3], 0);
        gSprites[ptr->itemSpriteId].oam.priority = 0;
        sub_81B5CB0(item, ptr);
    }
}

static void sub_81B5C94(struct Pokemon *mon, struct Struct203CEDC *ptr)
{
    sub_81B5CB0(GetMonData(mon, 12), ptr);
}

static void sub_81B5CB0(u16 item, struct Struct203CEDC *ptr)
{
    if (item == 0)
    {
        gSprites[ptr->itemSpriteId].invisible = 1;
    }
    else
    {
        if (ItemIsMail(item))
            StartSpriteAnim(&gSprites[ptr->itemSpriteId], 1);
        else
            StartSpriteAnim(&gSprites[ptr->itemSpriteId], 0);
        gSprites[ptr->itemSpriteId].invisible = 0;
    }
}

void LoadHeldItemIcons(void)
{
    LoadSpriteSheet(&sSpriteSheet_HeldItem);
    LoadSpritePalette(&sSpritePalette_HeldItem);
}

void sub_81B5D4C(u8 *a, u8 *b, u8 c)
{
    u16 i;
    u16 item;

    switch (c)
    {
    case 0:
        for (i = 0; i < a[0]; i++)
        {
            item = GetMonData(&gPlayerParty[i], 12);
            if (item != 0)
                sub_81B5DF0(b[i], ItemIsMail(item));
        }
        break;
    case 1:
        for (i = 0; i < a[1]; i++)
        {
            item = GetMonData(&gEnemyParty[i], 12);
            if (item != 0)
                sub_81B5DF0(b[i + 6], ItemIsMail(item));
        }
        break;
    }
}

static void sub_81B5DF0(u8 spriteId, u8 isMail)
{
    u8 subpriority = gSprites[spriteId].subpriority;
    u8 newSpriteId = CreateSprite(&sSpriteTemplate_HeldItem, 250, 170, subpriority - 1);

    gSprites[newSpriteId].pos2.x = 4;
    gSprites[newSpriteId].pos2.y = 10;
    gSprites[newSpriteId].callback = SpriteCB_HeldItem;
    gSprites[newSpriteId].data[7] = spriteId;
    StartSpriteAnim(&gSprites[newSpriteId], isMail);
    gSprites[newSpriteId].callback(&gSprites[newSpriteId]);
}

static void SpriteCB_HeldItem(struct Sprite *sprite)
{
    u8 otherSpriteId = sprite->data[7];

    if (gSprites[otherSpriteId].invisible)
    {
        sprite->invisible = 1;
    }
    else
    {
        sprite->invisible = 0;
        sprite->pos1.x = gSprites[otherSpriteId].pos1.x + gSprites[otherSpriteId].pos2.x;
        sprite->pos1.y = gSprites[otherSpriteId].pos1.y + gSprites[otherSpriteId].pos2.y;
    }
}

static void party_menu_pokeball_object(struct Pokemon *mon, struct Struct203CEDC *ptr)
{
    if (GetMonData(mon, 11) != 0)
        ptr->pokeballSpriteId = CreateSprite(&sSpriteTemplate_MenuPokeball, ptr->unk4[6], ptr->unk4[7], 8);
}

static void party_menu_link_mon_pokeball_object(u16 species, struct Struct203CEDC *ptr)
{
    if (species != 0)
    {
        ptr->pokeballSpriteId = CreateSprite(&sSpriteTemplate_MenuPokeball, ptr->unk4[6], ptr->unk4[7], 8);
        gSprites[ptr->pokeballSpriteId].oam.priority = 0;
    }
}

static u8 sub_81B5F34(u8 x, u8 y)
{
    u8 spriteId = CreateSprite(&sSpriteTemplate_MenuPokeball, x, y, 8);

    gSprites[spriteId].oam.priority = 2;
    return spriteId;
}

static u8 sub_81B5F74(u8 x, u8 y)
{
    return CreateSprite(&gSpriteTemplate_8615F78, x, y, 8);
}

static void sub_81B5F98(u8 spriteId, u8 a)
{
    StartSpriteAnim(&gSprites[spriteId], a);
}

static void sub_81B5FBC(u8 spriteId, u8 spriteId2, u8 a)
{
    if (a == 0)
    {
        StartSpriteAnim(&gSprites[spriteId], 2);
        StartSpriteAnim(&gSprites[spriteId2], 4);
        gSprites[spriteId].pos2.y = 0;
        gSprites[spriteId2].pos2.y = 0;
    }
    else
    {
        StartSpriteAnim(&gSprites[spriteId], 3);
        StartSpriteAnim(&gSprites[spriteId2], 5);
        gSprites[spriteId].pos2.y = -4;
        gSprites[spriteId2].pos2.y = 4;
    }
}

static void LoadPartyMenuPokeballGfx(void)
{
    LoadCompressedSpriteSheet(&sSpriteSheet_MenuPokeball);
    LoadCompressedSpriteSheet(&sSpriteSheet_MenuPokeballSmall);
    LoadCompressedSpritePalette(&sSpritePalette_MenuPokeball);
}

static void party_menu_status_condition_object(struct Pokemon *mon, struct Struct203CEDC *ptr)
{
    if (GetMonData(mon, 11) != 0)
    {
        ptr->statusSpriteId = CreateSprite(&sSpriteTemplate_StatusIcons, ptr->unk4[4], ptr->unk4[5], 0);
        party_menu_get_status_condition_and_update_object(mon, ptr);
    }
}

static void party_menu_link_mon_status_condition_object(u16 species, u8 status, struct Struct203CEDC *ptr)
{
    if (species != 0)
    {
        ptr->statusSpriteId = CreateSprite(&sSpriteTemplate_StatusIcons, ptr->unk4[4], ptr->unk4[5], 0);
        party_menu_update_status_condition_object(status, ptr);
        gSprites[ptr->statusSpriteId].oam.priority = 0;
    }
}

static void party_menu_get_status_condition_and_update_object(struct Pokemon *mon, struct Struct203CEDC *ptr)
{
    party_menu_update_status_condition_object(GetMonAilment(mon), ptr);
}

static void party_menu_update_status_condition_object(u8 status, struct Struct203CEDC *ptr)
{
    switch (status)
    {
    case AILMENT_NONE:
    case AILMENT_PKRS:
        gSprites[ptr->statusSpriteId].invisible = 1;
        break;
    default:
        StartSpriteAnim(&gSprites[ptr->statusSpriteId], status - 1);
        gSprites[ptr->statusSpriteId].invisible = 0;
        break;
    }
}

static void LoadPartyMenuAilmentGfx(void)
{
    LoadCompressedSpriteSheet(&sSpriteSheet_StatusIcons);
    LoadCompressedSpritePalette(&sSpritePalette_StatusIcons);
}

void sub_81B617C(void)
{
    MainCallback callback = c2_815ABFC;
    u8 doubleBattleStatus;
    bool8 inBattle;
    u8 i;
    u8 msgIdMaybe;
    TaskFunc task;

    if (gMain.inBattle)
    {
        inBattle = 1;
        doubleBattleStatus = sub_81B8984();
    }
    else
    {
        inBattle = 0;
        doubleBattleStatus = 0;
    }

    if (GetItemEffectType(gSpecialVar_ItemId) == 10)
    {
        gUnknown_0203CEC8.slotId = 0;
        for (i = 0; i < 6; i++)
        {
            if (GetMonData(&gPlayerParty[i], 11) != 0 && GetMonData(&gPlayerParty[i], 57) == 0)
            {
                gUnknown_0203CEC8.slotId = i;
                break;
            }
        }
        task = sub_81B6280;
        msgIdMaybe = 0x7F;
    }
    else
    {
        if (GetPocketByItemId(gSpecialVar_ItemId) == POCKET_TM_HM)
            msgIdMaybe = 4;
        else
            msgIdMaybe = 5;

        task = sub_81B1370;
    }

    InitPartyMenu(inBattle, doubleBattleStatus, 3, 1, msgIdMaybe, task, callback);
}

static void c2_815ABFC(void)
{
    if (InBattlePyramid() == 0)
        GoToBagMenu(12, POCKETS_COUNT, ((void *)0));
    else
        sub_81C4F98(4, gPyramidBagCursorData.callback);
}

static void sub_81B6280(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        if (gUnknown_0203CEC8.unk8_0 == 1)
            gUnknown_0203CEC4->exitCallback = sub_81B9140;
        gUnknown_03006328(taskId, sub_81B6794);
    }
}

static bool8 IsHPRecoveryItem(u16 item)
{
    const u8 *effect;

    if (item == 175)
        effect = gSaveBlock1Ptr->enigmaBerry.itemEffect;
    else
        effect = gItemEffectTable[item - 13];

    if (effect[4] & 0x4)
        return 1;
    else
        return 0;
}

static void GetMedicineItemEffectMessage(u16 item)
{
    switch (GetItemEffectType(item))
    {
    case 3:
        StringExpandPlaceholders(gStringVar4, gText_PkmnCuredOfPoison);
        break;
    case 4:
        StringExpandPlaceholders(gStringVar4, gText_PkmnWokeUp2);
        break;
    case 5:
        StringExpandPlaceholders(gStringVar4, gText_PkmnBurnHealed);
        break;
    case 6:
        StringExpandPlaceholders(gStringVar4, gText_PkmnThawedOut);
        break;
    case 7:
        StringExpandPlaceholders(gStringVar4, gText_PkmnCuredOfParalysis);
        break;
    case 8:
        StringExpandPlaceholders(gStringVar4, gText_PkmnSnappedOutOfConfusion);
        break;
    case 9:
        StringExpandPlaceholders(gStringVar4, gText_PkmnGotOverInfatuation);
        break;
    case 11:
        StringExpandPlaceholders(gStringVar4, gText_PkmnBecameHealthy);
        break;
    case 13:
        StringCopy(gStringVar2, gText_HP3);
        StringExpandPlaceholders(gStringVar4, gText_PkmnBaseVar2StatIncreased);
        break;
    case 12:
        StringCopy(gStringVar2, gText_Attack3);
        StringExpandPlaceholders(gStringVar4, gText_PkmnBaseVar2StatIncreased);
        break;
    case 17:
        StringCopy(gStringVar2, gText_Defense3);
        StringExpandPlaceholders(gStringVar4, gText_PkmnBaseVar2StatIncreased);
        break;
    case 16:
        StringCopy(gStringVar2, gText_Speed2);
        StringExpandPlaceholders(gStringVar4, gText_PkmnBaseVar2StatIncreased);
        break;
    case 14:
        StringCopy(gStringVar2, gText_SpAtk3);
        StringExpandPlaceholders(gStringVar4, gText_PkmnBaseVar2StatIncreased);
        break;
    case 15:
        StringCopy(gStringVar2, gText_SpDef3);
        StringExpandPlaceholders(gStringVar4, gText_PkmnBaseVar2StatIncreased);
        break;
    case 19:
    case 20:
        StringExpandPlaceholders(gStringVar4, gText_MovesPPIncreased);
        break;
    case 21:
        StringExpandPlaceholders(gStringVar4, gText_PPWasRestored);
        break;
    default:
        StringExpandPlaceholders(gStringVar4, gText_WontHaveEffect);
        break;
    }
}

static bool8 UsingHPEVItemOnShedinja(struct Pokemon *mon, u16 item)
{
    if (GetItemEffectType(item) == 13 && GetMonData(mon, 11) == 303)
        return 0;
    return 1;
}

static bool8 IsItemFlute(u16 item)
{
    if (item == 39 || item == 41 || item == 40)
        return 1;
    return 0;
}

static bool8 ExecuteTableBasedItemEffect__(u8 partyMonIndex, u16 item, u8 monMoveIndex)
{
    if (gMain.inBattle)
        return ExecuteTableBasedItemEffect(&gPlayerParty[partyMonIndex], item, sub_81B8F38(partyMonIndex), monMoveIndex);
    else
        return ExecuteTableBasedItemEffect(&gPlayerParty[partyMonIndex], item, partyMonIndex, monMoveIndex);
}

void ItemUseCB_Medicine(u8 taskId, TaskFunc task)
{
    u16 hp = 0;
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 item = gSpecialVar_ItemId;
    bool8 canHeal;

    if (UsingHPEVItemOnShedinja(mon, item))
    {
        canHeal = IsHPRecoveryItem(item);
        if (canHeal == 1)
        {
            hp = GetMonData(mon, 57);
            if (hp == GetMonData(mon, 58))
                canHeal = 0;
        }
        if (ExecuteTableBasedItemEffect__(gUnknown_0203CEC8.slotId, item, 0))
        {
            iTriedHonestlyIDid:
            gUnknown_0203CEE8 = 0;
            PlaySE(5);
            sub_81B1B5C(gText_WontHaveEffect, 1);
            schedule_bg_copy_tilemap_to_vram(2);
            gTasks[taskId].func = task;
            return;
        }
    }
    else
    {
        goto iTriedHonestlyIDid;
    }
    gUnknown_0203CEE8 = 1;
    if (IsItemFlute(item) == 0)
    {
        PlaySE(1);
        if (gUnknown_0203CEC8.unkB != 14)
            RemoveBagItem(item, 1);
    }
    else
    {
        PlaySE(117);
    }
    party_menu_get_status_condition_and_update_object(mon, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId]);
    if (gSprites[gUnknown_0203CEDC[gUnknown_0203CEC8.slotId].statusSpriteId].invisible)
        DisplayPartyPokemonLevelCheck(mon, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId], 1);
    if (canHeal == 1)
    {
        if (hp == 0)
            sub_81B0FCC(gUnknown_0203CEC8.slotId, 1);
        sub_81B1F18(taskId, gUnknown_0203CEC8.slotId, 1, GetMonData(mon, 57) - hp, sub_81B672C);
        sub_81B1FA8(taskId, 0, hp);
        return;
    }
    else
    {
        GetMonNickname(mon, gStringVar1);
        GetMedicineItemEffectMessage(item);
        sub_81B1B5C(gStringVar4, 1);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = task;
    }
}

static void sub_81B672C(u8 taskId)
{
    GetMonNickname(&gPlayerParty[gUnknown_0203CEC8.slotId], gStringVar1);
    StringExpandPlaceholders(gStringVar4, gText_PkmnHPRestoredByVar2);
    sub_81B1B5C(gStringVar4, 0);
    schedule_bg_copy_tilemap_to_vram(2);
    HandleBattleLowHpMusicChange();
    gTasks[taskId].func = sub_81B6794;
}

static void sub_81B6794(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        if (gUnknown_0203CEE8 == 0)
            gUnknown_0203CEC4->exitCallback = ((void *)0);
        sub_81B12C0(taskId);
    }
}

void sub_81B67C8(u8 taskId, TaskFunc task)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 item = gSpecialVar_ItemId;
    u8 effectType = GetItemEffectType(item);
    u16 friendship = GetMonData(mon, 32);
    u16 relevantEV = ItemEffectToMonEv(mon, effectType);
    bool8 cannotUseEffect = ExecuteTableBasedItemEffect__(gUnknown_0203CEC8.slotId, item, 0);
    u16 newFriendship = GetMonData(mon, 32);
    u16 newRelevantEV = ItemEffectToMonEv(mon, effectType);

    if (cannotUseEffect || (friendship == newFriendship && relevantEV == newRelevantEV))
    {
        gUnknown_0203CEE8 = 0;
        PlaySE(5);
        sub_81B1B5C(gText_WontHaveEffect, 1);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = task;
    }
    else
    {
        gUnknown_0203CEE8 = 1;
        PlaySE(1);
        RemoveBagItem(item, 1);
        GetMonNickname(mon, gStringVar1);
        ItemEffectToStatString(effectType, gStringVar2);
        if (friendship != newFriendship)
        {
            if (relevantEV != newRelevantEV)
                StringExpandPlaceholders(gStringVar4, gText_PkmnFriendlyBaseVar2Fell);
            else
                StringExpandPlaceholders(gStringVar4, gText_PkmnFriendlyBaseVar2CantFall);
        }
        else
        {
            StringExpandPlaceholders(gStringVar4, gText_PkmnAdoresBaseVar2Fell);
        }
        sub_81B1B5C(gStringVar4, 1);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = task;
    }
}

static u16 ItemEffectToMonEv(struct Pokemon *mon, u8 effectType)
{
    switch (effectType)
    {
    case 13:
        if (GetMonData(mon, 11) != 303)
            return GetMonData(mon, 26);
        break;
    case 12:
        return GetMonData(mon, 27);
    case 17:
        return GetMonData(mon, 28);
    case 16:
        return GetMonData(mon, 29);
    case 14:
        return GetMonData(mon, 30);
    case 15:
        return GetMonData(mon, 31);
    }
    return 0;
}

static void ItemEffectToStatString(u8 effectType, u8 *dest)
{
    switch (effectType)
    {
    case 13:
        StringCopy(dest, gText_HP3);
        break;
    case 12:
        StringCopy(dest, gText_Attack3);
        break;
    case 17:
        StringCopy(dest, gText_Defense3);
        break;
    case 16:
        StringCopy(dest, gText_Speed2);
        break;
    case 14:
        StringCopy(dest, gText_SpAtk3);
        break;
    case 15:
        StringCopy(dest, gText_SpDef3);
        break;
    }
}

static void sub_81B6A10(u8 slot)
{
    u8 i;
    u8 moveCount = 0;
    u8 fontId = 1;
    u8 windowId = sub_81B31B0(3);
    u16 move;

    for (i = 0; i < 4; i++)
    {
        move = GetMonData(&gPlayerParty[slot], 13 + i);
        AddTextPrinterParameterized(windowId, fontId, gMoveNames[move], 8, (i * 16) + 1, 0xFF, ((void *)0));
        if (move != 0)
            moveCount++;
    }
    InitMenuInUpperLeftCornerPlaySoundWhenAPressed(windowId, moveCount, 0);
    schedule_bg_copy_tilemap_to_vram(2);
}

static void ether_effect_related_3(u8 taskId)
{
    s8 input = Menu_ProcessInput();

    if (input != -2)
    {
        if (input == -1)
        {
            PlaySE(5);
            sub_81B6BB4(taskId);
        }
        else
        {
            sub_81B302C(&gUnknown_0203CEC4->windowId[1]);
            ether_effect_related_2(taskId);
        }
    }
}

void dp05_ether(u8 taskId, TaskFunc task)
{
    const u8 *effect;
    u16 item = gSpecialVar_ItemId;

    if (item == 175)
        effect = gSaveBlock1Ptr->enigmaBerry.itemEffect;
    else
        effect = gItemEffectTable[item - 13];

    if (!(effect[4] & 0x10))
    {
        gUnknown_0203CEC8.unkE = 0;
        ether_effect_related(taskId);
    }
    else
    {
        PlaySE(5);
        display_pokemon_menu_message(22);
        sub_81B6A10(gUnknown_0203CEC8.slotId);
        gTasks[taskId].func = ether_effect_related_3;
    }
}

static void ether_effect_related_2(u8 taskId)
{
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    gUnknown_0203CEC8.unkE = Menu_GetCursorPos();
    ether_effect_related(taskId);
}

static void sub_81B6BB4(u8 taskId)
{
    gTasks[taskId].func = sub_81B1370;
    gUnknown_0203CEC4->exitCallback = ((void *)0);
    sub_81B302C(&gUnknown_0203CEC4->windowId[0]);
    display_pokemon_menu_message(5);
}

static void ether_effect_related(u8 taskId)
{
    u16 move = 0;
    s16 *moveslot = &gUnknown_0203CEC8.unkE;
    u16 item = gSpecialVar_ItemId;
    struct Struct203CEC8 *ptr = &gUnknown_0203CEC8;
    struct Pokemon *mon;

    if (ExecuteTableBasedItemEffect__(ptr->slotId, item, *moveslot))
    {
        gUnknown_0203CEE8 = 0;
        PlaySE(5);
        sub_81B1B5C(gText_WontHaveEffect, 1);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = sub_81B6794;
    }
    else
    {
        gUnknown_0203CEE8 = 1;
        mon = &gPlayerParty[ptr->slotId];
        PlaySE(1);
        RemoveBagItem(item, 1);
        move = GetMonData(mon, 13 + *moveslot);
        StringCopy(gStringVar1, gMoveNames[move]);
        GetMedicineItemEffectMessage(item);
        sub_81B1B5C(gStringVar4, 1);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = sub_81B6794;
    }
}

void dp05_pp_up(u8 taskId, TaskFunc task)
{
    PlaySE(5);
    display_pokemon_menu_message(23);
    sub_81B6A10(gUnknown_0203CEC8.slotId);
    gTasks[taskId].func = ether_effect_related_3;
}

u16 ItemIdToBattleMoveId(u16 item)
{
    u16 tmNumber = item - 289;
    return gTMHMMoves[tmNumber];
}

bool8 IsMoveHm(u16 move)
{
    u8 i;

    for (i = 0; i < 8; i++)
    {
        if (gTMHMMoves[i + 50] == move)
            return 1;
    }
    return 0;
}

bool8 MonKnowsMove(struct Pokemon *mon, u16 move)
{
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if (GetMonData(mon, 13 + i) == move)
            return 1;
    }
    return 0;
}

static void sub_81B6D74(const u8 *str)
{
    StringExpandPlaceholders(gStringVar4, str);
    sub_81B1B5C(gStringVar4, 1);
    schedule_bg_copy_tilemap_to_vram(2);
}

static void sub_81B6D98(u8 taskId, const u8 *str)
{
    sub_81B6D74(str);
    gTasks[taskId].func = sub_81B6794;
}



void sub_81B6DC4(u8 taskId, TaskFunc task)
{
    struct Pokemon *mon;
    s16 *move;
    u16 item;

    PlaySE(5);
    mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    move = &gUnknown_0203CEC8.unkE;
    item = gSpecialVar_ItemId;
    GetMonNickname(mon, gStringVar1);
    move[0] = ItemIdToBattleMoveId(item);
    StringCopy(gStringVar2, gMoveNames[move[0]]);
    move[1] = 0;

    switch (CanMonLearnTMTutor(mon, item, 0))
    {
    case CANNOT_LEARN_MOVE:
        sub_81B6D98(taskId, gText_PkmnCantLearnMove);
        return;
    case ALREADY_KNOWS_MOVE:
        sub_81B6D98(taskId, gText_PkmnAlreadyKnows);
        return;
    }

    if (GiveMoveToMon(mon, move[0]) != 0xFFFF)
    {
        gTasks[taskId].func = sub_81B6EB4;
    }
    else
    {
        sub_81B6D74(gText_PkmnNeedsToReplaceMove);
        gTasks[taskId].func = sub_81B6FF4;
    }
}

static void sub_81B6EB4(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    s16 *move = &gUnknown_0203CEC8.unkE;
    u16 item = gSpecialVar_ItemId;

    if (move[1] == 0)
    {
        AdjustFriendship(mon, 4);
        if (item < 339)
            RemoveBagItem(item, 1);
    }
    GetMonNickname(mon, gStringVar1);
    StringCopy(gStringVar2, gMoveNames[move[0]]);
    StringExpandPlaceholders(gStringVar4, gText_PkmnLearnedMove3);
    sub_81B1B5C(gStringVar4, 1);
    schedule_bg_copy_tilemap_to_vram(2);
    gTasks[taskId].func = sub_81B6F60;
}

static void sub_81B6F60(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        PlayFanfare(367);
        gTasks[taskId].func = sub_81B6F98;
    }
}

static void sub_81B6F98(u8 taskId)
{
    if (IsFanfareTaskInactive() && ((gMain.newKeys & 0x0001) || (gMain.newKeys & 0x0002)))
    {
        if (gUnknown_0203CEC8.unk10 == 1)
            sub_81B77AC(taskId);
        else
        {
            if (gUnknown_0203CEC8.unk10 == 2)
                gSpecialVar_Result = 1;
            sub_81B12C0(taskId);
        }
    }
}

static void sub_81B6FF4(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B7028;
    }
}

static void sub_81B7028(u8 taskId)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        sub_81B1B5C(gText_WhichMoveToForget, 1);
        gTasks[taskId].func = sub_81B7088;
        break;
    case -1:
        PlaySE(5);
    case 1:
        sub_81B7230(taskId);
        break;
    }
}

static void sub_81B7088(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        gUnknown_0203CEC4->exitCallback = sub_81B70B8;
        sub_81B12C0(taskId);
    }
}

static void sub_81B70B8(void)
{
    ShowSelectMovePokemonSummaryScreen(gPlayerParty, gUnknown_0203CEC8.slotId, gPlayerPartyCount - 1, sub_81B70F0, gUnknown_0203CEC8.unkE);
}

static void sub_81B70F0(void)
{
    InitPartyMenu(0, 0, 0, 1, 0x7F, sub_81B711C, gUnknown_0203CEC8.exitCallback);
}

static void sub_81B711C(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        if (sub_81C1B94() != 4)
            sub_81B7154(taskId);
        else
            sub_81B7230(taskId);
    }
}

static void sub_81B7154(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 move = GetMonData(mon, 13 + sub_81C1B94());

    GetMonNickname(mon, gStringVar1);
    StringCopy(gStringVar2, gMoveNames[move]);
    sub_81B6D74(gText_12PoofForgotMove);
    gTasks[taskId].func = sub_81B71D4;
}

static void sub_81B71D4(u8 taskId)
{
    struct Pokemon *mon;
    u16 move;

    if (sub_81B1BD4() != 1)
    {
        mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
        RemoveMonPPBonus(mon, sub_81C1B94());
        move = gUnknown_0203CEC8.unkE;
        SetMonMoveSlot(mon, move, sub_81C1B94());
        sub_81B6EB4(taskId);
    }
}

static void sub_81B7230(u8 taskId)
{
    StringCopy(gStringVar2, gMoveNames[gUnknown_0203CEC8.unkE]);
    StringExpandPlaceholders(gStringVar4, gText_StopLearningMove2);
    sub_81B1B5C(gStringVar4, 1);
    schedule_bg_copy_tilemap_to_vram(2);
    gTasks[taskId].func = sub_81B7294;
}

static void sub_81B7294(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B72C8;
    }
}

static void sub_81B72C8(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];

    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        GetMonNickname(mon, gStringVar1);
        StringCopy(gStringVar2, gMoveNames[gUnknown_0203CEC8.unkE]);
        StringExpandPlaceholders(gStringVar4, gText_MoveNotLearned);
        sub_81B1B5C(gStringVar4, 1);
        if (gUnknown_0203CEC8.unk10 == 1)
        {
            gTasks[taskId].func = sub_81B73E4;
        }
        else
        {
            if (gUnknown_0203CEC8.unk10 == 2)
                gSpecialVar_Result = 0;
            gTasks[taskId].func = sub_81B6794;
        }
        break;
    case -1:
        PlaySE(5);
    case 1:
        GetMonNickname(mon, gStringVar1);
        StringCopy(gStringVar2, gMoveNames[gUnknown_0203CEC8.unkE]);
        sub_81B6D74(gText_PkmnNeedsToReplaceMove);
        gTasks[taskId].func = sub_81B6FF4;
        break;
    }
}

static void sub_81B73E4(u8 taskId)
{
    if (sub_81B1BD4() != 1)
        sub_81B77AC(taskId);
}

void dp05_rare_candy(u8 taskId, TaskFunc task)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    struct Struct203CEC4 *ptr = gUnknown_0203CEC4;
    s16 *arrayPtr = ptr->data;
    u16 *itemPtr = &gSpecialVar_ItemId;
    bool8 cannotUseEffect;

    if (GetMonData(mon, 56) != 100)
    {
        sub_81B79A0(mon, arrayPtr);
        cannotUseEffect = ExecuteTableBasedItemEffect__(gUnknown_0203CEC8.slotId, *itemPtr, 0);
        sub_81B79A0(mon, &ptr->data[6]);
    }
    else
    {
        cannotUseEffect = 1;
    }
    PlaySE(5);
    if (cannotUseEffect)
    {
        gUnknown_0203CEE8 = 0;
        sub_81B1B5C(gText_WontHaveEffect, 1);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = task;
    }
    else
    {
        gUnknown_0203CEE8 = 1;
        PlayFanfareByFanfareNum(0);
        sub_81B754C(gUnknown_0203CEC8.slotId, mon);
        RemoveBagItem(gSpecialVar_ItemId, 1);
        GetMonNickname(mon, gStringVar1);
        ConvertIntToDecimalStringN(gStringVar2, GetMonData(mon, 56), 0, 3);
        StringExpandPlaceholders(gStringVar4, gText_PkmnElevatedToLvVar2);
        sub_81B1B5C(gStringVar4, 1);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = sub_81B75D4;
    }
}

static void sub_81B754C(u8 slot, struct Pokemon *mon)
{
    party_menu_get_status_condition_and_update_object(mon, &gUnknown_0203CEDC[slot]);
    if (gSprites[gUnknown_0203CEDC[slot].statusSpriteId].invisible)
        DisplayPartyPokemonLevelCheck(mon, &gUnknown_0203CEDC[slot], 1);
    DisplayPartyPokemonHPCheck(mon, &gUnknown_0203CEDC[slot], 1);
    DisplayPartyPokemonMaxHPCheck(mon, &gUnknown_0203CEDC[slot], 1);
    DisplayPartyPokemonHPBarCheck(mon, &gUnknown_0203CEDC[slot]);
    sub_81B5B38(gUnknown_0203CEDC[slot].monSpriteId, mon);
    sub_81B0FCC(slot, 1);
    schedule_bg_copy_tilemap_to_vram(0);
}

static void sub_81B75D4(u8 taskId)
{
    if (WaitFanfare(0) && sub_81B1BD4() != 1 && ((gMain.newKeys & 0x0001) || (gMain.newKeys & 0x0002)))
    {
        PlaySE(5);
        sub_81B767C(taskId);
        gTasks[taskId].func = sub_81B7634;
    }
}

static void sub_81B7634(u8 taskId)
{
    if ((gMain.newKeys & 0x0001) || (gMain.newKeys & 0x0002))
    {
        PlaySE(5);
        sub_81B76C8(taskId);
        gTasks[taskId].func = sub_81B7704;
    }
}

static void sub_81B767C(u8 taskId)
{
    s16 *arrayPtr = gUnknown_0203CEC4->data;

    arrayPtr[12] = sub_81B3364();
    DrawLevelUpWindowPg1(arrayPtr[12], arrayPtr, &arrayPtr[6], 1, 2, 3);
    CopyWindowToVram(arrayPtr[12], 2);
    schedule_bg_copy_tilemap_to_vram(2);
}

static void sub_81B76C8(u8 taskId)
{
    s16 *arrayPtr = gUnknown_0203CEC4->data;

    DrawLevelUpWindowPg2(arrayPtr[12], &arrayPtr[6], 1, 2, 3);
    CopyWindowToVram(arrayPtr[12], 2);
    schedule_bg_copy_tilemap_to_vram(2);
}

static void sub_81B7704(u8 taskId)
{
    u16 result;

    if (WaitFanfare(0) && ((gMain.newKeys & 0x0001) || (gMain.newKeys & 0x0002)))
    {
        sub_81B3394();
        result = MonTryLearningNewMove(&gPlayerParty[gUnknown_0203CEC8.slotId], 1);
        gUnknown_0203CEC8.unk10 = 1;
        switch (result)
        {
        case 0:
            sub_81B7810(taskId);
            break;
        case 0xFFFF:
            sub_81B787C(taskId);
            break;
        case 0xFFFE:
            gTasks[taskId].func = sub_81B77AC;
            break;
        default:
            sub_81B7910(taskId, result);
            break;
        }
    }
}

static void sub_81B77AC(u8 taskId)
{
    u16 result = MonTryLearningNewMove(&gPlayerParty[gUnknown_0203CEC8.slotId], 0);

    switch (result)
    {
    case 0:
        sub_81B7810(taskId);
        break;
    case 0xFFFF:
        sub_81B787C(taskId);
        break;
    case 0xFFFE:
        return;
    default:
        sub_81B7910(taskId, result);
        break;
    }
}

static void sub_81B7810(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 targetSpecies = GetEvolutionTargetSpecies(mon, 0, 0);

    if (targetSpecies != 0)
    {
        FreePartyPointers();
        gCB2_AfterEvolution = gUnknown_0203CEC8.exitCallback;
        BeginEvolutionScene(mon, targetSpecies, 1, gUnknown_0203CEC8.slotId);
        DestroyTask(taskId);
    }
    else
    {
        gTasks[taskId].func = sub_81B6794;
    }
}

static void sub_81B787C(u8 taskId)
{
    GetMonNickname(&gPlayerParty[gUnknown_0203CEC8.slotId], gStringVar1);
    StringCopy(gStringVar2, gMoveNames[gMoveToLearn]);
    StringExpandPlaceholders(gStringVar4, gText_PkmnNeedsToReplaceMove);
    sub_81B1B5C(gStringVar4, 1);
    schedule_bg_copy_tilemap_to_vram(2);
    gUnknown_0203CEC8.unkE = gMoveToLearn;
    gTasks[taskId].func = sub_81B6FF4;
}

static void sub_81B7910(u8 taskId, u16 move)
{
    GetMonNickname(&gPlayerParty[gUnknown_0203CEC8.slotId], gStringVar1);
    StringCopy(gStringVar2, gMoveNames[move]);
    StringExpandPlaceholders(gStringVar4, gText_PkmnLearnedMove3);
    sub_81B1B5C(gStringVar4, 1);
    schedule_bg_copy_tilemap_to_vram(2);
    gUnknown_0203CEC8.unkE = move;
    gTasks[taskId].func = sub_81B6F60;
}

static void sub_81B79A0(struct Pokemon *mon, s16 *data)
{
    data[0] = GetMonData(mon, 58);
    data[1] = GetMonData(mon, 59);
    data[2] = GetMonData(mon, 60);
    data[4] = GetMonData(mon, 62);
    data[5] = GetMonData(mon, 63);
    data[3] = GetMonData(mon, 61);
}

void sub_81B79E8(u8 taskId, TaskFunc task)
{
    gUnknown_0203CEC4->data[0] = 0;
    gUnknown_0203CEC4->data[1] = 0;
    gUnknown_0203CEC4->data[2] = gUnknown_0203CEC8.slotId;
    sub_81B7A28(taskId);
}

static void sub_81B7A28(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 hp;

    if (GetMonData(mon, 11) == 0)
    {
        gTasks[taskId].func = task_sacred_ash_party_loop;
        return;
    }

    hp = GetMonData(mon, 57);
    if (ExecuteTableBasedItemEffect__(gUnknown_0203CEC8.slotId, gSpecialVar_ItemId, 0))
    {
        gTasks[taskId].func = task_sacred_ash_party_loop;
        return;
    }

    PlaySE(1);
    party_menu_get_status_condition_and_update_object(mon, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId]);
    if (gSprites[gUnknown_0203CEDC[gUnknown_0203CEC8.slotId].statusSpriteId].invisible)
        DisplayPartyPokemonLevelCheck(mon, &gUnknown_0203CEDC[gUnknown_0203CEC8.slotId], 1);
    sub_81B0FCC(gUnknown_0203CEC4->data[2], 0);
    sub_81B0FCC(gUnknown_0203CEC8.slotId, 1);
    sub_81B1F18(taskId, gUnknown_0203CEC8.slotId, 1, GetMonData(mon, 57) - hp, sub_81B7C10);
    sub_81B1FA8(taskId, 0, hp);
    gUnknown_0203CEC4->data[0] = 1;
    gUnknown_0203CEC4->data[1] = 1;
}

static void task_sacred_ash_party_loop(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        if (gUnknown_0203CEC4->data[0] == 1)
        {
            gUnknown_0203CEC4->data[0] = 0;
            gUnknown_0203CEC4->data[2] = gUnknown_0203CEC8.slotId;
        }
        if (++(gUnknown_0203CEC8.slotId) == 6)
        {
            if (gUnknown_0203CEC4->data[1] == 0)
            {
                gUnknown_0203CEE8 = 0;
                sub_81B1B5C(gText_WontHaveEffect, 1);
                schedule_bg_copy_tilemap_to_vram(2);
            }
            else
            {
                gUnknown_0203CEE8 = 1;
                RemoveBagItem(gSpecialVar_ItemId, 1);
            }
            gTasks[taskId].func = sub_81B6794;
            gUnknown_0203CEC8.slotId = 0;
        }
        else
        {
            sub_81B7A28(taskId);
        }
    }
}

static void sub_81B7C10(u8 taskId)
{
    GetMonNickname(&gPlayerParty[gUnknown_0203CEC8.slotId], gStringVar1);
    StringExpandPlaceholders(gStringVar4, gText_PkmnHPRestoredByVar2);
    sub_81B1B5C(gStringVar4, 0);
    schedule_bg_copy_tilemap_to_vram(2);
    gTasks[taskId].func = task_sacred_ash_party_loop;
}

void sub_81B7C74(u8 taskId, TaskFunc task)
{
    PlaySE(5);
    gCB2_AfterEvolution = gUnknown_0203CEC8.exitCallback;
    if (ExecuteTableBasedItemEffect__(gUnknown_0203CEC8.slotId, gSpecialVar_ItemId, 0))
    {
        gUnknown_0203CEE8 = 0;
        sub_81B1B5C(gText_WontHaveEffect, 1);
        schedule_bg_copy_tilemap_to_vram(2);
        gTasks[taskId].func = task;
    }
    else
    {
        RemoveBagItem(gSpecialVar_ItemId, 1);
        FreePartyPointers();
    }
}

u8 GetItemEffectType(u16 item)
{
    const u8 *itemEffect;
    u32 statusCure;

    if (!((item) >= 13 && (item) <= 178))
        return 22;


    if (item == 175)
        itemEffect = gSaveBlock1Ptr->enigmaBerry.itemEffect;
    else
        itemEffect = gItemEffectTable[item - 13];

    if ((itemEffect[0] & (0x30 | 0x0F)) || itemEffect[1] || itemEffect[2] || (itemEffect[3] & 0x80))
        return 0;
    else if (itemEffect[0] & 0x40)
        return 10;
    else if (itemEffect[3] & 0x40)
        return 1;

    statusCure = itemEffect[3] & (0x1 | 0x2 | 0x4 | 0x8 | 0x10 | 0x20);
    if (statusCure || (itemEffect[0] >> 7))
    {
        if (statusCure == 0x20)
            return 4;
        else if (statusCure == 0x10)
            return 3;
        else if (statusCure == 0x8)
            return 5;
        else if (statusCure == 0x4)
            return 6;
        else if (statusCure == 0x2)
            return 7;
        else if (statusCure == 0x1)
            return 8;
        else if (itemEffect[0] >> 7 && !statusCure)
            return 9;
        else
            return 11;
    }

    if (itemEffect[4] & (0x40 | 0x4))
        return 2;
    else if (itemEffect[4] & 0x2)
        return 12;
    else if (itemEffect[4] & 0x1)
        return 13;
    else if (itemEffect[5] & 0x8)
        return 14;
    else if (itemEffect[5] & 0x4)
        return 15;
    else if (itemEffect[5] & 0x2)
        return 16;
    else if (itemEffect[5] & 0x1)
        return 17;
    else if (itemEffect[4] & 0x80)
        return 18;
    else if (itemEffect[4] & 0x20)
        return 19;
    else if (itemEffect[5] & 0x10)
        return 20;
    else if (itemEffect[4] & (0x8 | 0x10))
        return 21;
    else
        return 22;
}

static void sub_81B7E4C(u8 taskId)
{
    struct Pokemon *mon;
    s16 *move;

    if (!gPaletteFade.active)
    {
        mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
        move = &gUnknown_0203CEC8.unkE;
        GetMonNickname(mon, gStringVar1);
        gUnknown_0203CEC8.unkE = GetTutorMove(gSpecialVar_0x8005);
        StringCopy(gStringVar2, gMoveNames[gUnknown_0203CEC8.unkE]);
        move[1] = 2;
        switch (CanMonLearnTMTutor(mon, 0, gSpecialVar_0x8005))
        {
        case CANNOT_LEARN_MOVE:
            sub_81B6D98(taskId, gText_PkmnCantLearnMove);
            return;
        case ALREADY_KNOWS_MOVE:
            sub_81B6D98(taskId, gText_PkmnAlreadyKnows);
            return;
        default:
            if (GiveMoveToMon(mon, gUnknown_0203CEC8.unkE) != 0xFFFF)
            {
                sub_81B6EB4(taskId);
                return;
            }
            break;
        }
        sub_81B6D74(gText_PkmnNeedsToReplaceMove);
        gTasks[taskId].func = sub_81B6FF4;
    }
}

void CB2_PartyMenuFromStartMenu(void)
{
    InitPartyMenu(0, 0, 0, 0, 0, sub_81B1370, CB2_ReturnToFieldWithOpenMenu);
}

void sub_81B7F60(void)
{
    MainCallback callback = (InBattlePyramid() == 0) ? c2_815ABFC : sub_81C4F84;
    InitPartyMenu(0, 0, 5, 0, 6, sub_81B1370, callback);
    gUnknown_0203CEC8.unkC = gSpecialVar_ItemId;
}

static void sub_81B7FAC(u8 taskId)
{
    gUnknown_0203CEFC = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 12);
    if (gUnknown_0203CEFC == 0)
    {
        sub_81B8044(taskId);
    }
    else if (ItemIsMail(gUnknown_0203CEFC))
    {
        sub_81B83B8(taskId);
    }
    else
    {
        sub_81B1D1C(&gPlayerParty[gUnknown_0203CEC8.slotId], gUnknown_0203CEFC, 1);
        gTasks[taskId].func = sub_81B82A0;
    }
}

static void sub_81B8044(u8 taskId)
{
    if (ItemIsMail(gUnknown_0203CEC8.unkC))
    {
        sub_81B83F0(gUnknown_0203CEC8.unkC);
        gUnknown_0203CEC4->exitCallback = sub_81B814C;
        sub_81B12C0(taskId);
    }
    else
    {
        sub_81B8088(taskId);
    }
}

static void sub_81B8088(u8 taskId)
{
    u16 item;

    if (!gPaletteFade.active)
    {
        item = gUnknown_0203CEC8.unkC;
        sub_81B1C84(&gPlayerParty[gUnknown_0203CEC8.slotId], item, 0, 1);
        sub_81B1DB8(&gPlayerParty[gUnknown_0203CEC8.slotId], item);
        sub_81B83F0(item);
        gTasks[taskId].func = sub_81B8104;
    }
}

static void sub_81B8104(u8 taskId)
{
    s8 slot = gUnknown_0203CEC8.slotId;

    if (sub_81B1BD4() != 1)
    {
        sub_81B5C94(&gPlayerParty[slot], &gUnknown_0203CEDC[slot]);
        sub_81B12C0(taskId);
    }
}

static void sub_81B814C(void)
{
    u8 mail;

    sub_81B1DB8(&gPlayerParty[gUnknown_0203CEC8.slotId], gUnknown_0203CEC8.unkC);
    mail = GetMonData(&gPlayerParty[gUnknown_0203CEC8.slotId], 64);
    DoEasyChatScreen(
     4,
     gSaveBlock1Ptr->mail[mail].words,
     sub_81B81A8,
     3);
}

static void sub_81B81A8(void)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    u16 item = GetMonData(mon, 12);

    if (gSpecialVar_Result == 0)
    {
        TakeMailFromMon(mon);
        SetMonData(mon, 12, &gUnknown_0203CEFC);
        RemoveBagItem(gUnknown_0203CEFC, 1);
        sub_81B841C(item);
        SetMainCallback2(gUnknown_0203CEC8.exitCallback);
    }
    else
    {
        InitPartyMenu(gUnknown_0203CEC8.unk8_0, 0xFF, gUnknown_0203CEC8.unkB, 1, 0x7F, sub_81B8230, gUnknown_0203CEC8.exitCallback);
    }
}

static void sub_81B8230(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        if (gUnknown_0203CEFC != 0)
            sub_81B1D68(gUnknown_0203CEC8.unkC, gUnknown_0203CEFC, 0);
        else
            sub_81B1C84(&gPlayerParty[gUnknown_0203CEC8.slotId], gUnknown_0203CEC8.unkC, 0, 1);
        gTasks[taskId].func = sub_81B8104;
    }
}

static void sub_81B82A0(u8 taskId)
{
    if (sub_81B1BD4() != 1)
    {
        sub_81B334C();
        gTasks[taskId].func = sub_81B82D4;
    }
}

static void sub_81B82D4(u8 taskId)
{
    u16 item;

    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        item = gUnknown_0203CEC8.unkC;
        sub_81B83F0(item);
        if (AddBagItem(gUnknown_0203CEFC, 1) == 0)
        {
            sub_81B841C(item);
            pokemon_item_not_removed(gUnknown_0203CEFC);
            sub_81B1B5C(gStringVar4, 0);
            gTasks[taskId].func = sub_81B8104;
        }
        else if (ItemIsMail(item))
        {
            gUnknown_0203CEC4->exitCallback = sub_81B814C;
            sub_81B12C0(taskId);
        }
        else
        {
            sub_81B1DB8(&gPlayerParty[gUnknown_0203CEC8.slotId], item);
            sub_81B1D68(item, gUnknown_0203CEFC, 1);
            gTasks[taskId].func = sub_81B8104;
        }
        break;
    case -1:
        PlaySE(5);
    case 1:
        gTasks[taskId].func = sub_81B8104;
        break;
    }
}

static void sub_81B83B8(u8 taskId)
{
    sub_81B1B5C(gText_RemoveMailBeforeItem, 1);
    schedule_bg_copy_tilemap_to_vram(2);
    gTasks[taskId].func = sub_81B8104;
}

static void sub_81B83F0(u16 item)
{
    if (gUnknown_0203CEC8.unkB == 6)
        RemovePCItem(item, 1);
    else
        RemoveBagItem(item, 1);
}

static bool8 sub_81B841C(u16 item)
{
    if (gUnknown_0203CEC8.unkB == 5)
        return AddBagItem(item, 1);
    else
        return AddPCItem(item, 1);
}

void sub_81B8448(void)
{
    InitPartyMenu(0, 0, 7, 0, 6, sub_81B1370, Mailbox_ReturnToMailListAfterDeposit);
}

static void sub_81B8474(u8 taskId)
{
    struct Pokemon *mon = &gPlayerParty[gUnknown_0203CEC8.slotId];
    struct MailStruct *mail;

    gUnknown_0203CEE8 = 0;
    mail = &gSaveBlock1Ptr->mail[playerPCItemPageInfo.itemsAbove + 6 + playerPCItemPageInfo.cursorPos];
    if (GetMonData(mon, 12) != 0)
    {
        sub_81B1B5C(gText_PkmnHoldingItemCantHoldMail, 1);
    }
    else
    {
        GiveMailToMon2(mon, mail);
        ClearMailStruct(mail);
        sub_81B1B5C(gText_MailTransferredFromMailbox, 1);
    }
    schedule_bg_copy_tilemap_to_vram(2);
    gTasks[taskId].func = sub_81B8104;
}

void InitChooseHalfPartyForBattle(u8 unused)
{
    sub_81B8558();
    InitPartyMenu(4, 0, 0, 0, 0, sub_81B1370, gMain.savedCallback);
    gUnknown_0203CEC8.unk4 = sub_81B879C;
}

void sub_81B8558(void)
{
    memset(gSelectedOrderFromParty, 0, sizeof(gSelectedOrderFromParty));
}

static u8 sub_81B856C(s8 slot)
{
    if (GetBattleEntryEligibility(&gPlayerParty[slot]) == 0)
        return 2;
    if (sub_81B8770(slot + 1) == 1)
        return 1;
    return 0;
}

static bool8 GetBattleEntryEligibility(struct Pokemon *mon)
{
    u16 i = 0;
    u16 species;

    if (GetMonData(mon, 45)
        || GetMonData(mon, 56) > sub_81B8888()
        || (gSaveBlock1Ptr->location.mapGroup == ((25 | (26 << 8)) >> 8)
            && gSaveBlock1Ptr->location.mapNum == ((25 | (26 << 8)) & 0xFF)
            && GetMonData(mon, 12) != 0))
    {
        return 0;
    }

    switch (VarGet(0x40CF))
    {
    case 9:
        if (GetMonData(mon, 57) != 0)
            return 1;
        return 0;
    case 8:
        return 1;
    default:
        species = GetMonData(mon, 11);
        for (; gFrontierBannedSpecies[i] != 0xFFFF; i++)
        {
            if (gFrontierBannedSpecies[i] == species)
                return 0;
        }
        return 1;
    }
}

static u8 sub_81B865C(void)
{
    u8 unk2;
    u8 i, j;
    u8 facility;
    struct Pokemon *party = gPlayerParty;
    u8 unk = sub_81B885C();
    u8 *order = gSelectedOrderFromParty;

    if (order[unk - 1] == 0)
    {
        if (unk == 1)
            return 14;
        ConvertIntToDecimalStringN(gStringVar1, unk, 0, 1);
        return 17;
    }

    facility = VarGet(0x40CF);
    if (facility == 8 || facility == 9)
        return 0xFF;

    unk2 = sub_81B8830();
    for (i = 0; i < unk2 - 1; i++)
    {
        u16 species = GetMonData(&party[order[i] - 1], 11);
        u16 item = GetMonData(&party[order[i] - 1], 12);
        for (j = i + 1; j < unk2; j++)
        {
            if (species == GetMonData(&party[order[j] - 1], 11))
                return 18;
            if (item != 0 && item == GetMonData(&party[order[j] - 1], 12))
                return 19;
        }
    }

    return 0xFF;
}

static bool8 sub_81B8770(u8 slot)
{
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if (gSelectedOrderFromParty[i] == slot)
            return 1;
    }
    return 0;
}

static void sub_81B879C(u8 taskId)
{
    u8 msgId = sub_81B865C();

    if (msgId != 0xFF)
    {
        PlaySE(32);
        display_pokemon_menu_message(msgId);
        gTasks[taskId].func = sub_81B87E8;
    }
    else
    {
        PlaySE(5);
        sub_81B12C0(taskId);
    }
}

static void sub_81B87E8(u8 taskId)
{
    if ((gMain.newKeys & 0x0001) || (gMain.newKeys & 0x0002))
    {
        PlaySE(5);
        display_pokemon_menu_message(0);
        gTasks[taskId].func = sub_81B1370;
    }
}

static u8 sub_81B8830(void)
{
    switch (VarGet(0x40CF))
    {
    case 9:
        return 3;
    case 8:
        return 2;
    default:
        return gSpecialVar_0x8005;
    }
}

static u8 sub_81B885C(void)
{
    switch (VarGet(0x40CF))
    {
    case 9:
        return 1;
    case 8:
        return 2;
    default:
        return gSpecialVar_0x8005;
    }
}

static u8 sub_81B8888(void)
{
    switch (VarGet(0x40CF))
    {
    case 9:
        return 100;
    case 8:
        return 30;
    default:
        if (gSpecialVar_0x8004 == 0)
            return 50;
        return 100;
    }
}

static const u8* sub_81B88BC(void)
{
    u8 facilityNum = VarGet(0x40CF);

    if (!(facilityNum != 8 && facilityNum != 9))
        return gText_CancelBattle;
    else if (facilityNum == 1 && gSpecialVar_0x8005 == 2)
        return gText_ReturnToWaitingRoom;
    else
        return gText_CancelChallenge;
}

void sub_81B8904(u8 initArg, MainCallback callback)
{
    InitPartyMenu(initArg, 0, 0, 0, 0, sub_81B1370, callback);
}

void sub_81B892C(void)
{
    InitPartyMenu(0, 0, 12, 0, 4, sub_81B1370, CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

void sub_81B8958(void)
{
    InitPartyMenu(11, 0, 13, 0, 1, sub_81B1370, CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

static u8 sub_81B8984(void)
{
    if (IsDoubleBattle() == 0)
        return 0;
    if (IsMultiBattle() == 1)
        return 2;
    return 1;
}

void OpenPartyMenuInBattle(u8 arg)
{
    InitPartyMenu(1, sub_81B8984(), arg, 0, 0, sub_81B1370, SetCB2ToReshowScreenAfterMenu);
    nullsub_35();
    pokemon_change_order();
}

void sub_81B89F0(void)
{
    InitPartyMenu(1, sub_81B8984(), 3, 0, 5, sub_81B1370, c2_815ABFC);
    nullsub_35();
    pokemon_change_order();
}

static u8 sub_81B8A2C(struct Pokemon *mon)
{
    if (GetMonData(&gPlayerParty[1], 11) != 0 && GetMonData(mon, 45) == 0)
    {
        if (gUnknown_0203CEC8.unkB == 1)
            return 3;
        if (!(gBattleTypeFlags & 0x40000))
            return 2;
    }
    return 7;
}

static bool8 sub_81B8A7C(void)
{
    u8 slot = GetCursorSelectionMonId();
    u8 newSlot;
    u8 i;

    if (IsMultiBattle() == 1 && (slot == 1 || slot == 4 || slot == 5))
    {
        StringCopy(gStringVar1, GetTrainerPartnerName());
        StringExpandPlaceholders(gStringVar4, gText_CantSwitchWithAlly);
        return 0;
    }
    if (GetMonData(&gPlayerParty[slot], 57) == 0)
    {
        GetMonNickname(&gPlayerParty[slot], gStringVar1);
        StringExpandPlaceholders(gStringVar4, gText_PkmnHasNoEnergy);
        return 0;
    }
    for (i = 0; i < gBattlersCount; i++)
    {
        if (GetBattlerSide(i) == 0 && sub_81B8F38(slot) == gBattlerPartyIndexes[i])
        {
            GetMonNickname(&gPlayerParty[slot], gStringVar1);
            StringExpandPlaceholders(gStringVar4, gText_PkmnAlreadyInBattle);
            return 0;
        }
    }
    if (GetMonData(&gPlayerParty[slot], 45))
    {
        StringExpandPlaceholders(gStringVar4, gText_EggCantBattle);
        return 0;
    }
    if (sub_81B8F38(slot) == gBattleStruct->field_8B)
    {
        GetMonNickname(&gPlayerParty[slot], gStringVar1);
        StringExpandPlaceholders(gStringVar4, gText_PkmnAlreadySelected);
        return 0;
    }
    if (gUnknown_0203CEC8.unkB == 4)
    {
        SetMonPreventsSwitchingString();
        return 0;
    }
    if (gUnknown_0203CEC8.unkB == 2)
    {
        u8 currBattler = gBattlerInMenuId;
        GetMonNickname(&gPlayerParty[pokemon_order_func(gBattlerPartyIndexes[currBattler])], gStringVar1);
        StringExpandPlaceholders(gStringVar4, gText_PkmnCantSwitchOut);
        return 0;
    }
    gUnknown_0203CEE9 = sub_81B8F38(slot);
    gUnknown_0203CEE8 = 1;
    newSlot = pokemon_order_func(gBattlerPartyIndexes[gBattlerInMenuId]);
    sub_81B8FB0(newSlot, slot);
    sub_81B1288(&gPlayerParty[newSlot], &gPlayerParty[slot]);
    return 1;
}

void sub_81B8C68(void)
{
    sub_81B8C88(gUnknown_0203CF00, sub_806D7EC());
}

static void sub_81B8C88(u8 *ptr, bool8 multiplayerFlag)
{
    u8 partyIndexes[6];
    int i, j;

    if (IsMultiBattle() == 1)
    {
        if (multiplayerFlag)
        {
            ptr[0] = 0 | (3 << 4);
            ptr[1] = 5 | (4 << 4);
            ptr[2] = 2 | (1 << 4);
        }
        else
        {
            ptr[0] = 3 | (0 << 4);
            ptr[1] = 2 | (1 << 4);
            ptr[2] = 5 | (4 << 4);
        }
        return;
    }
    else if (IsDoubleBattle() == 0)
    {
        j = 1;
        partyIndexes[0] = gBattlerPartyIndexes[GetBattlerAtPosition(0)];
        for (i = 0; i < 6; i++)
        {
            if (i != partyIndexes[0])
            {
                partyIndexes[j] = i;
                j++;
            }
        }
    }
    else
    {
        j = 2;
        partyIndexes[0] = gBattlerPartyIndexes[GetBattlerAtPosition(0)];
        partyIndexes[1] = gBattlerPartyIndexes[GetBattlerAtPosition(2)];
        for (i = 0; i < 6; i++)
        {
            if (i != partyIndexes[0] && i != partyIndexes[1])
            {
                partyIndexes[j] = i;
                j++;
            }
        }
    }
    for (i = 0; i < 3; i++)
        ptr[i] = (partyIndexes[0 + (i * 2)] << 4) | partyIndexes[1 + (i * 2)];
}

void sub_81B8D64(u8 battlerId, u8 multiplayerFlag)
{
    sub_81B8D88(gBattleStruct->field_60[battlerId], multiplayerFlag, battlerId);
}

static void sub_81B8D88(u8 *ptr, bool8 multiplayerFlag, u8 battlerId)
{
    u8 partyIndexes[6];
    int i, j;
    u8 leftBattler;
    u8 rightBattler;

    if (GetBattlerSide(battlerId) == 0)
    {
        leftBattler = GetBattlerAtPosition(0);
        rightBattler = GetBattlerAtPosition(2);
    }
    else
    {
        leftBattler = GetBattlerAtPosition(1);
        rightBattler = GetBattlerAtPosition(3);
    }

    if (IsMultiBattle() == 1)
    {
        if (multiplayerFlag)
        {
            ptr[0] = 0 | (3 << 4);
            ptr[1] = 5 | (4 << 4);
            ptr[2] = 2 | (1 << 4);
        }
        else
        {
            ptr[0] = 3 | (0 << 4);
            ptr[1] = 2 | (1 << 4);
            ptr[2] = 5 | (4 << 4);
        }
        return;
    }
    else if (IsDoubleBattle() == 0)
    {
        j = 1;
        partyIndexes[0] = gBattlerPartyIndexes[leftBattler];
        for (i = 0; i < 6; i++)
        {
            if (i != partyIndexes[0])
            {
                partyIndexes[j] = i;
                j++;
            }
        }
    }
    else
    {
        j = 2;
        partyIndexes[0] = gBattlerPartyIndexes[leftBattler];
        partyIndexes[1] = gBattlerPartyIndexes[rightBattler];
        for (i = 0; i < 6; i++)
        {
            if (i != partyIndexes[0] && i != partyIndexes[1])
            {
                partyIndexes[j] = i;
                j++;
            }
        }
    }

    for (i = 0; i < 3; i++)
        ptr[i] = (partyIndexes[0 + (i * 2)] << 4) | partyIndexes[1 + (i * 2)];
}

void sub_81B8E80(u8 battlerId, u8 unk, u8 arrayIndex)
{
    u8 possiblePartyIndexes[6];
    u8 unk2 = 0;
    int i, j;
    u8 *battleStructRelated;
    u8 possiblePartyIndexBuffer;

    if (IsMultiBattle())
    {
        battleStructRelated = gBattleStruct->field_60[battlerId];
        for (i = j = 0; i < 3; j++, i++)
        {
            possiblePartyIndexes[j] = battleStructRelated[i] >> 4;
            j++;
            possiblePartyIndexes[j] = battleStructRelated[i] & 0xF;
        }
        possiblePartyIndexBuffer = possiblePartyIndexes[arrayIndex];
        for (i = 0; i < 6; i++)
        {
            if (possiblePartyIndexes[i] == unk)
            {
                unk2 = possiblePartyIndexes[i];
                possiblePartyIndexes[i] = possiblePartyIndexBuffer;
                break;
            }
        }
        if (i != 6)
        {
            possiblePartyIndexes[arrayIndex] = unk2;
            battleStructRelated[0] = (possiblePartyIndexes[0] << 4) | possiblePartyIndexes[1];
            battleStructRelated[1] = (possiblePartyIndexes[2] << 4) | possiblePartyIndexes[3];
            battleStructRelated[2] = (possiblePartyIndexes[4] << 4) | possiblePartyIndexes[5];
        }
    }
}

static u8 sub_81B8F38(u8 slot)
{
    u8 modResult = slot & 1;
    u8 retVal;

    slot /= 2;
    if (modResult != 0)
        retVal = gUnknown_0203CF00[slot] & 0xF;
    else
        retVal = gUnknown_0203CF00[slot] >> 4;
    return retVal;
}

static void sub_81B8F6C(u8 slot, u8 setVal)
{
    bool32 modResult = slot & 1;

    slot /= 2;
    if (modResult != 0)
        gUnknown_0203CF00[slot] = (gUnknown_0203CF00[slot] & 0xF0) | setVal;
    else
        gUnknown_0203CF00[slot] = (gUnknown_0203CF00[slot] & 0xF) | (setVal << 4);
}

void sub_81B8FB0(u8 slot, u8 slot2)
{
    u8 valBuffer = sub_81B8F38(slot);
    sub_81B8F6C(slot, sub_81B8F38(slot2));
    sub_81B8F6C(slot2, valBuffer);
}

u8 pokemon_order_func(u8 slot)
{
    u8 i, j;

    for (j = i = 0; i < 3; j++, i++)
    {
        if ((gUnknown_0203CF00[i] >> 4) != slot)
        {
            j++;
            if ((gUnknown_0203CF00[i] & 0xF) == slot)
                return j;
        }
        else
        {
            return j;
        }
    }
    return 0;
}

static void pokemon_change_order(void)
{
    struct Pokemon *partyBuffer = Alloc(sizeof(gPlayerParty));
    u8 i;

    memcpy(partyBuffer, gPlayerParty, sizeof(gPlayerParty));
    for (i = 0; i < 6; i++)
        memcpy(&gPlayerParty[pokemon_order_func(i)], &partyBuffer[i], sizeof(struct Pokemon));
    Free(partyBuffer);
}

static void sub_81B9080(void)
{
    struct Pokemon *partyBuffer = Alloc(sizeof(gPlayerParty));
    u8 i;

    memcpy(partyBuffer, gPlayerParty, sizeof(gPlayerParty));
    for (i = 0; i < 6; i++)
        memcpy(&gPlayerParty[sub_81B8F38(i)], &partyBuffer[i], sizeof(struct Pokemon));
    Free(partyBuffer);
}

static void sub_81B90D0(void)
{
    u8 i;
    struct Pokemon *mon;
    u8 leadVal;

    for (i = 1; i < 6; i++)
    {
        mon = &gPlayerParty[sub_81B8F38(i)];
        if (GetMonData(mon, 11) != 0 && GetMonData(mon, 57) != 0)
        {
            leadVal = sub_81B8F38(0);
            sub_81B8FB0(0, i);
            sub_81B1288(&gPlayerParty[leadVal], mon);
            break;
        }
    }
}

static void sub_81B9140(void)
{
    SetMainCallback2(SetCB2ToReshowScreenAfterMenu);
}

void sub_81B9150(void)
{
    InitPartyMenu(5, 3, 0, 0, 0x7F, sub_81B917C, gMain.savedCallback);
}

static void sub_81B917C(u8 taskId)
{
    gTasks[taskId].data[0] = 256;
    sub_81B9294(taskId);
    ChangeBgX(2, 0x10000, 0);
    gTasks[taskId].func = sub_81B91B4;
}

static void sub_81B91B4(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u8 i;

    if (!gPaletteFade.active)
    {
        data[0] -= 8;
        sub_81B9294(taskId);
        if (data[0] == 0)
        {
            for (i = 3; i < 6; i++)
            {
                if (gUnknown_02022FF8[i - 3].species != 0)
                    AnimateSelectedPartyIcon(gUnknown_0203CEDC[i].monSpriteId, 0);
            }
            PlaySE(120);
            gTasks[taskId].func = sub_81B9240;
        }
    }
}

static void sub_81B9240(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (++data[0] == 0x100)
        sub_81B12C0(taskId);
}

static void sub_81B9270(u8 spriteId, s16 x)
{
    if (x >= 0)
        gSprites[spriteId].pos2.x = x;
}

static void sub_81B9294(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u8 i;

    for (i = 3; i < 6; i++)
    {
        if (gUnknown_02022FF8[i - 3].species != 0)
        {
            sub_81B9270(gUnknown_0203CEDC[i].monSpriteId, data[0] - 8);
            sub_81B9270(gUnknown_0203CEDC[i].itemSpriteId, data[0] - 8);
            sub_81B9270(gUnknown_0203CEDC[i].pokeballSpriteId, data[0] - 8);
            sub_81B9270(gUnknown_0203CEDC[i].statusSpriteId, data[0] - 8);
        }
    }
    ChangeBgX(2, 0x800, 1);
}

void sub_81B9328(void)
{
    InitPartyMenu(6, 0, 0, 0, 15, sub_81B1370, sub_81B9390);
}

static void sub_81B9354(u8 arg1)
{
    gFieldCallback2 = hm_add_c3_without_phase_2;
    InitPartyMenu(arg1, 0, 11, 0, 0, sub_81B1370, CB2_ReturnToField);
}

static void sub_81B9390(void)
{
    gSpecialVar_0x8004 = GetCursorSelectionMonId();
    if (gSpecialVar_0x8004 >= 6)
        gSpecialVar_0x8004 = 0xFF;
    gFieldCallback2 = hm_add_c3_without_phase_2;
    SetMainCallback2(CB2_ReturnToField);
}

bool8 hm_add_c3_without_phase_2(void)
{
    pal_fill_black();
    CreateTask(task_hm_without_phase_2, 10);
    return 1;
}

static void task_hm_without_phase_2(u8 taskId)
{
    if (IsWeatherNotFadingIn())
    {
        DestroyTask(taskId);
        ScriptContext2_Disable();
        EnableBothScriptContexts();
    }
}

void sub_81B9404(void)
{
    ScriptContext2_Enable();
    FadeScreen(FADE_TO_BLACK, 0);
    CreateTask(sub_81B9424, 10);
}

static void sub_81B9424(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        CleanupOverworldWindowsAndTilemaps();
        InitPartyMenu(2, 0, 11, 0, 0, sub_81B1370, sub_81B9470);
        DestroyTask(taskId);
    }
}

static void sub_81B9470(void)
{
    gContestMonPartyIndex = GetCursorSelectionMonId();
    if (gContestMonPartyIndex >= 6)
        gContestMonPartyIndex = 0xFF;
    gSpecialVar_0x8004 = gContestMonPartyIndex;
    gFieldCallback2 = hm_add_c3_without_phase_2;
    SetMainCallback2(CB2_ReturnToField);
}

void sub_81B94B0(void)
{
    ScriptContext2_Enable();
    FadeScreen(FADE_TO_BLACK, 0);
    CreateTask(sub_81B94D0, 10);
}

static void sub_81B94D0(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        CleanupOverworldWindowsAndTilemaps();
        InitPartyMenu(3, 0, 11, 0, 0, sub_81B1370, sub_81B9390);
        DestroyTask(taskId);
    }
}

void sub_81B951C(void)
{
    ScriptContext2_Enable();
    FadeScreen(FADE_TO_BLACK, 0);
    CreateTask(sub_81B953C, 10);
}

static void sub_81B953C(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        CleanupOverworldWindowsAndTilemaps();
        InitPartyMenu(7, 0, 11, 0, 0, sub_81B1370, sub_81B9588);
        DestroyTask(taskId);
    }
}

static void sub_81B9588(void)
{
    gSpecialVar_0x8004 = GetCursorSelectionMonId();
    if (gSpecialVar_0x8004 >= 6)
        gSpecialVar_0x8004 = 0xFF;
    else
        gSpecialVar_0x8005 = GetNumberOfRelearnableMoves(&gPlayerParty[gSpecialVar_0x8004]);
    gFieldCallback2 = hm_add_c3_without_phase_2;
    SetMainCallback2(CB2_ReturnToField);
}

void sub_81B95E0(void)
{
    u8 i;

    gSpecialVar_Result = 0;
    for (i = 0; i < 3; i++)
    {
        if (GetMonData(&gPlayerParty[i], 12) != 0)
        {
            gSpecialVar_Result = 1;
            break;
        }
    }
}

void sub_81B9620(void)
{
    ScriptContext2_Enable();
    FadeScreen(FADE_TO_BLACK, 0);
    CreateTask(sub_81B9640, 10);
}

static void sub_81B9640(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        CleanupOverworldWindowsAndTilemaps();
        InitPartyMenu(12, 0, 0, 0, 0, sub_81B1370, sub_81B9390);
        DestroyTask(taskId);
    }
}

void sub_81B968C(void)
{
    ShowPokemonSummaryScreen(PSS_MODE_SELECT_MOVE, gPlayerParty, gSpecialVar_0x8004, gPlayerPartyCount - 1, CB2_ReturnToField);
    gFieldCallback = FieldCallback_ReturnToEventScript2;
}

void sub_81B96D0(void)
{
    u8 i;

    gSpecialVar_Result = 0;
    for (i = 0; i < 4; i++)
    {
        if (GetMonData(&gPlayerParty[gSpecialVar_0x8004], 13 + i) != 0)
            gSpecialVar_Result++;
    }
}

void sub_81B9718(void)
{
    struct Pokemon *mon = &gPlayerParty[gSpecialVar_0x8004];
    u16 move = GetMonData(mon, 13 + gSpecialVar_0x8005);

    GetMonNickname(mon, gStringVar1);
    StringCopy(gStringVar2, gMoveNames[move]);
}

void sub_81B9770(void)
{
    u16 i;

    SetMonMoveSlot(&gPlayerParty[gSpecialVar_0x8004], 0, gSpecialVar_0x8005);
    RemoveMonPPBonus(&gPlayerParty[gSpecialVar_0x8004], gSpecialVar_0x8005);
    for (i = gSpecialVar_0x8005; i < 4 - 1; i++)
        sub_81B97DC(&gPlayerParty[gSpecialVar_0x8004], i, i + 1);
}

static void sub_81B97DC(struct Pokemon *mon, u8 slotTo, u8 slotFrom)
{
    u16 move1 = GetMonData(mon, 13 + slotTo);
    u16 move0 = GetMonData(mon, 13 + slotFrom);
    u8 pp1 = GetMonData(mon, 17 + slotTo);
    u8 pp0 = GetMonData(mon, 17 + slotFrom);
    u8 ppBonuses = GetMonData(mon, 21);
    u8 ppBonusMask1 = gPPUpGetMask[slotTo];
    u8 ppBonusMove1 = (ppBonuses & ppBonusMask1) >> (slotTo * 2);
    u8 ppBonusMask2 = gPPUpGetMask[slotFrom];
    u8 ppBonusMove2 = (ppBonuses & ppBonusMask2) >> (slotFrom * 2);
    ppBonuses &= ~ppBonusMask1;
    ppBonuses &= ~ppBonusMask2;
    ppBonuses |= (ppBonusMove1 << (slotFrom * 2)) + (ppBonusMove2 << (slotTo * 2));
    SetMonData(mon, 13 + slotTo, &move0);
    SetMonData(mon, 13 + slotFrom, &move1);
    SetMonData(mon, 17 + slotTo, &pp0);
    SetMonData(mon, 17 + slotFrom, &pp1);
    SetMonData(mon, 21, &ppBonuses);
}

void sub_81B98DC(void)
{
    if (GetMonData(&gPlayerParty[gSpecialVar_0x8004], 45))
        gSpecialVar_Result = 1;
    else
        gSpecialVar_Result = 0;
}

void sub_81B9918(void)
{
    u16 move;
    u32 i, j;

    gSpecialVar_Result = 0;
    move = GetMonData(&gPlayerParty[gSpecialVar_0x8004], 13 + gSpecialVar_0x8005);
    if (move == 57)
    {
        for (i = 0; i < CalculatePlayerPartyCount(); i++)
        {
            if (i != gSpecialVar_0x8004)
            {
                for (j = 0; j < 4; j++)
                {
                    if (GetMonData(&gPlayerParty[i], 13 + j) == 57)
                        return;
                }
            }
        }
        if (AnyStorageMonWithMove(move) != 1)
            gSpecialVar_Result = 1;
    }
}
