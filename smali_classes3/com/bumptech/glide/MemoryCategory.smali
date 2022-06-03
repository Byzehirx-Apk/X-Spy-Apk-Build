.class public final enum Lcom/bumptech/glide/MemoryCategory;
.super Ljava/lang/Enum;
.source "MemoryCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/MemoryCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/MemoryCategory;

.field public static final enum HIGH:Lcom/bumptech/glide/MemoryCategory;

.field public static final enum LOW:Lcom/bumptech/glide/MemoryCategory;

.field public static final enum NORMAL:Lcom/bumptech/glide/MemoryCategory;


# instance fields
.field private multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 10
    new-instance v0, Lcom/bumptech/glide/MemoryCategory;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "LOW"

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3, v4}, Lcom/bumptech/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/bumptech/glide/MemoryCategory;->LOW:Lcom/bumptech/glide/MemoryCategory;

    .line 14
    new-instance v0, Lcom/bumptech/glide/MemoryCategory;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "NORMAL"

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/bumptech/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    .line 18
    new-instance v0, Lcom/bumptech/glide/MemoryCategory;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "HIGH"

    const/4 v3, 0x2

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2, v3, v4}, Lcom/bumptech/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/bumptech/glide/MemoryCategory;->HIGH:Lcom/bumptech/glide/MemoryCategory;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/MemoryCategory;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/bumptech/glide/MemoryCategory;->LOW:Lcom/bumptech/glide/MemoryCategory;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/bumptech/glide/MemoryCategory;->HIGH:Lcom/bumptech/glide/MemoryCategory;

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/MemoryCategory;->$VALUES:[Lcom/bumptech/glide/MemoryCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/MemoryCategory;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "multiplier":F
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/bumptech/glide/MemoryCategory;->multiplier:F

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/MemoryCategory;
    .locals 3

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/bumptech/glide/MemoryCategory;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/MemoryCategory;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/MemoryCategory;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/bumptech/glide/MemoryCategory;->$VALUES:[Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {v0}, [Lcom/bumptech/glide/MemoryCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/MemoryCategory;

    return-object v0
.end method


# virtual methods
.method public getMultiplier()F
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/MemoryCategory;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/MemoryCategory;->multiplier:F

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/MemoryCategory;
    return v0
.end method
