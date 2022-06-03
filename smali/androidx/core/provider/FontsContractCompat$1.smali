.class final Landroidx/core/provider/FontsContractCompat$1;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Landroidx/core/provider/FontRequest;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$1;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/core/provider/FontsContractCompat$1;->val$context:Landroid/content/Context;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/core/provider/FontsContractCompat$1;->val$request:Landroidx/core/provider/FontRequest;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/core/provider/FontsContractCompat$1;->val$style:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/core/provider/FontsContractCompat$1;->val$id:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$1;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$1;->val$context:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/FontsContractCompat$1;->val$request:Landroidx/core/provider/FontRequest;

    move-object v4, v0

    iget v4, v4, Landroidx/core/provider/FontsContractCompat$1;->val$style:I

    invoke-static {v2, v3, v4}, Landroidx/core/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v2

    move-object v1, v2

    .line 260
    .local v1, "typeface":Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    move-object v2, v1

    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    .line 261
    sget-object v2, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/provider/FontsContractCompat$1;->val$id:Ljava/lang/String;

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$1;
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$1;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$1;->call()Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$1;
    return-object v0
.end method
