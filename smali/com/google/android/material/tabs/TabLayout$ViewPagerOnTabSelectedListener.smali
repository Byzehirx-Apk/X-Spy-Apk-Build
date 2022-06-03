.class public Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 4

    .prologue
    .line 2825
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;
    move-object v1, p1

    .local v1, "viewPager":Landroidx/viewpager/widget/ViewPager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2826
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2827
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .prologue
    .line 2842
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4

    .prologue
    .line 2831
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;
    move-object v1, p1

    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 2832
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .prologue
    .line 2837
    return-void
.end method
