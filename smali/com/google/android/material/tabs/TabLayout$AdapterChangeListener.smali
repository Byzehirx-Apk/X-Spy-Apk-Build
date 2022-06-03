.class Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private autoRefresh:Z

.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 4

    .prologue
    .line 2862
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 7
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2869
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;
    move-object v1, p1

    .local v1, "viewPager":Landroidx/viewpager/widget/ViewPager;
    move-object v2, p2

    .local v2, "oldAdapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v3, p3

    .local v3, "newAdapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 2870
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 2872
    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 4

    .prologue
    .line 2875
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;
    move v1, p1

    .local v1, "autoRefresh":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->autoRefresh:Z

    .line 2876
    return-void
.end method
