.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lcom/google/android/material/internal/VisibilityAwareImageButton;
.source "FloatingActionButton.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/core/widget/TintableImageSourceView;
.implements Lcom/google/android/material/expandable/ExpandableTransformationWidget;


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Size;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final AUTO_MINI_LARGEST_SCREEN_WIDTH:I = 0x1d6

.field private static final EXPANDABLE_WIDGET_HELPER_KEY:Ljava/lang/String; = "expandableWidgetHelper"

.field private static final LOG_TAG:Ljava/lang/String; = "FloatingActionButton"

.field public static final NO_CUSTOM_SIZE:I = 0x0

.field public static final SIZE_AUTO:I = -0x1

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private borderWidth:I

.field compatPadding:Z

.field private customSize:I

.field private final expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

.field private final imageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

.field private imageMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imagePadding:I

.field private imageTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private impl:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field private maxImageSize:I

.field private rippleColor:Landroid/content/res/ColorStateList;

.field final shadowPadding:Landroid/graphics/Rect;

.field private size:I

.field private final touchArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->floatingActionButtonStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .prologue
    .line 192
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
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

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    .line 176
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Landroid/graphics/Rect;

    .line 194
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/material/R$styleable;->FloatingActionButton:[I

    move v13, v3

    sget v14, Lcom/google/android/material/R$style;->Widget_Design_FloatingActionButton:I

    const/4 v15, 0x0

    new-array v15, v15, [I

    .line 195
    invoke-static/range {v10 .. v15}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v4, v10

    .line 201
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v4

    sget v13, Lcom/google/android/material/R$styleable;->FloatingActionButton_backgroundTint:I

    .line 202
    invoke-static {v11, v12, v13}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 204
    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v13, -0x1

    .line 206
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/4 v12, 0x0

    .line 205
    invoke-static {v11, v12}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 207
    move-object v10, v0

    move-object v11, v1

    move-object v12, v4

    sget v13, Lcom/google/android/material/R$styleable;->FloatingActionButton_rippleColor:I

    .line 208
    invoke-static {v11, v12, v13}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    .line 210
    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_fabSize:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    .line 211
    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_fabCustomSize:I

    const/4 v13, 0x0

    .line 212
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 213
    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_borderWidth:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->borderWidth:I

    .line 214
    move-object v10, v4

    sget v11, Lcom/google/android/material/R$styleable;->FloatingActionButton_elevation:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    move v5, v10

    .line 215
    .local v5, "elevation":F
    move-object v10, v4

    sget v11, Lcom/google/android/material/R$styleable;->FloatingActionButton_hoveredFocusedTranslationZ:I

    const/4 v12, 0x0

    .line 216
    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    move v6, v10

    .line 217
    .local v6, "hoveredFocusedTranslationZ":F
    move-object v10, v4

    sget v11, Lcom/google/android/material/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    const/4 v12, 0x0

    .line 218
    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    move v7, v10

    .line 219
    .local v7, "pressedTranslationZ":F
    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_useCompatPadding:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 220
    move-object v10, v0

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_maxImageSize:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    .line 222
    move-object v10, v1

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_showMotionSpec:I

    .line 223
    invoke-static {v10, v11, v12}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v10

    move-object v8, v10

    .line 224
    .local v8, "showMotionSpec":Lcom/google/android/material/animation/MotionSpec;
    move-object v10, v1

    move-object v11, v4

    sget v12, Lcom/google/android/material/R$styleable;->FloatingActionButton_hideMotionSpec:I

    .line 225
    invoke-static {v10, v11, v12}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v10

    move-object v9, v10

    .line 227
    .local v9, "hideMotionSpec":Lcom/google/android/material/animation/MotionSpec;
    move-object v10, v4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    move-object v10, v0

    new-instance v11, Landroidx/appcompat/widget/AppCompatImageHelper;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-direct {v12, v13}, Landroidx/appcompat/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 230
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    move-object v11, v2

    move v12, v3

    invoke-virtual {v10, v11, v12}, Landroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 232
    move-object v10, v0

    new-instance v11, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;-><init>(Lcom/google/android/material/expandable/ExpandableWidget;)V

    iput-object v11, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 234
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->borderWidth:I

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V

    .line 235
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setElevation(F)V

    .line 236
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v10

    move v11, v6

    invoke-virtual {v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHoveredFocusedTranslationZ(F)V

    .line 237
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v10

    move v11, v7

    invoke-virtual {v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 238
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v10

    move-object v11, v0

    iget v11, v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    invoke-virtual {v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setMaxImageSize(I)V

    .line 239
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 240
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v10

    move-object v11, v9

    invoke-virtual {v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 242
    move-object v10, v0

    sget-object v11, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imagePadding:I

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method static synthetic access$101(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "x1":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .locals 8

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1256
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    new-instance v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;-><init>(Lcom/google/android/material/internal/VisibilityAwareImageButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V

    move-object v0, v1

    .line 1258
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_0
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    new-instance v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;-><init>(Lcom/google/android/material/internal/VisibilityAwareImageButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .locals 3

    .prologue
    .line 1248
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    if-nez v1, :cond_0

    .line 1249
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->createImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 1251
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method private getSizeDimension(I)I
    .locals 7

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "size":I
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    if-eqz v5, :cond_0

    .line 703
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    move v0, v5

    .line 719
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :goto_0
    return v0

    .line 706
    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v2, v5

    .line 707
    .local v2, "res":Landroid/content/res/Resources;
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 719
    :pswitch_0
    move-object v5, v2

    sget v6, Lcom/google/android/material/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 710
    :pswitch_1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    move v3, v5

    .line 711
    .local v3, "width":I
    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    move v4, v5

    .line 712
    .local v4, "height":I
    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x1d6

    if-ge v5, v6, :cond_1

    move-object v5, v0

    const/4 v6, 0x1

    .line 713
    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result v5

    .line 712
    :goto_1
    move v0, v5

    goto :goto_0

    .line 713
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    .line 714
    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result v5

    goto :goto_1

    .line 716
    .end local v3    # "width":I
    .end local v4    # "height":I
    :pswitch_2
    move-object v5, v2

    sget v6, Lcom/google/android/material/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private offsetRectWithShadow(Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 802
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 803
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 804
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 805
    return-void
.end method

.method private onApplySupportImageTint()V
    .locals 7

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v1, v4

    .line 440
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 441
    .line 458
    :goto_0
    return-void

    .line 444
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1

    .line 445
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 446
    goto :goto_0

    .line 449
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v2, v4

    .line 450
    .local v2, "color":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v4

    .line 451
    .local v3, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 452
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v4

    .line 455
    :cond_2
    move-object v4, v1

    .line 456
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v2

    move-object v6, v3

    .line 457
    invoke-static {v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 458
    goto :goto_0
.end method

.method private static resolveAdjustedSize(II)I
    .locals 8

    .prologue
    .line 814
    move v0, p0

    .local v0, "desiredSize":I
    move v1, p1

    .local v1, "measureSpec":I
    move v5, v0

    move v2, v5

    .line 815
    .local v2, "result":I
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 816
    .local v3, "specMode":I
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 817
    .local v4, "specSize":I
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 834
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 821
    :sswitch_0
    move v5, v0

    move v2, v5

    .line 836
    :goto_0
    move v5, v2

    move v0, v5

    .end local v0    # "desiredSize":I
    return v0

    .line 827
    .restart local v0    # "desiredSize":I
    :sswitch_1
    move v5, v0

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v5

    .line 828
    goto :goto_0

    .line 831
    :sswitch_2
    move v5, v4

    move v2, v5

    .line 832
    goto :goto_0

    .line 817
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private wrapOnVisibilityChangedListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .locals 7
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 635
    const/4 v2, 0x0

    move-object v0, v2

    .line 638
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_0
    new-instance v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    return-void
.end method

.method public addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 513
    return-void
.end method

.method public clearCustomSize()V
    .locals 3

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCustomSize(I)V

    .line 695
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->drawableStateChanged()V

    .line 738
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    .line 739
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getCompatElevation()F
    .locals 2

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getElevation()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .locals 2

    .prologue
    .line 1139
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getHoveredFocusedTranslationZ()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public getCompatPressedTranslationZ()F
    .locals 2

    .prologue
    .line 1174
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPressedTranslationZ()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getContentBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getContentRect(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 784
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Landroid/graphics/Rect;)V

    .line 785
    const/4 v2, 0x1

    move v0, v2

    .line 787
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getCustomSize()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public getExpandedComponentIdHint()I
    .locals 2

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v1}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->getExpandedComponentIdHint()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getMeasuredContentRect(Landroid/graphics/Rect;)V
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 797
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Landroid/graphics/Rect;)V

    .line 798
    return-void
.end method

.method public getRippleColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .prologue
    .line 1203
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method getSizeDimension()I
    .locals 3

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    invoke-direct {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public getUseCompatPadding()Z
    .locals 2

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 526
    return-void
.end method

.method public hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 5
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 537
    return-void
.end method

.method hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 6
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    move v2, p2

    .local v2, "fromUser":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->wrapOnVisibilityChangedListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    .line 541
    return-void
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v1}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->isExpanded()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public isOrWillBeHidden()Z
    .locals 2

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public isOrWillBeShown()Z
    .locals 2

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->jumpDrawablesToCurrentState()V

    .line 744
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    .line 745
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onAttachedToWindow()V

    .line 726
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onAttachedToWindow()V

    .line 727
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onDetachedFromWindow()V

    .line 732
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onDetachedFromWindow()V

    .line 733
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v7

    move v3, v7

    .line 249
    .local v3, "preferredSize":I
    move-object v7, v0

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imagePadding:I

    .line 250
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 252
    move v7, v3

    move v8, v1

    invoke-static {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v7

    move v4, v7

    .line 253
    .local v4, "w":I
    move v7, v3

    move v8, v2

    invoke-static {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v7

    move v5, v7

    .line 257
    .local v5, "h":I
    move v7, v4

    move v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 260
    .local v6, "d":I
    move-object v7, v0

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    .line 262
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/material/stateful/ExtendableSavedState;

    if-nez v3, :cond_0

    .line 761
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 762
    .line 770
    :goto_0
    return-void

    .line 765
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/android/material/stateful/ExtendableSavedState;

    move-object v2, v3

    .line 766
    .local v2, "ess":Lcom/google/android/material/stateful/ExtendableSavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/stateful/ExtendableSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 768
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    const-string/jumbo v5, "expandableWidgetHelper"

    .line 769
    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 768
    invoke-virtual {v3, v4}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 770
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v3, v0

    invoke-super {v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 750
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Lcom/google/android/material/stateful/ExtendableSavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 752
    .local v2, "state":Lcom/google/android/material/stateful/ExtendableSavedState;
    move-object v3, v2

    iget-object v3, v3, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    const-string/jumbo v4, "expandableWidgetHelper"

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 753
    invoke-virtual {v5}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v5

    .line 752
    invoke-virtual {v3, v4, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 755
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 841
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 843
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Landroid/graphics/Rect;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 844
    const/4 v2, 0x0

    move v0, v2

    .line 847
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 549
    return-void
.end method

.method public removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 517
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "color":I
    const-string/jumbo v2, "FloatingActionButton"

    const-string/jumbo v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 473
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v2, "FloatingActionButton"

    const-string/jumbo v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 463
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "resid":I
    const-string/jumbo v2, "FloatingActionButton"

    const-string/jumbo v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 468
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 340
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 341
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 343
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 367
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 368
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 370
    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 4

    .prologue
    .line 1116
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "elevation":F
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setElevation(F)V

    .line 1117
    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1128
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    .line 1129
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 4

    .prologue
    .line 1151
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "translationZ":F
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHoveredFocusedTranslationZ(F)V

    .line 1152
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1163
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    .line 1164
    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 4

    .prologue
    .line 1186
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "translationZ":F
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 1187
    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1198
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    .line 1199
    return-void
.end method

.method public setCustomSize(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "size":I
    move v2, v1

    if-gez v2, :cond_0

    .line 671
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Custom size must be non-negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 674
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 675
    return-void
.end method

.method public setExpanded(Z)Z
    .locals 4

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "expanded":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->setExpanded(Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return v0
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "expandedComponentIdHint":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->setExpandedComponentIdHint(I)V

    .line 564
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 4

    .prologue
    .line 1235
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "spec":Lcom/google/android/material/animation/MotionSpec;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1236
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 1244
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1245
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateImageMatrixScale()V

    .line 485
    return-void
.end method

.method public setImageResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 479
    return-void
.end method

.method public setRippleColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 300
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 314
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    .line 315
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 4

    .prologue
    .line 1212
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "spec":Lcom/google/android/material/animation/MotionSpec;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1213
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 1221
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1222
    return-void
.end method

.method public setSize(I)V
    .locals 4

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 614
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    if-eq v2, v3, :cond_0

    .line 615
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    .line 616
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    .line 618
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 379
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 398
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 413
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    .line 414
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    .line 416
    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 427
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Landroid/graphics/PorterDuff$Mode;

    .line 428
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    .line 430
    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 4

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move v1, p1

    .local v1, "useCompatPadding":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 582
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 583
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onCompatShadowChanged()V

    .line 585
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 494
    return-void
.end method

.method public show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 5
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 505
    return-void
.end method

.method show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 6

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    move v2, p2

    .local v2, "fromUser":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->wrapOnVisibilityChangedListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    .line 509
    return-void
.end method
