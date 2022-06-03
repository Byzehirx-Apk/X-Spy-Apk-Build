.class public final enum Lcom/google/appinventor/components/runtime/util/DeviceStorage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/util/DeviceStorage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum EXTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum EXTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum INTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum INTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum INTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum MEMORY_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum MEMORY_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum MEMORY_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/DeviceStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 10
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "EXTERNAL_STORAGE_TOTAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 11
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "EXTERNAL_STORAGE_AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 12
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "EXTERNAL_STORAGE_USED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 14
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "INTERNAL_STORAGE_TOTAL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 15
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "INTERNAL_STORAGE_AVAILABLE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "INTERNAL_STORAGE_USED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "MEMORY_TOTAL"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "MEMORY_AVAILABLE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "MEMORY_USED"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/DeviceStorage;

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
    .line 9
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/DeviceStorage;
    .locals 3

    .prologue
    .line 9
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/DeviceStorage;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/DeviceStorage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    return-object v0
.end method
