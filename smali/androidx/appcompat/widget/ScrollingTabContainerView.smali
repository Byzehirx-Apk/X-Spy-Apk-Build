.class public Landroidx/appcompat/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;,
        Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;,
        Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

.field mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/view/ViewPropertyAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    iput-object v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 84
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 86
    move-object v3, v1

    invoke-static {v3}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v3

    move-object v2, v3

    .line 87
    .local v2, "abp":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 88
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 90
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createTabLayout()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 91
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 8

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    new-instance v2, Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Landroidx/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 216
    .local v1, "spinner":Landroid/widget/Spinner;
    move-object v2, v1

    new-instance v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    return-object v0
.end method

.method private createTabLayout()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 8

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    new-instance v2, Landroidx/appcompat/widget/LinearLayoutCompat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Landroidx/appcompat/R$attr;->actionBarTabBarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 206
    .local v1, "tabLayout":Landroidx/appcompat/widget/LinearLayoutCompat;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    .line 207
    move-object v2, v1

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 208
    move-object v2, v1

    new-instance v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    return-object v0
.end method

.method private isCollapsed()Z
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 8

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    .line 157
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 159
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 160
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 163
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 166
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 167
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 169
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 170
    goto :goto_0
.end method

.method private performExpand()Z
    .locals 8

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 179
    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    :goto_0
    return v0

    .line 175
    .restart local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 176
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 179
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .locals 14

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move/from16 v2, p2

    .local v2, "position":I
    move/from16 v3, p3

    .local v3, "setSelected":Z
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-result-object v5

    move-object v4, v5

    .line 326
    .local v4, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    move-object v6, v4

    move v7, v2

    new-instance v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 328
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_0

    .line 329
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 331
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 332
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 334
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v5, :cond_2

    .line 335
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 337
    :cond_2
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 12

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "setSelected":Z
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-result-object v4

    move-object v3, v4

    .line 311
    .local v3, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    move-object v5, v3

    new-instance v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_0

    .line 314
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 316
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 317
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 319
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v4, :cond_2

    .line 320
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 322
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 9

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 261
    .local v2, "tabView":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 262
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    .line 264
    :cond_0
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView$1;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 272
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 273
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move v1, p1

    .local v1, "visibility":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_0

    .line 236
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 238
    :cond_0
    move v3, v1

    if-nez v3, :cond_2

    .line 239
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 243
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object v2, v3

    .line 244
    .local v2, "anim":Landroid/view/ViewPropertyAnimator;
    move-object v3, v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 246
    move-object v3, v2

    sget-object v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 247
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-object v5, v2

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 248
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 249
    .line 257
    :goto_0
    return-void

    .line 250
    .end local v2    # "anim":Landroid/view/ViewPropertyAnimator;
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object v2, v3

    .line 251
    .restart local v2    # "anim":Landroid/view/ViewPropertyAnimator;
    move-object v3, v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 253
    move-object v3, v2

    sget-object v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 254
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-object v5, v2

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 255
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    .locals 11

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "forAdapter":Z
    new-instance v4, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/content/Context;Landroidx/appcompat/app/ActionBar$Tab;Z)V

    move-object v3, v4

    .line 294
    .local v3, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move v4, v2

    if-eqz v4, :cond_0

    .line 295
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    move-object v4, v3

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    return-object v0

    .line 299
    .restart local v0    # "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    :cond_0
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 301
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v4, :cond_1

    .line 302
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    iput-object v5, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    .line 304
    :cond_1
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 278
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 280
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 282
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v3

    move-object v2, v3

    .line 230
    .local v2, "abp":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 231
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 232
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 287
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 288
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 290
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, p1

    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide v4, p4

    .local v4, "id":J
    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-object v6, v7

    .line 372
    .local v6, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    move-object v7, v6

    invoke-virtual {v7}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/app/ActionBar$Tab;->select()V

    .line 373
    return-void
.end method

.method public onMeasure(II)V
    .locals 12

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    move v3, v9

    .line 98
    .local v3, "widthMode":I
    move v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 99
    .local v4, "lockedExpanded":Z
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 101
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v9

    move v5, v9

    .line 102
    .local v5, "childCount":I
    move v9, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    move v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_0

    move v9, v3

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_4

    .line 104
    :cond_0
    move v9, v5

    const/4 v10, 0x2

    if-le v9, v10, :cond_3

    .line 105
    move-object v9, v0

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ecccccd    # 0.4f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 109
    :goto_1
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 114
    :goto_2
    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v2, v9

    .line 116
    move v9, v4

    if-nez v9, :cond_5

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 118
    .local v6, "canCollapse":Z
    move v9, v6

    if-eqz v9, :cond_7

    .line 120
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 v10, 0x0

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->measure(II)V

    .line 121
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v9

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    if-le v9, v10, :cond_6

    .line 122
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/widget/ScrollingTabContainerView;->performCollapse()V

    .line 130
    :goto_4
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v9

    move v7, v9

    .line 131
    .local v7, "oldWidth":I
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 132
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 134
    .local v8, "newWidth":I
    move v9, v4

    if-eqz v9, :cond_1

    move v9, v7

    move v10, v8

    if-eq v9, v10, :cond_1

    .line 136
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 138
    :cond_1
    return-void

    .line 98
    .end local v4    # "lockedExpanded":Z
    .end local v5    # "childCount":I
    .end local v6    # "canCollapse":Z
    .end local v7    # "oldWidth":I
    .end local v8    # "newWidth":I
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 107
    .restart local v4    # "lockedExpanded":Z
    .restart local v5    # "childCount":I
    :cond_3
    move-object v9, v0

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 111
    :cond_4
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    .line 116
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 124
    .restart local v6    # "canCollapse":Z
    :cond_6
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/widget/ScrollingTabContainerView;->performExpand()Z

    move-result v9

    goto :goto_4

    .line 127
    :cond_7
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/widget/ScrollingTabContainerView;->performExpand()Z

    move-result v9

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->removeAllViews()V

    .line 361
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 362
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 364
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_1

    .line 365
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 367
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->removeViewAt(I)V

    .line 351
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    .line 352
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 354
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v2, :cond_1

    .line 355
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 357
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move v1, p1

    .local v1, "allowCollapse":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 151
    return-void
.end method

.method public setContentHeight(I)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move v1, p1

    .local v1, "contentHeight":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 200
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 201
    return-void
.end method

.method public setTabSelected(I)V
    .locals 8

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 184
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v6

    move v2, v6

    .line 185
    .local v2, "tabCount":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 186
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 187
    .local v4, "child":Landroid/view/View;
    move v6, v3

    move v7, v1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 188
    .local v5, "isSelected":Z
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 189
    move v6, v5

    if-eqz v6, :cond_0

    .line 190
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 185
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v5    # "isSelected":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 193
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_3

    move v6, v1

    if-ltz v6, :cond_3

    .line 194
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 196
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    .line 341
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    .line 342
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 344
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v2, :cond_1

    .line 345
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    .line 347
    :cond_1
    return-void
.end method
