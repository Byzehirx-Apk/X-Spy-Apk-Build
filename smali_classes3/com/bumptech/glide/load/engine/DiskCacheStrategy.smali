.class public final enum Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.super Ljava/lang/Enum;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;


# instance fields
.field private final cacheResult:Z

.field private final cacheSource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "ALL"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 10
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "NONE"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 12
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "SOURCE"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 14
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "RESULT"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->$VALUES:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "cacheSource":Z
    move v4, p4

    .local v4, "cacheResult":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    .line 21
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 3

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->$VALUES:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method


# virtual methods
.method public cacheResult()Z
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    return v0
.end method

.method public cacheSource()Z
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    return v0
.end method
