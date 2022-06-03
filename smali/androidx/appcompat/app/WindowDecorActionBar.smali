.class public Landroidx/appcompat/app/WindowDecorActionBar;
.super Landroidx/appcompat/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;,
        Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

.field mContentAnimations:Z

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mContextView:Landroidx/appcompat/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

.field mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHiddenByApp:Z

.field mHiddenBySystem:Z

.field final mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const-class v0, Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/appcompat/app/WindowDecorActionBar;->$assertionsDisabled:Z

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 10

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move v2, p2

    .local v2, "overlayMode":Z
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 99
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 102
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 111
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 122
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 124
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 129
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/app/WindowDecorActionBar$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar$1;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 152
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/app/WindowDecorActionBar$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar$2;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 160
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/app/WindowDecorActionBar$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar$3;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 170
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 171
    move-object v5, v1

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object v3, v5

    .line 172
    .local v3, "window":Landroid/view/Window;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 173
    .local v4, "decor":Landroid/view/View;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroidx/appcompat/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 174
    move v5, v2

    if-nez v5, :cond_0

    .line 175
    move-object v5, v0

    move-object v6, v4

    const v7, 0x1020002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 177
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 7

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "dialog":Landroid/app/Dialog;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 99
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 102
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 111
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 122
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 124
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 129
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/app/WindowDecorActionBar$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar$1;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 152
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/app/WindowDecorActionBar$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar$2;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 160
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/app/WindowDecorActionBar$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar$3;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 180
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 181
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "layout":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 99
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 102
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 111
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 122
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 124
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 129
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/app/WindowDecorActionBar$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar$1;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 152
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/app/WindowDecorActionBar$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar$2;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 160
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/app/WindowDecorActionBar$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar$3;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 190
    sget-boolean v2, Landroidx/appcompat/app/WindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 191
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method static checkShowingFlags(ZZZ)Z
    .locals 4

    .prologue
    .line 760
    move v0, p0

    .local v0, "hiddenByApp":Z
    move v1, p1

    .local v1, "hiddenBySystem":Z
    move v2, p2

    .local v2, "showingForMode":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 761
    const/4 v3, 0x1

    move v0, v3

    .line 765
    .end local v0    # "hiddenByApp":Z
    :goto_0
    return v0

    .line 762
    .restart local v0    # "hiddenByApp":Z
    :cond_0
    move v3, v0

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_2

    .line 763
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 765
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 3

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    .line 430
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 432
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 433
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_1

    .line 434
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 436
    :cond_1
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 437
    return-void
.end method

.method private configureTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .locals 11

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "position":I
    move-object v7, v1

    check-cast v7, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move-object v3, v7

    .line 545
    .local v3, "tabi":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v7

    move-object v4, v7

    .line 547
    .local v4, "callback":Landroidx/appcompat/app/ActionBar$TabListener;
    move-object v7, v4

    if-nez v7, :cond_0

    .line 548
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Action Bar Tab must have a Callback"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 551
    :cond_0
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 552
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 554
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v7

    .line 555
    .local v5, "count":I
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_1

    .line 556
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move v8, v6

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 555
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 558
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 6

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    .line 289
    .line 309
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v2, Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 294
    .local v1, "tabScroller":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v2, :cond_1

    .line 295
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 296
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 308
    :goto_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 309
    goto :goto_0

    .line 298
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 299
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 300
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_2

    .line 301
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 306
    :cond_2
    :goto_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 304
    :cond_3
    move-object v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v2, :cond_0

    .line 238
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/DecorToolbar;

    move-object v0, v2

    .line 240
    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :goto_0
    return-object v0

    .line 239
    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_1

    .line 240
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/DecorToolbar;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 242
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t make a decor toolbar out of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    if-eqz v5, :cond_2

    move-object v5, v1

    .line 243
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v5, "null"

    goto :goto_1
.end method

