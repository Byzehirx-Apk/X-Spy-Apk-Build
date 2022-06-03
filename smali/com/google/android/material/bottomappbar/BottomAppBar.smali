.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "BottomAppBar.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$FabAlignmentMode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL

.field public static final FAB_ALIGNMENT_MODE_CENTER:I = 0x0

.field public static final FAB_ALIGNMENT_MODE_END:I = 0x1


# instance fields
.field private attachAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fabAlignmentMode:I

.field fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private fabAttached:Z

.field private final fabOffsetEndMode:I

.field private hideOnScroll:Z

.field private final materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private menuAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private modeAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->bottomAppBarStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
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

    invoke-direct {v10, v11, v12, v13}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 641
    move-object v10, v0

    new-instance v11, Lcom/google/android/material/bottomappbar/BottomAppBar$7;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/google/android/material/bottomappbar/BottomAppBar$7;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v11, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 129
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/material/R$styleable;->BottomAppBar:[I

    move v13, v3

    sget v14, Lcom/google/android/material/R$style;->Widget_MaterialComponents_BottomAppBar:I

    const/4 v15, 0x0

    new-array v15, v15, [I

    .line 130
    invoke-static/range {v10 .. v15}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v4, v10

    .line 137
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v10, v1

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->BottomAppBar_backgroundTint:I

    .line 138
    invoke-static {v10, v11, v12}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v5, v10

    .line 140
    .local v5, "backgroundTint":Landroid/content/res/ColorStateList;
    move-object v10, v4

    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleMargin:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    int-to-float v10, v10

    move v6, v10

    .line 141
    .local v6, "fabCradleMargin":F
    move-object v10, v4

    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleRoundedCornerRadius:I

    const/4 v12, 0x0

    .line 142
    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    int-to-float v10, v10

    move v7, v10

    .line 143
    .local v7, "fabCornerRadius":F
    move-object v10, v4

    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleVerticalOffset:I

    const/4 v12, 0x0

    .line 144
    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    int-to-float v10, v10

    move v8, v10

    .line 145
    .local v8, "fabVerticalOffset":F
    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAlignmentMode:I

    const/4 v13, 0x0

    .line 146
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 147
    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->BottomAppBar_hideOnScroll:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    .line 149
    move-object v10, v4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    move-object v10, v0

    move-object v11, v0

    .line 152
    invoke-virtual {v11}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    iput v11, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    .line 154
    move-object v10, v0

    new-instance v11, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct {v12, v13, v14, v15}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;-><init>(FFF)V

    iput-object v11, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    .line 156
    new-instance v10, Lcom/google/android/material/shape/ShapePathModel;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Lcom/google/android/material/shape/ShapePathModel;-><init>()V

    move-object v9, v10

    .line 157
    .local v9, "appBarModel":Lcom/google/android/material/shape/ShapePathModel;
    move-object v10, v9

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v10, v11}, Lcom/google/android/material/shape/ShapePathModel;->setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V

    .line 158
    move-object v10, v0

    new-instance v11, Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v9

    invoke-direct {v12, v13}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapePathModel;)V

    iput-object v11, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 159
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowEnabled(Z)V

    .line 160
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-object v11, v5

    invoke-static {v10, v11}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 162
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 163
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "x1":Landroid/animation/Animator;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    move-object v0, v2

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "x1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isAnimationRunning()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "x1":Landroid/animation/Animator;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    move-object v0, v2

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "x1":Landroidx/appcompat/widget/ActionMenuView;
    move v2, p2

    .local v2, "x2":I
    move v3, p3

    .local v3, "x3":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    return-void
.end method

