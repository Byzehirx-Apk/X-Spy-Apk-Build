.class public abstract Lcom/bumptech/glide/request/target/SimpleTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "SimpleTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SimpleTarget;, "Lcom/bumptech/glide/request/target/SimpleTarget<TZ;>;"
    move-object v1, v0

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SimpleTarget;, "Lcom/bumptech/glide/request/target/SimpleTarget<TZ;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    .line 46
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    .line 47
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    .line 48
    return-void
.end method


# virtual methods
.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SimpleTarget;, "Lcom/bumptech/glide/request/target/SimpleTarget<TZ;>;"
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", either provide dimensions in the constructor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " or call override()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-interface {v2, v3, v4}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 63
    return-void
.end method
