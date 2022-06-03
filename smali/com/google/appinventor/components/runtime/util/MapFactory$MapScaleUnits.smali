.class public final enum Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapScaleUnits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field public static final enum METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field public static final enum UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1572
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1577
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "METRIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1582
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "IMPERIAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1567
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1567
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 3

    .prologue
    .line 1567
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 1

    .prologue
    .line 1567
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0
.end method