.method static synthetic access$502(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "x1":Landroid/animation/Animator;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    move-object v0, v2

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateAttachChange(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method static synthetic access$900(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    return-void
.end method

.method private addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 4
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->removeFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 658
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 659
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 660
    return-void
.end method

.method private cancelAnimations()V
    .locals 2

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 591
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 593
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 594
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 596
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 597
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 599
    :cond_2
    return-void
.end method

.method private createCradleShapeAnimation(ZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v2, p1

    .local v2, "showCradle":Z
    move-object v3, p2

    .local v3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move v5, v2

    if-eqz v5, :cond_0

    .line 475
    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-object v6, v1

    invoke-direct {v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 478
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 479
    invoke-virtual {v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v8

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    if-eqz v8, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_0
    aput v8, v6, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object v4, v5

    .line 480
    .local v4, "animator":Landroid/animation/ValueAnimator;
    move-object v5, v4

    new-instance v6, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 487
    move-object v5, v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 488
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 489
    return-void

    .line 479
    .end local v4    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private createCradleTranslationAnimation(ILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v2, p1

    .local v2, "targetMode":I
    move-object v3, p2

    .local v3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v5, v1

    iget-boolean v5, v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    if-nez v5, :cond_0

    .line 317
    .line 334
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    .line 322
    invoke-virtual {v8}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getHorizontalOffset()F

    move-result v8

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v1

    move v9, v2

    invoke-direct {v8, v9}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 321
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object v4, v5

    .line 324
    .local v4, "animator":Landroid/animation/ValueAnimator;
    move-object v5, v4

    new-instance v6, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 332
    move-object v5, v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 333
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 334
    goto :goto_0
.end method

.method private createFabTranslationXAnimation(ILjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v2, p1

    .local v2, "targetMode":I
    move-object v3, p2

    .local v3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v5, v1

    .line 361
    invoke-direct {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v5

    const-string/jumbo v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v1

    move v11, v2

    invoke-direct {v10, v11}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v10

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object v4, v5

    .line 362
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object v5, v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 363
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 364
    return-void
.end method

.method private createFabTranslationYAnimation(ZLjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "targetAttached":Z
    move-object v2, p2

    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v5

    move-object v3, v5

    .line 493
    .local v3, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 494
    .line 501
    :goto_0
    return-void

    .line 497
    :cond_0
    move-object v5, v3

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v0

    move v11, v1

    .line 498
    invoke-direct {v10, v11}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY(Z)F

    move-result v10

    aput v10, v8, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object v4, v5

    .line 499
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object v5, v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 500
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 501
    goto :goto_0
.end method

.method private createMenuViewTranslationAnimation(IZLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move/from16 v2, p1

    .local v2, "targetMode":I
    move/from16 v3, p2

    .local v3, "targetAttached":Z
    move-object/from16 v4, p3

    .local v4, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v9, v1

    invoke-direct {v9}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v9

    move-object v5, v9

    .line 406
    .local v5, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    move-object v9, v5

    if-nez v9, :cond_0

    .line 407
    .line 443
    :goto_0
    return-void

    .line 410
    :cond_0
    move-object v9, v5

    const-string/jumbo v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object v6, v9

    .line 412
    .local v6, "fadeIn":Landroid/animation/Animator;
    move-object v9, v1

    iget-boolean v9, v9, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    if-nez v9, :cond_1

    move v9, v3

    if-eqz v9, :cond_4

    move-object v9, v1

    invoke-direct {v9}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    move-object v9, v1

    iget v9, v9, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    move v9, v2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 415
    :cond_2
    move-object v9, v5

    const-string/jumbo v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object v7, v9

    .line 417
    .local v7, "fadeOut":Landroid/animation/Animator;
    move-object v9, v7

    new-instance v10, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    move-object v13, v5

    move v14, v2

    move v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    new-instance v9, Landroid/animation/AnimatorSet;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v8, v9

    .line 435
    .local v8, "set":Landroid/animation/AnimatorSet;
    move-object v9, v8

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 436
    move-object v9, v8

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v7

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    move-object v13, v6

    aput-object v13, v11, v12

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 437
    move-object v9, v4

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 438
    .line 443
    .end local v7    # "fadeOut":Landroid/animation/Animator;
    .end local v8    # "set":Landroid/animation/AnimatorSet;
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 438
    :cond_4
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 441
    move-object v9, v4

    move-object v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_1
.end method

.method private findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v4, :cond_0

    .line 340
    const/4 v4, 0x0

    move-object v0, v4

    .line 350
    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    .local v1, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_0
    return-object v0

    .line 343
    .end local v1    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 344
    .restart local v1    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 345
    .local v3, "v":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v4, :cond_1

    .line 346
    move-object v4, v3

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v0, v4

    goto :goto_0

    .line 348
    :cond_1
    goto :goto_1

    .line 350
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 545
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 546
    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    instance-of v3, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    .line 547
    move-object v3, v2

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView;

    move-object v0, v3

    .line 551
    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object v0

    .line 544
    .restart local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private getFabTranslationX()F
    .locals 3

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    invoke-direct {v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v1

    int-to-float v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method private getFabTranslationX(I)I
    .locals 5

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "fabAlignmentMode":I
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 533
    .local v2, "isRtl":Z
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move-object v3, v0

    .line 534
    invoke-virtual {v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    sub-int/2addr v3, v4

    move v4, v2

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    :goto_1
    mul-int/2addr v3, v4

    .line 533
    :goto_2
    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0

    .line 532
    .end local v2    # "isRtl":Z
    .restart local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 534
    .restart local v2    # "isRtl":Z
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private getFabTranslationY()F
    .locals 3

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY(Z)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method private getFabTranslationY(Z)F
    .locals 13

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "targetAttached":Z
    move-object v9, v0

    invoke-direct {v9}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v9

    move-object v2, v9

    .line 505
    .local v2, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v9, v2

    if-nez v9, :cond_0

    .line 506
    const/4 v9, 0x0

    move v0, v9

    .line 524
    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    :goto_0
    return v0

    .line 510
    .restart local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    :cond_0
    new-instance v9, Landroid/graphics/Rect;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v9

    .line 511
    .local v3, "fabContentRect":Landroid/graphics/Rect;
    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v9

    .line 513
    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    move v4, v9

    .line 514
    .local v4, "fabHeight":F
    move v9, v4

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    .line 516
    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    move v4, v9

    .line 518
    :cond_1
    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v9

    move-object v10, v3

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v5, v9

    .line 519
    .local v5, "fabBottomShadow":F
    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v6, v9

    .line 521
    .local v6, "fabVerticalShadowPadding":F
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v9

    neg-float v9, v9

    move v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move v10, v5

    add-float/2addr v9, v10

    move v7, v9

    .line 522
    .local v7, "attached":F
    move v9, v6

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getPaddingBottom()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    move v8, v9

    .line 524
    .local v8, "detached":F
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    move v10, v1

    if-eqz v10, :cond_2

    move v10, v7

    :goto_1
    add-float/2addr v9, v10

    move v0, v9

    goto :goto_0

    :cond_2
    move v10, v8

    goto :goto_1
.end method

.method private isAnimationRunning()Z
    .locals 2

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 603
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    .line 604
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 602
    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0

    .line 604
    .restart local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVisibleFab()Z
    .locals 3

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v2

    move-object v1, v2

    .line 355
    .local v1, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isOrWillBeShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private maybeAnimateAttachChange(Z)V
    .locals 9

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "targetAttached":Z
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 447
    .line 470
    :goto_0
    return-void

    .line 450
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_1

    .line 451
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 454
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 456
    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_2

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createCradleShapeAnimation(ZLjava/util/List;)V

    .line 457
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabTranslationYAnimation(ZLjava/util/List;)V

    .line 459
    new-instance v4, Landroid/animation/AnimatorSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v3, v4

    .line 460
    .local v3, "set":Landroid/animation/AnimatorSet;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 461
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    .line 462
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    new-instance v5, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 470
    goto :goto_0

    .line 456
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private maybeAnimateMenuView(IZ)V
    .locals 10

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "targetMode":I
    move v2, p2

    .local v2, "newFabAttached":Z
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 368
    .line 396
    :goto_0
    return-void

    .line 371
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_1

    .line 372
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 375
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 378
    .local v3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v5

    if-nez v5, :cond_2

    .line 379
    const/4 v5, 0x0

    move v1, v5

    .line 380
    const/4 v5, 0x0

    move v2, v5

    .line 383
    :cond_2
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V

    .line 385
    new-instance v5, Landroid/animation/AnimatorSet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v5

    .line 386
    .local v4, "set":Landroid/animation/AnimatorSet;
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 387
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 388
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    new-instance v6, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 396
    goto :goto_0
.end method

.method private maybeAnimateModeChange(I)V
    .locals 9

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "targetMode":I
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    move v5, v1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    .line 312
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_2

    .line 293
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 296
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 298
    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createCradleTranslationAnimation(ILjava/util/List;)V

    .line 299
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabTranslationXAnimation(ILjava/util/List;)V

    .line 301
    new-instance v4, Landroid/animation/AnimatorSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v3, v4

    .line 302
    .local v3, "set":Landroid/animation/AnimatorSet;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 303
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    .line 304
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    new-instance v5, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 312
    goto :goto_0
.end method

.method private removeFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 4
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 664
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 665
    return-void
.end method

.method private setCutoutState()V
    .locals 7

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 620
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v3

    move-object v1, v3

    .line 621
    .local v1, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 622
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 623
    move-object v3, v1

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationY(F)V

    .line 624
    move-object v3, v1

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 626
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v3

    move-object v2, v3

    .line 627
    .local v2, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 628
    move-object v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 629
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v3

    if-nez v3, :cond_3

    .line 630
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    .line 635
    :cond_1
    :goto_1
    return-void

    .line 621
    .end local v2    # "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 632
    .restart local v2    # "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    :cond_3
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_1
.end method

.method private translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 12

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    move v2, p2

    .local v2, "fabAlignmentMode":I
    move v3, p3

    .local v3, "fabAttached":Z
    const/4 v9, 0x0

    move v4, v9

    .line 567
    .local v4, "toolbarLeftContentEnd":I
    move-object v9, v0

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v5, v9

    .line 570
    .local v5, "isRtl":Z
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 571
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 572
    .local v7, "view":Landroid/view/View;
    move-object v9, v7

    .line 573
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v9, :cond_2

    move-object v9, v7

    .line 574
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iget v9, v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    const v10, 0x800007

    and-int/2addr v9, v10

    const v10, 0x800003

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_2
    move v8, v9

    .line 577
    .local v8, "isAlignedToStart":Z
    move v9, v8

    if-eqz v9, :cond_0

    .line 578
    move v9, v4

    move v10, v5

    if-eqz v10, :cond_3

    move-object v10, v7

    .line 579
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    :goto_3
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v4, v9

    .line 570
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 567
    .end local v5    # "isRtl":Z
    .end local v6    # "i":I
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "isAlignedToStart":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 574
    .restart local v5    # "isRtl":Z
    .restart local v6    # "i":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 579
    .restart local v8    # "isAlignedToStart":Z
    :cond_3
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    goto :goto_3

    .line 583
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "isAlignedToStart":Z
    :cond_4
    move v9, v5

    if-eqz v9, :cond_5

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    move-result v9

    :goto_4
    move v6, v9

    .line 584
    .local v6, "end":I
    move v9, v4

    move v10, v6

    sub-int/2addr v9, v10

    move v7, v9

    .line 585
    .local v7, "offset":I
    move-object v9, v1

    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    move v10, v3

    if-eqz v10, :cond_6

    move v10, v7

    int-to-float v10, v10

    :goto_5
    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    .line 587
    return-void

    .line 583
    .end local v7    # "offset":I
    .local v6, "i":I
    :cond_5
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    move-result v9

    goto :goto_4

    .line 585
    .local v6, "end":I
    .restart local v7    # "offset":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_5
.end method


# virtual methods
.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior",
            "<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method public getFabAlignmentMode()I
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method public getFabCradleMargin()F
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleMargin()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleRoundedCornerRadius()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method public getHideOnScroll()Z
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "l":I
    move v3, p3

    .local v3, "t":I
    move/from16 v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 612
    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->cancelAnimations()V

    .line 614
    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    .line 615
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    if-nez v3, :cond_0

    .line 796
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 797
    .line 803
    :goto_0
    return-void

    .line 799
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    move-object v2, v3

    .line 800
    .local v2, "savedState":Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 801
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iput v4, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 802
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    iput-boolean v4, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 803
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v3, v0

    invoke-super {v3}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 787
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 788
    .local v2, "savedState":Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iput v4, v3, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    .line 789
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    iput-boolean v4, v3, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    .line 790
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    return-object v0
.end method

.method public replaceMenu(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "newMenu":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 273
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->inflateMenu(I)V

    .line 274
    return-void
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move-object v1, p1

    .local v1, "backgroundTint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 189
    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "verticalOffset":F
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 243
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 244
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 246
    :cond_0
    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "fabAlignmentMode":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateModeChange(I)V

    .line 183
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    .line 184
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 185
    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "cradleMargin":F
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 208
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleMargin(F)V

    .line 209
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 211
    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "roundedCornerRadius":F
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 222
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleRoundedCornerRadius(F)V

    .line 223
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 225
    :cond_0
    return-void
.end method

.method setFabDiameter(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "diameter":I
    move v2, v1

    int-to-float v2, v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabDiameter()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 282
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabDiameter(F)V

    .line 283
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 285
    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomappbar/BottomAppBar;
    move v1, p1

    .local v1, "hide":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    .line 264
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 675
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 670
    return-void
.end method
