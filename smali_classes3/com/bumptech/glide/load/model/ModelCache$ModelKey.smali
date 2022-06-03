.class final Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModelKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "model":Ljava/lang/Object;, "TA;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    sget-object v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-object v3, v4

    .line 74
    .local v3, "modelKey":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    .line 75
    new-instance v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;-><init>()V

    move-object v3, v4

    .line 78
    :cond_0
    move-object v4, v3

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->init(Ljava/lang/Object;II)V

    .line 79
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "model":Ljava/lang/Object;, "TA;"
    return-object v0
.end method

.method private init(Ljava/lang/Object;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TA;"
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    .line 86
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    .line 87
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    .line 88
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    if-eqz v3, :cond_1

    .line 97
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-object v2, v3

    .line 98
    .local v2, "other":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 100
    .end local v0    # "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    .end local v2    # "other":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    :goto_1
    return v0

    .line 98
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    .restart local v2    # "other":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 100
    .end local v2    # "other":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    move v1, v2

    .line 106
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    add-int/2addr v2, v3

    move v1, v2

    .line 107
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 108
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    sget-object v1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 92
    return-void
.end method
