.class final Landroidx/transition/ImageViewUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ImageViewUtils;->reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ImageViewUtils$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ImageViewUtils$1;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    sget v4, Landroidx/transition/R$id;->save_scale_type:I

    .line 95
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView$ScaleType;

    move-object v2, v3

    .line 96
    .local v2, "scaleType":Landroid/widget/ImageView$ScaleType;
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    sget v4, Landroidx/transition/R$id;->save_scale_type:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 98
    move-object v3, v2

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v4, :cond_0

    .line 99
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    sget v5, Landroidx/transition/R$id;->save_image_matrix:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 100
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    sget v4, Landroidx/transition/R$id;->save_image_matrix:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 102
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    return-void
.end method