.method private hideForActionMode()V
    .locals 3

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v1, :cond_1

    .line 713
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 714
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 715
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 717
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 719
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 13

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "decor":Landroid/view/View;
    move-object v7, v0

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v8, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 196
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v7, :cond_0

    .line 197
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 199
    :cond_0
    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    sget v10, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/appcompat/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 200
    move-object v7, v0

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v8, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 202
    move-object v7, v0

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object v8, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    .line 205
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    if-nez v7, :cond_2

    .line 206
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " can only be used "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "with a compatible window decor layout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 210
    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v8}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 213
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v7}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v7

    move v2, v7

    .line 214
    .local v2, "current":I
    move v7, v2

    const/4 v8, 0x4

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    .line 215
    .local v3, "homeAsUp":Z
    move v7, v3

    if-eqz v7, :cond_3

    .line 216
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 219
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v7

    move-object v4, v7

    .line 220
    .local v4, "abp":Landroidx/appcompat/view/ActionBarPolicy;
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/appcompat/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v3

    if-eqz v8, :cond_8

    :cond_4
    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 221
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v8

    invoke-direct {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 223
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v10, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v5, v7

    .line 226
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v7, v5

    sget v8, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 227
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 229
    :cond_5
    move-object v7, v5

    sget v8, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v6, v7

    .line 230
    .local v6, "elevation":I
    move v7, v6

    if-eqz v7, :cond_6

    .line 231
    move-object v7, v0

    move v8, v6

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/WindowDecorActionBar;->setElevation(F)V

    .line 233
    :cond_6
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    return-void

    .line 214
    .end local v3    # "homeAsUp":Z
    .end local v4    # "abp":Landroidx/appcompat/view/ActionBarPolicy;
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "elevation":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 220
    .restart local v3    # "homeAsUp":Z
    .restart local v4    # "abp":Landroidx/appcompat/view/ActionBarPolicy;
    :cond_8
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "hasEmbeddedTabs":Z
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 265
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 266
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 267
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 272
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 273
    .local v2, "isInTabMode":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 274
    move v3, v2

    if-eqz v3, :cond_3

    .line 275
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 276
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 277
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 283
    :cond_0
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    move v4, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 284
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    move v4, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 285
    return-void

    .line 269
    .end local v2    # "isInTabMode":Z
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 270
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 272
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 280
    .restart local v2    # "isInTabMode":Z
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    .line 283
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 284
    :cond_5
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private shouldAnimateContextView()Z
    .locals 2

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method private showForActionMode()V
    .locals 3

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v1, :cond_1

    .line 687
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 688
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 689
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 691
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 693
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 6

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "fromSystem":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v3, v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v3

    move v2, v3

    .line 774
    .local v2, "shown":Z
    move v3, v2

    if-eqz v3, :cond_1

    .line 775
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v3, :cond_0

    .line 776
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 777
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->doShow(Z)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v3, :cond_0

    .line 781
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 782
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 342
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 5

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V

    .line 563
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .locals 7

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "position":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/app/WindowDecorActionBar;->addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V

    .line 568
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .locals 8

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "position":I
    move v3, p3

    .local v3, "setSelected":Z
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 583
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V

    .line 584
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/app/WindowDecorActionBar;->configureTab(Landroidx/appcompat/app/ActionBar$Tab;I)V

    .line 585
    move v4, v3

    if-eqz v4, :cond_0

    .line 586
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 588
    :cond_0
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 6

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move v2, p2

    .local v2, "setSelected":Z
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 573
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V

    .line 574
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar;->configureTab(Landroidx/appcompat/app/ActionBar$Tab;I)V

    .line 575
    move v3, v2

    if-eqz v3, :cond_0

    .line 576
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 578
    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 11

    .prologue
    .line 875
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v2, p1

    .local v2, "toActionMode":Z
    move v6, v2

    if-eqz v6, :cond_0

    .line 876
    move-object v6, v1

    invoke-direct {v6}, Landroidx/appcompat/app/WindowDecorActionBar;->showForActionMode()V

    .line 881
    :goto_0
    move-object v6, v1

    invoke-direct {v6}, Landroidx/appcompat/app/WindowDecorActionBar;->shouldAnimateContextView()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 883
    move v6, v2

    if-eqz v6, :cond_1

    .line 888
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v7, 0x4

    const-wide/16 v8, 0x64

    invoke-interface {v6, v7, v8, v9}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    move-object v4, v6

    .line 890
    .local v4, "fadeOut":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v7, 0x0

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    move-object v3, v6

    .line 898
    .local v3, "fadeIn":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :goto_1
    new-instance v6, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    move-object v5, v6

    .line 899
    .local v5, "set":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v6, v5

    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->playSequentially(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v6

    .line 900
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 901
    .line 911
    .end local v3    # "fadeIn":Landroidx/core/view/ViewPropertyAnimatorCompat;
    .end local v4    # "fadeOut":Landroidx/core/view/ViewPropertyAnimatorCompat;
    .end local v5    # "set":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    :goto_2
    return-void

    .line 878
    :cond_0
    move-object v6, v1

    invoke-direct {v6}, Landroidx/appcompat/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    .line 893
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v7, 0x0

    const-wide/16 v8, 0xc8

    invoke-interface {v6, v7, v8, v9}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    move-object v3, v6

    .line 895
    .restart local v3    # "fadeIn":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v7, 0x8

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    move-object v4, v6

    .restart local v4    # "fadeOut":Landroidx/core/view/ViewPropertyAnimatorCompat;
    goto :goto_1

    .line 902
    .end local v3    # "fadeIn":Landroidx/core/view/ViewPropertyAnimatorCompat;
    .end local v4    # "fadeOut":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_2
    move v6, v2

    if-eqz v6, :cond_3

    .line 903
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 904
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 906
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 907
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 975
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    .line 977
    const/4 v1, 0x1

    move v0, v1

    .line 979
    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-eqz v1, :cond_0

    .line 313
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-interface {v1, v2}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    .line 314
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

    .line 315
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 317
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 6

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "isVisible":Z
    move v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne v4, v5, :cond_0

    .line 352
    .line 360
    :goto_0
    return-void

    .line 354
    :cond_0
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 356
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 357
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 358
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    move v5, v1

    invoke-interface {v4, v5}, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 360
    :cond_1
    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 10

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "fromSystem":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v5, :cond_0

    .line 838
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v5}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 841
    :cond_0
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_4

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    move v5, v1

    if-eqz v5, :cond_4

    .line 842
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 843
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 844
    new-instance v5, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    move-object v2, v5

    .line 845
    .local v2, "anim":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    move v3, v5

    .line 846
    .local v3, "endingY":F
    move v5, v1

    if-eqz v5, :cond_2

    .line 847
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v4, v5

    .line 848
    .local v4, "topLeft":[I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 849
    move v5, v3

    move-object v6, v4

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v3, v5

    .line 851
    .end local v4    # "topLeft":[I
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v4, v5

    .line 852
    .local v4, "a":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 853
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 854
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 855
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 857
    :cond_3
    move-object v5, v2

    sget-object v6, Landroidx/appcompat/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 858
    move-object v5, v2

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 859
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 860
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 861
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 862
    .line 865
    .end local v2    # "anim":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .end local v3    # "endingY":F
    .end local v4    # "a":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :goto_0
    return-void

    .line 863
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 847
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 10

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "fromSystem":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v5, :cond_0

    .line 789
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v5}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 791
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 793
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    move v5, v1

    if-eqz v5, :cond_5

    .line 795
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 796
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    move v2, v5

    .line 797
    .local v2, "startingY":F
    move v5, v1

    if-eqz v5, :cond_2

    .line 798
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v3, v5

    .line 799
    .local v3, "topLeft":[I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 800
    move v5, v2

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v2, v5

    .line 802
    .end local v3    # "topLeft":[I
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 803
    new-instance v5, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    move-object v3, v5

    .line 804
    .local v3, "anim":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v4, v5

    .line 805
    .local v4, "a":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 806
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 807
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 808
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 809
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 811
    :cond_3
    move-object v5, v3

    sget-object v6, Landroidx/appcompat/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 812
    move-object v5, v3

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 820
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 821
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 822
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 823
    .line 831
    .end local v2    # "startingY":F
    .end local v3    # "anim":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .end local v4    # "a":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_4

    .line 832
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 834
    :cond_4
    return-void

    .line 824
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 825
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 826
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 827
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 829
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 798
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 4

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 675
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public getElevation()F
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public getHideOffset()I
    .locals 2

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    .prologue
    .line 1314
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1320
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :goto_0
    return v0

    .line 1316
    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1318
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 2

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    .line 1302
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1308
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :goto_0
    return v0

    .line 1304
    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    .line 1306
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return-object v0
.end method

.method public getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1361
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/ActionBar$Tab;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return-object v0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 1326
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 10

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 922
    new-instance v4, Landroid/util/TypedValue;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v4

    .line 923
    .local v1, "outValue":Landroid/util/TypedValue;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move-object v2, v4

    .line 924
    .local v2, "currentTheme":Landroid/content/res/Resources$Theme;
    move-object v4, v2

    sget v5, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 925
    move-object v4, v1

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    move v3, v4

    .line 927
    .local v3, "targetThemeRes":I
    move v4, v3

    if-eqz v4, :cond_1

    .line 928
    move-object v4, v0

    new-instance v5, Landroid/view/ContextThemeWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    move v8, v3

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 933
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "targetThemeRes":I
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return-object v0

    .line 930
    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v3    # "targetThemeRes":I
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v5, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return-object v0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 1376
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->hasIcon()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public hasLogo()Z
    .locals 2

    .prologue
    .line 1390
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->hasLogo()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v1, :cond_0

    .line 706
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 707
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 709
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 3

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v1, :cond_0

    .line 724
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 725
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 727
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 2

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/WindowDecorActionBar;->getHeight()I

    move-result v2

    move v1, v2

    .line 871
    .local v1, "height":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v2, :cond_1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/WindowDecorActionBar;->getHideOffset()I

    move-result v2

    move v3, v1

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 2

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    new-instance v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 260
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 3

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v1, :cond_0

    .line 964
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 965
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 967
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 1402
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-nez v5, :cond_0

    .line 1403
    const/4 v5, 0x0

    move v0, v5

    .line 1412
    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :goto_0
    return v0

    .line 1405
    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v5}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v5

    move-object v3, v5

    .line 1406
    .local v3, "menu":Landroid/view/Menu;
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 1407
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 1408
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    .line 1407
    :goto_1
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    move-object v4, v5

    .line 1409
    .local v4, "kmap":Landroid/view/KeyCharacterMap;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5, v6}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1410
    move-object v5, v3

    move v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1408
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1

    .line 1409
    .restart local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 1412
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "visibility":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 322
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/WindowDecorActionBar;->cleanupTabs()V

    .line 426
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 4

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 347
    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 4

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 598
    return-void
