.class final Landroidx/core/provider/FontsContractCompat$2;
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
.field final synthetic val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .locals 5

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V
    .locals 5

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$2;
    move-object v1, p1

    .local v1, "typeface":Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 279
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    move-object v2, v1

    iget v2, v2, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v2, :cond_1

    .line 282
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 284
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move-object v3, v1

    iget v3, v3, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {v2, v3}, Landroidx/core/provider/FontsContractCompat$2;->onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
