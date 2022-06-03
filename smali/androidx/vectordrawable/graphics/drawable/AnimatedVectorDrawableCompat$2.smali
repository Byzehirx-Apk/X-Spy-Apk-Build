.class Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 4

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v2, v0

    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v5

    .line 793
    .local v2, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;>;"
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 794
    .local v3, "size":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 795
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    move-object v6, v0

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v5, v6}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 794
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 797
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 9

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v5

    .line 783
    .local v2, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;>;"
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 784
    .local v3, "size":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 785
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    move-object v6, v0

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v5, v6}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 784
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 787
    :cond_0
    return-void
.end method
