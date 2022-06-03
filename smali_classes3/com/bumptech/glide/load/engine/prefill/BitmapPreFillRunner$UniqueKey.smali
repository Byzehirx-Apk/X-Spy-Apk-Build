.class Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniqueKey"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1;)V
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 152
    return-void
.end method
