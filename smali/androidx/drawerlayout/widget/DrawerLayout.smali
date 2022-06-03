.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;,
        Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;,
        Landroidx/drawerlayout/widget/DrawerLayout$SavedState;,
        Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;,
        Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildHitRect:Landroid/graphics/Rect;

.field private mChildInvertedMatrix:Landroid/graphics/Matrix;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 311
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyle":I
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    move-object v8, v0

    new-instance v9, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 201
    move-object v8, v0

    const/high16 v9, -0x67000000

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    .line 203
    move-object v8, v0

    new-instance v9, Landroid/graphics/Paint;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 211
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 213
    move-object v8, v0

    const/4 v9, 0x3

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    .line 214
    move-object v8, v0

    const/4 v9, 0x3

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    .line 215
    move-object v8, v0

    const/4 v9, 0x3

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    .line 216
    move-object v8, v0

    const/4 v9, 0x3

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    .line 238
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 239
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 240
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 241
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 315
    move-object v8, v0

    const/high16 v9, 0x40000

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 316
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    move v4, v8

    .line 317
    .local v4, "density":F
    move-object v8, v0

    const/high16 v9, 0x42800000    # 64.0f

    move v10, v4

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 318
    const/high16 v8, 0x43c80000    # 400.0f

    move v9, v4

    mul-float/2addr v8, v9

    move v5, v8

    .line 320
    .local v5, "minVel":F
    move-object v8, v0

    new-instance v9, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 321
    move-object v8, v0

    new-instance v9, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 323
    move-object v8, v0

    move-object v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v0

    iget-object v11, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v9, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v9

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 324
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 325
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 326
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 328
    move-object v8, v0

    move-object v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v0

    iget-object v11, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v9, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v9

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 329
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 330
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 331
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 334
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 336
    move-object v8, v0

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 339
    move-object v8, v0

    new-instance v9, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 340
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 341
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 342
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1

    .line 343
    move-object v8, v0

    new-instance v9, Landroidx/drawerlayout/widget/DrawerLayout$1;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/drawerlayout/widget/DrawerLayout$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 351
    move-object v8, v0

    const/16 v9, 0x500

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 353
    move-object v8, v1

    sget-object v9, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v6, v8

    .line 355
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object v8, v0

    move-object v9, v6

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    .line 359
    .line 364
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    move-object v8, v0

    const/high16 v9, 0x41200000    # 10.0f

    move v10, v4

    mul-float/2addr v9, v10

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    .line 366
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 367
    return-void

    .line 357
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move-object v8, v7

    throw v8

    .line 360
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 10

    .prologue
    .line 774
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v4, v7

    .line 775
    .local v4, "childMatrix":Landroid/graphics/Matrix;
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_0

    .line 776
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v7

    move-object v5, v7

    .line 777
    .local v5, "transformedEvent":Landroid/view/MotionEvent;
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v3, v7

    .line 778
    .local v3, "handled":Z
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 779
    .line 786
    .end local v5    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_0
    move v7, v3

    move v0, v7

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .line 780
    .end local v3    # "handled":Z
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v5, v7

    .line 781
    .local v5, "offsetX":F
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v6, v7

    .line 782
    .local v6, "offsetY":F
    move-object v7, v1

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 783
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v3, v7

    .line 784
    .restart local v3    # "handled":Z
    move-object v7, v1

    move v8, v5

    neg-float v8, v8

    move v9, v6

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 11

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v3, v7

    .line 795
    .local v3, "offsetX":F
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v4, v7

    .line 796
    .local v4, "offsetY":F
    move-object v7, v1

    invoke-static {v7}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    move-object v5, v7

    .line 797
    .local v5, "transformedEvent":Landroid/view/MotionEvent;
    move-object v7, v5

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 798
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v6, v7

    .line 799
    .local v6, "childMatrix":Landroid/graphics/Matrix;
    move-object v7, v6

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_1

    .line 800
    move-object v7, v0

    iget-object v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    if-nez v7, :cond_0

    .line 801
    move-object v7, v0

    new-instance v8, Landroid/graphics/Matrix;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    .line 803
    :cond_0
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 804
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 806
    :cond_1
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return-object v0
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1005
    move v0, p0

    .local v0, "gravity":I
    move v1, v0

    const/4 v2, 0x3

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1006
    const-string/jumbo v1, "LEFT"

    move-object v0, v1

    .line 1011
    .end local v0    # "gravity":I
    :goto_0
    return-object v0

    .line 1008
    .restart local v0    # "gravity":I
    :cond_0
    move v1, v0

    const/4 v2, 0x5

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1009
    const-string/jumbo v1, "RIGHT"

    move-object v0, v1

    goto :goto_0

    .line 1011
    :cond_1
    move v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1325
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1326
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 1327
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1329
    .end local v0    # "v":Landroid/view/View;
    :goto_1
    return v0

    .line 1327
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1329
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private hasPeekingDrawer()Z
    .locals 6

    .prologue
    .line 1875
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1876
    .local v1, "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1877
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1878
    .local v3, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v4, :cond_0

    .line 1879
    const/4 v4, 0x1

    move v0, v4

    .line 1882
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v3    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :goto_1
    return v0

    .line 1876
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .restart local v3    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1882
    .end local v3    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 2

    .prologue
    .line 1945
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 2085
    move-object v0, p0

    .local v0, "child":Landroid/view/View;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 2087
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "child":Landroid/view/View;
    return v0

    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInBoundsOfChild(FFLandroid/view/View;)Z
    .locals 8

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, p3

    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 762
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    .line 764
    :cond_0
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 765
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    move v5, v1

    float-to-int v5, v5

    move v6, v2

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 5

    .prologue
    .line 1208
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move v2, p2

    .local v2, "layoutDirection":I
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1209
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 1213
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return v0

    .line 1212
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_1
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v3

    .line 1213
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1166
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 1168
    .local v1, "layoutDirection":I
    move v2, v1

    if-nez v2, :cond_0

    .line 1169
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1171
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1172
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 1181
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return-object v0

    .line 1175
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1177
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1178
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0

    .line 1181
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 1186
    .local v1, "layoutDirection":I
    move v2, v1

    if-nez v2, :cond_0

    .line 1187
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1189
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1190
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 1199
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return-object v0

    .line 1193
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1195
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1196
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0

    .line 1199
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method