.end method

.method public removeTabAt(I)V
    .locals 11

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "position":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-nez v6, :cond_0

    .line 604
    .line 623
    :goto_0
    return-void

    .line 607
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    .line 608
    invoke-virtual {v6}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v6

    :goto_1
    move v2, v6

    .line 609
    .local v2, "selectedTabPosition":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 610
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move-object v3, v6

    .line 611
    .local v3, "removedTab":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 612
    move-object v6, v3

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 615
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 616
    .local v4, "newTabCount":I
    move v6, v1

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 617
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 616
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 608
    .end local v2    # "selectedTabPosition":I
    .end local v3    # "removedTab":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    .end local v4    # "newTabCount":I
    .end local v5    # "i":I
    :cond_2
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 620
    .restart local v2    # "selectedTabPosition":I
    .restart local v3    # "removedTab":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    .restart local v4    # "newTabCount":I
    .restart local v5    # "i":I
    :cond_3
    move v6, v2

    move v7, v1

    if-ne v6, v7, :cond_4

    .line 621
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 623
    :cond_4
    goto :goto_0

    .line 621
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    goto :goto_3
.end method

.method public requestFocus()Z
    .locals 3

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    move-object v1, v2

    .line 452
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 454
    const/4 v2, 0x1

    move v0, v2

    .line 456
    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 6

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "tab":Landroidx/appcompat/app/ActionBar$Tab;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 628
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result v4

    :goto_0
    iput v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 629
    .line 660
    :goto_1
    return-void

    .line 628
    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    .line 633
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v3}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 635
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 636
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    move-object v2, v3

    .line 641
    .local v2, "trans":Landroidx/fragment/app/FragmentTransaction;
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move-object v4, v1

    if-ne v3, v4, :cond_5

    .line 642
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v3, :cond_2

    .line 643
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabReselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 644
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 657
    :cond_2
    :goto_3
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 658
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v3

    .line 660
    :cond_3
    goto :goto_1

    .line 638
    .end local v2    # "trans":Landroidx/fragment/app/FragmentTransaction;
    :cond_4
    const/4 v3, 0x0

    move-object v2, v3

    .restart local v2    # "trans":Landroidx/fragment/app/FragmentTransaction;
    goto :goto_2

    .line 647
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v4, v1

    if-eqz v4, :cond_7

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result v4

    :goto_4
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 648
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v3, :cond_6

    .line 649
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabUnselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 651
    :cond_6
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    iput-object v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    .line 652
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v3, :cond_2

    .line 653
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    goto :goto_3

    .line 647
    :cond_7
    const/4 v4, -0x1

    goto :goto_4
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 484
    return-void
