.class public final enum Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1546
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1551
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "ROADS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1556
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "AERIAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1561
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "TERRAIN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1541
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

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
    .line 1541
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 3

    .prologue
    .line 1541
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 1

    .prologue
    .line 1541
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    return-object v0
.end method
