.class final enum Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
.super Ljava/lang/Enum;
.source "EngineRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field public static final enum CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field public static final enum SOURCE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 137
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "CACHE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 139
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "SOURCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->$VALUES:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

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
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->$VALUES:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    return-object v0
.end method
