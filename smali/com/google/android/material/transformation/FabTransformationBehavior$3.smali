.class Lcom/google/android/material/transformation/FabTransformationBehavior$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

.field final synthetic val$circularRevealChild:Lcom/google/android/material/circularreveal/CircularRevealWidget;

.field final synthetic val$icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->val$circularRevealChild:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->val$icon:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$3;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->val$circularRevealChild:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$3;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->val$circularRevealChild:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->val$icon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    return-void
.end method
