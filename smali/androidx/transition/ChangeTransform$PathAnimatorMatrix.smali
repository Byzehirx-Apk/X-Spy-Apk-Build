.class Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .locals 7

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "values":[F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 550
    move-object v3, v0

    new-instance v4, Landroid/graphics/Matrix;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v3, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 557
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    .line 558
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iput-object v4, v3, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 559
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v3, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 560
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iput v4, v3, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 561
    move-object v3, v0

    invoke-direct {v3}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 562
    return-void
.end method

.method private setAnimationMatrix()V
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v2, 0x2

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    aput v3, v1, v2

    .line 577
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v2, 0x5

    move-object v3, v0

    iget v3, v3, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    aput v3, v1, v2

    .line 578
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 579
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2}, Landroidx/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 580
    return-void
.end method


# virtual methods
.method getMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    return-object v0
.end method

.method setTranslation(Landroid/graphics/PointF;)V
    .locals 4

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    move-object v1, p1

    .local v1, "translation":Landroid/graphics/PointF;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 571
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 572
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 573
    return-void
.end method

.method setValues([F)V
    .locals 7

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    move-object v1, p1

    .local v1, "values":[F
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v5, 0x0

    move-object v6, v1

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 567
    return-void
.end method
