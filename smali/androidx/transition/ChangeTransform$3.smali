.class Landroidx/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeTransform;->createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroidx/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Landroidx/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 11

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/transition/ChangeTransform;
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    move-object v7, v0

    move v8, v2

    iput-boolean v8, v7, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    move-object v7, v0

    invoke-direct {v7}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    move-object v7, v0

    new-instance v8, Landroid/graphics/Matrix;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v7, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$3;
    move-object v1, p1

    .local v1, "currentMatrix":Landroid/graphics/Matrix;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 360
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->transition_transform:I

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 361
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 362
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$3;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 331
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$3;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    if-nez v2, :cond_0

    .line 336
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    iget-boolean v2, v2, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v2, :cond_1

    .line 337
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroidx/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 343
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 344
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 345
    return-void

    .line 339
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->transition_transform:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 340
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->parent_matrix:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$3;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {v3}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object v2, v3

    .line 350
    .local v2, "currentMatrix":Landroid/graphics/Matrix;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 351
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeTransform$3;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {v2}, Landroidx/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 356
    return-void
.end method
