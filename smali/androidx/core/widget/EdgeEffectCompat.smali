.class public final Landroidx/core/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# instance fields
.field private mEdgeEffect:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    new-instance v3, Landroid/widget/EdgeEffect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 49
    return-void
.end method

.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 6
    .param p0    # Landroid/widget/EdgeEffect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "edgeEffect":Landroid/widget/EdgeEffect;
    move v1, p1

    .local v1, "deltaDistance":F
    move v2, p2

    .local v2, "displacement":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 153
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/EdgeEffectCompat;
    return v0
.end method

.method public finish()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 87
    return-void
.end method

.method public isFinished()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/EdgeEffectCompat;
    return v0
.end method

.method public onAbsorb(I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move v1, p1

    .local v1, "velocity":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 191
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/EdgeEffectCompat;
    return v0
.end method

.method public onPull(F)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move v1, p1

    .local v1, "deltaDistance":F
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 105
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/EdgeEffectCompat;
    return v0
.end method

.method public onPull(FF)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move v1, p1

    .local v1, "deltaDistance":F
    move v2, p2

    .local v2, "displacement":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 130
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Landroidx/core/widget/EdgeEffectCompat;
    return v0
.end method

.method public onRelease()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 172
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/EdgeEffectCompat;
    return v0
.end method

.method public setSize(II)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/EdgeEffectCompat;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 62
    return-void
.end method
