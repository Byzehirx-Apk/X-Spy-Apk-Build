.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 116
    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    move-object v0, v1

    .line 117
    .local v0, "pkg":Ljava/lang/Package;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 125
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 131
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 136
    new-instance v1, Ljava/lang/ThreadLocal;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 150
    new-instance v1, Landroidx/core/util/Pools$SynchronizedPool;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    return-void

    .line 117
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
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
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/coordinatorlayout/R$attr;->coordinatorLayoutStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 206
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 167
    move-object v10, v0

    new-instance v11, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 169
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 170
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 171
    move-object v10, v0

    const/4 v11, 0x2

    new-array v11, v11, [I

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 193
    move-object v10, v0

    new-instance v11, Landroidx/core/view/NestedScrollingParentHelper;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 208
    move v10, v3

    if-nez v10, :cond_0

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    const/4 v13, 0x0

    sget v14, Landroidx/coordinatorlayout/R$style;->Widget_Support_CoordinatorLayout:I

    .line 209
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 211
    :goto_0
    move-object v4, v10

    .line 213
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v10, v4

    sget v11, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_keylines:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    move v5, v10

    .line 214
    .local v5, "keylineArrayRes":I
    move v10, v5

    if-eqz v10, :cond_1

    .line 215
    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v6, v10

    .line 216
    .local v6, "res":Landroid/content/res/Resources;
    move-object v10, v0

    move-object v11, v6

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    .line 217
    move-object v10, v6

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    move v7, v10

    .line 218
    .local v7, "density":F
    move-object v10, v0

    iget-object v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    array-length v10, v10

    move v8, v10

    .line 219
    .local v8, "count":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_1

    .line 220
    move-object v10, v0

    iget-object v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    move v11, v9

    move-object v12, v0

    iget-object v12, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    move v13, v9

    aget v12, v12, v13

    int-to-float v12, v12

    move v13, v7

    mul-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v10, v11

    .line 219
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 209
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "keylineArrayRes":I
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "density":F
    .end local v8    # "count":I
    .end local v9    # "i":I
    :cond_0
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    move v13, v3

    const/4 v14, 0x0

    .line 211
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    goto :goto_0

    .line 223
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    .restart local v5    # "keylineArrayRes":I
    :cond_1
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 224
    move-object v10, v4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    move-object v10, v0

    invoke-direct {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    .line 227
    move-object v10, v0

    new-instance v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {v10, v11}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 228
    return-void
.end method

.method private static acquireTempRect()Landroid/graphics/Rect;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object v0, v1

    .line 155
    .local v0, "rect":Landroid/graphics/Rect;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 158
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "rect":Landroid/graphics/Rect;
    return-object v0
.end method

.method private static clamp(III)I
    .locals 5

    .prologue
    .line 1250
    move v0, p0

    .local v0, "value":I
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 1251
    move v3, v1

    move v0, v3

    .line 1255
    .end local v0    # "value":I
    :goto_0
    return v0

    .line 1252
    .restart local v0    # "value":I
    :cond_0
    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_1

    .line 1253
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 1255
    :cond_1
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method private constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 15

    .prologue
    .line 1036
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object/from16 v2, p2

    .local v2, "out":Landroid/graphics/Rect;
    move/from16 v3, p3

    .local v3, "childWidth":I
    move/from16 v4, p4

    .local v4, "childHeight":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v9

    move v5, v9

    .line 1037
    .local v5, "width":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v9

    move v6, v9

    .line 1040
    .local v6, "height":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v9

    move-object v10, v1

    iget v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move v11, v5

    move-object v12, v0

    .line 1042
    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    move v12, v3

    sub-int/2addr v11, v12

    move-object v12, v1

    iget v12, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    .line 1041
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1040
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v7, v9

    .line 1043
    .local v7, "left":I
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v9

    move-object v10, v1

    iget v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move v11, v6

    move-object v12, v0

    .line 1045
    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    move v12, v4

    sub-int/2addr v11, v12

    move-object v12, v1

    iget v12, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    .line 1044
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1043
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v8, v9

    .line 1047
    .local v8, "top":I
    move-object v9, v2

    move v10, v7

    move v11, v8

    move v12, v7

    move v13, v3

    add-int/2addr v12, v13

    move v13, v8

    move v14, v4

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1048
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 11

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 826
    move-object v7, v1

    move-object v0, v7

    .line 846
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :goto_0
    return-object v0

    .line 829
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_0
    const/4 v7, 0x0

    move v2, v7

    .local v2, "i":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .local v3, "z":I
    :goto_1
    move v7, v2

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 830
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 831
    .local v4, "child":Landroid/view/View;
    move-object v7, v4

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 832
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v7

    .line 833
    .local v5, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    move-object v6, v7

    .line 835
    .local v6, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 837
    move-object v7, v6

    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v7

    move-object v1, v7

    .line 838
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 840
    .line 846
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_1
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 829
    .restart local v4    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V
    .locals 23

    .prologue
    .line 962
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p1

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p2

    .local v3, "layoutDirection":I
    move-object/from16 v4, p3

    .local v4, "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v5, p4

    .local v5, "out":Landroid/graphics/Rect;
    move-object/from16 v6, p5

    .local v6, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move/from16 v7, p6

    .local v7, "childWidth":I
    move/from16 v8, p7

    .local v8, "childHeight":I
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 963
    invoke-static/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v17

    move/from16 v18, v3

    .line 962
    invoke-static/range {v17 .. v18}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v17

    move/from16 v9, v17

    .line 964
    .local v9, "absGravity":I
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    move/from16 v17, v0

    .line 965
    invoke-static/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v17

    move/from16 v18, v3

    .line 964
    invoke-static/range {v17 .. v18}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v17

    move/from16 v10, v17

    .line 968
    .local v10, "absAnchorGravity":I
    move/from16 v17, v9

    const/16 v18, 0x7

    and-int/lit8 v17, v17, 0x7

    move/from16 v11, v17

    .line 969
    .local v11, "hgrav":I
    move/from16 v17, v9

    const/16 v18, 0x70

    and-int/lit8 v17, v17, 0x70

    move/from16 v12, v17

    .line 970
    .local v12, "vgrav":I
    move/from16 v17, v10

    const/16 v18, 0x7

    and-int/lit8 v17, v17, 0x7

    move/from16 v13, v17

    .line 971
    .local v13, "anchorHgrav":I
    move/from16 v17, v10

    const/16 v18, 0x70

    and-int/lit8 v17, v17, 0x70

    move/from16 v14, v17

    .line 979
    .local v14, "anchorVgrav":I
    move/from16 v17, v13

    sparse-switch v17, :sswitch_data_0

    .line 982
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v15, v17

    .line 992
    .local v15, "left":I
    :goto_0
    move/from16 v17, v14

    sparse-switch v17, :sswitch_data_1

    .line 995
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v16, v17

    .line 1006
    .local v16, "top":I
    :goto_1
    move/from16 v17, v11

    sparse-switch v17, :sswitch_data_2

    .line 1009
    move/from16 v17, v15

    move/from16 v18, v7

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 1019
    :goto_2
    move/from16 v17, v12

    sparse-switch v17, :sswitch_data_3

    .line 1022
    move/from16 v17, v16

    move/from16 v18, v8

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 1032
    :goto_3
    move-object/from16 v17, v5

    move/from16 v18, v15

    move/from16 v19, v16

    move/from16 v20, v15

    move/from16 v21, v7

    add-int v20, v20, v21

    move/from16 v21, v16

    move/from16 v22, v8

    add-int v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 1033
    return-void

    .line 985
    .end local v15    # "left":I
    .end local v16    # "top":I
    :sswitch_0
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v15, v17

    .line 986
    .restart local v15    # "left":I
    goto :goto_0

    .line 988
    .end local v15    # "left":I
    :sswitch_1
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v15, v17

    .restart local v15    # "left":I
    goto :goto_0

    .line 998
    :sswitch_2
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v16, v17

    .line 999
    .restart local v16    # "top":I
    goto :goto_1

    .line 1001
    .end local v16    # "top":I
    :sswitch_3
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v16, v17

    .restart local v16    # "top":I
    goto :goto_1

    .line 1013
    :sswitch_4
    goto :goto_2

    .line 1015
    :sswitch_5
    move/from16 v17, v15

    move/from16 v18, v7

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v15, v17

    goto :goto_2

    .line 1026
    :sswitch_6
    goto :goto_3

    .line 1028
    :sswitch_7
    move/from16 v17, v16

    move/from16 v18, v8

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v16, v17

    goto :goto_3

    .line 979
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 992
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 1006
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
    .end sparse-switch

    .line 1019
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_6
    .end sparse-switch
.end method

.method private getKeyline(I)I
    .locals 6

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    if-nez v2, :cond_0

    .line 575
    const-string/jumbo v2, "CoordinatorLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No keylines defined for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - attempted index lookup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 576
    const/4 v2, 0x0

    move v0, v2

    .line 584
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :goto_0
    return v0

    .line 579
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 580
    :cond_1
    const-string/jumbo v2, "CoordinatorLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Keyline index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " out of range for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 581
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 584
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 418
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    move v2, v7

    .line 419
    .local v2, "useCustomOrder":Z
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 420
    .local v3, "childCount":I
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    if-ltz v7, :cond_1

    .line 421
    move v7, v2

    if-eqz v7, :cond_0

    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v7

    :goto_1
    move v5, v7

    .line 422
    .local v5, "childIndex":I
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 423
    .local v6, "child":Landroid/view/View;
    move-object v7, v1

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 420
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 421
    .end local v5    # "childIndex":I
    .end local v6    # "child":Landroid/view/View;
    :cond_0
    move v7, v4

    goto :goto_1

    .line 426
    :cond_1
    sget-object v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v7, :cond_2

    .line 427
    move-object v7, v1

    sget-object v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 429
    :cond_2
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1572
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 13

    .prologue
    .line 1163
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "layoutDirection":I
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v6

    .line 1164
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v4, v6

    .line 1165
    .local v4, "parent":Landroid/graphics/Rect;
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v7

    move-object v8, v3

    iget v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    move-object v8, v0

    .line 1166
    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    move-object v9, v0

    .line 1167
    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    move-object v10, v0

    .line 1168
    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v3

    iget v11, v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    .line 1165
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1170
    move-object v6, v0

    iget-object v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 1171
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1174
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1175
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1176
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1177
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1180
    :cond_0
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v5, v6

    .line 1181
    .local v5, "out":Landroid/graphics/Rect;
    move-object v6, v3

    iget v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    move-object v8, v1

    .line 1182
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move-object v9, v4

    move-object v10, v5

    move v11, v2

    .line 1181
    invoke-static/range {v6 .. v11}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1183
    move-object v6, v1

    move-object v7, v5

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1185
    move-object v6, v4

    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1186
    move-object v6, v5

    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1187
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 12

    .prologue
    .line 1076
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "anchor":Landroid/view/View;
    move v3, p3

    .local v3, "layoutDirection":I
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, v7

    .line 1077
    .local v4, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v5, v7

    .line 1079
    .local v5, "childRect":Landroid/graphics/Rect;
    move-object v7, v0

    move-object v8, v2

    move-object v9, v4

    :try_start_0
    invoke-virtual {v7, v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1080
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1081
    move-object v7, v1

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    move-object v7, v4

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1084
    move-object v7, v5

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1085
    .line 1086
    return-void

    .line 1083
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1084
    move-object v7, v5

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    move-object v7, v6

    throw v7
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 21

    .prologue
    .line 1100
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p1

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p2

    .local v3, "keyline":I
    move/from16 v4, p3

    .local v4, "layoutDirection":I
    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v15

    .line 1101
    .local v5, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v15, v5

    iget v15, v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1102
    invoke-static {v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v15

    move/from16 v16, v4

    .line 1101
    invoke-static/range {v15 .. v16}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v15

    move v6, v15

    .line 1104
    .local v6, "absGravity":I
    move v15, v6

    const/16 v16, 0x7

    and-int/lit8 v15, v15, 0x7

    move v7, v15

    .line 1105
    .local v7, "hgrav":I
    move v15, v6

    const/16 v16, 0x70

    and-int/lit8 v15, v15, 0x70

    move v8, v15

    .line 1106
    .local v8, "vgrav":I
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v15

    move v9, v15

    .line 1107
    .local v9, "width":I
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v15

    move v10, v15

    .line 1108
    .local v10, "height":I
    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move v11, v15

    .line 1109
    .local v11, "childWidth":I
    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move v12, v15

    .line 1111
    .local v12, "childHeight":I
    move v15, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1112
    move v15, v9

    move/from16 v16, v3

    sub-int v15, v15, v16

    move v3, v15

    .line 1115
    :cond_0
    move-object v15, v1

    move/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v15

    move/from16 v16, v11

    sub-int v15, v15, v16

    move v13, v15

    .line 1116
    .local v13, "left":I
    const/4 v15, 0x0

    move v14, v15

    .line 1118
    .local v14, "top":I
    move v15, v7

    sparse-switch v15, :sswitch_data_0

    .line 1122
    .line 1131
    :goto_0
    move v15, v8

    sparse-switch v15, :sswitch_data_1

    .line 1135
    .line 1145
    :goto_1
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v15

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v16, v13

    move/from16 v17, v9

    move-object/from16 v18, v1

    .line 1147
    invoke-virtual/range {v18 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v18, v11

    sub-int v17, v17, v18

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 1146
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1145
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v13, v15

    .line 1148
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v15

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v16, v14

    move/from16 v17, v10

    move-object/from16 v18, v1

    .line 1150
    invoke-virtual/range {v18 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v18, v12

    sub-int v17, v17, v18

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 1149
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1148
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v14, v15

    .line 1152
    move-object v15, v2

    move/from16 v16, v13

    move/from16 v17, v14

    move/from16 v18, v13

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v14

    move/from16 v20, v12

    add-int v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/view/View;->layout(IIII)V

    .line 1153
    return-void

    .line 1124
    :sswitch_0
    move v15, v13

    move/from16 v16, v11

    add-int v15, v15, v16

    move v13, v15

    .line 1125
    goto/16 :goto_0

    .line 1127
    :sswitch_1
    move v15, v13

    move/from16 v16, v11

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    move v13, v15

    goto/16 :goto_0

    .line 1137
    :sswitch_2
    move v15, v14

    move/from16 v16, v12

    add-int v15, v15, v16

    move v14, v15

    .line 1138
    goto/16 :goto_1

    .line 1140
    :sswitch_3
    move v15, v14

    move/from16 v16, v12

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    move v14, v15

    goto/16 :goto_1

    .line 1118
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1131
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 18

    .prologue
    .line 1380
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "inset":Landroid/graphics/Rect;
    move/from16 v3, p3

    .local v3, "layoutDirection":I
    move-object v12, v1

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1382
    .line 1458
    :goto_0
    return-void

    .line 1385
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    if-lez v12, :cond_1

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    if-gtz v12, :cond_2

    .line 1387
    :cond_1
    goto :goto_0

    .line 1390
    :cond_2
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v12

    .line 1391
    .local v4, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v12, v4

    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    move-object v5, v12

    .line 1392
    .local v5, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v12

    move-object v6, v12

    .line 1393
    .local v6, "dodgeRect":Landroid/graphics/Rect;
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v12

    move-object v7, v12

    .line 1394
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object v12, v7

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object v15, v1

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 1396
    move-object v12, v5

    if-eqz v12, :cond_3

    move-object v12, v5

    move-object v13, v0

    move-object v14, v1

    move-object v15, v6

    invoke-virtual {v12, v13, v14, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1398
    move-object v12, v7

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1399
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v6

    .line 1400
    invoke-virtual {v15}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " | Bounds:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    .line 1401
    invoke-virtual {v15}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1404
    :cond_3
    move-object v12, v6

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1408
    :cond_4
    move-object v12, v7

    invoke-static {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1410
    move-object v12, v6

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1412
    move-object v12, v6

    invoke-static {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1413
    goto/16 :goto_0

    .line 1416
    :cond_5
    move-object v12, v4

    iget v12, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    move v13, v3

    invoke-static {v12, v13}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v12

    move v8, v12

    .line 1419
    .local v8, "absDodgeInsetEdges":I
    const/4 v12, 0x0

    move v9, v12

    .line 1420
    .local v9, "offsetY":Z
    move v12, v8

    const/16 v13, 0x30

    and-int/lit8 v12, v12, 0x30

    const/16 v13, 0x30

    if-ne v12, v13, :cond_6

    .line 1421
    move-object v12, v6

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move-object v13, v4

    iget v13, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    move-object v13, v4

    iget v13, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int/2addr v12, v13

    move v10, v12

    .line 1422
    .local v10, "distance":I
    move v12, v10

    move-object v13, v2

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-ge v12, v13, :cond_6

    .line 1423
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move v15, v10

    sub-int/2addr v14, v15

    invoke-direct {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1424
    const/4 v12, 0x1

    move v9, v12

    .line 1427
    .end local v10    # "distance":I
    :cond_6
    move v12, v8

    const/16 v13, 0x50

    and-int/lit8 v12, v12, 0x50

    const/16 v13, 0x50

    if-ne v12, v13, :cond_7

    .line 1428
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v12

    move-object v13, v6

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    move-object v13, v4

    iget v13, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    move-object v13, v4

    iget v13, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int/2addr v12, v13

    move v10, v12

    .line 1429
    .restart local v10    # "distance":I
    move v12, v10

    move-object v13, v2

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v12, v13, :cond_7

    .line 1430
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-direct {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1431
    const/4 v12, 0x1

    move v9, v12

    .line 1434
    .end local v10    # "distance":I
    :cond_7
    move v12, v9

    if-nez v12, :cond_8

    .line 1435
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1438
    :cond_8
    const/4 v12, 0x0

    move v10, v12

    .line 1439
    .local v10, "offsetX":Z
    move v12, v8

    const/4 v13, 0x3

    and-int/lit8 v12, v12, 0x3

    const/4 v13, 0x3

    if-ne v12, v13, :cond_9

    .line 1440
    move-object v12, v6

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v4

    iget v13, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v12, v13

    move-object v13, v4

    iget v13, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v12, v13

    move v11, v12

    .line 1441
    .local v11, "distance":I
    move v12, v11

    move-object v13, v2

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_9

    .line 1442
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move v15, v11

    sub-int/2addr v14, v15

    invoke-direct {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1443
    const/4 v12, 0x1

    move v10, v12

    .line 1446
    .end local v11    # "distance":I
    :cond_9
    move v12, v8

    const/4 v13, 0x5

    and-int/lit8 v12, v12, 0x5

    const/4 v13, 0x5

    if-ne v12, v13, :cond_a

    .line 1447
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v12

    move-object v13, v6

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    move-object v13, v4

    iget v13, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    move-object v13, v4

    iget v13, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int/2addr v12, v13

    move v11, v12

    .line 1448
    .restart local v11    # "distance":I
    move v12, v11

    move-object v13, v2

    iget v13, v13, Landroid/graphics/Rect;->right:I

    if-ge v12, v13, :cond_a

    .line 1449
    move-object v12, v0

    move-object v13, v1

    move v14, v11

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    invoke-direct {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1450
    const/4 v12, 0x1

    move v10, v12

    .line 1453
    .end local v11    # "distance":I
    :cond_a
    move v12, v10

    if-nez v12, :cond_b

    .line 1454
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1457
    :cond_b
    move-object v12, v6

    invoke-static {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1458
    goto/16 :goto_0
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 13

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v7, v2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 589
    const/4 v7, 0x0

    move-object v0, v7

    .line 620
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 593
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v7, v2

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 607
    .local v3, "fullName":Ljava/lang/String;
    :goto_1
    :try_start_0
    sget-object v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object v4, v7

    .line 608
    .local v4, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;>;"
    move-object v7, v4

    if-nez v7, :cond_1

    .line 609
    new-instance v7, Ljava/util/HashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v4, v7

    .line 610
    sget-object v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 612
    :cond_1
    move-object v7, v4

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    move-object v5, v7

    .line 613
    .local v5, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;"
    move-object v7, v5

    if-nez v7, :cond_2

    .line 614
    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object v8, v3

    .line 615
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 616
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;"
    move-object v7, v6

    sget-object v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v5, v7

    .line 617
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 618
    move-object v7, v4

    move-object v8, v3

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 620
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;"
    :cond_2
    move-object v7, v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto/16 :goto_0

    .line 596
    .end local v3    # "fullName":Ljava/lang/String;
    .end local v4    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;>;"
    .end local v5    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;"
    :cond_3
    move-object v7, v2

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    .line 598
    move-object v7, v2

    move-object v3, v7

    .restart local v3    # "fullName":Ljava/lang/String;
    goto :goto_1

    .line 601
    .end local v3    # "fullName":Ljava/lang/String;
    :cond_4
    sget-object v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v3, v7

    .restart local v3    # "fullName":Ljava/lang/String;
    goto/16 :goto_1

    .end local v3    # "fullName":Ljava/lang/String;
    :cond_5
    move-object v7, v2

    goto :goto_2

    .line 621
    .restart local v3    # "fullName":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 622
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not inflate Behavior subclass "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 26

    .prologue
    .line 432
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v4, p1

    .local v4, "ev":Landroid/view/MotionEvent;
    move/from16 v5, p2

    .local v5, "type":I
    const/16 v18, 0x0

    move/from16 v6, v18

    .line 433
    .local v6, "intercepted":Z
    const/16 v18, 0x0

    move/from16 v7, v18

    .line 435
    .local v7, "newBlock":Z
    const/16 v18, 0x0

    move-object/from16 v8, v18

    .line 437
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    move/from16 v9, v18

    .line 439
    .local v9, "action":I
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 440
    .local v10, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v18, v3

    move-object/from16 v19, v10

    invoke-direct/range {v18 .. v19}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 443
    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v11, v18

    .line 444
    .local v11, "childCount":I
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "i":I
    :goto_0
    move/from16 v18, v12

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 445
    move-object/from16 v18, v10

    move/from16 v19, v12

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-object/from16 v13, v18

    .line 446
    .local v13, "child":Landroid/view/View;
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v14, v18

    .line 447
    .local v14, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v18

    move-object/from16 v15, v18

    .line 449
    .local v15, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move/from16 v18, v6

    if-nez v18, :cond_0

    move/from16 v18, v7

    if-eqz v18, :cond_3

    :cond_0
    move/from16 v18, v9

    if-eqz v18, :cond_3

    .line 452
    move-object/from16 v18, v15

    if-eqz v18, :cond_2

    .line 453
    move-object/from16 v18, v8

    if-nez v18, :cond_1

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 455
    .local v16, "now":J
    move-wide/from16 v18, v16

    move-wide/from16 v20, v16

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v8, v18

    .line 458
    .end local v16    # "now":J
    :cond_1
    move/from16 v18, v5

    packed-switch v18, :pswitch_data_0

    .line 464
    .line 444
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 460
    :pswitch_0
    move-object/from16 v18, v15

    move-object/from16 v19, v3

    move-object/from16 v20, v13

    move-object/from16 v21, v8

    invoke-virtual/range {v18 .. v21}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v18

    .line 461
    goto :goto_1

    .line 463
    :pswitch_1
    move-object/from16 v18, v15

    move-object/from16 v19, v3

    move-object/from16 v20, v13

    move-object/from16 v21, v8

    invoke-virtual/range {v18 .. v21}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v18

    goto :goto_1

    .line 470
    :cond_3
    move/from16 v18, v6

    if-nez v18, :cond_4

    move-object/from16 v18, v15

    if-eqz v18, :cond_4

    .line 471
    move/from16 v18, v5

    packed-switch v18, :pswitch_data_1

    .line 479
    :goto_2
    move/from16 v18, v6

    if-eqz v18, :cond_4

    .line 480
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 486
    :cond_4
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v18

    move/from16 v16, v18

    .line 487
    .local v16, "wasBlocking":Z
    move-object/from16 v18, v14

    move-object/from16 v19, v3

    move-object/from16 v20, v13

    invoke-virtual/range {v18 .. v20}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v18

    move/from16 v17, v18

    .line 488
    .local v17, "isBlocking":Z
    move/from16 v18, v17

    if-eqz v18, :cond_6

    move/from16 v18, v16

    if-nez v18, :cond_6

    const/16 v18, 0x1

    :goto_3
    move/from16 v7, v18

    .line 489
    move/from16 v18, v17

    if-eqz v18, :cond_2

    move/from16 v18, v7

    if-nez v18, :cond_2

    .line 492
    .line 496
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v15    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v16    # "wasBlocking":Z
    .end local v17    # "isBlocking":Z
    :cond_5
    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 498
    move/from16 v18, v6

    move/from16 v3, v18

    .end local v3    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v3

    .line 473
    .restart local v3    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .restart local v13    # "child":Landroid/view/View;
    .restart local v14    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .restart local v15    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :pswitch_2
    move-object/from16 v18, v15

    move-object/from16 v19, v3

    move-object/from16 v20, v13

    move-object/from16 v21, v4

    invoke-virtual/range {v18 .. v21}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v18

    move/from16 v6, v18

    .line 474
    goto :goto_2

    .line 476
    :pswitch_3
    move-object/from16 v18, v15

    move-object/from16 v19, v3

    move-object/from16 v20, v13

    move-object/from16 v21, v4

    invoke-virtual/range {v18 .. v21}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v18

    move/from16 v6, v18

    goto :goto_2

    .line 488
    .restart local v16    # "wasBlocking":Z
    .restart local v17    # "isBlocking":Z
    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 471
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareChildren()V
    .locals 11

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 663
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->clear()V

    .line 665
    const/4 v7, 0x0

    move v1, v7

    .local v1, "i":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v2, v7

    .local v2, "count":I
    :goto_0
    move v7, v1

    move v8, v2

    if-ge v7, v8, :cond_4

    .line 666
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 668
    .local v3, "view":Landroid/view/View;
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v7

    move-object v4, v7

    .line 669
    .local v4, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v7, v4

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 671
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 674
    const/4 v7, 0x0

    move v5, v7

    .local v5, "j":I
    :goto_1
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_3

    .line 675
    move v7, v5

    move v8, v1

    if-ne v7, v8, :cond_1

    .line 676
    .line 674
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 678
    :cond_1
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 679
    .local v6, "other":Landroid/view/View;
    move-object v7, v4

    move-object v8, v0

    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 680
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 682
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 685
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v8, v6

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 665
    .end local v6    # "other":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "j":I
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 694
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 695
    return-void
.end method

.method private static releaseTempRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "rect":Landroid/graphics/Rect;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 163
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v1

    .line 164
    return-void
.end method

.method private resetTouchBehaviors(Z)V
    .locals 18

    .prologue
    .line 384
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move/from16 v1, p1

    .local v1, "notifyOnInterceptTouchEvent":Z
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v2, v10

    .line 385
    .local v2, "childCount":I
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    :goto_0
    move v10, v3

    move v11, v2

    if-ge v10, v11, :cond_2

    .line 386
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 387
    .local v4, "child":Landroid/view/View;
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v10

    .line 388
    .local v5, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v10, v5

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v6, v10

    .line 389
    .local v6, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v10, v6

    if-eqz v10, :cond_0

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-wide v7, v10

    .line 391
    .local v7, "now":J
    move-wide v10, v7

    move-wide v12, v7

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    move-object v9, v10

    .line 393
    .local v9, "cancelEvent":Landroid/view/MotionEvent;
    move v10, v1

    if-eqz v10, :cond_1

    .line 394
    move-object v10, v6

    move-object v11, v0

    move-object v12, v4

    move-object v13, v9

    invoke-virtual {v10, v11, v12, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v10

    .line 398
    :goto_1
    move-object v10, v9

    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 385
    .end local v7    # "now":J
    .end local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    .restart local v7    # "now":J
    .restart local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_1
    move-object v10, v6

    move-object v11, v0

    move-object v12, v4

    move-object v13, v9

    invoke-virtual {v10, v11, v12, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_1

    .line 402
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v7    # "now":J
    .end local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2
    const/4 v10, 0x0

    move v3, v10

    :goto_2
    move v10, v3

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 403
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 404
    .restart local v4    # "child":Landroid/view/View;
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v10

    .line 405
    .restart local v5    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v10, v5

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 407
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_3
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 408
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 409
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 2

    .prologue
    .line 1217
    move v0, p0

    .local v0, "gravity":I
    move v1, v0

    if-nez v1, :cond_0

    const/16 v1, 0x11

    :goto_0
    move v0, v1

    .end local v0    # "gravity":I
    return v0

    .restart local v0    # "gravity":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static resolveGravity(I)I
    .locals 3

    .prologue
    .line 1195
    move v0, p0

    .local v0, "gravity":I
    move v1, v0

    const/4 v2, 0x7

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    .line 1196
    move v1, v0

    const v2, 0x800003

    or-int/2addr v1, v2

    move v0, v1

    .line 1198
    :cond_0
    move v1, v0

    const/16 v2, 0x70

    and-int/lit8 v1, v1, 0x70

    if-nez v1, :cond_1

    .line 1199
    move v1, v0

    const/16 v2, 0x30

    or-int/lit8 v1, v1, 0x30

    move v0, v1

    .line 1201
    :cond_1
    move v1, v0

    move v0, v1

    .end local v0    # "gravity":I
    return v0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 2

    .prologue
    .line 1209
    move v0, p0

    .local v0, "gravity":I
    move v1, v0

    if-nez v1, :cond_0

    const v1, 0x800035

    :goto_0
    move v0, v1

    .end local v0    # "gravity":I
    return v0

    .restart local v0    # "gravity":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 1461
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "offsetX":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v5

    .line 1462
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v5, v3

    iget v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    move v6, v2

    if-eq v5, v6, :cond_0

    .line 1463
    move v5, v2

    move-object v6, v3

    iget v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 1464
    .local v4, "dx":I
    move-object v5, v1

    move v6, v4

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1465
    move-object v5, v3

    move v6, v2

    iput v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1467
    .end local v4    # "dx":I
    :cond_0
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 1470
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "offsetY":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v5

    .line 1471
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v5, v3

    iget v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    move v6, v2

    if-eq v5, v6, :cond_0

    .line 1472
    move v5, v2

    move-object v6, v3

    iget v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 1473
    .local v4, "dy":I
    move-object v5, v1

    move v6, v4

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1474
    move-object v5, v3

    move v6, v2

    iput v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1476
    .end local v4    # "dy":I
    :cond_0
    return-void
.end method

.method private setupForInsets()V
    .locals 6

    .prologue
    .line 3209
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 3210
    .line 3233
    :goto_0
    return-void

    .line 3213
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3214
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    if-nez v1, :cond_1

    .line 3215
    move-object v1, v0

    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 3225
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 3228
    move-object v1, v0

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    .line 3233
    :goto_1
    goto :goto_0

    .line 3231
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_1
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 7

    .prologue
    .line 1580
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_1

    .line 1582
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v2, :cond_0

    .line 1583
    move-object v2, v0

    new-instance v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1585
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 1586
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1591
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1592
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1724
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0

    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1489
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 1490
    .local v2, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1491
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1492
    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 1493
    .local v4, "child":Landroid/view/View;
    move-object v7, v4

    .line 1494
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v7

    .line 1495
    .local v5, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    move-object v6, v7

    .line 1496
    .local v6, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1497
    move-object v7, v6

    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    .line 1491
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1501
    .end local v3    # "i":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_1
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1686
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "first":Landroid/view/View;
    move-object v2, p2

    .local v2, "second":Landroid/view/View;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 1687
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v3, v7

    .line 1688
    .local v3, "firstRect":Landroid/graphics/Rect;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object v10, v0

    if-eq v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1689
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, v7

    .line 1690
    .local v4, "secondRect":Landroid/graphics/Rect;
    move-object v7, v0

    move-object v8, v2

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object v10, v0

    if-eq v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_1
    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1692
    move-object v7, v3

    :try_start_0
    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-gt v7, v8, :cond_2

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v8, :cond_2

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-lt v7, v8, :cond_2

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_2
    move v5, v7

    .line 1695
    move-object v7, v3

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1696
    move-object v7, v4

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    move v7, v5

    move v0, v7

    .line 1699
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .end local v3    # "firstRect":Landroid/graphics/Rect;
    .end local v4    # "secondRect":Landroid/graphics/Rect;
    :goto_3
    return v0

    .line 1688
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .restart local v3    # "firstRect":Landroid/graphics/Rect;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1690
    .restart local v4    # "secondRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 1692
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1695
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1696
    move-object v7, v4

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    move-object v7, v6

    throw v7

    .line 1699
    .end local v3    # "firstRect":Landroid/graphics/Rect;
    .end local v4    # "secondRect":Landroid/graphics/Rect;
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 17

    .prologue
    .line 1222
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p1

    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v3, p2

    .local v3, "child":Landroid/view/View;
    move-wide/from16 v4, p3

    .local v4, "drawingTime":J
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v9

    .line 1223
    .local v6, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v9, v6

    iget-object v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v9, :cond_2

    .line 1224
    move-object v9, v6

    iget-object v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v9

    move v7, v9

    .line 1225
    .local v7, "scrimAlpha":F
    move v9, v7

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 1226
    move-object v9, v1

    iget-object v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_0

    .line 1227
    move-object v9, v1

    new-instance v10, Landroid/graphics/Paint;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1229
    :cond_0
    move-object v9, v1

    iget-object v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v10, v6

    iget-object v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1230
    move-object v9, v1

    iget-object v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v10, 0x437f0000    # 255.0f

    move v11, v7

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0xff

    invoke-static {v10, v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->clamp(III)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1232
    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v9

    move v8, v9

    .line 1233
    .local v8, "saved":I
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->isOpaque()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1236
    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    move-object v12, v3

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    int-to-float v12, v12

    move-object v13, v3

    .line 1237
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    int-to-float v13, v13

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1236
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result v9

    .line 1240
    :cond_1
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    move-object v12, v1

    .line 1241
    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v13

    move-object v14, v1

    invoke-virtual {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object v14, v1

    iget-object v14, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1240
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1243
    move-object v9, v2

    move v10, v8

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1246
    .end local v7    # "scrimAlpha":F
    .end local v8    # "saved":I
    :cond_2
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v4

    invoke-super {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    move v1, v9

    .end local v1    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 7

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 307
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v4

    move-object v1, v4

    .line 308
    .local v1, "state":[I
    const/4 v4, 0x0

    move v2, v4

    .line 310
    .local v2, "changed":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v4

    .line 311
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    move v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 315
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 316
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->invalidate()V

    .line 318
    :cond_1
    return-void
.end method

.method ensurePreDrawListener()V
    .locals 7

    .prologue
    .line 1549
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    const/4 v5, 0x0

    move v1, v5

    .line 1550
    .local v1, "hasDependencies":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    move v2, v5

    .line 1551
    .local v2, "childCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1552
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1553
    .local v4, "child":Landroid/view/View;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1554
    const/4 v5, 0x1

    move v1, v5

    .line 1559
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    move v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v5, v6, :cond_1

    .line 1560
    move v5, v1

    if-eqz v5, :cond_3

    .line 1561
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 1566
    :cond_1
    :goto_1
    return-void

    .line 1551
    .restart local v4    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1563
    .end local v4    # "child":Landroid/view/View;
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removePreDrawListener()V

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1719
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 7

    .prologue
    .line 1704
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1709
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1710
    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    move-object v0, v2

    .line 1714
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :goto_0
    return-object v0

    .line 1711
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 1712
    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 1714
    :cond_1
    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "transform":Z
    move-object v3, p3

    .local v3, "out":Landroid/graphics/Rect;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 950
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 951
    .line 958
    :goto_0
    return-void

    .line 953
    :cond_1
    move v4, v2

    if-eqz v4, :cond_2

    .line 954
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 958
    :goto_1
    goto :goto_0

    .line 956
    :cond_2
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1513
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 1514
    .local v2, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1515
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1516
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 1518
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v0, v3

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1541
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    .line 1542
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1531
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 1532
    .local v2, "edges":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1533
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1534
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 1536
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v0, v3

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "descendant":Landroid/view/View;
    move-object v2, p2

    .local v2, "out":Landroid/graphics/Rect;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 706
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16

    .prologue
    .line 1060
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "layoutDirection":I
    move-object/from16 v3, p3

    .local v3, "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v4, p4

    .local v4, "out":Landroid/graphics/Rect;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v8

    .line 1061
    .local v5, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    move v6, v8

    .line 1062
    .local v6, "childWidth":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v7, v8

    .line 1063
    .local v7, "childHeight":I
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1065
    move-object v8, v0

    move-object v9, v5

    move-object v10, v4

    move v11, v6

    move v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1066
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "out":Landroid/graphics/Rect;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 936
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 937
    return-void
.end method

.method public final getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 1950
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 10

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v2, v6

    .line 628
    .local v2, "result":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v6, v2

    iget-boolean v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v6, :cond_1

    .line 629
    move-object v6, v1

    instance-of v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    if-eqz v6, :cond_2

    .line 630
    move-object v6, v1

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    invoke-interface {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    move-object v3, v6

    .line 631
    .local v3, "attachedBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 632
    const-string/jumbo v6, "CoordinatorLayout"

    const-string/jumbo v7, "Attached behavior class is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 634
    :cond_0
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 635
    move-object v6, v2

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 636
    .line 658
    .end local v3    # "attachedBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_1
    :goto_0
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0

    .line 638
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 639
    .local v3, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    move-object v4, v6

    .line 640
    .local v4, "defaultBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;
    :goto_1
    move-object v6, v3

    if-eqz v6, :cond_3

    move-object v6, v3

    const-class v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    .line 641
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v4, v7

    if-nez v6, :cond_3

    .line 643
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    goto :goto_1

    .line 645
    :cond_3
    move-object v6, v4

    if-eqz v6, :cond_4

    .line 647
    move-object v6, v2

    move-object v7, v4

    .line 648
    :try_start_0
    invoke-interface {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 647
    invoke-virtual {v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .line 655
    :cond_4
    :goto_2
    move-object v6, v2

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    goto :goto_0

    .line 649
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 650
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CoordinatorLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Default behavior class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " could not be instantiated. Did you forget"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " a default constructor?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_2
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1668
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, v7

    .line 1669
    .local v4, "r":Landroid/graphics/Rect;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1671
    move-object v7, v4

    move v8, v2

    move v9, v3

    :try_start_0
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    move v5, v7

    .line 1673
    move-object v7, v4

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    move v7, v5

    move v0, v7

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0

    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    move-object v7, v6

    throw v7
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 22

    .prologue
    .line 1617
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p1

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p2

    .local v3, "layoutDirection":I
    move-object v14, v2

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v14

    .line 1618
    .local v4, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v14, v4

    iget-object v14, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v14, :cond_4

    .line 1619
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v14

    move-object v5, v14

    .line 1620
    .local v5, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v14

    move-object v6, v14

    .line 1621
    .local v6, "childRect":Landroid/graphics/Rect;
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v14

    move-object v7, v14

    .line 1623
    .local v7, "desiredChildRect":Landroid/graphics/Rect;
    move-object v14, v1

    move-object v15, v4

    iget-object v15, v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1624
    move-object v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1626
    move-object v14, v2

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move v8, v14

    .line 1627
    .local v8, "childWidth":I
    move-object v14, v2

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move v9, v14

    .line 1628
    .local v9, "childHeight":I
    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v4

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-direct/range {v14 .. v21}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1630
    move-object v14, v7

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object v15, v6

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-ne v14, v15, :cond_0

    move-object v14, v7

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object v15, v6

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-eq v14, v15, :cond_5

    :cond_0
    const/4 v14, 0x1

    :goto_0
    move v10, v14

    .line 1632
    .local v10, "changed":Z
    move-object v14, v1

    move-object v15, v4

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v14 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1634
    move-object v14, v7

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object v15, v6

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    move v11, v14

    .line 1635
    .local v11, "dx":I
    move-object v14, v7

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object v15, v6

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    move v12, v14

    .line 1637
    .local v12, "dy":I
    move v14, v11

    if-eqz v14, :cond_1

    .line 1638
    move-object v14, v2

    move v15, v11

    invoke-static {v14, v15}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1640
    :cond_1
    move v14, v12

    if-eqz v14, :cond_2

    .line 1641
    move-object v14, v2

    move v15, v12

    invoke-static {v14, v15}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1644
    :cond_2
    move v14, v10

    if-eqz v14, :cond_3

    .line 1646
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    move-object v13, v14

    .line 1647
    .local v13, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v14, v13

    if-eqz v14, :cond_3

    .line 1648
    move-object v14, v13

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v14

    .line 1652
    .end local v13    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_3
    move-object v14, v5

    invoke-static {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1653
    move-object v14, v6

    invoke-static {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1654
    move-object v14, v7

    invoke-static {v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1656
    .end local v5    # "anchorRect":Landroid/graphics/Rect;
    .end local v6    # "childRect":Landroid/graphics/Rect;
    .end local v7    # "desiredChildRect":Landroid/graphics/Rect;
    .end local v8    # "childWidth":I
    .end local v9    # "childHeight":I
    .end local v10    # "changed":Z
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    :cond_4
    return-void

    .line 1630
    .restart local v5    # "anchorRect":Landroid/graphics/Rect;
    .restart local v6    # "childRect":Landroid/graphics/Rect;
    .restart local v7    # "desiredChildRect":Landroid/graphics/Rect;
    .restart local v8    # "childWidth":I
    .restart local v9    # "childHeight":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 238
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 239
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v2, :cond_1

    .line 240
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v2, :cond_0

    .line 241
    move-object v2, v0

    new-instance v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 243
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 244
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez v2, :cond_2

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 251
    :cond_2
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 252
    return-void
.end method

.method final onChildViewsChanged(I)V
    .locals 21

    .prologue
    .line 1275
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move/from16 v3, p1

    .local v3, "type":I
    move-object/from16 v17, v2

    invoke-static/range {v17 .. v17}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v17

    move/from16 v4, v17

    .line 1276
    .local v4, "layoutDirection":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v5, v17

    .line 1277
    .local v5, "childCount":I
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v6, v17

    .line 1278
    .local v6, "inset":Landroid/graphics/Rect;
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v7, v17

    .line 1279
    .local v7, "drawRect":Landroid/graphics/Rect;
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v8, v17

    .line 1281
    .local v8, "lastDrawRect":Landroid/graphics/Rect;
    const/16 v17, 0x0

    move/from16 v9, v17

    .local v9, "i":I
    :goto_0
    move/from16 v17, v9

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 1282
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v17, v0

    move/from16 v18, v9

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v10, v17

    .line 1283
    .local v10, "child":Landroid/view/View;
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v11, v17

    .line 1284
    .local v11, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move/from16 v17, v3

    if-nez v17, :cond_1

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1286
    .line 1281
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1290
    :cond_1
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "j":I
    :goto_2
    move/from16 v17, v12

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 1291
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v17, v0

    move/from16 v18, v12

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v13, v17

    .line 1293
    .local v13, "checkChild":Landroid/view/View;
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1294
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v19}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1290
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1299
    .end local v13    # "checkChild":Landroid/view/View;
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    const/16 v19, 0x1

    move-object/from16 v20, v7

    invoke-virtual/range {v17 .. v20}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1302
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1303
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    move/from16 v17, v0

    move/from16 v18, v4

    invoke-static/range {v17 .. v18}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v17

    move/from16 v12, v17

    .line 1305
    .local v12, "absInsetEdge":I
    move/from16 v17, v12

    const/16 v18, 0x70

    and-int/lit8 v17, v17, 0x70

    sparse-switch v17, :sswitch_data_0

    .line 1313
    :goto_3
    move/from16 v17, v12

    const/16 v18, 0x7

    and-int/lit8 v17, v17, 0x7

    packed-switch v17, :pswitch_data_0

    .line 1324
    .end local v12    # "absInsetEdge":I
    :cond_4
    :goto_4
    :pswitch_0
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_5

    .line 1325
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v6

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1328
    :cond_5
    move/from16 v17, v3

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 1330
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v8

    invoke-virtual/range {v17 .. v19}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1331
    move-object/from16 v17, v8

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1332
    goto/16 :goto_1

    .line 1307
    .restart local v12    # "absInsetEdge":I
    :sswitch_0
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1308
    goto :goto_3

    .line 1310
    :sswitch_1
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v19

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 1315
    :pswitch_1
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1316
    goto/16 :goto_4

    .line 1318
    :pswitch_2
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v19

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 1334
    .end local v12    # "absInsetEdge":I
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v7

    invoke-virtual/range {v17 .. v19}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1338
    :cond_7
    move/from16 v17, v9

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v12, v17

    .local v12, "j":I
    :goto_5
    move/from16 v17, v12

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1339
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v17, v0

    move/from16 v18, v12

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v13, v17

    .line 1340
    .restart local v13    # "checkChild":Landroid/view/View;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v14, v17

    .line 1341
    .local v14, "checkLp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v17

    move-object/from16 v15, v17

    .line 1343
    .local v15, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object/from16 v17, v15

    if-eqz v17, :cond_8

    move-object/from16 v17, v15

    move-object/from16 v18, v2

    move-object/from16 v19, v13

    move-object/from16 v20, v10

    invoke-virtual/range {v17 .. v20}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1344
    move/from16 v17, v3

    if-nez v17, :cond_9

    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1347
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1348
    .line 1338
    :cond_8
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1352
    :cond_9
    move/from16 v17, v3

    packed-switch v17, :pswitch_data_1

    .line 1361
    move-object/from16 v17, v15

    move-object/from16 v18, v2

    move-object/from16 v19, v13

    move-object/from16 v20, v10

    invoke-virtual/range {v17 .. v20}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v17

    move/from16 v16, v17

    .line 1365
    .local v16, "handled":Z
    :goto_7
    move/from16 v17, v3

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1368
    move-object/from16 v17, v14

    move/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    goto :goto_6

    .line 1356
    .end local v16    # "handled":Z
    :pswitch_3
    move-object/from16 v17, v15

    move-object/from16 v18, v2

    move-object/from16 v19, v13

    move-object/from16 v20, v10

    invoke-virtual/range {v17 .. v20}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1357
    const/16 v17, 0x1

    move/from16 v16, v17

    .line 1358
    .restart local v16    # "handled":Z
    goto :goto_7

    .line 1374
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v12    # "j":I
    .end local v13    # "checkChild":Landroid/view/View;
    .end local v14    # "checkLp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v15    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v16    # "handled":Z
    :cond_a
    move-object/from16 v17, v6

    invoke-static/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1375
    move-object/from16 v17, v7

    invoke-static/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1376
    move-object/from16 v17, v8

    invoke-static/range {v17 .. v17}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1377
    return-void

    .line 1305
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 1313
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1352
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 257
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 258
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v2, :cond_0

    .line 259
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 260
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 262
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 263
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 265
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 266
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 896
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 897
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 898
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    :goto_0
    move v2, v3

    .line 899
    .local v2, "inset":I
    move v3, v2

    if-lez v3, :cond_0

    .line 900
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v6

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 904
    .end local v2    # "inset":I
    :cond_0
    return-void

    .line 898
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    move v2, v4

    .line 506
    .local v2, "action":I
    move v4, v2

    if-nez v4, :cond_0

    .line 507
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 510
    :cond_0
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v4

    move v3, v4

    .line 512
    .local v3, "intercepted":Z
    move v4, v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 513
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 516
    :cond_2
    move v4, v3

    move v0, v4

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 876
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move/from16 v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "l":I
    move/from16 v3, p3

    .local v3, "t":I
    move/from16 v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v12, v0

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    move v6, v12

    .line 877
    .local v6, "layoutDirection":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v7, v12

    .line 878
    .local v7, "childCount":I
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_0
    move v12, v8

    move v13, v7

    if-ge v12, v13, :cond_3

    .line 879
    move-object v12, v0

    iget-object v12, v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    move-object v9, v12

    .line 880
    .local v9, "child":Landroid/view/View;
    move-object v12, v9

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    .line 882
    .line 878
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 885
    :cond_1
    move-object v12, v9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v10, v12

    .line 886
    .local v10, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    move-object v11, v12

    .line 888
    .local v11, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v12, v11

    if-eqz v12, :cond_2

    move-object v12, v11

    move-object v13, v0

    move-object v14, v9

    move v15, v6

    invoke-virtual {v12, v13, v14, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 889
    :cond_2
    move-object v12, v0

    move-object v13, v9

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    goto :goto_1

    .line 892
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_3
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "layoutDirection":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 861
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 865
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 866
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    .line 872
    :goto_0
    return-void

    .line 867
    :cond_1
    move-object v4, v3

    iget v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v4, :cond_2

    .line 868
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    iget v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 870
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 37

    .prologue
    .line 739
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    .line 740
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 742
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v30

    move/from16 v5, v30

    .line 743
    .local v5, "paddingLeft":I
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v30

    move/from16 v6, v30

    .line 744
    .local v6, "paddingTop":I
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v30

    move/from16 v7, v30

    .line 745
    .local v7, "paddingRight":I
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v30

    move/from16 v8, v30

    .line 746
    .local v8, "paddingBottom":I
    move-object/from16 v30, v2

    invoke-static/range {v30 .. v30}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v30

    move/from16 v9, v30

    .line 747
    .local v9, "layoutDirection":I
    move/from16 v30, v9

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    const/16 v30, 0x1

    :goto_0
    move/from16 v10, v30

    .line 748
    .local v10, "isRtl":Z
    move/from16 v30, v3

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    move/from16 v11, v30

    .line 749
    .local v11, "widthMode":I
    move/from16 v30, v3

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v30

    move/from16 v12, v30

    .line 750
    .local v12, "widthSize":I
    move/from16 v30, v4

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    move/from16 v13, v30

    .line 751
    .local v13, "heightMode":I
    move/from16 v30, v4

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v30

    move/from16 v14, v30

    .line 753
    .local v14, "heightSize":I
    move/from16 v30, v5

    move/from16 v31, v7

    add-int v30, v30, v31

    move/from16 v15, v30

    .line 754
    .local v15, "widthPadding":I
    move/from16 v30, v6

    move/from16 v31, v8

    add-int v30, v30, v31

    move/from16 v16, v30

    .line 755
    .local v16, "heightPadding":I
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v30

    move/from16 v17, v30

    .line 756
    .local v17, "widthUsed":I
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v30

    move/from16 v18, v30

    .line 757
    .local v18, "heightUsed":I
    const/16 v30, 0x0

    move/from16 v19, v30

    .line 759
    .local v19, "childState":I
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v30, v2

    invoke-static/range {v30 .. v30}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v30

    if-eqz v30, :cond_1

    const/16 v30, 0x1

    :goto_1
    move/from16 v20, v30

    .line 761
    .local v20, "applyInsets":Z
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v21, v30

    .line 762
    .local v21, "childCount":I
    const/16 v30, 0x0

    move/from16 v22, v30

    .local v22, "i":I
    :goto_2
    move/from16 v30, v22

    move/from16 v31, v21

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 763
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v30, v0

    move/from16 v31, v22

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/View;

    move-object/from16 v23, v30

    .line 764
    .local v23, "child":Landroid/view/View;
    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 766
    .line 762
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 747
    .end local v10    # "isRtl":Z
    .end local v11    # "widthMode":I
    .end local v12    # "widthSize":I
    .end local v13    # "heightMode":I
    .end local v14    # "heightSize":I
    .end local v15    # "widthPadding":I
    .end local v16    # "heightPadding":I
    .end local v17    # "widthUsed":I
    .end local v18    # "heightUsed":I
    .end local v19    # "childState":I
    .end local v20    # "applyInsets":Z
    .end local v21    # "childCount":I
    .end local v22    # "i":I
    .end local v23    # "child":Landroid/view/View;
    :cond_0
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 759
    .restart local v10    # "isRtl":Z
    .restart local v11    # "widthMode":I
    .restart local v12    # "widthSize":I
    .restart local v13    # "heightMode":I
    .restart local v14    # "heightSize":I
    .restart local v15    # "widthPadding":I
    .restart local v16    # "heightPadding":I
    .restart local v17    # "widthUsed":I
    .restart local v18    # "heightUsed":I
    .restart local v19    # "childState":I
    :cond_1
    const/16 v30, 0x0

    goto :goto_1

    .line 769
    .restart local v20    # "applyInsets":Z
    .restart local v21    # "childCount":I
    .restart local v22    # "i":I
    .restart local v23    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v24, v30

    .line 771
    .local v24, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    const/16 v30, 0x0

    move/from16 v25, v30

    .line 772
    .local v25, "keylineWidthUsed":I
    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move/from16 v30, v0

    if-ltz v30, :cond_5

    move/from16 v30, v11

    if-eqz v30, :cond_5

    .line 773
    move-object/from16 v30, v2

    move-object/from16 v31, v24

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v30

    move/from16 v26, v30

    .line 774
    .local v26, "keylinePos":I
    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    move/from16 v30, v0

    .line 775
    invoke-static/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v30

    move/from16 v31, v9

    .line 774
    invoke-static/range {v30 .. v31}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v30

    const/16 v31, 0x7

    and-int/lit8 v30, v30, 0x7

    move/from16 v27, v30

    .line 777
    .local v27, "keylineGravity":I
    move/from16 v30, v27

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    move/from16 v30, v10

    if-eqz v30, :cond_4

    :cond_3
    move/from16 v30, v27

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    move/from16 v30, v10

    if-eqz v30, :cond_9

    .line 779
    :cond_4
    const/16 v30, 0x0

    move/from16 v31, v12

    move/from16 v32, v7

    sub-int v31, v31, v32

    move/from16 v32, v26

    sub-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v25, v30

    .line 786
    .end local v26    # "keylinePos":I
    .end local v27    # "keylineGravity":I
    :cond_5
    :goto_4
    move/from16 v30, v3

    move/from16 v26, v30

    .line 787
    .local v26, "childWidthMeasureSpec":I
    move/from16 v30, v4

    move/from16 v27, v30

    .line 788
    .local v27, "childHeightMeasureSpec":I
    move/from16 v30, v20

    if-eqz v30, :cond_6

    move-object/from16 v30, v23

    invoke-static/range {v30 .. v30}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v30

    if-nez v30, :cond_6

    .line 791
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v30

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object/from16 v31, v0

    .line 792
    invoke-virtual/range {v31 .. v31}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v28, v30

    .line 793
    .local v28, "horizInsets":I
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v30

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object/from16 v31, v0

    .line 794
    invoke-virtual/range {v31 .. v31}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v29, v30

    .line 796
    .local v29, "vertInsets":I
    move/from16 v30, v12

    move/from16 v31, v28

    sub-int v30, v30, v31

    move/from16 v31, v11

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    move/from16 v26, v30

    .line 798
    move/from16 v30, v14

    move/from16 v31, v29

    sub-int v30, v30, v31

    move/from16 v31, v13

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    move/from16 v27, v30

    .line 802
    .end local v28    # "horizInsets":I
    .end local v29    # "vertInsets":I
    :cond_6
    move-object/from16 v30, v24

    invoke-virtual/range {v30 .. v30}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v30

    move-object/from16 v28, v30

    .line 803
    .local v28, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object/from16 v30, v28

    if-eqz v30, :cond_7

    move-object/from16 v30, v28

    move-object/from16 v31, v2

    move-object/from16 v32, v23

    move/from16 v33, v26

    move/from16 v34, v25

    move/from16 v35, v27

    const/16 v36, 0x0

    invoke-virtual/range {v30 .. v36}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v30

    if-nez v30, :cond_8

    .line 805
    :cond_7
    move-object/from16 v30, v2

    move-object/from16 v31, v23

    move/from16 v32, v26

    move/from16 v33, v25

    move/from16 v34, v27

    const/16 v35, 0x0

    invoke-virtual/range {v30 .. v35}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 809
    :cond_8
    move/from16 v30, v17

    move/from16 v31, v15

    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v17, v30

    .line 812
    move/from16 v30, v18

    move/from16 v31, v16

    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v18, v30

    .line 814
    move/from16 v30, v19

    move-object/from16 v31, v23

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredState()I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v30

    move/from16 v19, v30

    goto/16 :goto_3

    .line 780
    .end local v28    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .local v26, "keylinePos":I
    .local v27, "keylineGravity":I
    :cond_9
    move/from16 v30, v27

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    move/from16 v30, v10

    if-eqz v30, :cond_b

    :cond_a
    move/from16 v30, v27

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    move/from16 v30, v10

    if-eqz v30, :cond_5

    .line 782
    :cond_b
    const/16 v30, 0x0

    move/from16 v31, v26

    move/from16 v32, v5

    sub-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v25, v30

    goto/16 :goto_4

    .line 817
    .end local v23    # "child":Landroid/view/View;
    .end local v24    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v25    # "keylineWidthUsed":I
    .end local v26    # "keylinePos":I
    .end local v27    # "keylineGravity":I
    :cond_c
    move/from16 v30, v17

    move/from16 v31, v3

    move/from16 v32, v19

    const/high16 v33, -0x1000000

    and-int v32, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v30

    move/from16 v22, v30

    .line 819
    .local v22, "width":I
    move/from16 v30, v18

    move/from16 v31, v4

    move/from16 v32, v19

    const/16 v33, 0x10

    shl-int/lit8 v32, v32, 0x10

    invoke-static/range {v30 .. v32}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v30

    move/from16 v23, v30

    .line 821
    .local v23, "height":I
    move-object/from16 v30, v2

    move/from16 v31, v22

    move/from16 v32, v23

    invoke-virtual/range {v30 .. v32}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 822
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "parentWidthMeasureSpec":I
    move v3, p3

    .local v3, "widthUsed":I
    move/from16 v4, p4

    .local v4, "parentHeightMeasureSpec":I
    move/from16 v5, p5

    .local v5, "heightUsed":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 735
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 19

    .prologue
    .line 1896
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "target":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "velocityX":F
    move/from16 v3, p3

    .local v3, "velocityY":F
    move/from16 v4, p4

    .local v4, "consumed":Z
    const/4 v11, 0x0

    move v5, v11

    .line 1898
    .local v5, "handled":Z
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    move v6, v11

    .line 1899
    .local v6, "childCount":I
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_3

    .line 1900
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 1901
    .local v8, "view":Landroid/view/View;
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 1903
    .line 1899
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1906
    :cond_1
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v9, v11

    .line 1907
    .local v9, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1908
    goto :goto_1

    .line 1911
    :cond_2
    move-object v11, v9

    invoke-virtual {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v10, v11

    .line 1912
    .local v10, "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v11, v10

    if-eqz v11, :cond_0

    .line 1913
    move v11, v5

    move-object v12, v10

    move-object v13, v0

    move-object v14, v8

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v12

    or-int/2addr v11, v12

    move v5, v11

    goto :goto_1

    .line 1917
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v10    # "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_3
    move v11, v5

    if-eqz v11, :cond_4

    .line 1918
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1920
    :cond_4
    move v11, v5

    move v0, v11

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 17

    .prologue
    .line 1925
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "target":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "velocityX":F
    move/from16 v3, p3

    .local v3, "velocityY":F
    const/4 v10, 0x0

    move v4, v10

    .line 1927
    .local v4, "handled":Z
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v5, v10

    .line 1928
    .local v5, "childCount":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_3

    .line 1929
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1930
    .local v7, "view":Landroid/view/View;
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 1932
    .line 1928
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1935
    :cond_1
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v8, v10

    .line 1936
    .local v8, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v10, v8

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1937
    goto :goto_1

    .line 1940
    :cond_2
    move-object v10, v8

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v9, v10

    .line 1941
    .local v9, "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 1942
    move v10, v4

    move-object v11, v9

    move-object v12, v0

    move-object v13, v7

    move-object v14, v1

    move v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v11

    or-int/2addr v10, v11

    move v4, v10

    goto :goto_1

    .line 1945
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v9    # "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_3
    move v10, v4

    move v0, v10

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 11

    .prologue
    .line 1850
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dx":I
    move v3, p3

    .local v3, "dy":I
    move-object v4, p4

    .local v4, "consumed":[I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 1851
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 26

    .prologue
    .line 1855
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p1

    .local v2, "target":Landroid/view/View;
    move/from16 v3, p2

    .local v3, "dx":I
    move/from16 v4, p3

    .local v4, "dy":I
    move-object/from16 v5, p4

    .local v5, "consumed":[I
    move/from16 v6, p5

    .local v6, "type":I
    const/4 v15, 0x0

    move v7, v15

    .line 1856
    .local v7, "xConsumed":I
    const/4 v15, 0x0

    move v8, v15

    .line 1857
    .local v8, "yConsumed":I
    const/4 v15, 0x0

    move v9, v15

    .line 1859
    .local v9, "accepted":Z
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v15

    move v10, v15

    .line 1860
    .local v10, "childCount":I
    const/4 v15, 0x0

    move v11, v15

    .local v11, "i":I
    :goto_0
    move v15, v11

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 1861
    move-object v15, v1

    move/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move-object v12, v15

    .line 1862
    .local v12, "view":Landroid/view/View;
    move-object v15, v12

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1864
    .line 1860
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1867
    :cond_1
    move-object v15, v12

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v13, v15

    .line 1868
    .local v13, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v15, v13

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1869
    goto :goto_1

    .line 1872
    :cond_2
    move-object v15, v13

    invoke-virtual {v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v15

    move-object v14, v15

    .line 1873
    .local v14, "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v15, v14

    if-eqz v15, :cond_0

    .line 1874
    move-object v15, v1

    iget-object v15, v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v23, v17

    move/from16 v24, v18

    move/from16 v25, v19

    move/from16 v17, v25

    move-object/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v25

    aput v20, v18, v19

    aput v17, v15, v16

    .line 1875
    move-object v15, v14

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v21, v0

    move/from16 v22, v6

    invoke-virtual/range {v15 .. v22}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 1877
    move v15, v3

    if-lez v15, :cond_3

    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1878
    :goto_2
    move v7, v15

    .line 1879
    move v15, v4

    if-lez v15, :cond_4

    move v15, v8

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1880
    :goto_3
    move v8, v15

    .line 1882
    const/4 v15, 0x1

    move v9, v15

    goto/16 :goto_1

    .line 1877
    :cond_3
    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    .line 1878
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_2

    .line 1879
    :cond_4
    move v15, v8

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    .line 1880
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_3

    .line 1886
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v14    # "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_5
    move-object v15, v5

    const/16 v16, 0x0

    move/from16 v17, v7

    aput v17, v15, v16

    .line 1887
    move-object v15, v5

    const/16 v16, 0x1

    move/from16 v17, v8

    aput v17, v15, v16

    .line 1889
    move v15, v9

    if-eqz v15, :cond_6

    .line 1890
    move-object v15, v1

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1892
    :cond_6
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 13

    .prologue
    .line 1813
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dxConsumed":I
    move/from16 v3, p3

    .local v3, "dyConsumed":I
    move/from16 v4, p4

    .local v4, "dxUnconsumed":I
    move/from16 v5, p5

    .local v5, "dyUnconsumed":I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 1815
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 22

    .prologue
    .line 1820
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "target":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "dxConsumed":I
    move/from16 v3, p3

    .local v3, "dyConsumed":I
    move/from16 v4, p4

    .local v4, "dxUnconsumed":I
    move/from16 v5, p5

    .local v5, "dyUnconsumed":I
    move/from16 v6, p6

    .local v6, "type":I
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v13

    move v7, v13

    .line 1821
    .local v7, "childCount":I
    const/4 v13, 0x0

    move v8, v13

    .line 1823
    .local v8, "accepted":Z
    const/4 v13, 0x0

    move v9, v13

    .local v9, "i":I
    :goto_0
    move v13, v9

    move v14, v7

    if-ge v13, v14, :cond_3

    .line 1824
    move-object v13, v0

    move v14, v9

    invoke-virtual {v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object v10, v13

    .line 1825
    .local v10, "view":Landroid/view/View;
    move-object v13, v10

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1

    .line 1827
    .line 1823
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1830
    :cond_1
    move-object v13, v10

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v11, v13

    .line 1831
    .local v11, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v13, v11

    move v14, v6

    invoke-virtual {v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1832
    goto :goto_1

    .line 1835
    :cond_2
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v13

    move-object v12, v13

    .line 1836
    .local v12, "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v13, v12

    if-eqz v13, :cond_0

    .line 1837
    move-object v13, v12

    move-object v14, v0

    move-object v15, v10

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-virtual/range {v13 .. v21}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    .line 1839
    const/4 v13, 0x1

    move v8, v13

    goto :goto_1

    .line 1843
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v12    # "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_3
    move v13, v8

    if-eqz v13, :cond_4

    .line 1844
    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1846
    :cond_4
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 9

    .prologue
    .line 1759
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1760
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 17

    .prologue
    .line 1764
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "target":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "nestedScrollAxes":I
    move/from16 v4, p4

    .local v4, "type":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1765
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1767
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v5, v10

    .line 1768
    .local v5, "childCount":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_2

    .line 1769
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1770
    .local v7, "view":Landroid/view/View;
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v8, v10

    .line 1771
    .local v8, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v10, v8

    move v11, v4

    invoke-virtual {v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1772
    .line 1768
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1775
    :cond_1
    move-object v10, v8

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v9, v10

    .line 1776
    .local v9, "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 1777
    move-object v10, v9

    move-object v11, v0

    move-object v12, v7

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v10 .. v16}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    goto :goto_1

    .line 1781
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v9    # "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 15

    .prologue
    .line 3147
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v11, v1

    instance-of v11, v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    if-nez v11, :cond_0

    .line 3148
    move-object v11, v0

    move-object v12, v1

    invoke-super {v11, v12}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3149
    .line 3170
    :goto_0
    return-void

    .line 3152
    :cond_0
    move-object v11, v1

    check-cast v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    move-object v2, v11

    .line 3153
    .local v2, "ss":Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-super {v11, v12}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3155
    move-object v11, v2

    iget-object v11, v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move-object v3, v11

    .line 3157
    .local v3, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v11, 0x0

    move v4, v11

    .local v4, "i":I
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    move v5, v11

    .local v5, "count":I
    :goto_1
    move v11, v4

    move v12, v5

    if-ge v11, v12, :cond_2

    .line 3158
    move-object v11, v0

    move v12, v4

    invoke-virtual {v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v6, v11

    .line 3159
    .local v6, "child":Landroid/view/View;
    move-object v11, v6

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    move v7, v11

    .line 3160
    .local v7, "childId":I
    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v11

    move-object v8, v11

    .line 3161
    .local v8, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v11, v8

    invoke-virtual {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v9, v11

    .line 3163
    .local v9, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    move-object v11, v9

    if-eqz v11, :cond_1

    .line 3164
    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Parcelable;

    move-object v10, v11

    .line 3165
    .local v10, "savedState":Landroid/os/Parcelable;
    move-object v11, v10

    if-eqz v11, :cond_1

    .line 3166
    move-object v11, v9

    move-object v12, v0

    move-object v13, v6

    move-object v14, v10

    invoke-virtual {v11, v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 3157
    .end local v10    # "savedState":Landroid/os/Parcelable;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3170
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childId":I
    .end local v8    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v9    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 3174
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    new-instance v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-super {v12}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-direct {v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v10

    .line 3176
    .local v1, "ss":Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    new-instance v10, Landroid/util/SparseArray;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v10

    .line 3177
    .local v2, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v4, v10

    .local v4, "count":I
    :goto_0
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_1

    .line 3178
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v5, v10

    .line 3179
    .local v5, "child":Landroid/view/View;
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    move v6, v10

    .line 3180
    .local v6, "childId":I
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v10

    .line 3181
    .local v7, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v8, v10

    .line 3183
    .local v8, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move v10, v6

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    move-object v10, v8

    if-eqz v10, :cond_0

    .line 3185
    move-object v10, v8

    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v10

    move-object v9, v10

    .line 3186
    .local v9, "state":Landroid/os/Parcelable;
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 3187
    move-object v10, v2

    move v11, v6

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3177
    .end local v9    # "state":Landroid/os/Parcelable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3191
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childId":I
    .end local v7    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v8    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_1
    move-object v10, v1

    move-object v11, v2

    iput-object v11, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3192
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    .prologue
    .line 1729
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "nestedScrollAxes":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 19

    .prologue
    .line 1734
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "target":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "axes":I
    move/from16 v4, p4

    .local v4, "type":I
    const/4 v12, 0x0

    move v5, v12

    .line 1736
    .local v5, "handled":Z
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v12

    move v6, v12

    .line 1737
    .local v6, "childCount":I
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    :goto_0
    move v12, v7

    move v13, v6

    if-ge v12, v13, :cond_2

    .line 1738
    move-object v12, v0

    move v13, v7

    invoke-virtual {v12, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v8, v12

    .line 1739
    .local v8, "view":Landroid/view/View;
    move-object v12, v8

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 1741
    .line 1737
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1743
    :cond_0
    move-object v12, v8

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v9, v12

    .line 1744
    .local v9, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    move-object v10, v12

    .line 1745
    .local v10, "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v12, v10

    if-eqz v12, :cond_1

    .line 1746
    move-object v12, v10

    move-object v13, v0

    move-object v14, v8

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v12

    move v11, v12

    .line 1748
    .local v11, "accepted":Z
    move v12, v5

    move v13, v11

    or-int/2addr v12, v13

    move v5, v12

    .line 1749
    move-object v12, v9

    move v13, v4

    move v14, v11

    invoke-virtual {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1750
    goto :goto_1

    .line 1751
    .end local v11    # "accepted":Z
    :cond_1
    move-object v12, v9

    move v13, v4

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    goto :goto_1

    .line 1754
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v10    # "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2
    move v12, v5

    move v0, v12

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1785
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1786
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 13

    .prologue
    .line 1790
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "type":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1792
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1793
    .local v3, "childCount":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 1794
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1795
    .local v5, "view":Landroid/view/View;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v8

    .line 1796
    .local v6, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v8, v6

    move v9, v2

    invoke-virtual {v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1797
    .line 1793
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1800
    :cond_0
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    move-object v7, v8

    .line 1801
    .local v7, "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 1802
    move-object v8, v7

    move-object v9, v0

    move-object v10, v5

    move-object v11, v1

    move v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 1804
    :cond_1
    move-object v8, v6

    move v9, v2

    invoke-virtual {v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll(I)V

    .line 1805
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_1

    .line 1807
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "viewBehavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1808
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .prologue
    .line 521
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    const/4 v8, 0x0

    move v2, v8

    .line 522
    .local v2, "handled":Z
    const/4 v8, 0x0

    move v3, v8

    .line 523
    .local v3, "cancelSuper":Z
    const/4 v8, 0x0

    move-object v4, v8

    .line 525
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    move v5, v8

    .line 527
    .local v5, "action":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v8

    move/from16 v16, v8

    move/from16 v8, v16

    move/from16 v9, v16

    move v3, v9

    if-eqz v8, :cond_1

    .line 530
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v8

    .line 531
    .local v6, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    move-object v7, v8

    .line 532
    .local v7, "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 533
    move-object v8, v7

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    move v2, v8

    .line 538
    .end local v6    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v8, :cond_7

    .line 539
    move v8, v2

    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 549
    :cond_2
    :goto_0
    move v8, v2

    if-nez v8, :cond_3

    move v8, v5

    if-nez v8, :cond_3

    .line 553
    :cond_3
    move-object v8, v4

    if-eqz v8, :cond_4

    .line 554
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 557
    :cond_4
    move v8, v5

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    move v8, v5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 558
    :cond_5
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 561
    :cond_6
    move v8, v2

    move v0, v8

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0

    .line 540
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_7
    move v8, v3

    if-eqz v8, :cond_2

    .line 541
    move-object v8, v4

    if-nez v8, :cond_8

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v6, v8

    .line 543
    .local v6, "now":J
    move-wide v8, v6

    move-wide v10, v6

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    move-object v4, v8

    .line 546
    .end local v6    # "now":J
    :cond_8
    move-object v8, v0

    move-object v9, v4

    invoke-super {v8, v9}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "r":Landroid/graphics/Rect;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 924
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 925
    return-void
.end method

.method removePreDrawListener()V
    .locals 4

    .prologue
    .line 1599
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_0

    .line 1600
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v2, :cond_0

    .line 1601
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 1602
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1605
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1606
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 11

    .prologue
    .line 3197
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "rectangle":Landroid/graphics/Rect;
    move v3, p3

    .local v3, "immediate":Z
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v6

    .line 3198
    .local v4, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    move-object v5, v6

    .line 3200
    .local v5, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    .line 3201
    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3202
    const/4 v6, 0x1

    move v0, v6

    .line 3205
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-super {v6, v7, v8, v9}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move v1, p1

    .local v1, "disallowIntercept":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 567
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v2, :cond_0

    .line 568
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 569
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 571
    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 4

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move v1, p1

    .local v1, "fitSystemWindows":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 909
    move-object v2, v0

    invoke-direct {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    .line 910
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "onHierarchyChangeListener":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 233
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_3

    .line 276
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 277
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 279
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 280
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 281
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 284
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    .line 285
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 284
    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 286
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 287
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 289
    :cond_2
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 291
    :cond_3
    return-void

    .line 279
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 286
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void

    .line 342
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 6

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move v1, p1

    .local v1, "visibility":I
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 330
    .local v2, "visible":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 331
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 333
    :cond_0
    return-void

    .line 329
    .end local v2    # "visible":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final setWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 359
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 360
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 363
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    move-object v1, v2

    .line 364
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestLayout()V

    .line 366
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return-object v0

    .line 359
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 360
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    return v0

    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
