.class final Landroidx/core/provider/FontsContractCompat$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


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
        "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback",
        "<",
        "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$3;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V
    .locals 8

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$3;
    move-object v1, p1

    .local v1, "typeface":Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    sget-object v5, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 309
    :try_start_0
    sget-object v5, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v2, v5

    .line 310
    .local v2, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    .line 311
    move-object v5, v3

    monitor-exit v5

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    sget-object v5, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 314
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 316
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    .end local v2    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5

    .line 318
    .restart local v2    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    .restart local v3    # "i":I
    :cond_1
    goto :goto_0
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$3;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {v2, v3}, Landroidx/core/provider/FontsContractCompat$3;->onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
