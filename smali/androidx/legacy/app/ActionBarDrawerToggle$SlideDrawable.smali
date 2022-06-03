.class Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/legacy/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/legacy/app/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Landroidx/legacy/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;
    move-object v1, p1

    move-object v2, p2

    .local v2, "wrapped":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroidx/legacy/app/ActionBarDrawerToggle;

    .line 551
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 544
    move-object v3, v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    .line 545
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 552
    return-void

    .line 544
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 583
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 586
    move-object v5, v0

    iget-object v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroidx/legacy/app/ActionBarDrawerToggle;

    iget-object v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 587
    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 586
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 588
    .local v2, "isLayoutRTL":Z
    move v5, v2

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    :goto_1
    move v3, v5

    .line 589
    .local v3, "flipRtl":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    move v4, v5

    .line 590
    .local v4, "width":I
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v6, v6

    move v7, v4

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    mul-float/2addr v6, v7

    move v7, v3

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 593
    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    if-nez v5, :cond_0

    .line 594
    move-object v5, v1

    move v6, v4

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 595
    move-object v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 598
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 599
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 600
    return-void

    .line 586
    .end local v2    # "isLayoutRTL":Z
    .end local v3    # "flipRtl":I
    .end local v4    # "width":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 588
    .restart local v2    # "isLayoutRTL":Z
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public getPosition()F
    .locals 2

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;
    move-object v1, v0

    iget v1, v1, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    move v0, v1

    .end local v0    # "this":Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;
    return v0
.end method

.method public setOffset(F)V
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;
    move v1, p1

    .local v1, "offset":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    .line 577
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 578
    return-void
.end method

.method public setPosition(F)V
    .locals 4

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;
    move v1, p1

    .local v1, "position":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    .line 561
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 562
    return-void
.end method
