.class Landroidx/appcompat/app/AppCompatDelegateImpl;
.super Landroidx/appcompat/app/AppCompatDelegate;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final IS_PRE_LOLLIPOP:Z

.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

.field mActionMode:Landroidx/appcompat/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

.field final mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

.field private mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

.field private mClosingActionMenu:Z

.field final mContext:Landroid/content/Context;

.field private mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mHandleNativeActionModes:Z

.field mHasActionBar:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field mIsDestroyed:Z

.field mIsFloating:Z

.field private mLocalNightMode:I

.field private mLongPressBackDown:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mPanelMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

.field private mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field private mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    .line 119
    const/4 v1, 0x1

    new-array v1, v1, [I

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const v4, 0x1010054

    aput v4, v2, v3

    sput-object v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->sWindowBackgroundStyleable:[I

    .line 128
    sget-boolean v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->sInstalledExceptionHandler:Z

    if-nez v1, :cond_0

    .line 130
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    move-object v0, v1

    .line 132
    .local v0, "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$1;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 157
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->sInstalledExceptionHandler:Z

    .line 159
    :cond_0
    return-void

    .line 116
    .end local v0    # "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;)V
    .locals 12

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "window":Landroid/view/Window;
    move-object v3, p3

    .local v3, "callback":Landroidx/appcompat/app/AppCompatCallback;
    move-object v6, v0

    invoke-direct {v6}, Landroidx/appcompat/app/AppCompatDelegate;-><init>()V

    .line 180
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 182
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    .line 215
    move-object v6, v0

    const/16 v7, -0x64

    iput v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 223
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/app/AppCompatDelegateImpl$2;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 245
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 246
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 247
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    .line 249
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 250
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    if-eqz v6, :cond_0

    .line 251
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "AppCompat has already installed itself into the Window"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 254
    :cond_0
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 256
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 258
    move-object v6, v1

    const/4 v7, 0x0

    sget-object v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->sWindowBackgroundStyleable:[I

    invoke-static {v6, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v6

    move-object v4, v6

    .line 260
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 261
    .local v5, "winBg":Landroid/graphics/drawable/Drawable;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 262
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 265
    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 9

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ContentFrameLayout;

    move-object v1, v4

    .line 737
    .local v1, "cfl":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 738
    .local v2, "windowDecor":Landroid/view/View;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    move-object v6, v2

    .line 739
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    move-object v8, v2

    .line 740
    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    .line 738
    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/appcompat/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 742
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v5, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 743
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 744
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 746
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    move-object v6, v1

    .line 748
    invoke-virtual {v6}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 747
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 750
    :cond_0
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 751
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    move-object v6, v1

    .line 752
    invoke-virtual {v6}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 751
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 754
    :cond_1
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    move-object v6, v1

    .line 756
    invoke-virtual {v6}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 755
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 758
    :cond_2
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 759
    move-object v4, v3

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    move-object v6, v1

    .line 760
    invoke-virtual {v6}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 759
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 762
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 764
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    .line 765
    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 13

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v8, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v1, v7

    .line 553
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v7, v1

    sget v8, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 554
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 555
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 559
    :cond_0
    move-object v7, v1

    sget v8, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 560
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    move-result v7

    .line 565
    :cond_1
    :goto_0
    move-object v7, v1

    sget v8, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 566
    move-object v7, v0

    const/16 v8, 0x6d

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    move-result v7

    .line 568
    :cond_2
    move-object v7, v1

    sget v8, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 569
    move-object v7, v0

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    move-result v7

    .line 571
    :cond_3
    move-object v7, v0

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    .line 572
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 577
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move-object v2, v7

    .line 578
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x0

    move-object v3, v7

    .line 581
    .local v3, "subDecor":Landroid/view/ViewGroup;
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    if-nez v7, :cond_b

    .line 582
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    if-eqz v7, :cond_6

    .line 584
    move-object v7, v2

    sget v8, Landroidx/appcompat/R$layout;->abc_dialog_title_material:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 588
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput-boolean v10, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    iput-boolean v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    .line 669
    :cond_4
    :goto_1
    move-object v7, v3

    if-nez v7, :cond_e

    .line 670
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", windowActionBarOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", android:windowIsFloating: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", windowActionModeOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", windowNoTitle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 561
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "subDecor":Landroid/view/ViewGroup;
    :cond_5
    move-object v7, v1

    sget v8, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 563
    move-object v7, v0

    const/16 v8, 0x6c

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    move-result v7

    goto/16 :goto_0

    .line 589
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "subDecor":Landroid/view/ViewGroup;
    :cond_6
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v7, :cond_4

    .line 595
    new-instance v7, Landroid/util/TypedValue;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    move-object v4, v7

    .line 596
    .local v4, "outValue":Landroid/util/TypedValue;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Landroidx/appcompat/R$attr;->actionBarTheme:I

    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 599
    move-object v7, v4

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_a

    .line 600
    new-instance v7, Landroidx/appcompat/view/ContextThemeWrapper;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v10, v4

    iget v10, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v5, v7

    .line 606
    .local v5, "themedContext":Landroid/content/Context;
    :goto_2
    move-object v7, v5

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Landroidx/appcompat/R$layout;->abc_screen_toolbar:I

    const/4 v9, 0x0

    .line 607
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 609
    move-object v7, v0

    move-object v8, v3

    sget v9, Landroidx/appcompat/R$id;->decor_content_parent:I

    .line 610
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/DecorContentParent;

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    .line 611
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v7, v8}, Landroidx/appcompat/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 616
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    if-eqz v7, :cond_7

    .line 617
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    const/16 v8, 0x6d

    invoke-interface {v7, v8}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    .line 619
    :cond_7
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    if-eqz v7, :cond_8

    .line 620
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    .line 622
    :cond_8
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz v7, :cond_9

    .line 623
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    .line 625
    :cond_9
    goto/16 :goto_1

    .line 602
    .end local v5    # "themedContext":Landroid/content/Context;
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v5, v7

    .restart local v5    # "themedContext":Landroid/content/Context;
    goto :goto_2

    .line 627
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "themedContext":Landroid/content/Context;
    :cond_b
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    if-eqz v7, :cond_c

    .line 628
    move-object v7, v2

    sget v8, Landroidx/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 634
    :goto_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_d

    .line 637
    move-object v7, v3

    new-instance v8, Landroidx/appcompat/app/AppCompatDelegateImpl$3;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$3;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 631
    :cond_c
    move-object v7, v2

    sget v8, Landroidx/appcompat/R$layout;->abc_screen_simple:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    goto :goto_3

    .line 659
    :cond_d
    move-object v7, v3

    check-cast v7, Landroidx/appcompat/widget/FitWindowsViewGroup;

    new-instance v8, Landroidx/appcompat/app/AppCompatDelegateImpl$4;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$4;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-interface {v7, v8}, Landroidx/appcompat/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_1

    .line 680
    :cond_e
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-nez v7, :cond_f

    .line 681
    move-object v7, v0

    move-object v8, v3

    sget v9, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    .line 685
    :cond_f
    move-object v7, v3

    invoke-static {v7}, Landroidx/appcompat/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 687
    move-object v7, v3

    sget v8, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ContentFrameLayout;

    move-object v4, v7

    .line 690
    .local v4, "contentView":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v5, v7

    .line 691
    .local v5, "windowContentView":Landroid/view/ViewGroup;
    move-object v7, v5

    if-eqz v7, :cond_11

    .line 694
    :goto_4
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_10

    .line 695
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 696
    .local v6, "child":Landroid/view/View;
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 697
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    .line 698
    goto :goto_4

    .line 702
    .end local v6    # "child":Landroid/view/View;
    :cond_10
    move-object v7, v5

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 703
    move-object v7, v4

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ContentFrameLayout;->setId(I)V

    .line 707
    move-object v7, v5

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_11

    .line 708
    move-object v7, v5

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :cond_11
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 715
    move-object v7, v4

    new-instance v8, Landroidx/appcompat/app/AppCompatDelegateImpl$5;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$5;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V

    .line 725
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method private ensureAutoNightModeManager()V
    .locals 7

    .prologue
    .line 2117
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-nez v1, :cond_0

    .line 2118
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroidx/appcompat/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroidx/appcompat/app/TwilightManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    .line 2120
    :cond_0
    return-void
.end method

.method private ensureSubDecor()V
    .locals 6

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-nez v3, :cond_2

    .line 518
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    .line 521
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    .line 522
    .local v1, "title":Ljava/lang/CharSequence;
    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 523
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v3, :cond_3

    .line 524
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 532
    :cond_0
    :goto_0
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyFixedSizeWindow()V

    .line 534
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 536
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    .line 543
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v3

    move-object v2, v3

    .line 544
    .local v2, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v3, :cond_2

    .line 545
    :cond_1
    move-object v3, v0

    const/16 v4, 0x6c

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    .line 548
    .end local v1    # "title":Ljava/lang/CharSequence;
    .end local v2    # "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_2
    return-void

    .line 525
    .restart local v1    # "title":Ljava/lang/CharSequence;
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 526
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 528
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getNightMode()I
    .locals 3

    .prologue
    .line 2066
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getDefaultNightMode()I

    move-result v1

    goto :goto_0
.end method

.method private initWindowDecorActionBar()V
    .locals 7

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 321
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_1

    .line 322
    .line 334
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 326
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/app/WindowDecorActionBar;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v4, Landroid/app/Activity;

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 331
    :cond_2
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_3

    .line 332
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 334
    :cond_3
    goto :goto_0

    .line 328
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 329
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/app/WindowDecorActionBar;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v4, Landroid/app/Dialog;

    invoke-direct {v3, v4}, Landroidx/appcompat/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    goto :goto_1
.end method

.method private initializePanelContent(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 8

    .prologue
    .line 1518
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1519
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1520
    const/4 v3, 0x1

    move v0, v3

    .line 1535
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 1523
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v3, :cond_1

    .line 1524
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1527
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    if-nez v3, :cond_2

    .line 1528
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    .line 1531
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->getListMenuView(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v3

    move-object v2, v3

    .line 1533
    .local v2, "menuView":Landroidx/appcompat/view/menu/MenuView;
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    iput-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1535
    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initializePanelDecor(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 8

    .prologue
    .line 1424
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1425
    move-object v2, v1

    new-instance v3, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1426
    move-object v2, v1

    const/16 v3, 0x51

    iput v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->gravity:I

    .line 1427
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return v0
.end method

.method private initializePanelMenu(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 11

    .prologue
    .line 1475
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v2, v6

    .line 1478
    .local v2, "context":Landroid/content/Context;
    move-object v6, v1

    iget v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    move-object v6, v1

    iget v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_3

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1480
    new-instance v6, Landroid/util/TypedValue;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    move-object v3, v6

    .line 1481
    .local v3, "outValue":Landroid/util/TypedValue;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v4, v6

    .line 1482
    .local v4, "baseTheme":Landroid/content/res/Resources$Theme;
    move-object v6, v4

    sget v7, Landroidx/appcompat/R$attr;->actionBarTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    .line 1484
    const/4 v6, 0x0

    move-object v5, v6

    .line 1485
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    move-object v6, v3

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1486
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v5, v6

    .line 1487
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1488
    move-object v6, v5

    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1489
    move-object v6, v5

    sget v7, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    .line 1496
    :goto_0
    move-object v6, v3

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1497
    move-object v6, v5

    if-nez v6, :cond_1

    .line 1498
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v5, v6

    .line 1499
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1501
    :cond_1
    move-object v6, v5

    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1504
    :cond_2
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 1505
    new-instance v6, Landroidx/appcompat/view/ContextThemeWrapper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v2, v6

    .line 1506
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1510
    .end local v3    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_3
    new-instance v6, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 1511
    .local v3, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 1512
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 1514
    const/4 v6, 0x1

    move v0, v6

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return v0

    .line 1492
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .local v3, "outValue":Landroid/util/TypedValue;
    .restart local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    move-object v6, v4

    sget v7, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 7

    .prologue
    .line 1839
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    .line 1841
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-nez v2, :cond_0

    .line 1842
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1843
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    .line 1845
    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1693
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1694
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v4

    move-object v3, v4

    .line 1695
    .local v3, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    .line 1696
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    .line 1700
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .end local v3    # "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 1704
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v6, :cond_0

    .line 1705
    const/4 v6, 0x0

    move v0, v6

    .line 1753
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 1708
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .line 1709
    .local v3, "handled":Z
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v6

    move-object v4, v6

    .line 1710
    .local v4, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move v6, v1

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    .line 1711
    invoke-interface {v6}, Landroidx/appcompat/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 1712
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1713
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v6}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1714
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1715
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v6}, Landroidx/appcompat/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v6

    move v3, v6

    .line 1744
    :cond_1
    :goto_1
    move v6, v3

    if-eqz v6, :cond_2

    .line 1745
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    move-object v5, v6

    .line 1747
    .local v5, "audioManager":Landroid/media/AudioManager;
    move-object v6, v5

    if-eqz v6, :cond_8

    .line 1748
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1753
    .end local v5    # "audioManager":Landroid/media/AudioManager;
    :cond_2
    :goto_2
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 1718
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v6}, Landroidx/appcompat/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v6

    move v3, v6

    goto :goto_1

    .line 1721
    :cond_4
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez v6, :cond_5

    move-object v6, v4

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    if-eqz v6, :cond_6

    .line 1724
    :cond_5
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    move v3, v6

    .line 1726
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_1

    .line 1727
    :cond_6
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-eqz v6, :cond_1

    .line 1728
    const/4 v6, 0x1

    move v5, v6

    .line 1729
    .local v5, "show":Z
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v6, :cond_7

    .line 1732
    move-object v6, v4

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1733
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    move v5, v6

    .line 1736
    :cond_7
    move v6, v5

    if-eqz v6, :cond_1

    .line 1738
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->openPanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1739
    const/4 v6, 0x1

    move v3, v6

    goto :goto_1

    .line 1750
    .local v5, "audioManager":Landroid/media/AudioManager;
    :cond_8
    const-string/jumbo v6, "AppCompatDelegate"

    const-string/jumbo v7, "Couldn\'t get audio manager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2
.end method

.method private openPanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19

    .prologue
    .line 1329
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object/from16 v1, p1

    .local v1, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object/from16 v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez v9, :cond_0

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-eqz v9, :cond_1

    .line 1330
    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    move-object v9, v1

    iget v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    if-nez v9, :cond_3

    .line 1336
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object v3, v9

    .line 1337
    .local v3, "config":Landroid/content/res/Configuration;
    move-object v9, v3

    iget v9, v9, Landroid/content/res/Configuration;->screenLayout:I

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v4, v9

    .line 1339
    .local v4, "isXLarge":Z
    move v9, v4

    if-eqz v9, :cond_3

    .line 1340
    goto :goto_0

    .line 1337
    .end local v4    # "isXLarge":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1344
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_3
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    move-object v3, v9

    .line 1345
    .local v3, "cb":Landroid/view/Window$Callback;
    move-object v9, v3

    if-eqz v9, :cond_4

    move-object v9, v3

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    move-object v11, v1

    iget-object v11, v11, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v9, v10, v11}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1347
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1348
    goto :goto_0

    .line 1351
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    move-object v4, v9

    .line 1352
    .local v4, "wm":Landroid/view/WindowManager;
    move-object v9, v4

    if-nez v9, :cond_5

    .line 1353
    goto :goto_0

    .line 1357
    :cond_5
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1358
    goto :goto_0

    .line 1361
    :cond_6
    const/4 v9, -0x2

    move v5, v9

    .line 1362
    .local v5, "width":I
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_7

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    if-eqz v9, :cond_10

    .line 1363
    :cond_7
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v9, :cond_9

    .line 1365
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initializePanelDecor(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v9, :cond_a

    .line 1366
    :cond_8
    goto :goto_0

    .line 1367
    :cond_9
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    if-eqz v9, :cond_a

    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_a

    .line 1369
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1373
    :cond_a
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initializePanelContent(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->hasPanelItems()Z

    move-result v9

    if-nez v9, :cond_c

    .line 1374
    :cond_b
    goto/16 :goto_0

    .line 1377
    :cond_c
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v6, v9

    .line 1378
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v9, v6

    if-nez v9, :cond_d

    .line 1379
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v6, v9

    .line 1382
    :cond_d
    move-object v9, v1

    iget v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->background:I

    move v7, v9

    .line 1383
    .local v7, "backgroundResId":I
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1385
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object v8, v9

    .line 1386
    .local v8, "shownPanelParent":Landroid/view/ViewParent;
    move-object v9, v8

    if-eqz v9, :cond_e

    move-object v9, v8

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_e

    .line 1387
    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1389
    :cond_e
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_f

    .line 1396
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    move-result v9

    .line 1398
    .line 1407
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "backgroundResId":I
    .end local v8    # "shownPanelParent":Landroid/view/ViewParent;
    :cond_f
    :goto_2
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1409
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move v11, v5

    const/4 v12, -0x2

    move-object v13, v1

    iget v13, v13, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->x:I

    move-object v14, v1

    iget v14, v14, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->y:I

    const/16 v15, 0x3ea

    const/high16 v16, 0x820000

    const/16 v17, -0x3

    invoke-direct/range {v10 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    move-object v6, v9

    .line 1416
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object v9, v6

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->gravity:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1417
    move-object v9, v6

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->windowAnimations:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1419
    move-object v9, v4

    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    .line 1421
    goto/16 :goto_0

    .line 1398
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v9, :cond_f

    .line 1401
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v6, v9

    .line 1402
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v9, v6

    if-eqz v9, :cond_f

    move-object v9, v6

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_f

    .line 1403
    const/4 v9, -0x1

    move v5, v9

    goto :goto_2
.end method

.method private performPanelShortcut(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 10

    .prologue
    .line 1815
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move v2, p2

    .local v2, "keyCode":I
    move-object v3, p3

    .local v3, "event":Landroid/view/KeyEvent;
    move v4, p4

    .local v4, "flags":I
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1816
    const/4 v6, 0x0

    move v0, v6

    .line 1835
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 1819
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    const/4 v6, 0x0

    move v5, v6

    .line 1823
    .local v5, "handled":Z
    move-object v6, v1

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v6, :cond_2

    .line 1825
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroidx/appcompat/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v5, v6

    .line 1828
    :cond_2
    move v6, v5

    if-eqz v6, :cond_3

    .line 1830
    move v6, v4

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-nez v6, :cond_3

    .line 1831
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1835
    :cond_3
    move v6, v5

    move v0, v6

    goto :goto_0
.end method

.method private preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 11

    .prologue
    .line 1539
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-eqz v6, :cond_0

    .line 1540
    const/4 v6, 0x0

    move v0, v6

    .line 1639
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 1544
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    move-object v6, v1

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-eqz v6, :cond_1

    .line 1545
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1548
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v7, v1

    if-eq v6, v7, :cond_2

    .line 1550
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1553
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v6

    move-object v3, v6

    .line 1555
    .local v3, "cb":Landroid/view/Window$Callback;
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 1556
    move-object v6, v1

    move-object v7, v3

    move-object v8, v1

    iget v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-interface {v7, v8}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1559
    :cond_3
    move-object v6, v1

    iget v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_4

    move-object v6, v1

    iget v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_9

    :cond_4
    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 1562
    .local v4, "isActionBarMenu":Z
    move v6, v4

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v6, :cond_5

    .line 1565
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v6}, Landroidx/appcompat/widget/DecorContentParent;->setMenuPrepared()V

    .line 1568
    :cond_5
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v6, :cond_13

    move v6, v4

    if-eqz v6, :cond_6

    move-object v6, v0

    .line 1569
    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v6

    instance-of v6, v6, Landroidx/appcompat/app/ToolbarActionBar;

    if-nez v6, :cond_13

    .line 1572
    :cond_6
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v6, :cond_7

    move-object v6, v1

    iget-boolean v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v6, :cond_f

    .line 1573
    :cond_7
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v6, :cond_a

    .line 1574
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initializePanelMenu(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v6, :cond_a

    .line 1575
    :cond_8
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1559
    .end local v4    # "isActionBarMenu":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_1

    .line 1579
    .restart local v4    # "isActionBarMenu":Z
    :cond_a
    move v6, v4

    if-eqz v6, :cond_c

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v6, :cond_c

    .line 1580
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    if-nez v6, :cond_b

    .line 1581
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    .line 1583
    :cond_b
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 1588
    :cond_c
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1589
    move-object v6, v3

    move-object v7, v1

    iget v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    move-object v8, v1

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v6, v7, v8}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1591
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 1593
    move v6, v4

    if-eqz v6, :cond_d

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v6, :cond_d

    .line 1595
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 1598
    :cond_d
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1601
    :cond_e
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    .line 1606
    :cond_f
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1610
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v6, :cond_10

    .line 1611
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1612
    move-object v6, v1

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1616
    :cond_10
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v6, v7, v8, v9}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1617
    move v6, v4

    if-eqz v6, :cond_11

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v6, :cond_11

    .line 1620
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 1622
    :cond_11
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1623
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1627
    :cond_12
    move-object v6, v2

    if-eqz v6, :cond_14

    move-object v6, v2

    .line 1628
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    .line 1627
    :goto_2
    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    move-object v5, v6

    .line 1629
    .local v5, "kmap":Landroid/view/KeyCharacterMap;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_15

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->qwertyMode:Z

    .line 1630
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1631
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1635
    .end local v5    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_13
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1636
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1637
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 1639
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1628
    :cond_14
    const/4 v6, -0x1

    goto :goto_2

    .line 1629
    .restart local v5    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_15
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private reopenMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 9

    .prologue
    .line 1431
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v2, p2

    .local v2, "toggleMenuMode":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v5}, Landroidx/appcompat/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 1432
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    .line 1433
    invoke-interface {v5}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1435
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    move-object v3, v5

    .line 1437
    .local v3, "cb":Landroid/view/Window$Callback;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v5}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    if-nez v5, :cond_4

    .line 1438
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v5, :cond_3

    .line 1440
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1442
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    .line 1443
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1446
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 1450
    .local v4, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v5, v4

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v5, :cond_3

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-nez v5, :cond_3

    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    move-object v8, v4

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1451
    invoke-interface {v5, v6, v7, v8}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1452
    move-object v5, v3

    const/16 v6, 0x6c

    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    .line 1453
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v5}, Landroidx/appcompat/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v5

    .line 1455
    .line 1463
    .line 1472
    .end local v3    # "cb":Landroid/view/Window$Callback;
    .end local v4    # "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 1457
    .restart local v3    # "cb":Landroid/view/Window$Callback;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v5}, Landroidx/appcompat/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v5

    .line 1458
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v5, :cond_3

    .line 1459
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 1460
    .restart local v4    # "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v5, v3

    const/16 v6, 0x6c

    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1466
    .end local v3    # "cb":Landroid/view/Window$Callback;
    .end local v4    # "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v5

    move-object v3, v5

    .line 1468
    .local v3, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 1469
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1471
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->openPanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1472
    goto :goto_0
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 4

    .prologue
    .line 1958
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1959
    const-string/jumbo v2, "AppCompatDelegate"

    const-string/jumbo v3, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1961
    const/16 v2, 0x6c

    move v0, v2

    .line 1968
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 1962
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    move v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 1963
    const-string/jumbo v2, "AppCompatDelegate"

    const-string/jumbo v3, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1965
    const/16 v2, 0x6d

    move v0, v2

    goto :goto_0

    .line 1968
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .locals 5

    .prologue
    .line 1274
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewParent;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1276
    const/4 v3, 0x0

    move v0, v3

    .line 1292
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 1278
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1280
    .local v2, "windowDecor":Landroid/view/View;
    :goto_1
    move-object v3, v1

    if-nez v3, :cond_1

    .line 1285
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 1286
    :cond_1
    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_2

    move-object v3, v1

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 1287
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1292
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1294
    :cond_3
    move-object v3, v1

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    goto :goto_1
.end method

.method private shouldRecreateOnNightModeChange()Z
    .locals 9

    .prologue
    .line 2129
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 2132
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v3

    .line 2134
    .local v1, "pm":Landroid/content/pm/PackageManager;
    move-object v3, v1

    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 2135
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    .line 2134
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    .line 2138
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    move-object v3, v2

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x200

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 2146
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :goto_1
    return v0

    .line 2138
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .restart local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2139
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2142
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "AppCompatDelegate"

    const-string/jumbo v4, "Exception while getting ActivityInfo"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 2143
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 2146
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 5

    .prologue
    .line 1951
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 1952
    new-instance v1, Landroid/util/AndroidRuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Window feature must be requested before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1955
    :cond_0
    return-void
.end method

.method private updateForNightMode(I)Z
    .locals 13

    .prologue
    .line 2074
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "mode":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v2, v8

    .line 2075
    .local v2, "res":Landroid/content/res/Resources;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    move-object v3, v8

    .line 2076
    .local v3, "conf":Landroid/content/res/Configuration;
    move-object v8, v3

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    const/16 v9, 0x30

    and-int/lit8 v8, v8, 0x30

    move v4, v8

    .line 2078
    .local v4, "currentNightMode":I
    move v8, v1

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const/16 v8, 0x20

    :goto_0
    move v5, v8

    .line 2082
    .local v5, "newNightMode":I
    move v8, v4

    move v9, v5

    if-eq v8, v9, :cond_3

    .line 2083
    move-object v8, v0

    invoke-direct {v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->shouldRecreateOnNightModeChange()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2089
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    move-object v6, v8

    .line 2090
    .local v6, "activity":Landroid/app/Activity;
    move-object v8, v6

    invoke-virtual {v8}, Landroid/app/Activity;->recreate()V

    .line 2091
    .line 2107
    .end local v6    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_1
    const/4 v8, 0x1

    move v0, v8

    .line 2113
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_2
    return v0

    .line 2078
    .end local v5    # "newNightMode":I
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_1
    const/16 v8, 0x10

    goto :goto_0

    .line 2095
    .restart local v5    # "newNightMode":I
    :cond_2
    new-instance v8, Landroid/content/res/Configuration;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v6, v8

    .line 2096
    .local v6, "config":Landroid/content/res/Configuration;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    move-object v7, v8

    .line 2099
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    move-object v8, v6

    move v9, v5

    move-object v10, v6

    iget v10, v10, Landroid/content/res/Configuration;->uiMode:I

    const/16 v11, -0x31

    and-int/lit8 v10, v10, -0x31

    or-int/2addr v9, v10

    iput v9, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 2100
    move-object v8, v2

    move-object v9, v6

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2103
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-ge v8, v9, :cond_0

    .line 2104
    move-object v8, v2

    invoke-static {v8}, Landroidx/appcompat/app/ResourcesFlusher;->flush(Landroid/content/res/Resources;)V

    goto :goto_1

    .line 2113
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 485
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 486
    .local v3, "contentParent":Landroid/view/ViewGroup;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 488
    return-void
.end method

.method public applyDayNight()Z
    .locals 6

    .prologue
    .line 2002
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    const/4 v4, 0x0

    move v1, v4

    .line 2004
    .local v1, "applied":Z
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getNightMode()I

    move-result v4

    move v2, v4

    .line 2005
    .local v2, "nightMode":I
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->mapNightMode(I)I

    move-result v4

    move v3, v4

    .line 2006
    .local v3, "modeToApply":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 2007
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateForNightMode(I)Z

    move-result v4

    move v1, v4

    .line 2010
    :cond_0
    move v4, v2

    if-nez v4, :cond_1

    .line 2012
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2013
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V

    .line 2016
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    .line 2017
    move v4, v1

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return v0
.end method

.method callOnPanelClosed(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V
    .locals 7

    .prologue
    .line 1758
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, p2

    .local v2, "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v3, p3

    .local v3, "menu":Landroid/view/Menu;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 1760
    move-object v4, v2

    if-nez v4, :cond_0

    .line 1761
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1762
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move v5, v1

    aget-object v4, v4, v5

    move-object v2, v4

    .line 1766
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 1768
    move-object v4, v2

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v4

    .line 1773
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_2

    .line 1774
    .line 1782
    :goto_0
    return-void

    .line 1776
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v4, :cond_3

    .line 1780
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    move v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1782
    :cond_3
    goto :goto_0
.end method

.method checkCloseActionMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 6

    .prologue
    .line 1643
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    if-eqz v3, :cond_0

    .line 1644
    .line 1654
    :goto_0
    return-void

    .line 1647
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    .line 1648
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v3}, Landroidx/appcompat/widget/DecorContentParent;->dismissPopups()V

    .line 1649
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    move-object v2, v3

    .line 1650
    .local v2, "cb":Landroid/view/Window$Callback;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v3, :cond_1

    .line 1651
    move-object v3, v2

    const/16 v4, 0x6c

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1653
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    .line 1654
    goto :goto_0
.end method

.method closePanel(I)V
    .locals 6

    .prologue
    .line 1657
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1658
    return-void
.end method

.method closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .locals 8

    .prologue
    .line 1661
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move v2, p2

    .local v2, "doCallback":Z
    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    iget v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    .line 1662
    invoke-interface {v4}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1663
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->checkCloseActionMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 1664
    .line 1690
    :goto_0
    return-void

    .line 1667
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    move-object v3, v4

    .line 1668
    .local v3, "wm":Landroid/view/WindowManager;
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1669
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1671
    move v4, v2

    if-eqz v4, :cond_1

    .line 1672
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    .line 1676
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1677
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1678
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    .line 1681
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1685
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 1687
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 1688
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 1690
    :cond_2
    goto :goto_0
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 18
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1234
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object/from16 v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

    if-nez v8, :cond_1

    .line 1235
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v9, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v5, v8

    .line 1236
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v8, v5

    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 1237
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 1238
    .local v6, "viewInflaterClassName":Ljava/lang/String;
    move-object v8, v6

    if-eqz v8, :cond_0

    const-class v8, Landroidx/appcompat/app/AppCompatViewInflater;

    .line 1239
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1242
    :cond_0
    move-object v8, v0

    new-instance v9, Landroidx/appcompat/app/AppCompatViewInflater;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v9, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

    .line 1257
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "viewInflaterClassName":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v8, 0x0

    move v5, v8

    .line 1258
    .local v5, "inheritContext":Z
    sget-boolean v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    if-eqz v8, :cond_2

    .line 1259
    move-object v8, v4

    instance-of v8, v8, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v8, :cond_5

    move-object v8, v4

    check-cast v8, Lorg/xmlpull/v1/XmlPullParser;

    .line 1261
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    const/4 v8, 0x1

    .line 1263
    :goto_1
    move v5, v8

    .line 1266
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    sget-boolean v14, Landroidx/appcompat/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    const/4 v15, 0x1

    .line 1269
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v16

    .line 1266
    invoke-virtual/range {v8 .. v16}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0

    .line 1245
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .local v5, "a":Landroid/content/res/TypedArray;
    .restart local v6    # "viewInflaterClassName":Ljava/lang/String;
    :cond_3
    move-object v8, v6

    :try_start_0
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v7, v8

    .line 1246
    .local v7, "viewInflaterClass":Ljava/lang/Class;
    move-object v8, v0

    move-object v9, v7

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    .line 1247
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    .line 1248
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v9, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    goto :goto_0

    .line 1249
    .end local v7    # "viewInflaterClass":Ljava/lang/Class;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 1250
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "AppCompatDelegate"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to instantiate custom view inflater "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ". Falling back to default."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 1252
    move-object v8, v0

    new-instance v9, Landroidx/appcompat/app/AppCompatViewInflater;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v9, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

    goto/16 :goto_0

    .line 1261
    .end local v6    # "viewInflaterClassName":Ljava/lang/String;
    .end local v7    # "t":Ljava/lang/Throwable;
    .local v5, "inheritContext":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    move-object v8, v0

    move-object v9, v1

    check-cast v9, Landroid/view/ViewParent;

    .line 1263
    invoke-direct {v8, v9}, Landroidx/appcompat/app/AppCompatDelegateImpl;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v8

    goto :goto_1
.end method

.method dismissPopups()V
    .locals 5

    .prologue
    .line 1976
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v2, :cond_0

    .line 1977
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorContentParent;->dismissPopups()V

    .line 1980
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_2

    .line 1981
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 1982
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1984
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    .line 1990
    :cond_1
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1992
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 1994
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v2

    move-object v1, v2

    .line 1995
    .local v1, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v1

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 1996
    move-object v2, v1

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    .line 1998
    :cond_3
    return-void

    .line 1985
    .end local v1    # "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 1165
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v5, v5, Landroidx/core/view/KeyEventDispatcher$Component;

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v5, v5, Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v5, :cond_1

    .line 1167
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 1168
    .local v2, "root":Landroid/view/View;
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    move-object v6, v1

    invoke-static {v5, v6}, Landroidx/core/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1169
    const/4 v5, 0x1

    move v0, v5

    .line 1184
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .end local v2    # "root":Landroid/view/View;
    :goto_0
    return v0

    .line 1173
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_2

    .line 1175
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1176
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1180
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    move v2, v5

    .line 1181
    .local v2, "keyCode":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    move v3, v5

    .line 1182
    .local v3, "action":I
    move v5, v3

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 1184
    .local v4, "isDown":Z
    move v5, v4

    if-eqz v5, :cond_4

    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_2
    move v0, v5

    goto :goto_0

    .line 1182
    .end local v4    # "isDown":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1184
    .restart local v4    # "isDown":Z
    :cond_4
    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2
.end method

.method doInvalidatePanelMenu(I)V
    .locals 8

    .prologue
    .line 1848
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v4

    move-object v2, v4

    .line 1849
    .local v2, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    const/4 v4, 0x0

    move-object v3, v4

    .line 1850
    .local v3, "savedActionViewStates":Landroid/os/Bundle;
    move-object v4, v2

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 1851
    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1852
    move-object v4, v2

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1853
    move-object v4, v3

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1854
    move-object v4, v2

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1857
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1858
    move-object v4, v2

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    .line 1860
    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    .line 1861
    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 1864
    move v4, v1

    const/16 v5, 0x6c

    if-eq v4, v5, :cond_2

    move v4, v1

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v4, :cond_3

    .line 1866
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v4

    move-object v2, v4

    .line 1867
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 1868
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1869
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    .line 1872
    :cond_3
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .locals 2

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_0

    .line 1105
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 1107
    :cond_0
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 8

    .prologue
    .line 1785
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v2, v6

    .line 1786
    .local v2, "panels":[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    array-length v6, v6

    :goto_0
    move v3, v6

    .line 1787
    .local v3, "N":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 1788
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 1789
    .local v5, "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 1790
    move-object v6, v5

    move-object v0, v6

    .line 1793
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .end local v5    # "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :goto_2
    return-object v0

    .line 1786
    .end local v3    # "N":I
    .end local v4    # "i":I
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1787
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1793
    .end local v5    # "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_2
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 404
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    const/4 v3, 0x0

    move-object v1, v3

    .line 377
    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 378
    .local v2, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 379
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v3

    .line 382
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 383
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v1, v3

    .line 385
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method final getAutoNightModeManager()Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2124
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2125
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method public final getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;
    .locals 5

    .prologue
    .line 2728
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 6

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v1, :cond_0

    .line 392
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 393
    move-object v1, v0

    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 394
    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    :goto_0
    invoke-direct {v3, v4}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 396
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0

    .line 394
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 11

    .prologue
    .line 1798
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move v2, p2

    .local v2, "required":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    .local v3, "ar":[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    if-eqz v5, :cond_0

    move-object v5, v3

    array-length v5, v5

    move v6, v1

    if-gt v5, v6, :cond_2

    .line 1799
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v4, v5

    .line 1800
    .local v4, "nar":[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 1801
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v3

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1803
    :cond_1
    move-object v5, v0

    move-object v6, v4

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    iput-object v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 1806
    .end local v4    # "nar":[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_2
    move-object v5, v3

    move v6, v1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 1807
    .local v4, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v5, v4

    if-nez v5, :cond_3

    .line 1808
    move-object v5, v3

    move v6, v1

    new-instance v7, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v1

    invoke-direct {v8, v9}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v4, v8

    aput-object v7, v5, v6

    .line 1810
    :cond_3
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 1972
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 307
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 851
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 854
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 5

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    const/4 v3, 0x0

    move v2, v3

    .line 812
    .local v2, "result":Z
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->sanitizeWindowFeatureId(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 832
    :goto_0
    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return v0

    .line 814
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :sswitch_0
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    move v2, v3

    .line 815
    goto :goto_0

    .line 817
    :sswitch_1
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    move v2, v3

    .line 818
    goto :goto_0

    .line 820
    :sswitch_2
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    move v2, v3

    .line 821
    goto :goto_0

    .line 823
    :sswitch_3
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    move v2, v3

    .line 824
    goto :goto_0

    .line 826
    :sswitch_4
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    move v2, v3

    .line 827
    goto :goto_0

    .line 829
    :sswitch_5
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    move v2, v3

    goto :goto_0

    .line 832
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 812
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public installViewFactory()V
    .locals 4

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 1301
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1302
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v2

    instance-of v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;

    if-nez v2, :cond_0

    .line 1305
    const-string/jumbo v2, "AppCompatDelegate"

    const-string/jumbo v3, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 4

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 930
    .local v1, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    :goto_0
    return-void

    .line 932
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    .line 933
    goto :goto_0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 2

    .prologue
    .line 1100
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return v0
.end method

.method mapNightMode(I)I
    .locals 5

    .prologue
    .line 2044
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "mode":I
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 2060
    move v3, v1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 2046
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :sswitch_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 2047
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/UiModeManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    move-object v2, v3

    .line 2048
    .local v2, "uiModeManager":Landroid/app/UiModeManager;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 2051
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 2054
    .end local v2    # "uiModeManager":Landroid/app/UiModeManager;
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2055
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->getApplyableNightMode()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 2058
    :sswitch_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 2044
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method onBackPressed()Z
    .locals 3

    .prologue
    .line 1111
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v2, :cond_0

    .line 1112
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v2}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 1113
    const/4 v2, 0x1

    move v0, v2

    .line 1123
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .local v1, "ab":Landroidx/appcompat/app/ActionBar;
    :goto_0
    return v0

    .line 1117
    .end local v1    # "ab":Landroidx/appcompat/app/ActionBar;
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 1118
    .restart local v1    # "ab":Landroidx/appcompat/app/ActionBar;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->collapseActionView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1123
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v3, :cond_0

    .line 414
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 415
    .local v2, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 416
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    .end local v2    # "ab":Landroidx/appcompat/app/ActionBar;
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 424
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    move-result v3

    .line 425
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 270
    const/4 v4, 0x0

    move-object v2, v4

    .line 272
    .local v2, "parentActivityName":Ljava/lang/String;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 276
    .line 277
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 279
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 280
    .local v3, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 281
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEnableDefaultActionBarUp:Z

    .line 288
    .end local v2    # "parentActivityName":Ljava/lang/String;
    .end local v3    # "ab":Landroidx/appcompat/app/ActionBar;
    :cond_0
    :goto_1
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_1

    .line 291
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "appcompat:local_night_mode"

    const/16 v7, -0x64

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 294
    :cond_1
    return-void

    .line 274
    .restart local v2    # "parentActivityName":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0

    .line 283
    .restart local v3    # "ab":Landroidx/appcompat/app/ActionBar;
    :cond_2
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    .line 1324
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-eqz v1, :cond_0

    .line 501
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 504
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    .line 506
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_1

    .line 507
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->onDestroy()V

    .line 511
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-eqz v1, :cond_2

    .line 512
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    .line 514
    :cond_2
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 1215
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 1228
    :goto_0
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_1
    return v0

    .line 1217
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :sswitch_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 1221
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 1225
    :sswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x80

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 1215
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 11

    .prologue
    .line 1128
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "ev":Landroid/view/KeyEvent;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v6

    move-object v3, v6

    .line 1129
    .local v3, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1130
    const/4 v6, 0x1

    move v0, v6

    .line 1159
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 1135
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v6, :cond_2

    .line 1136
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl;->performPanelShortcut(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v4, v6

    .line 1138
    .local v4, "handled":Z
    move v6, v4

    if-eqz v6, :cond_2

    .line 1139
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v6, :cond_1

    .line 1140
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1142
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1150
    .end local v4    # "handled":Z
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-nez v6, :cond_3

    .line 1151
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v6

    move-object v5, v6

    .line 1152
    .local v5, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    .line 1153
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl;->performPanelShortcut(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v4, v6

    .line 1154
    .restart local v4    # "handled":Z
    move-object v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1155
    move v6, v4

    if-eqz v6, :cond_3

    .line 1156
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1159
    .end local v4    # "handled":Z
    .end local v5    # "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 1188
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 1211
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 1190
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :sswitch_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 1191
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1193
    :sswitch_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    move v3, v5

    .line 1194
    .local v3, "wasLongPressBackDown":Z
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    .line 1196
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 1197
    .local v4, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_2

    .line 1198
    move v5, v3

    if-nez v5, :cond_1

    .line 1202
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1204
    :cond_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1206
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onBackPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1207
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1188
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    move-object v3, v5

    .line 885
    .local v3, "cb":Landroid/view/Window$Callback;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v5, :cond_0

    .line 886
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->findMenuPanel(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 887
    .local v4, "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 888
    move-object v5, v3

    move-object v6, v4

    iget v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v5

    move v0, v5

    .line 891
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .end local v4    # "panel":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 896
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->reopenMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 897
    return-void
.end method

.method onMenuOpened(I)V
    .locals 5

    .prologue
    .line 874
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move v3, v1

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_0

    .line 875
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 876
    .local v2, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 877
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 880
    .end local v2    # "ab":Landroidx/appcompat/app/ActionBar;
    :cond_0
    return-void
.end method

.method onPanelClosed(I)V
    .locals 6

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move v3, v1

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_1

    .line 859
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 860
    .local v2, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 861
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 863
    .line 871
    .end local v2    # "ab":Landroidx/appcompat/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    move v3, v1

    if-nez v3, :cond_0

    .line 866
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v3

    move-object v2, v3

    .line 867
    .local v2, "st":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    move-object v3, v2

    iget-boolean v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v3, :cond_0

    .line 868
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 300
    return-void
.end method

.method public onPostResume()V
    .locals 4

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 450
    .local v1, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 451
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 453
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "outState":Landroid/os/Bundle;
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    .line 494
    move-object v2, v1

    const-string/jumbo v3, "appcompat:local_night_mode"

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    move-result v1

    .line 432
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 437
    .local v1, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 438
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 442
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-eqz v2, :cond_1

    .line 443
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    .line 445
    :cond_1
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .prologue
    .line 728
    return-void
.end method

.method final peekSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 2

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method public requestWindowFeature(I)Z
    .locals 4

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "featureId":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->sanitizeWindowFeatureId(I)I

    move-result v2

    move v1, v2

    .line 771
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    if-eqz v2, :cond_0

    move v2, v1

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 772
    const/4 v2, 0x0

    move v0, v2

    .line 806
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :goto_0
    return v0

    .line 774
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 776
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    .line 779
    :cond_1
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 806
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 781
    :sswitch_0
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 782
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    .line 783
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 785
    :sswitch_1
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 786
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    .line 787
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 789
    :sswitch_2
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 790
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    .line 791
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 793
    :sswitch_3
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 794
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    .line 795
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 797
    :sswitch_4
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 798
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    .line 799
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 801
    :sswitch_5
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 802
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    .line 803
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 779
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 6

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "resId":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 467
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 468
    .local v2, "contentParent":Landroid/view/ViewGroup;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 469
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 470
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v3}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 471
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 458
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 459
    .local v2, "contentParent":Landroid/view/ViewGroup;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 460
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v3}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 462
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 476
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 477
    .local v3, "contentParent":Landroid/view/ViewGroup;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 478
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 480
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 4

    .prologue
    .line 1095
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    .line 1096
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 4

    .prologue
    .line 2022
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move v1, p1

    .local v1, "mode":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 2037
    const-string/jumbo v2, "AppCompatDelegate"

    const-string/jumbo v3, "setLocalNightMode() called with an unknown mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2040
    :cond_0
    :goto_0
    return-void

    .line 2027
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2028
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 2029
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    if-eqz v2, :cond_0

    .line 2032
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    move-result v2

    goto :goto_0

    .line 2022
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 10

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "toolbar":Landroidx/appcompat/widget/Toolbar;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 340
    .line 371
    :goto_0
    return-void

    .line 343
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    move-object v2, v4

    .line 344
    .local v2, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v4, v2

    instance-of v4, v4, Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz v4, :cond_1

    .line 345
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 352
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 355
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 356
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->onDestroy()V

    .line 359
    :cond_2
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 360
    new-instance v4, Landroidx/appcompat/app/ToolbarActionBar;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v7, Landroid/app/Activity;

    .line 361
    invoke-virtual {v7}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/app/ToolbarActionBar;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    move-object v3, v4

    .line 362
    .local v3, "tbab":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 363
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/appcompat/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 364
    .line 370
    .end local v3    # "tbab":Landroidx/appcompat/app/ToolbarActionBar;
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->invalidateOptionsMenu()V

    .line 371
    goto :goto_0

    .line 365
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 367
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    .line 839
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v2, :cond_1

    .line 840
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 842
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 844
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method final shouldAnimateActionModeView()Z
    .locals 2

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 9
    .param p1    # Landroidx/appcompat/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "callback":Landroidx/appcompat/view/ActionMode$Callback;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 902
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "ActionMode callback can not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 905
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v4, :cond_1

    .line 906
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v4}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 909
    :cond_1
    new-instance v4, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/view/ActionMode$Callback;)V

    move-object v2, v4

    .line 911
    .local v2, "wrappedCallback":Landroidx/appcompat/view/ActionMode$Callback;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 912
    .local v3, "ab":Landroidx/appcompat/app/ActionBar;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 913
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/ActionBar;->startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 914
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    if-eqz v4, :cond_2

    .line 915
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-interface {v4, v5}, Landroidx/appcompat/app/AppCompatCallback;->onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V

    .line 919
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v4, :cond_3

    .line 921
    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl;->startSupportActionModeFromWindow(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 924
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0
.end method

.method startSupportActionModeFromWindow(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 14
    .param p1    # Landroidx/appcompat/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v1, p1

    .local v1, "callback":Landroidx/appcompat/view/ActionMode$Callback;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 937
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v7, :cond_0

    .line 938
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v7}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 941
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    if-nez v7, :cond_1

    .line 943
    new-instance v7, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/view/ActionMode$Callback;)V

    move-object v1, v7

    .line 946
    :cond_1
    const/4 v7, 0x0

    move-object v2, v7

    .line 947
    .local v2, "mode":Landroidx/appcompat/view/ActionMode;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v7, :cond_2

    .line 949
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    move-object v8, v1

    invoke-interface {v7, v8}, Landroidx/appcompat/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v2, v7

    .line 952
    .line 955
    :cond_2
    :goto_0
    move-object v7, v2

    if-eqz v7, :cond_5

    .line 956
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 1081
    :cond_3
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    if-eqz v7, :cond_4

    .line 1082
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-interface {v7, v8}, Landroidx/appcompat/app/AppCompatCallback;->onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V

    .line 1084
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    move-object v0, v7

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return-object v0

    .line 950
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    :catch_0
    move-exception v7

    move-object v3, v7

    goto :goto_0

    .line 958
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v7, :cond_6

    .line 959
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    if-eqz v7, :cond_9

    .line 961
    new-instance v7, Landroid/util/TypedValue;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    move-object v3, v7

    .line 962
    .local v3, "outValue":Landroid/util/TypedValue;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    move-object v4, v7

    .line 963
    .local v4, "baseTheme":Landroid/content/res/Resources$Theme;
    move-object v7, v4

    sget v8, Landroidx/appcompat/R$attr;->actionBarTheme:I

    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 966
    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_8

    .line 967
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    move-object v6, v7

    .line 968
    .local v6, "actionBarTheme":Landroid/content/res/Resources$Theme;
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 969
    move-object v7, v6

    move-object v8, v3

    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 971
    new-instance v7, Landroidx/appcompat/view/ContextThemeWrapper;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v5, v7

    .line 972
    .local v5, "actionBarContext":Landroid/content/Context;
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 973
    .line 977
    .end local v6    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_2
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/widget/ActionBarContextView;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 978
    move-object v7, v0

    new-instance v8, Landroid/widget/PopupWindow;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    const/4 v11, 0x0

    sget v12, Landroidx/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 980
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 982
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 983
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 985
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Landroidx/appcompat/R$attr;->actionBarSize:I

    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 987
    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->data:I

    move-object v8, v5

    .line 988
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 987
    invoke-static {v7, v8}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v7

    move v6, v7

    .line 989
    .local v6, "height":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    move v8, v6

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 990
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 991
    move-object v7, v0

    new-instance v8, Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$6;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 1021
    .line 1032
    .end local v3    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "actionBarContext":Landroid/content/Context;
    .end local v6    # "height":I
    :cond_6
    :goto_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 1033
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 1034
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 1035
    new-instance v7, Landroidx/appcompat/view/StandaloneActionMode;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_4
    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/appcompat/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode$Callback;Z)V

    move-object v2, v7

    .line 1037
    move-object v7, v1

    move-object v8, v2

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroidx/appcompat/view/ActionMode$Callback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1038
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 1039
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/ActionMode;)V

    .line 1040
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 1042
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatDelegateImpl;->shouldAnimateActionModeView()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1043
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1044
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1045
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v8, Landroidx/appcompat/app/AppCompatDelegateImpl$7;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$7;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {v7, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 1073
    :cond_7
    :goto_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_3

    .line 1074
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v7

    goto/16 :goto_1

    .line 974
    .restart local v3    # "outValue":Landroid/util/TypedValue;
    .restart local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    move-object v5, v7

    .restart local v5    # "actionBarContext":Landroid/content/Context;
    goto/16 :goto_2

    .line 1022
    .end local v3    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "actionBarContext":Landroid/content/Context;
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    sget v8, Landroidx/appcompat/R$id;->action_mode_bar_stub:I

    .line 1023
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ViewStubCompat;

    move-object v3, v7

    .line 1024
    .local v3, "stub":Landroidx/appcompat/widget/ViewStubCompat;
    move-object v7, v3

    if-eqz v7, :cond_6

    .line 1026
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1027
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v8}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    goto/16 :goto_3

    .line 1035
    .end local v3    # "stub":Landroidx/appcompat/widget/ViewStubCompat;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1064
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1065
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1066
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1068
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_7

    .line 1069
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_5

    .line 1077
    :cond_c
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    goto/16 :goto_1
.end method

.method updateStatusGuard(I)I
    .locals 17

    .prologue
    .line 1881
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move/from16 v1, p1

    .local v1, "insetTop":I
    const/4 v9, 0x0

    move v2, v9

    .line 1883
    .local v2, "showStatusGuard":Z
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v9, :cond_3

    .line 1884
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_3

    .line 1885
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 1886
    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v3, v9

    .line 1887
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v9, 0x0

    move v4, v9

    .line 1889
    .local v4, "mlpChanged":Z
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionBarContextView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1890
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    if-nez v9, :cond_0

    .line 1891
    move-object v9, v0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    .line 1892
    move-object v9, v0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    .line 1894
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    move-object v5, v9

    .line 1895
    .local v5, "insets":Landroid/graphics/Rect;
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v9

    .line 1896
    .local v6, "localInsets":Landroid/graphics/Rect;
    move-object v9, v5

    const/4 v10, 0x0

    move v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1898
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    move-object v10, v5

    move-object v11, v6

    invoke-static {v9, v10, v11}, Landroidx/appcompat/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1899
    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-nez v9, :cond_5

    move v9, v1

    :goto_0
    move v7, v9

    .line 1900
    .local v7, "newMargin":I
    move-object v9, v3

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v10, v7

    if-eq v9, v10, :cond_1

    .line 1901
    const/4 v9, 0x1

    move v4, v9

    .line 1902
    move-object v9, v3

    move v10, v1

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1904
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-nez v9, :cond_6

    .line 1905
    move-object v9, v0

    new-instance v10, Landroid/view/View;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    .line 1906
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroidx/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1907
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1906
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1908
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    const/4 v11, -0x1

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, -0x1

    move v15, v1

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1922
    :cond_1
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    move v2, v9

    .line 1928
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    if-nez v9, :cond_2

    move v9, v2

    if-eqz v9, :cond_2

    .line 1929
    const/4 v9, 0x0

    move v1, v9

    .line 1931
    .line 1938
    .end local v5    # "insets":Landroid/graphics/Rect;
    .end local v6    # "localInsets":Landroid/graphics/Rect;
    .end local v7    # "newMargin":I
    :cond_2
    :goto_3
    move v9, v4

    if-eqz v9, :cond_3

    .line 1939
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1943
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 1944
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    move v10, v2

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1947
    :cond_4
    move v9, v1

    move v0, v9

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    return v0

    .line 1899
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    .restart local v5    # "insets":Landroid/graphics/Rect;
    .restart local v6    # "localInsets":Landroid/graphics/Rect;
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 1912
    .restart local v7    # "newMargin":I
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v8, v9

    .line 1913
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v9, v8

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v10, v1

    if-eq v9, v10, :cond_1

    .line 1914
    move-object v9, v8

    move v10, v1

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1915
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1922
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1933
    .end local v5    # "insets":Landroid/graphics/Rect;
    .end local v6    # "localInsets":Landroid/graphics/Rect;
    .end local v7    # "newMargin":I
    :cond_8
    move-object v9, v3

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v9, :cond_2

    .line 1934
    const/4 v9, 0x1

    move v4, v9

    .line 1935
    move-object v9, v3

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1944
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_9
    const/16 v10, 0x8

    goto :goto_4
.end method
