.class Landroidx/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade$FadeAnimatorListener;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 181
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 184
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 185
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade$FadeAnimatorListener;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 199
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz v2, :cond_0

    .line 200
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade$FadeAnimatorListener;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 190
    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-nez v2, :cond_0

    .line 191
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 192
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 194
    :cond_0
    return-void
.end method
