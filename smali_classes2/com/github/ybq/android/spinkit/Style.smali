.class public final enum Lcom/github/ybq/android/spinkit/Style;
.super Ljava/lang/Enum;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/ybq/android/spinkit/Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum PULSE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum WAVE:Lcom/github/ybq/android/spinkit/Style;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 8
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "ROTATING_PLANE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

    .line 9
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "DOUBLE_BOUNCE"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    .line 10
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "WAVE"

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->WAVE:Lcom/github/ybq/android/spinkit/Style;

    .line 11
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "WANDERING_CUBES"

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

    .line 12
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "PULSE"

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->PULSE:Lcom/github/ybq/android/spinkit/Style;

    .line 13
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "CHASING_DOTS"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

    .line 14
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "THREE_BOUNCE"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    .line 15
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "CIRCLE"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 16
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "CUBE_GRID"

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

    .line 17
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "FADING_CIRCLE"

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 18
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "FOLDING_CUBE"

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

    .line 19
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "ROTATING_CIRCLE"

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 20
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "MULTIPLE_PULSE"

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

    .line 21
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "PULSE_RING"

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    .line 22
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "MULTIPLE_PULSE_RING"

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    .line 6
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/github/ybq/android/spinkit/Style;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->WAVE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->PULSE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x6

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x7

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x8

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x9

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xa

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xb

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xc

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xd

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xe

    sget-object v3, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    aput-object v3, v1, v2

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->$VALUES:[Lcom/github/ybq/android/spinkit/Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/Style;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "value":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/github/ybq/android/spinkit/Style;->value:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/ybq/android/spinkit/Style;
    .locals 3

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/github/ybq/android/spinkit/Style;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/github/ybq/android/spinkit/Style;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/github/ybq/android/spinkit/Style;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/github/ybq/android/spinkit/Style;->$VALUES:[Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v0}, [Lcom/github/ybq/android/spinkit/Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/ybq/android/spinkit/Style;

    return-object v0
.end method