.method private resolveShadowDrawables()V
    .locals 3

    .prologue
    .line 1158
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    sget-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_0

    .line 1159
    .line 1163
    :goto_0
    return-void

    .line 1161
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1162
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 1163
    goto :goto_0
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 8

    .prologue
    .line 900
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "isDrawerOpen":Z
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v3, v6

    .line 901
    .local v3, "childCount":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 902
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 903
    .local v5, "child":Landroid/view/View;
    move v6, v2

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v2

    if-eqz v6, :cond_2

    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_2

    .line 906
    :cond_1
    move-object v6, v5

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 901
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 909
    :cond_2
    move-object v6, v5

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 913
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 6
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "listener":Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 512
    .line 518
    :goto_0
    return-void

    .line 514
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 515
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 517
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 518
    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1911
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v2, p2

    .local v2, "direction":I
    move/from16 v3, p3

    .local v3, "focusableMode":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v9

    const/high16 v10, 0x60000

    if-ne v9, v10, :cond_0

    .line 1912
    .line 1942
    :goto_0
    return-void

    .line 1917
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v4, v9

    .line 1918
    .local v4, "childCount":I
    const/4 v9, 0x0

    move v5, v9

    .line 1919
    .local v5, "isDrawerOpen":Z
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_3

    .line 1920
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1921
    .local v7, "child":Landroid/view/View;
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1922
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1923
    const/4 v9, 0x1

    move v5, v9

    .line 1924
    move-object v9, v7

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1919
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1927
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    .line 1931
    .end local v7    # "child":Landroid/view/View;
    :cond_3
    move v9, v5

    if-nez v9, :cond_5

    .line 1932
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 1933
    .local v6, "nonDrawerViewsCount":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_3
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_5

    .line 1934
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 1935
    .local v8, "child":Landroid/view/View;
    move-object v9, v8

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    .line 1936
    move-object v9, v8

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1933
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1941
    .end local v6    # "nonDrawerViewsCount":I
    .end local v7    # "i":I
    .end local v8    # "child":Landroid/view/View;
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1942
    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .prologue
    .line 2057
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2059
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 2060
    .local v4, "openDrawer":Landroid/view/View;
    move-object v5, v4

    if-nez v5, :cond_0

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2063
    :cond_0
    move-object v5, v1

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2074
    :goto_0
    sget-boolean v5, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v5, :cond_1

    .line 2075
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 2077
    :cond_1
    return-void

    .line 2068
    :cond_2
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 14

    .prologue
    .line 1961
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v6, :cond_1

    .line 1962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide v1, v6

    .line 1963
    .local v1, "now":J
    move-wide v6, v1

    move-wide v8, v1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    move-object v3, v6

    .line 1965
    .local v3, "cancelEvent":Landroid/view/MotionEvent;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v4, v6

    .line 1966
    .local v4, "childCount":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 1967
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1966
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1969
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 1970
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1972
    .end local v1    # "now":J
    .end local v3    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v4    # "childCount":I
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "checkFor":I
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 951
    .local v3, "absGravity":I
    move v4, v3

    move v5, v2

    and-int/2addr v4, v5

    move v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1901
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public closeDrawer(I)V
    .locals 5

    .prologue
    .line 1789
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 1790
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 9

    .prologue
    .line 1800
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "gravity":I
    move v2, p2

    .local v2, "animate":Z
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1801
    .local v3, "drawerView":Landroid/view/View;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1802
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No drawer view found with gravity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    .line 1803
    invoke-static {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1805
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1806
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1747
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1748
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1757
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "animate":Z
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1758
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a sliding drawer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1761
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1762
    .local v3, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v4, :cond_1

    .line 1763
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1764
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1779
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1780
    return-void

    .line 1765
    :cond_1
    move v4, v2

    if-eqz v4, :cond_3

    .line 1766
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1768
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1769
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    move-object v7, v1

    .line 1770
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1769
    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1772
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1775
    :cond_3
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1776
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1777
    move-object v4, v1

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 3

    .prologue
    .line 1637
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1638
    return-void
.end method

.method closeDrawers(Z)V
    .locals 13

    .prologue
    .line 1641
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "peekingOnly":Z
    const/4 v8, 0x0

    move v2, v8

    .line 1642
    .local v2, "needsInvalidate":Z
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1643
    .local v3, "childCount":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 1644
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1645
    .local v5, "child":Landroid/view/View;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v6, v8

    .line 1647
    .local v6, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    if-eqz v8, :cond_1

    move-object v8, v6

    iget-boolean v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v8, :cond_1

    .line 1648
    .line 1643
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1651
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v7, v8

    .line 1653
    .local v7, "childWidth":I
    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1654
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v10, v5

    move v11, v7

    neg-int v11, v11

    move-object v12, v5

    .line 1655
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1654
    invoke-virtual {v9, v10, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 1661
    :goto_2
    move-object v8, v6

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 1657
    :cond_2
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v10, v5

    move-object v11, v0

    .line 1658
    invoke-virtual {v11}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v11

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1657
    invoke-virtual {v9, v10, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    goto :goto_2

    .line 1664
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v7    # "childWidth":I
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1665
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1667
    move v8, v2

    if-eqz v8, :cond_4

    .line 1668
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1670
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1309
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 1310
    .local v1, "childCount":I
    const/4 v5, 0x0

    move v2, v5

    .line 1311
    .local v2, "scrimOpacity":F
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 1312
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v4, v5

    .line 1313
    .local v4, "onscreen":F
    move v5, v2

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v2, v5

    .line 1311
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1315
    .end local v4    # "onscreen":F
    :cond_0
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    .line 1317
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    move v3, v5

    .line 1318
    .local v3, "leftDraggerSettling":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    move v4, v5

    .line 1319
    .local v4, "rightDraggerSettling":Z
    move v5, v3

    if-nez v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_2

    .line 1320
    :cond_1
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1322
    :cond_2
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1536
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    move-object v7, v1

    .line 1537
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 1539
    :cond_0
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v0, v7

    .line 1564
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return v0

    .line 1542
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v2, v7

    .line 1543
    .local v2, "childrenCount":I
    move v7, v2

    if-eqz v7, :cond_4

    .line 1544
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move v3, v7

    .line 1545
    .local v3, "x":F
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move v4, v7

    .line 1548
    .local v4, "y":F
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    if-ltz v7, :cond_4

    .line 1549
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1553
    .local v6, "child":Landroid/view/View;
    move-object v7, v0

    move v8, v3

    move v9, v4

    move-object v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->isInBoundsOfChild(FFLandroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1554
    .line 1548
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1558
    :cond_3
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1559
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 1564
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "i":I
    .end local v6    # "child":Landroid/view/View;
    :cond_4
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v2, v5

    .line 851
    .local v2, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 852
    move-object v5, v2

    const/4 v6, 0x0

    iput v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 854
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 857
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 858
    .local v3, "listenerCount":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 859
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 858
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 863
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 868
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 869
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 870
    .local v3, "rootView":Landroid/view/View;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 871
    move-object v5, v3

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 875
    .end local v3    # "rootView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v2, v5

    .line 879
    .local v2, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 880
    move-object v5, v2

    const/4 v6, 0x1

    iput v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 881
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 884
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 885
    .local v3, "listenerCount":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 886
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 885
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 890
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 893
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 894
    move-object v5, v0

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 897
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 8

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "slideOffset":F
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 919
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 920
    .local v3, "listenerCount":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 921
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 920
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 924
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 25

    .prologue
    .line 1401
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object/from16 v4, p1

    .local v4, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v5, p2

    .local v5, "child":Landroid/view/View;
    move-wide/from16 v6, p3

    .local v6, "drawingTime":J
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v19

    move/from16 v8, v19

    .line 1402
    .local v8, "height":I
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v19

    move/from16 v9, v19

    .line 1403
    .local v9, "drawingContent":Z
    const/16 v19, 0x0

    move/from16 v10, v19

    .local v10, "clipLeft":I
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v19

    move/from16 v11, v19

    .line 1405
    .local v11, "clipRight":I
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->save()I

    move-result v19

    move/from16 v12, v19

    .line 1406
    .local v12, "restoreCount":I
    move/from16 v19, v9

    if-eqz v19, :cond_5

    .line 1407
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v19

    move/from16 v13, v19

    .line 1408
    .local v13, "childCount":I
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "i":I
    :goto_0
    move/from16 v19, v14

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 1409
    move-object/from16 v19, v3

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1410
    .local v15, "v":Landroid/view/View;
    move-object/from16 v19, v15

    move-object/from16 v20, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v19, v15

    .line 1411
    invoke-static/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v19, v3

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v19, v15

    .line 1412
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 1413
    .line 1408
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1416
    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v20, v15

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1417
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v16, v19

    .line 1418
    .local v16, "vright":I
    move/from16 v19, v16

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    move/from16 v19, v16

    move/from16 v10, v19

    .line 1419
    :cond_2
    goto :goto_1

    .line 1420
    .end local v16    # "vright":I
    :cond_3
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v16, v19

    .line 1421
    .local v16, "vleft":I
    move/from16 v19, v16

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    move/from16 v19, v16

    move/from16 v11, v19

    goto :goto_1

    .line 1424
    .end local v15    # "v":Landroid/view/View;
    .end local v16    # "vleft":I
    :cond_4
    move-object/from16 v19, v4

    move/from16 v20, v10

    const/16 v21, 0x0

    move/from16 v22, v11

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v19

    .line 1426
    .end local v13    # "childCount":I
    .end local v14    # "i":I
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-wide/from16 v22, v6

    invoke-super/range {v19 .. v23}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v19

    move/from16 v13, v19

    .line 1427
    .local v13, "result":Z
    move-object/from16 v19, v4

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1429
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_7

    move/from16 v19, v9

    if-eqz v19, :cond_7

    .line 1430
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    move/from16 v19, v0

    const/high16 v20, -0x1000000

    and-int v19, v19, v20

    const/16 v20, 0x18

    ushr-int/lit8 v19, v19, 0x18

    move/from16 v14, v19

    .line 1431
    .local v14, "baseAlpha":I
    move/from16 v19, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v15, v19

    .line 1432
    .local v15, "imag":I
    move/from16 v19, v15

    const/16 v20, 0x18

    shl-int/lit8 v19, v19, 0x18

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    move/from16 v20, v0

    const v21, 0xffffff

    and-int v20, v20, v21

    or-int v19, v19, v20

    move/from16 v16, v19

    .line 1433
    .local v16, "color":I
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 1435
    move-object/from16 v19, v4

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v22, v11

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1436
    .line 1460
    .end local v14    # "baseAlpha":I
    .end local v15    # "imag":I
    .end local v16    # "color":I
    :cond_6
    :goto_2
    move/from16 v19, v13

    move/from16 v3, v19

    .end local v3    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v3

    .line 1436
    .restart local v3    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    const/16 v21, 0x3

    .line 1437
    invoke-virtual/range {v19 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1438
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v14, v19

    .line 1439
    .local v14, "shadowWidth":I
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v15, v19

    .line 1440
    .local v15, "childRight":I
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v19

    move/from16 v16, v19

    .line 1441
    .local v16, "drawerPeekDistance":I
    const/16 v19, 0x0

    move/from16 v20, v15

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    .line 1442
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v17, v19

    .line 1443
    .local v17, "alpha":F
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move/from16 v20, v15

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v22, v15

    move/from16 v23, v14

    add-int v22, v22, v23

    move-object/from16 v23, v5

    .line 1444
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 1443
    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1445
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/high16 v20, 0x437f0000    # 255.0f

    move/from16 v21, v17

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1446
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1447
    goto/16 :goto_2

    .end local v14    # "shadowWidth":I
    .end local v15    # "childRight":I
    .end local v16    # "drawerPeekDistance":I
    .end local v17    # "alpha":F
    :cond_8
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    const/16 v21, 0x5

    .line 1448
    invoke-virtual/range {v19 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1449
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v14, v19

    .line 1450
    .restart local v14    # "shadowWidth":I
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v15, v19

    .line 1451
    .local v15, "childLeft":I
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v19

    move/from16 v20, v15

    sub-int v19, v19, v20

    move/from16 v16, v19

    .line 1452
    .local v16, "showing":I
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v19

    move/from16 v17, v19

    .line 1453
    .local v17, "drawerPeekDistance":I
    const/16 v19, 0x0

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v17

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    .line 1454
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v18, v19

    .line 1455
    .local v18, "alpha":F
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move/from16 v20, v15

    move/from16 v21, v14

    sub-int v20, v20, v21

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v22, v15

    move-object/from16 v23, v5

    .line 1456
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 1455
    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1457
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/high16 v20, 0x437f0000    # 255.0f

    move/from16 v21, v18

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1458
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 985
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "gravity":I
    move v7, v1

    move-object v8, v0

    .line 986
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 985
    invoke-static {v7, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v2, v7

    .line 987
    .local v2, "absHorizGravity":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 988
    .local v3, "childCount":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 989
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 990
    .local v5, "child":Landroid/view/View;
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 991
    .local v6, "childAbsGravity":I
    move v7, v6

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v8, v2

    if-ne v7, v8, :cond_0

    .line 992
    move-object v7, v5

    move-object v0, v7

    .line 995
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childAbsGravity":I
    :goto_1
    return-object v0

    .line 988
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 995
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childAbsGravity":I
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 7

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 956
    .local v1, "childCount":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 957
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 958
    .local v3, "child":Landroid/view/View;
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v4, v5

    .line 959
    .local v4, "childLp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v5, v4

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 960
    move-object v5, v3

    move-object v0, v5

    .line 963
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 956
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childLp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 1949
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1950
    .local v1, "childCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1951
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1952
    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1953
    move-object v4, v3

    move-object v0, v4

    .line 1956
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v3    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1950
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .restart local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1956
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1887
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 1906
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1892
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return-object v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    sget-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_0

    .line 394
    move-object v1, v0

    iget v1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    move v0, v1

    .line 396
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 9

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "edgeGravity":I
    move-object v7, v0

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    move v2, v7

    .line 654
    .local v2, "layoutDirection":I
    move v7, v1

    sparse-switch v7, :sswitch_data_0

    .line 697
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return v0

    .line 656
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :sswitch_0
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 657
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    move v0, v7

    goto :goto_0

    .line 659
    :cond_1
    move v7, v2

    if-nez v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    :goto_1
    move v3, v7

    .line 661
    .local v3, "leftLockMode":I
    move v7, v3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 662
    move v7, v3

    move v0, v7

    goto :goto_0

    .line 659
    .end local v3    # "leftLockMode":I
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_1

    .line 666
    :sswitch_1
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 667
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    move v0, v7

    goto :goto_0

    .line 669
    :cond_3
    move v7, v2

    if-nez v7, :cond_4

    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    :goto_2
    move v4, v7

    .line 671
    .local v4, "rightLockMode":I
    move v7, v4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 672
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 669
    .end local v4    # "rightLockMode":I
    :cond_4
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_2

    .line 676
    :sswitch_2
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    .line 677
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    move v0, v7

    goto :goto_0

    .line 679
    :cond_5
    move v7, v2

    if-nez v7, :cond_6

    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    :goto_3
    move v5, v7

    .line 681
    .local v5, "startLockMode":I
    move v7, v5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 682
    move v7, v5

    move v0, v7

    goto :goto_0

    .line 679
    .end local v5    # "startLockMode":I
    :cond_6
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_3

    .line 686
    :sswitch_3
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    .line 687
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    move v0, v7

    goto :goto_0

    .line 689
    :cond_7
    move v7, v2

    if-nez v7, :cond_8

    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    :goto_4
    move v6, v7

    .line 691
    .local v6, "endLockMode":I
    move v7, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 692
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 689
    .end local v6    # "endLockMode":I
    :cond_8
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_4

    .line 654
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 710
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 712
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 713
    .local v2, "drawerGravity":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "edgeGravity":I
    move v3, v1

    move-object v4, v0

    .line 747
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 746
    invoke-static {v3, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v2, v3

    .line 748
    .local v2, "absGravity":I
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 749
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 753
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return-object v0

    .line 750
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 751
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_0

    .line 753
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 945
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 946
    .local v2, "gravity":I
    move v3, v2

    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 937
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v0, v2

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1350
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1464
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 5

    .prologue
    .line 1836
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "drawerGravity":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1837
    .local v2, "drawerView":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1838
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1840
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1819
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawer":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1820
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1822
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 1823
    .local v2, "drawerLp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v3, v2

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1468
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v4

    .line 1469
    .local v2, "gravity":I
    move v4, v2

    move-object v5, v1

    .line 1470
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 1469
    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 1471
    .local v3, "absGravity":I
    move v4, v3

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_0

    .line 1473
    const/4 v4, 0x1

    move v0, v4

    .line 1479
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return v0

    .line 1475
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    move v4, v3

    const/4 v5, 0x5

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_1

    .line 1477
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1479
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 5

    .prologue
    .line 1867
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "drawerGravity":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1868
    .local v2, "drawerView":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1869
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1871
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1852
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawer":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1853
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not a drawer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1855
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 12

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "slideOffset":F
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v8

    move v3, v8

    .line 968
    .local v3, "oldOffset":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v4, v8

    .line 969
    .local v4, "width":I
    move v8, v4

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 970
    .local v5, "oldPos":I
    move v8, v4

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 971
    .local v6, "newPos":I
    move v8, v6

    move v9, v5

    sub-int/2addr v8, v9

    move v7, v8

    .line 973
    .local v7, "dx":I
    move-object v8, v1

    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x3

    .line 974
    invoke-virtual {v9, v10, v11}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    .line 973
    :goto_0
    invoke-virtual {v8, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 975
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 976
    return-void

    .line 974
    :cond_0
    move v9, v7

    neg-int v9, v9

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1023
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1024
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1017
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1018
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 1383
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1384
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1386
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 1387
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsets;

    .line 1388
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    :goto_0
    move v2, v3

    .line 1392
    .local v2, "inset":I
    :goto_1
    move v3, v2

    if-lez v3, :cond_0

    .line 1393
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v6

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1394
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1397
    .end local v2    # "inset":I
    :cond_0
    return-void

    .line 1388
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1390
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "inset":I
    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1485
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    move v2, v8

    .line 1488
    .local v2, "action":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v10, v1

    .line 1489
    invoke-virtual {v9, v10}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v8, v9

    move v3, v8

    .line 1491
    .local v3, "interceptForDrag":Z
    const/4 v8, 0x0

    move v4, v8

    .line 1493
    .local v4, "interceptForTap":Z
    move v8, v2

    packed-switch v8, :pswitch_data_0

    .line 1527
    :cond_0
    :goto_0
    move v8, v3

    if-nez v8, :cond_1

    move v8, v4

    if-nez v8, :cond_1

    move-object v8, v0

    invoke-direct {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v8, :cond_3

    :cond_1
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .line 1495
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v5, v8

    .line 1496
    .local v5, "x":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v6, v8

    .line 1497
    .local v6, "y":F
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    .line 1498
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    .line 1499
    move-object v8, v0

    iget v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1500
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1501
    .local v7, "child":Landroid/view/View;
    move-object v8, v7

    if-eqz v8, :cond_2

    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1502
    const/4 v8, 0x1

    move v4, v8

    .line 1505
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1506
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1507
    goto :goto_0

    .line 1512
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1513
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1514
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1521
    :pswitch_2
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1522
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1523
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1527
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 1976
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1977
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/KeyEvent;->startTracking()V

    .line 1978
    const/4 v3, 0x1

    move v0, v3

    .line 1980
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1985
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1986
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1987
    .local v3, "visibleDrawer":Landroid/view/View;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1988
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1990
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 1992
    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v3    # "visibleDrawer":Landroid/view/View;
    :goto_1
    return v0

    .line 1990
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .restart local v3    # "visibleDrawer":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1992
    .end local v3    # "visibleDrawer":Landroid/view/View;
    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 27

    .prologue
    .line 1218
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move/from16 v3, p1

    .local v3, "changed":Z
    move/from16 v4, p2

    .local v4, "l":I
    move/from16 v5, p3

    .local v5, "t":I
    move/from16 v6, p4

    .local v6, "r":I
    move/from16 v7, p5

    .local v7, "b":I
    move-object/from16 v21, v2

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    .line 1219
    move/from16 v21, v6

    move/from16 v22, v4

    sub-int v21, v21, v22

    move/from16 v8, v21

    .line 1220
    .local v8, "width":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v21

    move/from16 v9, v21

    .line 1221
    .local v9, "childCount":I
    const/16 v21, 0x0

    move/from16 v10, v21

    .local v10, "i":I
    :goto_0
    move/from16 v21, v10

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 1222
    move-object/from16 v21, v2

    move/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1224
    .local v11, "child":Landroid/view/View;
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1225
    .line 1221
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1228
    :cond_1
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object/from16 v12, v21

    .line 1230
    .local v12, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1231
    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v11

    .line 1232
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v24, v24, v25

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move-object/from16 v26, v11

    .line 1233
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    .line 1231
    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1235
    :cond_2
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v13, v21

    .line 1236
    .local v13, "childWidth":I
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v14, v21

    .line 1240
    .local v14, "childHeight":I
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1241
    move/from16 v21, v13

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v15, v21

    .line 1242
    .local v15, "childLeft":I
    move/from16 v21, v13

    move/from16 v22, v15

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v16, v21

    .line 1248
    .local v16, "newOffset":F
    :goto_2
    move/from16 v21, v16

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_5

    const/16 v21, 0x1

    :goto_3
    move/from16 v17, v21

    .line 1250
    .local v17, "changeOffset":Z
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    const/16 v22, 0x70

    and-int/lit8 v21, v21, 0x70

    move/from16 v18, v21

    .line 1252
    .local v18, "vgrav":I
    move/from16 v21, v18

    sparse-switch v21, :sswitch_data_0

    .line 1255
    move-object/from16 v21, v11

    move/from16 v22, v15

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1257
    .line 1286
    :goto_4
    move/from16 v21, v17

    if-eqz v21, :cond_3

    .line 1287
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move/from16 v23, v16

    invoke-virtual/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1290
    :cond_3
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_8

    const/16 v21, 0x0

    :goto_5
    move/from16 v19, v21

    .line 1291
    .local v19, "newVisibility":I
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    move/from16 v22, v19

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1292
    move-object/from16 v21, v11

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1244
    .end local v15    # "childLeft":I
    .end local v16    # "newOffset":F
    .end local v17    # "changeOffset":Z
    .end local v18    # "vgrav":I
    .end local v19    # "newVisibility":I
    :cond_4
    move/from16 v21, v8

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v15, v21

    .line 1245
    .restart local v15    # "childLeft":I
    move/from16 v21, v8

    move/from16 v22, v15

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v16, v21

    .restart local v16    # "newOffset":F
    goto/16 :goto_2

    .line 1248
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1261
    .restart local v17    # "changeOffset":Z
    .restart local v18    # "vgrav":I
    :sswitch_0
    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    move/from16 v19, v21

    .line 1262
    .local v19, "height":I
    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v19

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v24, v11

    .line 1263
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v25, v19

    move-object/from16 v26, v12

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    .line 1262
    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1266
    goto/16 :goto_4

    .line 1270
    .end local v19    # "height":I
    :sswitch_1
    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    move/from16 v19, v21

    .line 1271
    .restart local v19    # "height":I
    move/from16 v21, v19

    move/from16 v22, v14

    sub-int v21, v21, v22

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move/from16 v20, v21

    .line 1275
    .local v20, "childTop":I
    move/from16 v21, v20

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1276
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    move/from16 v20, v21

    .line 1280
    :cond_6
    :goto_6
    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v20

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v25, v20

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1282
    goto/16 :goto_4

    .line 1277
    :cond_7
    move/from16 v21, v20

    move/from16 v22, v14

    add-int v21, v21, v22

    move/from16 v22, v19

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 1278
    move/from16 v21, v19

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v22, v14

    sub-int v21, v21, v22

    move/from16 v20, v21

    goto :goto_6

    .line 1290
    .end local v19    # "height":I
    .end local v20    # "childTop":I
    :cond_8
    const/16 v21, 0x4

    goto/16 :goto_5

    .line 1296
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v13    # "childWidth":I
    .end local v14    # "childHeight":I
    .end local v15    # "childLeft":I
    .end local v16    # "newOffset":F
    .end local v17    # "changeOffset":Z
    .end local v18    # "vgrav":I
    :cond_9
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    .line 1297
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1298
    return-void

    .line 1252
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 1029
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    move/from16 v5, v21

    .line 1030
    .local v5, "widthMode":I
    move/from16 v21, v4

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    move/from16 v6, v21

    .line 1031
    .local v6, "heightMode":I
    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v7, v21

    .line 1032
    .local v7, "widthSize":I
    move/from16 v21, v4

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v8, v21

    .line 1034
    .local v8, "heightSize":I
    move/from16 v21, v5

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move/from16 v21, v6

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1035
    :cond_0
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->isInEditMode()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1040
    move/from16 v21, v5

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1041
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v5, v21

    .line 1046
    :cond_1
    :goto_0
    move/from16 v21, v6

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 1047
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v6, v21

    .line 1058
    :cond_2
    :goto_1
    move-object/from16 v21, v2

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-virtual/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1060
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v21, v2

    invoke-static/range {v21 .. v21}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    :goto_2
    move/from16 v9, v21

    .line 1061
    .local v9, "applyInsets":Z
    move-object/from16 v21, v2

    invoke-static/range {v21 .. v21}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v21

    move/from16 v10, v21

    .line 1065
    .local v10, "layoutDirection":I
    const/16 v21, 0x0

    move/from16 v11, v21

    .line 1066
    .local v11, "hasDrawerOnLeftEdge":Z
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 1067
    .local v12, "hasDrawerOnRightEdge":Z
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v21

    move/from16 v13, v21

    .line 1068
    .local v13, "childCount":I
    const/16 v21, 0x0

    move/from16 v14, v21

    .local v14, "i":I
    :goto_3
    move/from16 v21, v14

    move/from16 v22, v13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_16

    .line 1069
    move-object/from16 v21, v2

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v15, v21

    .line 1071
    .local v15, "child":Landroid/view/View;
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1072
    .line 1068
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1042
    .end local v9    # "applyInsets":Z
    .end local v10    # "layoutDirection":I
    .end local v11    # "hasDrawerOnLeftEdge":Z
    .end local v12    # "hasDrawerOnRightEdge":Z
    .end local v13    # "childCount":I
    .end local v14    # "i":I
    .end local v15    # "child":Landroid/view/View;
    :cond_3
    move/from16 v21, v5

    if-nez v21, :cond_1

    .line 1043
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v5, v21

    .line 1044
    const/16 v21, 0x12c

    move/from16 v7, v21

    goto :goto_0

    .line 1048
    :cond_4
    move/from16 v21, v6

    if-nez v21, :cond_2

    .line 1049
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v6, v21

    .line 1050
    const/16 v21, 0x12c

    move/from16 v8, v21

    goto :goto_1

    .line 1053
    :cond_5
    new-instance v21, Ljava/lang/IllegalArgumentException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const-string/jumbo v23, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1060
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .line 1075
    .restart local v9    # "applyInsets":Z
    .restart local v10    # "layoutDirection":I
    .restart local v11    # "hasDrawerOnLeftEdge":Z
    .restart local v12    # "hasDrawerOnRightEdge":Z
    .restart local v13    # "childCount":I
    .restart local v14    # "i":I
    .restart local v15    # "child":Landroid/view/View;
    :cond_7
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object/from16 v16, v21

    .line 1077
    .local v16, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move/from16 v21, v9

    if-eqz v21, :cond_9

    .line 1078
    move-object/from16 v21, v16

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    move/from16 v22, v10

    invoke-static/range {v21 .. v22}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v21

    move/from16 v17, v21

    .line 1079
    .local v17, "cgrav":I
    move-object/from16 v21, v15

    invoke-static/range {v21 .. v21}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1080
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 1081
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/WindowInsets;

    move-object/from16 v18, v21

    .line 1082
    .local v18, "wi":Landroid/view/WindowInsets;
    move/from16 v21, v17

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 1083
    move-object/from16 v21, v18

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v22

    move-object/from16 v23, v18

    .line 1084
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v25, v18

    .line 1085
    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    .line 1083
    invoke-virtual/range {v21 .. v25}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v18, v21

    .line 1091
    :cond_8
    :goto_5
    move-object/from16 v21, v15

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v21

    .line 1092
    .line 1113
    .end local v17    # "cgrav":I
    .end local v18    # "wi":Landroid/view/WindowInsets;
    :cond_9
    :goto_6
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1115
    move/from16 v21, v7

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v17, v21

    .line 1117
    .local v17, "contentWidthSpec":I
    move/from16 v21, v8

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v18, v21

    .line 1119
    .local v18, "contentHeightSpec":I
    move-object/from16 v21, v15

    move/from16 v22, v17

    move/from16 v23, v18

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 1120
    goto/16 :goto_4

    .line 1086
    .local v17, "cgrav":I
    .local v18, "wi":Landroid/view/WindowInsets;
    :cond_a
    move/from16 v21, v17

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1087
    move-object/from16 v21, v18

    const/16 v22, 0x0

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v23

    move-object/from16 v24, v18

    .line 1088
    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v24

    move-object/from16 v25, v18

    .line 1089
    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    .line 1087
    invoke-virtual/range {v21 .. v25}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v18, v21

    goto :goto_5

    .line 1094
    .end local v18    # "wi":Landroid/view/WindowInsets;
    :cond_b
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 1095
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/WindowInsets;

    move-object/from16 v18, v21

    .line 1096
    .restart local v18    # "wi":Landroid/view/WindowInsets;
    move/from16 v21, v17

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 1097
    move-object/from16 v21, v18

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v22

    move-object/from16 v23, v18

    .line 1098
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v25, v18

    .line 1099
    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    .line 1097
    invoke-virtual/range {v21 .. v25}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v18, v21

    .line 1105
    :cond_c
    :goto_7
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1106
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1107
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    .line 1108
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_6

    .line 1100
    :cond_d
    move/from16 v21, v17

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1101
    move-object/from16 v21, v18

    const/16 v22, 0x0

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v23

    move-object/from16 v24, v18

    .line 1102
    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v24

    move-object/from16 v25, v18

    .line 1103
    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    .line 1101
    invoke-virtual/range {v21 .. v25}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v18, v21

    goto :goto_7

    .line 1120
    .end local v17    # "cgrav":I
    .end local v18    # "wi":Landroid/view/WindowInsets;
    :cond_e
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 1121
    sget-boolean v21, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v21, :cond_f

    .line 1122
    move-object/from16 v21, v15

    invoke-static/range {v21 .. v21}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v21

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_f

    .line 1123
    move-object/from16 v21, v15

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1126
    :cond_f
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    .line 1127
    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v21

    const/16 v22, 0x7

    and-int/lit8 v21, v21, 0x7

    move/from16 v17, v21

    .line 1130
    .local v17, "childGravity":I
    move/from16 v21, v17

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    const/16 v21, 0x1

    :goto_8
    move/from16 v18, v21

    .line 1131
    .local v18, "isLeftEdgeDrawer":Z
    move/from16 v21, v18

    if-eqz v21, :cond_10

    move/from16 v21, v11

    if-nez v21, :cond_11

    :cond_10
    move/from16 v21, v18

    if-nez v21, :cond_13

    move/from16 v21, v12

    if-eqz v21, :cond_13

    .line 1133
    :cond_11
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Child drawer has absolute gravity "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v17

    .line 1134
    invoke-static/range {v24 .. v24}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " but this "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "DrawerLayout"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " already has a "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "drawer view along that edge"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1130
    .end local v18    # "isLeftEdgeDrawer":Z
    :cond_12
    const/16 v21, 0x0

    goto :goto_8

    .line 1137
    .restart local v18    # "isLeftEdgeDrawer":Z
    :cond_13
    move/from16 v21, v18

    if-eqz v21, :cond_14

    .line 1138
    const/16 v21, 0x1

    move/from16 v11, v21

    .line 1142
    :goto_9
    move/from16 v21, v3

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v19, v21

    .line 1145
    .local v19, "drawerWidthSpec":I
    move/from16 v21, v4

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v20, v21

    .line 1148
    .local v20, "drawerHeightSpec":I
    move-object/from16 v21, v15

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 1149
    goto/16 :goto_4

    .line 1140
    .end local v19    # "drawerWidthSpec":I
    .end local v20    # "drawerHeightSpec":I
    :cond_14
    const/16 v21, 0x1

    move/from16 v12, v21

    goto :goto_9

    .line 1150
    .end local v17    # "childGravity":I
    .end local v18    # "isLeftEdgeDrawer":Z
    :cond_15
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Child "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " at index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1155
    .end local v15    # "child":Landroid/view/View;
    .end local v16    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_16
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1997
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v4, v1

    instance-of v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    if-nez v4, :cond_0

    .line 1998
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1999
    .line 2024
    :goto_0
    return-void

    .line 2002
    :cond_0
    move-object v4, v1

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    move-object v2, v4

    .line 2003
    .local v2, "ss":Landroidx/drawerlayout/widget/DrawerLayout$SavedState;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2005
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v4, :cond_1

    .line 2006
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 2007
    .local v3, "toOpen":Landroid/view/View;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 2008
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 2012
    .end local v3    # "toOpen":Landroid/view/View;
    :cond_1
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 2013
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2015
    :cond_2
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 2016
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2018
    :cond_3
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 2019
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v6, 0x800003

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2021
    :cond_4
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 2022
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v6, 0x800005

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2024
    :cond_5
    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    .line 1378
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "layoutDirection":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1379
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 2028
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v9, v0

    invoke-super {v9}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    move-object v1, v9

    .line 2029
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v9

    .line 2031
    .local v2, "ss":Landroidx/drawerlayout/widget/DrawerLayout$SavedState;
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v3, v9

    .line 2032
    .local v3, "childCount":I
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    :goto_0
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 2033
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 2034
    .local v5, "child":Landroid/view/View;
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v6, v9

    .line 2036
    .local v6, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v9, v6

    iget v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 2038
    .local v7, "isOpenedAndNotClosing":Z
    move-object v9, v6

    iget v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_2
    move v8, v9

    .line 2039
    .local v8, "isClosedAndOpening":Z
    move v9, v7

    if-nez v9, :cond_0

    move v9, v8

    if-eqz v9, :cond_4

    .line 2042
    :cond_0
    move-object v9, v2

    move-object v10, v6

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2043
    .line 2047
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    .end local v7    # "isOpenedAndNotClosing":Z
    .end local v8    # "isClosedAndOpening":Z
    :cond_1
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 2048
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 2049
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 2050
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 2052
    move-object v9, v2

    move-object v0, v9

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return-object v0

    .line 2036
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 2038
    .restart local v7    # "isOpenedAndNotClosing":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 2032
    .restart local v8    # "isClosedAndOpening":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    .prologue
    .line 1569
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object/from16 v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v12, v0

    iget-object v12, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1570
    move-object v12, v0

    iget-object v12, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1572
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    move v2, v12

    .line 1573
    .local v2, "action":I
    const/4 v12, 0x1

    move v3, v12

    .line 1575
    .local v3, "wantTouchEvents":Z
    move v12, v2

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    packed-switch v12, :pswitch_data_0

    .line 1616
    :goto_0
    :pswitch_0
    move v12, v3

    move v0, v12

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    return v0

    .line 1577
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout;
    :pswitch_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 1578
    .local v4, "x":F
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 1579
    .local v5, "y":F
    move-object v12, v0

    move v13, v4

    iput v13, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    .line 1580
    move-object v12, v0

    move v13, v5

    iput v13, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    .line 1581
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1582
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1583
    goto :goto_0

    .line 1587
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 1588
    .restart local v4    # "x":F
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 1589
    .restart local v5    # "y":F
    const/4 v12, 0x1

    move v6, v12

    .line 1590
    .local v6, "peekingOnly":Z
    move-object v12, v0

    iget-object v12, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move v13, v4

    float-to-int v13, v13

    move v14, v5

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1591
    .local v7, "touchedView":Landroid/view/View;
    move-object v12, v7

    if-eqz v12, :cond_0

    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1592
    move v12, v4

    move-object v13, v0

    iget v13, v13, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v12, v13

    move v8, v12

    .line 1593
    .local v8, "dx":F
    move v12, v5

    move-object v13, v0

    iget v13, v13, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr v12, v13

    move v9, v12

    .line 1594
    .local v9, "dy":F
    move-object v12, v0

    iget-object v12, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v12}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v12

    move v10, v12

    .line 1595
    .local v10, "slop":I
    move v12, v8

    move v13, v8

    mul-float/2addr v12, v13

    move v13, v9

    move v14, v9

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v13, v10

    move v14, v10

    mul-int/2addr v13, v14

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 1597
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 1598
    .local v11, "openDrawer":Landroid/view/View;
    move-object v12, v11

    if-eqz v12, :cond_0

    .line 1599
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 1603
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "slop":I
    .end local v11    # "openDrawer":Landroid/view/View;
    :cond_0
    move-object v12, v0

    move v13, v6

    invoke-virtual {v12, v13}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1604
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1605
    goto/16 :goto_0

    .line 1599
    .restart local v8    # "dx":F
    .restart local v9    # "dy":F
    .restart local v10    # "slop":I
    .restart local v11    # "openDrawer":Landroid/view/View;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1609
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "peekingOnly":Z
    .end local v7    # "touchedView":Landroid/view/View;
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "slop":I
    .end local v11    # "openDrawer":Landroid/view/View;
    :pswitch_3
    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1610
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1611
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto/16 :goto_0

    .line 1575
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 5

    .prologue
    .line 1722
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(IZ)V

    .line 1723
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 9

    .prologue
    .line 1733
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "gravity":I
    move v2, p2

    .local v2, "animate":Z
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1734
    .local v3, "drawerView":Landroid/view/View;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1735
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No drawer view found with gravity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    .line 1736
    invoke-static {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1738
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1739
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1678
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1679
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1688
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "animate":Z
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1689
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a sliding drawer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1692
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1693
    .local v3, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v4, :cond_1

    .line 1694
    move-object v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1695
    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1697
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 1712
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1713
    return-void

    .line 1698
    :cond_1
    move v4, v2

    if-eqz v4, :cond_3

    .line 1699
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1701
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1702
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1704
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v1

    .line 1705
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1704
    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1708
    :cond_3
    move-object v4, v0

    move-object v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1709
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1710
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 4
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "listener":Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 529
    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 533
    goto :goto_0

    .line 535
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 536
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 1625
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "disallowIntercept":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1627
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1628
    move v2, v1

    if-eqz v2, :cond_0

    .line 1629
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1631
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 1302
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    if-nez v1, :cond_0

    .line 1303
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1305
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "insets":Ljava/lang/Object;
    move v2, p2

    .local v2, "draw":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 406
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 407
    move-object v3, v0

    move v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 408
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    .line 409
    return-void

    .line 407
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setDrawerElevation(F)V
    .locals 6

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "elevation":F
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    .line 377
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 378
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 379
    .local v3, "child":Landroid/view/View;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 377
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "listener":Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    if-eqz v2, :cond_0

    .line 494
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 496
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 497
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 501
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    .line 502
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 5

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "lockMode":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 553
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 554
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 8

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "lockMode":I
    move v2, p2

    .local v2, "edgeGravity":I
    move v6, v2

    move-object v7, v0

    .line 577
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 576
    invoke-static {v6, v7}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    move v3, v6

    .line 579
    .local v3, "absGravity":I
    move v6, v2

    sparse-switch v6, :sswitch_data_0

    .line 594
    :goto_0
    move v6, v1

    if-eqz v6, :cond_0

    .line 596
    move v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    :goto_1
    move-object v4, v6

    .line 597
    .local v4, "helper":Landroidx/customview/widget/ViewDragHelper;
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 599
    .end local v4    # "helper":Landroidx/customview/widget/ViewDragHelper;
    :cond_0
    move v6, v1

    packed-switch v6, :pswitch_data_0

    .line 614
    :cond_1
    :goto_2
    return-void

    .line 581
    :sswitch_0
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    .line 582
    goto :goto_0

    .line 584
    :sswitch_1
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    .line 585
    goto :goto_0

    .line 587
    :sswitch_2
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    .line 588
    goto :goto_0

    .line 590
    :sswitch_3
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 596
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    goto :goto_1

    .line 601
    :pswitch_0
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 602
    .local v4, "toOpen":Landroid/view/View;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 603
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 607
    .end local v4    # "toOpen":Landroid/view/View;
    :pswitch_1
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 608
    .local v5, "toClose":Landroid/view/View;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 609
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 579
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 9
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "lockMode":I
    move-object v2, p2

    .local v2, "drawerView":Landroid/view/View;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 636
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "drawer with appropriate layout_gravity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 639
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move v3, v4

    .line 640
    .local v3, "gravity":I
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 641
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "resId":I
    move v2, p2

    .local v2, "gravity":I
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move v5, v1

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 466
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    move v2, p2

    .local v2, "gravity":I
    sget-boolean v3, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v3, :cond_0

    .line 433
    .line 448
    :goto_0
    return-void

    .line 435
    :cond_0
    move v3, v2

    const v4, 0x800003

    and-int/2addr v3, v4

    const v4, 0x800003

    if-ne v3, v4, :cond_1

    .line 436
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 446
    :goto_1
    move-object v3, v0

    invoke-direct {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 447
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 448
    goto :goto_0

    .line 437
    :cond_1
    move v3, v2

    const v4, 0x800005

    and-int/2addr v3, v4

    const v4, 0x800005

    if-ne v3, v4, :cond_2

    .line 438
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 439
    :cond_2
    move v3, v2

    const/4 v4, 0x3

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 440
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 441
    :cond_3
    move v3, v2

    const/4 v4, 0x5

    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 442
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 444
    :cond_4
    goto :goto_0
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 6
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "edgeGravity":I
    move-object v2, p2

    .local v2, "title":Ljava/lang/CharSequence;
    move v4, v1

    move-object v5, v0

    .line 728
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 727
    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 729
    .local v3, "absGravity":I
    move v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 730
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    move v4, v3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 732
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 7

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "drawerView":Landroid/view/View;
    move v2, p2

    .local v2, "slideOffset":F
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 928
    .local v3, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move v4, v2

    move-object v5, v3

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 929
    .line 934
    :goto_0
    return-void

    .line 932
    :cond_0
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 933
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 934
    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    .line 475
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 476
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 5

    .prologue
    .line 1360
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1361
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1362
    return-void

    .line 1360
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1339
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v1, p1

    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1340
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1341
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1372
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1373
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1374
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 11

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout;
    move v1, p1

    .local v1, "forGravity":I
    move v2, p2

    .local v2, "activeState":I
    move-object v3, p3

    .local v3, "activeDrawer":Landroid/view/View;
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v9

    move v4, v9

    .line 815
    .local v4, "leftState":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v9

    move v5, v9

    .line 818
    .local v5, "rightState":I
    move v9, v4

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    move v9, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 819
    :cond_0
    const/4 v9, 0x1

    move v6, v9

    .line 826
    .local v6, "state":I
    :goto_0
    move-object v9, v3

    if-eqz v9, :cond_1

    move v9, v2

    if-nez v9, :cond_1

    .line 827
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v7, v9

    .line 828
    .local v7, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    move-object v9, v7

    iget v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    .line 829
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 835
    .end local v7    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_1
    :goto_1
    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    if-eq v9, v10, :cond_6

    .line 836
    move-object v9, v0

    move v10, v6

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    .line 838
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 841
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v7, v9

    .line 842
    .local v7, "listenerCount":I
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v8, v9

    .local v8, "i":I
    :goto_2
    move v9, v8

    if-ltz v9, :cond_6

    .line 843
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move v10, v6

    invoke-interface {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 842
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 820
    .end local v6    # "state":I
    .end local v7    # "listenerCount":I
    .end local v8    # "i":I
    :cond_2
    move v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    move v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 821
    :cond_3
    const/4 v9, 0x2

    move v6, v9

    .restart local v6    # "state":I
    goto :goto_0

    .line 823
    .end local v6    # "state":I
    :cond_4
    const/4 v9, 0x0

    move v6, v9

    .restart local v6    # "state":I
    goto :goto_0

    .line 830
    .local v7, "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_5
    move-object v9, v7

    iget v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    .line 831
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1

    .line 847
    .end local v7    # "lp":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_6
    return-void
.end method
