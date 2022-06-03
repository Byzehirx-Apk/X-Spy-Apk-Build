.class Lcom/google/android/material/tabs/TabLayout$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 4

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/tabs/TabLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$1;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 1546
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$1;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/ValueAnimator;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$1;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->scrollTo(II)V

    .line 1547
    return-void
.end method
