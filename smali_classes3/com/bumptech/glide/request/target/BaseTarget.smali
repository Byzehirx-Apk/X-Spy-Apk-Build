.class public abstract Lcom/bumptech/glide/request/target/BaseTarget;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/BaseTarget;->request:Lcom/bumptech/glide/request/Request;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 75
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 83
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/target/BaseTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 35
    return-void
.end method
