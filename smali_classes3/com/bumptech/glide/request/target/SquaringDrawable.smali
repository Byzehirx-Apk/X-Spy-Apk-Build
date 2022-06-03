.class public Lcom/bumptech/glide/request/target/SquaringDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    }
.end annotation


# instance fields
.field private mutated:Z

.field private state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

.field private wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V
    .locals 9

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, p1

    .local v1, "wrapped":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    move v2, p2

    .local v2, "side":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, p1

    .local v1, "state":Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    move-object v2, p2

    .local v2, "wrapped":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    move-object v3, p3

    .local v3, "res":Landroid/content/res/Resources;
    move-object v4, v0

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 30
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    .line 31
    move-object v4, v2

    if-nez v4, :cond_1

    .line 32
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 33
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v5, v4, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v5, v4, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    goto :goto_0

    .line 38
    :cond_1
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    goto :goto_0
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->clearColorFilter()V

    .line 94
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    return-void
.end method

.method public getAlpha()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getAlpha()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-static {v1}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-static {v1}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getMinimumHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getMinimumWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getOpacity()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, p1

    .local v1, "padding":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public invalidateSelf()V
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->invalidateSelf()V

    .line 134
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->invalidateSelf()V

    .line 135
    return-void
.end method

.method public isAnimated()Z
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isAnimated()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isRunning()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->mutated:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_0

    .line 197
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v2, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 198
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-direct {v3, v4}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)V

    iput-object v2, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    .line 199
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->mutated:Z

    .line 201
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return-object v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 8

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, p1

    .local v1, "what":Ljava/lang/Runnable;
    move-wide v2, p2

    .local v2, "when":J
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-super {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 146
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 147
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setAlpha(I)V

    .line 157
    return-void
.end method

.method public setBounds(IIII)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(IIII)V

    .line 45
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(IIII)V

    .line 46
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move v1, p1

    .local v1, "configs":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setChangingConfigurations(I)V

    .line 57
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move v1, p1

    .local v1, "color":I
    move-object v2, p2

    .local v2, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 162
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move v1, p1

    .local v1, "dither":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setDither(Z)V

    .line 67
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move v1, p1

    .local v1, "filter":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setFilterBitmap(Z)V

    .line 72
    return-void
.end method

.method public setLoopCount(I)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move v1, p1

    .local v1, "loopCount":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setLoopCount(I)V

    .line 177
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "restart":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    return v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 182
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->stop()V

    .line 187
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/SquaringDrawable;
    move-object v1, p1

    .local v1, "what":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 140
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method
