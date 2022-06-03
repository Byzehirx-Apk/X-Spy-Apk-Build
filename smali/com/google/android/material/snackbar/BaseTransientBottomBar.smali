.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Duration;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$ContentViewCallback;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final SNACKBAR_STYLE_ATTR:[I

.field private static final USE_OFFSET_API:Z

.field static final handler:Landroid/os/Handler;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private final contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

.field private final context:Landroid/content/Context;

.field private duration:I

.field final managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

.field private final targetParent:Landroid/view/ViewGroup;

.field protected final view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/R$attr;->snackbarStyle:I

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    .line 183
    new-instance v0, Landroid/os/Handler;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    .line 201
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V
    .locals 11
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/snackbar/ContentViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, p1

    .local v1, "parent":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "content":Landroid/view/View;
    move-object v3, p3

    .local v3, "contentViewCallback":Lcom/google/android/material/snackbar/ContentViewCallback;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 449
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v6, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 242
    move-object v5, v1

    if-nez v5, :cond_0

    .line 243
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Transient bottom bar must have non-null parent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 246
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Transient bottom bar must have non-null content"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    :cond_1
    move-object v5, v3

    if-nez v5, :cond_2

    .line 249
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Transient bottom bar must have non-null callback"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 252
    :cond_2
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 253
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

    .line 254
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 256
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 258
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v4, v5

    .line 262
    .local v4, "inflater":Landroid/view/LayoutInflater;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getSnackbarBaseLayoutResId()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object v6, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 263
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 265
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 266
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 269
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 270
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 287
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 308
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    const-string/jumbo v7, "accessibility"

    .line 309
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 310
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/ContentViewCallback;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 9

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move v1, p1

    .local v1, "event":I
    new-instance v3, Landroid/animation/ValueAnimator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    move-object v2, v3

    .line 613
    .local v2, "animator":Landroid/animation/ValueAnimator;
    move-object v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 614
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    move-object v3, v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 616
    move-object v3, v2

    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 628
    move-object v3, v2

    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    move-object v3, v2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 647
    return-void
.end method

.method private getTranslationYBottom()I
    .locals 5

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v3

    move v1, v3

    .line 651
    .local v1, "translationY":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 652
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v2

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    .line 653
    move v3, v1

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v1, v3

    .line 655
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return v0
.end method


# virtual methods
.method public addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 6
    .param p1    # Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<TB;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 407
    move-object v2, v0

    move-object v0, v2

    .line 413
    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    :goto_0
    return-object v0

    .line 409
    .restart local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v2, :cond_1

    .line 410
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 412
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 413
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method animateViewIn()V
    .locals 9

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v3

    move v1, v3

    .line 567
    .local v1, "translationYBottom":I
    sget-boolean v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v3, :cond_0

    .line 568
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 573
    :goto_0
    new-instance v3, Landroid/animation/ValueAnimator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    move-object v2, v3

    .line 574
    .local v2, "animator":Landroid/animation/ValueAnimator;
    move-object v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 575
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    move-object v3, v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 577
    move-object v3, v2

    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    move-object v3, v2

    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    move-object v3, v2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 609
    return-void

    .line 570
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    move v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 391
    return-void
.end method

.method protected dispatchDismiss(I)V
    .locals 5

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move v1, p1

    .local v1, "event":I
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/snackbar/SnackbarManager;->dismiss(Lcom/google/android/material/snackbar/SnackbarManager$Callback;I)V

    .line 395
    return-void
.end method

.method public getBehavior()Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return v0
.end method

.method protected getNewBehavior()Lcom/google/android/material/behavior/SwipeDismissBehavior;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior",
            "<+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return-object v0
.end method

.method protected getSnackbarBaseLayoutResId()I
    .locals 2
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->hasSnackbarStyleAttr()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/material/R$layout;->mtrl_layout_snackbar:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    :cond_0
    sget v1, Lcom/google/android/material/R$layout;->design_layout_snackbar:I

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return-object v0
.end method

.method protected hasSnackbarStyleAttr()Z
    .locals 6

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    sget-object v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v1, v3

    .line 324
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move v2, v3

    .line 325
    .local v2, "snackbarStyleResId":I
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final hideView(I)V
    .locals 4

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move v1, p1

    .local v1, "event":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 660
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animateViewOut(I)V

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 3

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrent(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return v0
.end method

.method public isShownOrQueued()Z
    .locals 3

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentOrNext(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return v0
.end method

.method onViewHidden(I)V
    .locals 7

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move v1, p1

    .local v1, "event":I
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v4, v5}, Lcom/google/android/material/snackbar/SnackbarManager;->onDismissed(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 682
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 685
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    .line 686
    .local v2, "callbackCount":I
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_0

    .line 687
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    move-object v5, v0

    move v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 686
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 691
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 692
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, v2

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 693
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    :cond_1
    return-void
.end method

.method onViewShown()V
    .locals 5

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v3, v4}, Lcom/google/android/material/snackbar/SnackbarManager;->onShown(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 669
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 672
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 673
    .local v1, "callbackCount":I
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 674
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    .line 673
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 677
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 4
    .param p1    # Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, p1

    .local v1, "callback":Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<TB;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 426
    move-object v2, v0

    move-object v0, v2

    .line 433
    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    :goto_0
    return-object v0

    .line 428
    .restart local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v2, :cond_1

    .line 430
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 432
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 433
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setBehavior(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v1, p1

    .local v1, "behavior":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 359
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return-object v0
.end method

.method public setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move v1, p1

    .local v1, "duration":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    .line 338
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return-object v0
.end method

.method shouldAnimate()Z
    .locals 5

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    const/4 v3, 0x1

    move v1, v3

    .line 700
    .local v1, "feedbackFlags":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v4, 0x1

    .line 701
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 702
    .local v2, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getDuration()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/snackbar/SnackbarManager;->show(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 386
    return-void
.end method

.method final showView()V
    .locals 9

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar<TB;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 469
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v1, v4

    .line 471
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v1

    instance-of v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v4, :cond_1

    .line 473
    move-object v4, v1

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v2, v4

    .line 475
    .local v2, "clp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-nez v4, :cond_3

    move-object v4, v0

    .line 476
    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getNewBehavior()Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-result-object v4

    :goto_0
    move-object v3, v4

    .line 478
    .local v3, "behavior":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<+Landroid/view/View;>;"
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-eqz v4, :cond_0

    .line 479
    move-object v4, v3

    check-cast v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->access$000(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 481
    :cond_0
    move-object v4, v3

    new-instance v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V

    .line 506
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 508
    move-object v4, v2

    const/16 v5, 0x50

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 511
    .end local v2    # "clp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "behavior":Lcom/google/android/material/behavior/SwipeDismissBehavior;, "Lcom/google/android/material/behavior/SwipeDismissBehavior<+Landroid/view/View;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 537
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 538
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 540
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animateViewIn()V

    .line 563
    :goto_1
    return-void

    .line 476
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "clp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    goto :goto_0

    .line 543
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "clp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    goto :goto_1

    .line 547
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V

    goto :goto_1
.end method
