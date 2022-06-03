.class public final enum Lcom/bumptech/glide/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/Priority;

.field public static final enum HIGH:Lcom/bumptech/glide/Priority;

.field public static final enum IMMEDIATE:Lcom/bumptech/glide/Priority;

.field public static final enum LOW:Lcom/bumptech/glide/Priority;

.field public static final enum NORMAL:Lcom/bumptech/glide/Priority;

.field public static final enum priority:Lcom/bumptech/glide/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lcom/bumptech/glide/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "IMMEDIATE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 10
    new-instance v0, Lcom/bumptech/glide/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 11
    new-instance v0, Lcom/bumptech/glide/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "NORMAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 12
    new-instance v0, Lcom/bumptech/glide/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "LOW"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    new-instance v0, Lcom/bumptech/glide/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "priority"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/Priority;->priority:Lcom/bumptech/glide/Priority;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bumptech/glide/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/bumptech/glide/Priority;->priority:Lcom/bumptech/glide/Priority;

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/Priority;->$VALUES:[Lcom/bumptech/glide/Priority;

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
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Priority;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/Priority;
    .locals 3

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/bumptech/glide/Priority;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/Priority;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/Priority;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/bumptech/glide/Priority;->$VALUES:[Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, [Lcom/bumptech/glide/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/Priority;

    return-object v0
.end method