.end method

.method public setCustomView(I)V
    .locals 7

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 365
    invoke-interface {v5}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x0

    .line 364
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1286
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1287
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 5

    .prologue
    .line 1291
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "layoutParams":Landroidx/appcompat/app/ActionBar$LayoutParams;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1293
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 4

    .prologue
    .line 1395
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "enable":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v2, :cond_0

    .line 1396
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1398
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 5

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "showHomeAsUp":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    :goto_0
    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 381
    return-void

    .line 380
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 4

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "options":I
    move v2, v1

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 467
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 469
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 470
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 9

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "options":I
    move v2, p2

    .local v2, "mask":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v4}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v4

    move v3, v4

    .line 475
    .local v3, "current":I
    move v4, v2

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 476
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 478
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v5, v1

    move v6, v2

    and-int/2addr v5, v6

    move v6, v3

    move v7, v2

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 479
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 5

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "showCustom":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    :goto_0
    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 391
    return-void

    .line 390
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 5

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "showHome":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 376
    return-void

    .line 375
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 5

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "showTitle":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 386
    return-void

    .line 385
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 5

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "useLogo":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 371
    return-void

    .line 370
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "elevation":F
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 250
    return-void
.end method

.method public setHideOffset(I)V
    .locals 6

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "offset":I
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 752
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 755
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 756
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 6

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "hideOnContentScroll":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 732
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 736
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 737
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 4

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 959
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 953
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "description":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 954
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 4

    .prologue
    .line 948
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 949
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "indicator":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 944
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "enable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 396
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 1367
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(I)V

    .line 1368
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1372
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1373
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 9

    .prologue
    .line 1297
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/SpinnerAdapter;
    move-object v2, p2

    .local v2, "callback":Landroidx/appcompat/app/ActionBar$OnNavigationListener;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v4, v1

    new-instance v5, Landroidx/appcompat/app/NavItemSelectedListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroidx/appcompat/app/NavItemSelectedListener;-><init>(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1298
    return-void
.end method

.method public setLogo(I)V
    .locals 4

    .prologue
    .line 1381
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(I)V

    .line 1382
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1386
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "logo":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1387
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6

    .prologue
    .line 1331
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "mode":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v3}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v3

    move v2, v3

    .line 1332
    .local v2, "oldMode":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 1339
    :goto_0
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_0

    .line 1340
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 1341
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1344
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v4, v1

    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1345
    move v3, v1

    packed-switch v3, :pswitch_data_1

    .line 1355
    :cond_1
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1356
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1357
    return-void

    .line 1334
    :pswitch_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v4

    iput v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1335
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 1336
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1347
    :pswitch_1
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1348
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1349
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1350
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1351
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 1355
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 1356
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1345
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .locals 6

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 418
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :pswitch_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 413
    .line 421
    :goto_0
    return-void

    .line 415
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 416
    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 334
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v2, :cond_0

    .line 335
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 337
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 494
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 489
    return-void
.end method

.method public setSubtitle(I)V
    .locals 5

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 406
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "subtitle":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v1, :cond_0

    .line 680
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 681
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 683
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 3

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v1, :cond_0

    .line 698
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 699
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 701
    :cond_0
    return-void
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 9

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v1, p1

    .local v1, "callback":Landroidx/appcompat/view/ActionMode$Callback;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v3, :cond_0

    .line 524
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 527
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 528
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 529
    new-instance v3, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;Landroid/content/Context;Landroidx/appcompat/view/ActionMode$Callback;)V

    move-object v2, v3

    .line 530
    .local v2, "mode":Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    .line 534
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 535
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/ActionMode;)V

    .line 536
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 537
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 538
    move-object v3, v2

    move-object v0, v3

    .line 540
    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method
