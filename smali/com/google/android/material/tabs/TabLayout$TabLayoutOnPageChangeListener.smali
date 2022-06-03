.class public Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private previousScrollState:I

.field private scrollState:I

.field private final tabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/material/tabs/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 7

    .prologue
    .line 2769
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;
    move-object v1, p1

    .local v1, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2770
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 2771
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    .prologue
    .line 2775
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    iput v3, v2, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 2776
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 2777
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 12

    .prologue
    .line 2782
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "positionOffset":F
    move v3, p3

    .local v3, "positionOffsetPixels":I
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/tabs/TabLayout;

    move-object v4, v7

    .line 2783
    .local v4, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 2786
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    :cond_0
    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 2791
    .local v5, "updateText":Z
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-eqz v7, :cond_4

    :cond_1
    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 2793
    .local v6, "updateIndicator":Z
    move-object v7, v4

    move v8, v1

    move v9, v2

    move v10, v5

    move v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    .line 2795
    .end local v5    # "updateText":Z
    .end local v6    # "updateIndicator":Z
    :cond_2
    return-void

    .line 2786
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 2791
    .restart local v5    # "updateText":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 7

    .prologue
    .line 2799
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;
    move v1, p1

    .local v1, "position":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/tabs/TabLayout;

    move-object v2, v4

    .line 2800
    .local v2, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    .line 2801
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v4

    move v5, v1

    if-eq v4, v5, :cond_1

    move v4, v1

    move-object v5, v2

    .line 2802
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2805
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    if-eqz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2809
    .local v3, "updateIndicator":Z
    move-object v4, v2

    move-object v5, v2

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 2811
    .end local v3    # "updateIndicator":Z
    :cond_1
    return-void

    .line 2805
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 7

    .prologue
    .line 2814
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    iput v2, v1, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 2815
    return-void
.end method
