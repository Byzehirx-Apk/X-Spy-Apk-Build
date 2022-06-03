.class public Landroidx/fragment/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTabHost$SavedState;,
        Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;,
        Landroidx/fragment/app/FragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 137
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 142
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentTransaction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/String;
    move-object v2, p2

    .local v2, "ft":Landroidx/fragment/app/FragmentTransaction;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;

    move-result-object v4

    move-object v3, v4

    .line 336
    .local v3, "newTab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    move-object v5, v3

    if-eq v4, v5, :cond_3

    .line 337
    move-object v4, v2

    if-nez v4, :cond_0

    .line 338
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    move-object v2, v4

    .line 341
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eqz v4, :cond_1

    .line 342
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    .line 343
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 347
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 348
    move-object v4, v3

    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_4

    .line 349
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    move-object v6, v3

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 350
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    iget-object v7, v7, Landroidx/fragment/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 349
    invoke-static {v5, v6, v7}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 351
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    move-object v6, v3

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    move-object v7, v3

    iget-object v7, v7, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 357
    :cond_2
    :goto_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 360
    :cond_3
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/FragmentTabHost;
    return-object v0

    .line 353
    .restart local v0    # "this":Landroidx/fragment/app/FragmentTabHost;
    :cond_4
    move-object v4, v2

    move-object v5, v3

    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    goto :goto_0
.end method

.method private ensureContent()V
    .locals 6

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 219
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 220
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No tab content FrameLayout found for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 13

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v5, v0

    const v6, 0x1020013

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    .line 158
    new-instance v5, Landroid/widget/LinearLayout;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v2, v5

    .line 159
    .local v2, "ll":Landroid/widget/LinearLayout;
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    move-object v5, v0

    move-object v6, v2

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v5, Landroid/widget/TabWidget;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 165
    .local v3, "tw":Landroid/widget/TabWidget;
    move-object v5, v3

    const v6, 0x1020013

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setId(I)V

    .line 166
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 167
    move-object v5, v2

    move-object v6, v3

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v5, Landroid/widget/FrameLayout;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 172
    .local v4, "fl":Landroid/widget/FrameLayout;
    move-object v5, v4

    const v6, 0x1020011

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 173
    move-object v5, v2

    move-object v6, v4

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    move-object v5, v0

    new-instance v6, Landroid/widget/FrameLayout;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v4, v7

    iput-object v6, v5, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 176
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 177
    move-object v5, v2

    move-object v6, v4

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .end local v2    # "ll":Landroid/widget/LinearLayout;
    .end local v3    # "tw":Landroid/widget/TabWidget;
    .end local v4    # "fl":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "tabId":Ljava/lang/String;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .local v3, "count":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 366
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    move-object v4, v5

    .line 367
    .local v4, "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    move-object v5, v4

    move-object v0, v5

    .line 371
    .end local v0    # "this":Landroidx/fragment/app/FragmentTabHost;
    .end local v4    # "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    :goto_1
    return-object v0

    .line 365
    .restart local v0    # "this":Landroidx/fragment/app/FragmentTabHost;
    .restart local v4    # "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v4    # "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const v9, 0x10100f3

    aput v9, v7, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 148
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 149
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    move-object v4, v0

    move-object v5, v0

    invoke-super {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 152
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/widget/TabHost$TabSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    move-object v2, p2

    .local v2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v3, p3

    .local v3, "args":Landroid/os/Bundle;
    move-object v7, v1

    new-instance v8, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 236
    move-object v7, v1

    invoke-virtual {v7}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 237
    .local v4, "tag":Ljava/lang/String;
    new-instance v7, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Landroidx/fragment/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    move-object v5, v7

    .line 239
    .local v5, "info":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v7, :cond_0

    .line 243
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    iput-object v8, v7, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 244
    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_0

    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    .line 245
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    move-object v6, v7

    .line 246
    .local v6, "ft":Landroidx/fragment/app/FragmentTransaction;
    move-object v7, v6

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    .line 247
    move-object v7, v6

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v7

    .line 251
    .end local v6    # "ft":Landroidx/fragment/app/FragmentTransaction;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 252
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 253
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v6, v0

    invoke-super {v6}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 259
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 263
    .local v1, "currentTag":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v2, v6

    .line 264
    .local v2, "ft":Landroidx/fragment/app/FragmentTransaction;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .local v4, "count":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 265
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    move-object v5, v6

    .line 266
    .local v5, "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v7

    iput-object v7, v6, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 267
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v6

    if-nez v6, :cond_0

    .line 268
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 264
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 277
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    move-object v2, v6

    .line 279
    :cond_2
    move-object v6, v2

    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    goto :goto_1

    .line 286
    .end local v5    # "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    :cond_3
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    .line 287
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    move-object v2, v6

    .line 288
    move-object v6, v2

    if-eqz v6, :cond_4

    .line 289
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v6

    .line 290
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    move-result v6

    .line 292
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 297
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    .line 298
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Landroidx/fragment/app/FragmentTabHost$SavedState;

    if-nez v3, :cond_0

    .line 311
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 312
    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/FragmentTabHost$SavedState;

    move-object v2, v3

    .line 315
    .local v2, "ss":Landroidx/fragment/app/FragmentTabHost$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 316
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 317
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v3, v0

    invoke-super {v3}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 303
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Landroidx/fragment/app/FragmentTabHost$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 304
    .local v2, "ss":Landroidx/fragment/app/FragmentTabHost$SavedState;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 305
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentTabHost;
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "tabId":Ljava/lang/String;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v3, :cond_0

    .line 322
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    move-object v2, v3

    .line 323
    .local v2, "ft":Landroidx/fragment/app/FragmentTransaction;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 324
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v3

    .line 327
    .end local v2    # "ft":Landroidx/fragment/app/FragmentTransaction;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v3, :cond_1

    .line 328
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 330
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "l":Landroid/widget/TabHost$OnTabChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 230
    return-void
.end method

.method public setup()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "manager":Landroidx/fragment/app/FragmentManager;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 195
    move-object v3, v0

    invoke-super {v3}, Landroid/widget/TabHost;->setup()V

    .line 196
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 197
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 198
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentTabHost;->ensureContent()V

    .line 199
    return-void
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTabHost;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "manager":Landroidx/fragment/app/FragmentManager;
    move v3, p3

    .local v3, "containerId":I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 203
    move-object v4, v0

    invoke-super {v4}, Landroid/widget/TabHost;->setup()V

    .line 204
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 205
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 206
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 207
    move-object v4, v0

    invoke-direct {v4}, Landroidx/fragment/app/FragmentTabHost;->ensureContent()V

    .line 208
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 212
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTabHost;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 213
    move-object v4, v0

    const v5, 0x1020012

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTabHost;->setId(I)V

    .line 215
    :cond_0
    return-void
.end method
