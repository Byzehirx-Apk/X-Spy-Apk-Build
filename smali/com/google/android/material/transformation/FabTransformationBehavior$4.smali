.class Lcom/google/android/material/transformation/FabTransformationBehavior$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

.field final synthetic val$circularRevealChild:Lcom/google/android/material/circularreveal/CircularRevealWidget;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V
    .locals 5

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/transformation/FabTransformationBehavior;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$4;->this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$4;->val$circularRevealChild:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$4;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$4;->val$circularRevealChild:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-interface {v3}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v3

    move-object v2, v3

    .line 368
    .local v2, "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v3, v2

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 369
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$4;->val$circularRevealChild:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 370
    return-void
.end method
