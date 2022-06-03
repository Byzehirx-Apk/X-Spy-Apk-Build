.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;,
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;,
        Lcom/google/android/material/textfield/TextInputLayout$BoxBackgroundMode;
    }
.end annotation


# static fields
.field public static final BOX_BACKGROUND_FILLED:I = 0x1

.field public static final BOX_BACKGROUND_NONE:I = 0x0

.field public static final BOX_BACKGROUND_OUTLINE:I = 0x2

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xa7

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private boxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private boxBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private boxBackgroundMode:I

.field private final boxBottomOffsetPx:I

.field private final boxCollapsedPaddingTopPx:I

.field private boxCornerRadiusBottomEnd:F

.field private boxCornerRadiusBottomStart:F

.field private boxCornerRadiusTopEnd:F

.field private boxCornerRadiusTopStart:F

.field private final boxLabelCutoutPaddingPx:I

.field private boxStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final boxStrokeWidthDefaultPx:I

.field private final boxStrokeWidthFocusedPx:I

.field private boxStrokeWidthPx:I

.field final collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

.field counterEnabled:Z

.field private counterMaxLength:I

.field private final counterOverflowTextAppearance:I

.field private counterOverflowed:Z

.field private final counterTextAppearance:I

.field private counterView:Landroid/widget/TextView;

.field private defaultHintTextColor:Landroid/content/res/ColorStateList;

.field private final defaultStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final disabledColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field editText:Landroid/widget/EditText;

.field private editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private focusedStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private focusedTextColor:Landroid/content/res/ColorStateList;

.field private hasPasswordToggleTintList:Z

.field private hasPasswordToggleTintMode:Z

.field private hasReconstructedEditTextBackground:Z

.field private hint:Ljava/lang/CharSequence;

.field private hintAnimationEnabled:Z

.field private hintEnabled:Z

.field private hintExpanded:Z

.field private final hoveredStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private inDrawableStateChanged:Z

.field private final indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

.field private final inputFrame:Landroid/widget/FrameLayout;

.field private isProvidingHint:Z

.field private originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private originalHint:Ljava/lang/CharSequence;

.field private passwordToggleContentDesc:Ljava/lang/CharSequence;

.field private passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleEnabled:Z

.field private passwordToggleTintList:Landroid/content/res/ColorStateList;

.field private passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

.field private passwordToggledVisible:Z

.field private restoringSavedState:Z

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->textInputStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23

    .prologue
    .line 251
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object/from16 v3, p1

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p2

    .local v4, "attrs":Landroid/util/AttributeSet;
    move/from16 v5, p3

    .local v5, "defStyleAttr":I
    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v15 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    move-object v15, v2

    new-instance v16, Lcom/google/android/material/textfield/IndicatorViewController;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v18}, Lcom/google/android/material/textfield/IndicatorViewController;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 203
    move-object v15, v2

    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 204
    move-object v15, v2

    new-instance v16, Landroid/graphics/RectF;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 232
    move-object v15, v2

    new-instance v16, Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v18}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 253
    move-object v15, v2

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setOrientation(I)V

    .line 254
    move-object v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setWillNotDraw(Z)V

    .line 255
    move-object v15, v2

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 257
    move-object v15, v2

    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v18}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 258
    move-object v15, v2

    iget-object v15, v15, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 259
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    .line 261
    move-object v15, v2

    iget-object v15, v15, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget-object v16, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    move-object v15, v2

    iget-object v15, v15, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget-object v16, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/internal/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    move-object v15, v2

    iget-object v15, v15, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const v16, 0x800033

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 265
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Lcom/google/android/material/R$styleable;->TextInputLayout:[I

    move/from16 v18, v5

    sget v19, Lcom/google/android/material/R$style;->Widget_Design_TextInputLayout:I

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 266
    invoke-static/range {v15 .. v20}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v15

    move-object v6, v15

    .line 273
    .local v6, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_hintEnabled:I

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    .line 274
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual/range {v16 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 275
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    .line 277
    move-object v15, v2

    move-object/from16 v16, v3

    .line 278
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_bottom_offset:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxBottomOffsetPx:I

    .line 279
    move-object v15, v2

    move-object/from16 v16, v3

    .line 281
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 282
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    .line 284
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    const/16 v18, 0x0

    .line 285
    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 286
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopStart:I

    const/16 v18, 0x0

    .line 287
    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopStart:F

    .line 288
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopEnd:I

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopEnd:F

    .line 289
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomEnd:I

    const/16 v18, 0x0

    .line 290
    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomEnd:F

    .line 291
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomStart:I

    const/16 v18, 0x0

    .line 292
    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomStart:F

    .line 294
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundColor:I

    const/16 v18, 0x0

    .line 295
    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 297
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    .line 298
    move-object v15, v2

    move-object/from16 v16, v3

    .line 300
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 301
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    .line 302
    move-object v15, v2

    move-object/from16 v16, v3

    .line 304
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 305
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    .line 306
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 309
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundMode:I

    const/16 v17, 0x0

    .line 310
    invoke-virtual/range {v15 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v15

    move v7, v15

    .line 311
    .local v7, "boxBackgroundMode":I
    move-object v15, v2

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 312
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 313
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    sget v18, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 314
    invoke-virtual/range {v17 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 316
    :cond_0
    move-object v15, v2

    move-object/from16 v16, v3

    sget v17, Lcom/google/android/material/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 317
    invoke-static/range {v16 .. v17}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    .line 318
    move-object v15, v2

    move-object/from16 v16, v3

    sget v17, Lcom/google/android/material/R$color;->mtrl_textinput_disabled_color:I

    invoke-static/range {v16 .. v17}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    .line 319
    move-object v15, v2

    move-object/from16 v16, v3

    sget v17, Lcom/google/android/material/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 320
    invoke-static/range {v16 .. v17}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    .line 322
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/16 v17, -0x1

    invoke-virtual/range {v15 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    move v8, v15

    .line 323
    .local v8, "hintAppearance":I
    move v15, v8

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 324
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 327
    :cond_1
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    const/16 v17, 0x0

    .line 328
    invoke-virtual/range {v15 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    move v9, v15

    .line 329
    .local v9, "errorTextAppearance":I
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_errorEnabled:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v15

    move v10, v15

    .line 331
    .local v10, "errorEnabled":Z
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    const/16 v17, 0x0

    .line 332
    invoke-virtual/range {v15 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    move v11, v15

    .line 333
    .local v11, "helperTextTextAppearance":I
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextEnabled:I

    const/16 v17, 0x0

    .line 334
    invoke-virtual/range {v15 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v15

    move v12, v15

    .line 335
    .local v12, "helperTextEnabled":Z
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v13, v15

    .line 337
    .local v13, "helperText":Ljava/lang/CharSequence;
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_counterEnabled:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v15

    move v14, v15

    .line 338
    .local v14, "counterEnabled":Z
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_counterMaxLength:I

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 339
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    .line 340
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    const/16 v18, 0x0

    .line 341
    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    .line 343
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    .line 344
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual/range {v16 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 345
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 346
    invoke-virtual/range {v16 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 347
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 348
    move-object v15, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 349
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual/range {v16 .. v17}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 351
    :cond_2
    move-object v15, v6

    sget v16, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual/range {v15 .. v16}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 352
    move-object v15, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 353
    move-object v15, v2

    move-object/from16 v16, v6

    sget v17, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    const/16 v18, -0x1

    .line 355
    invoke-virtual/range {v16 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v16

    const/16 v17, 0x0

    .line 354
    invoke-static/range {v16 .. v17}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 358
    :cond_3
    move-object v15, v6

    invoke-virtual {v15}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 360
    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 361
    move-object v15, v2

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 362
    move-object v15, v2

    move/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 363
    move-object v15, v2

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 364
    move-object v15, v2

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 365
    move-object v15, v2

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 367
    move-object v15, v2

    invoke-direct {v15}, Lcom/google/android/material/textfield/TextInputLayout;->applyPasswordToggleTint()V

    .line 371
    move-object v15, v2

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 372
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method private applyBoxAttributes()V
    .locals 4

    .prologue
    .line 1342
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_0

    .line 1343
    .line 1370
    :goto_0
    return-void

    .line 1346
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxAttributes()V

    .line 1348
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1350
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1351
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1353
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1356
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 1360
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1363
    :cond_3
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_4

    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    if-eqz v1, :cond_4

    .line 1364
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1367
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getCornerRadiiAsArray()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1368
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1369
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 1370
    goto :goto_0
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    .line 1954
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "cutoutBounds":Landroid/graphics/RectF;
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1955
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1956
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1957
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1958
    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 3

    .prologue
    .line 1865
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintList:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v1, :cond_3

    .line 1867
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1869
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintList:Z

    if-eqz v1, :cond_1

    .line 1870
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1872
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v1, :cond_2

    .line 1873
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1876
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1877
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_3

    .line 1878
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1881
    :cond_3
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 5

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-nez v1, :cond_1

    .line 426
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v1, v1, Lcom/google/android/material/textfield/CutoutDrawable;

    if-nez v1, :cond_2

    .line 432
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/textfield/CutoutDrawable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 433
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v1, v1, Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_0

    .line 435
    move-object v1, v0

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0
.end method

.method private calculateBoxBackgroundTop()I
    .locals 3

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 1255
    const/4 v1, 0x0

    move v0, v1

    .line 1264
    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    return v0

    .line 1258
    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v1, :pswitch_data_0

    .line 1264
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1260
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1262
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 1258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 3

    .prologue
    .line 1285
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v1, :pswitch_data_0

    .line 1291
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    return v0

    .line 1287
    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :pswitch_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 1289
    :pswitch_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    add-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 1285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateLabelMarginTop()I
    .locals 3

    .prologue
    .line 1269
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-nez v1, :cond_0

    .line 1270
    const/4 v1, 0x0

    move v0, v1

    .line 1280
    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    return v0

    .line 1273
    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v1, :pswitch_data_0

    .line 1280
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1275
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    goto :goto_0

    .line 1278
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v1

    float-to-int v1, v1

    move v0, v1

    goto :goto_0

    .line 1273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeCutout()V
    .locals 2

    .prologue
    .line 1948
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1949
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/CutoutDrawable;->removeCutout()V

    .line 1951
    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 4

    .prologue
    .line 1919
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "animate":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1920
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1922
    :cond_0
    move v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v2, :cond_2

    .line 1923
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    .line 1927
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    .line 1928
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1929
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 1931
    :cond_1
    return-void

    .line 1925
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_0
.end method

.method private cutoutEnabled()Z
    .locals 2

    .prologue
    .line 1934
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v1, v1, Lcom/google/android/material/textfield/CutoutDrawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 7

    .prologue
    .line 1407
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v4

    .line 1408
    .local v1, "sdk":I
    move v4, v1

    const/16 v5, 0x15

    if-eq v4, v5, :cond_0

    move v4, v1

    const/16 v5, 0x16

    if-eq v4, v5, :cond_0

    .line 1410
    .line 1443
    :goto_0
    return-void

    .line 1412
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 1413
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    move-object v4, v2

    if-nez v4, :cond_1

    .line 1414
    goto :goto_0

    .line 1417
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v4, :cond_3

    .line 1422
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 1424
    .local v3, "newBg":Landroid/graphics/drawable/Drawable;
    move-object v4, v2

    instance-of v4, v4, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v4, :cond_2

    .line 1427
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/DrawableContainer;

    move-object v6, v3

    .line 1429
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    .line 1428
    invoke-static {v5, v6}, Lcom/google/android/material/internal/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/android/material/textfield/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1432
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v4, :cond_3

    .line 1437
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v5, v3

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1438
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/material/textfield/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1440
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 1443
    .end local v3    # "newBg":Landroid/graphics/drawable/Drawable;
    :cond_3
    goto :goto_0
.end method

.method private expandHint(Z)V
    .locals 4

    .prologue
    .line 2033
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "animate":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2034
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2036
    :cond_0
    move v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v2, :cond_2

    .line 2037
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    .line 2041
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v2, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/CutoutDrawable;->hasCutout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2042
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->closeCutout()V

    .line 2044
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    .line 2045
    return-void

    .line 2039
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 398
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0

    .line 400
    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method private getCornerRadiiAsArray()[F
    .locals 6

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    const/16 v1, 0x8

    new-array v1, v1, [F

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x4

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x5

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x6

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x7

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v4, v2, v3

    move-object v0, v1

    .line 599
    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    const/16 v1, 0x8

    new-array v1, v1, [F

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x4

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x5

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x6

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x7

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v4, v2, v3

    move-object v0, v1

    goto :goto_0
.end method

.method private hasPasswordTransformation()Z
    .locals 2

    .prologue
    .line 1856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1857
    invoke-virtual {v1}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1856
    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0

    .line 1857
    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 2

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->assignBoxBackgroundByMode()V

    .line 418
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-eqz v1, :cond_0

    .line 419
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 421
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxBounds()V

    .line 422
    return-void
.end method

.method private openCutout()V
    .locals 4

    .prologue
    .line 1938
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1939
    .line 1945
    :goto_0
    return-void

    .line 1941
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    move-object v1, v2

    .line 1942
    .local v1, "cutoutBounds":Landroid/graphics/RectF;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1943
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1944
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v2, Lcom/google/android/material/textfield/CutoutDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    .line 1945
    goto :goto_0
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 7

    .prologue
    .line 1133
    move-object v0, p0

    .local v0, "vg":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "enabled":Z
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v3, v5

    .local v3, "count":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1134
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1135
    .local v4, "child":Landroid/view/View;
    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1136
    move-object v5, v4

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 1137
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    move v6, v1

    invoke-static {v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1133
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1140
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setBoxAttributes()V
    .locals 5

    .prologue
    .line 1324
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v1, :pswitch_data_0

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1326
    :pswitch_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 1327
    goto :goto_0

    .line 1330
    :pswitch_1
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    if-nez v1, :cond_0

    .line 1331
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    move-object v3, v0

    .line 1333
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 1332
    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    goto :goto_0

    .line 1324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 9

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "editText":Landroid/widget/EditText;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 664
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "We already have an EditText, can only have one"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 667
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v4, :cond_1

    .line 668
    const-string/jumbo v4, "TextInputLayout"

    const-string/jumbo v5, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 674
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 675
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 676
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    .line 678
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordTransformation()Z

    move-result v4

    move v2, v4

    .line 681
    .local v2, "hasPasswordTransformation":Z
    move v4, v2

    if-nez v4, :cond_2

    .line 683
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 685
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 687
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getGravity()I

    move-result v4

    move v3, v4

    .line 688
    .local v3, "editTextGravity":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const/16 v5, 0x30

    move v6, v3

    const/16 v7, -0x71

    and-int/lit8 v6, v6, -0x71

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 690
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 693
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    new-instance v5, Lcom/google/android/material/textfield/TextInputLayout$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 711
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_3

    .line 712
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 716
    :cond_3
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v4, :cond_5

    .line 717
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 719
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    .line 720
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 722
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 724
    :cond_4
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 727
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 728
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 731
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 733
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/textfield/TextInputLayout;->updatePasswordToggleView()V

    .line 736
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    .line 737
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "hint":Ljava/lang/CharSequence;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 813
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    .line 814
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 816
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v2, :cond_0

    .line 817
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 820
    :cond_0
    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 2

    .prologue
    .line 1861
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateEditTextBackgroundBounds()V
    .locals 13

    .prologue
    .line 1296
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v7, :cond_0

    .line 1297
    .line 1321
    :goto_0
    return-void

    .line 1299
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v1, v7

    .line 1300
    .local v1, "editTextBackground":Landroid/graphics/drawable/Drawable;
    move-object v7, v1

    if-nez v7, :cond_1

    .line 1301
    goto :goto_0

    .line 1304
    :cond_1
    move-object v7, v1

    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1305
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v1, v7

    .line 1308
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v7

    .line 1309
    .local v2, "editTextBounds":Landroid/graphics/Rect;
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v9, v2

    invoke-static {v7, v8, v9}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1311
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v3, v7

    .line 1312
    .local v3, "editTextBackgroundBounds":Landroid/graphics/Rect;
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v3

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-eq v7, v8, :cond_3

    .line 1314
    new-instance v7, Landroid/graphics/Rect;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v7

    .line 1315
    .local v4, "editTextBackgroundPadding":Landroid/graphics/Rect;
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v7

    .line 1317
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    move v5, v7

    .line 1318
    .local v5, "left":I
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->right:I

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    move v6, v7

    .line 1319
    .local v6, "right":I
    move-object v7, v1

    move v8, v5

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1321
    .end local v4    # "editTextBackgroundPadding":Landroid/graphics/Rect;
    .end local v5    # "left":I
    .end local v6    # "right":I
    :cond_3
    goto :goto_0
.end method

.method private updateInputLayoutMargins()V
    .locals 5

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, v3

    .line 743
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v3

    move v2, v3

    .line 745
    .local v2, "newTopMargin":I
    move v3, v2

    move-object v4, v1

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v3, v4, :cond_0

    .line 746
    move-object v3, v1

    move v4, v2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 747
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 749
    :cond_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 9

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "animate":Z
    move v2, p2

    .local v2, "force":Z
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v7

    move v3, v7

    .line 757
    .local v3, "isEnabled":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_0
    move v4, v7

    .line 758
    .local v4, "hasText":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_1
    move v5, v7

    .line 759
    .local v5, "hasFocus":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v7

    move v6, v7

    .line 762
    .local v6, "errorShouldBeShown":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_0

    .line 763
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 764
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 768
    :cond_0
    move v7, v3

    if-nez v7, :cond_7

    .line 769
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 770
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 779
    :cond_1
    :goto_2
    move v7, v4

    if-nez v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v5

    if-nez v7, :cond_2

    move v7, v6

    if-eqz v7, :cond_a

    .line 781
    :cond_2
    move v7, v2

    if-nez v7, :cond_3

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-eqz v7, :cond_4

    .line 782
    :cond_3
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/material/textfield/TextInputLayout;->collapseHint(Z)V

    .line 790
    :cond_4
    :goto_3
    return-void

    .line 757
    .end local v4    # "hasText":Z
    .end local v5    # "hasFocus":Z
    .end local v6    # "errorShouldBeShown":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 758
    .restart local v4    # "hasText":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 771
    .restart local v5    # "hasFocus":Z
    .restart local v6    # "errorShouldBeShown":Z
    :cond_7
    move v7, v6

    if-eqz v7, :cond_8

    .line 772
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 773
    :cond_8
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    .line 774
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 775
    :cond_9
    move v7, v5

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_1

    .line 776
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 786
    :cond_a
    move v7, v2

    if-nez v7, :cond_b

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v7, :cond_4

    .line 787
    :cond_b
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/material/textfield/TextInputLayout;->expandHint(Z)V

    goto :goto_3
.end method

.method private updatePasswordToggleView()V
    .locals 9

    .prologue
    .line 1590
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 1592
    .line 1661
    :goto_0
    return-void

    .line 1595
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowPasswordIcon()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1596
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-nez v2, :cond_1

    .line 1597
    move-object v2, v0

    move-object v3, v0

    .line 1599
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$layout;->design_text_input_password_icon:I

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    .line 1600
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1601
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1602
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1603
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1605
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v3, Lcom/google/android/material/textfield/TextInputLayout$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout$2;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 1618
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1621
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 1622
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 1626
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 1627
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1629
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredWidth()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1631
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1633
    .local v1, "compounds":[Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_4

    .line 1634
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1636
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1640
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1641
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1642
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1643
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1644
    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v6

    .line 1640
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/material/internal/CheckableImageButton;->setPadding(IIII)V

    .line 1645
    .line 1661
    .end local v1    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 1646
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v2, :cond_7

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 1647
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 1650
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 1653
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1654
    .restart local v1    # "compounds":[Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_5

    .line 1655
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1657
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private updateTextInputBoxBounds()V
    .locals 10

    .prologue
    .line 1227
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 1230
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getRight()I

    move-result v5

    if-nez v5, :cond_1

    .line 1231
    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLeft()I

    move-result v5

    move v1, v5

    .line 1235
    .local v1, "left":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/textfield/TextInputLayout;->calculateBoxBackgroundTop()I

    move-result v5

    move v2, v5

    .line 1236
    .local v2, "top":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getRight()I

    move-result v5

    move v3, v5

    .line 1237
    .local v3, "right":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBottom()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->boxBottomOffsetPx:I

    add-int/2addr v5, v6

    move v4, v5

    .line 1241
    .local v4, "bottom":I
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1242
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v1, v5

    .line 1243
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move v2, v5

    .line 1244
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move v3, v5

    .line 1245
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v4, v5

    .line 1248
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1249
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 1250
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackgroundBounds()V

    .line 1251
    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 10

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v1

    instance-of v5, v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 379
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, v5

    .line 380
    .local v4, "flp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v5, v4

    const/16 v6, 0x10

    move-object v7, v4

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v8, -0x71

    and-int/lit8 v7, v7, -0x71

    or-int/2addr v6, v7

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 388
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    invoke-direct {v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 389
    .line 393
    .end local v4    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 391
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method animateToExpansionFraction(F)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2049
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v2, p1

    .local v2, "target":F
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    move v4, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 2050
    .line 2066
    :goto_0
    return-void

    .line 2052
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_1

    .line 2053
    move-object v3, v1

    new-instance v4, Landroid/animation/ValueAnimator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    .line 2054
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2055
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xa7

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 2056
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/material/textfield/TextInputLayout$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/android/material/textfield/TextInputLayout$3;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2064
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v7

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move v7, v2

    aput v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2065
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2066
    goto :goto_0
.end method

.method cutoutIsOpen()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1962
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/CutoutDrawable;->hasCutout()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 9

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "structure":Landroid/view/ViewStructure;
    move v2, p2

    .local v2, "flags":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v6, :cond_1

    .line 642
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 643
    .line 659
    :goto_0
    return-void

    .line 648
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    move v3, v6

    .line 650
    .local v3, "wasProvidingHint":Z
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 651
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v4, v6

    .line 652
    .local v4, "hint":Ljava/lang/CharSequence;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 654
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    :try_start_0
    invoke-super {v6, v7, v8}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 657
    move-object v6, v0

    move v7, v3

    iput-boolean v7, v6, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 658
    .line 659
    goto :goto_0

    .line 656
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 657
    move-object v6, v0

    move v7, v3

    iput-boolean v7, v6, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    move-object v6, v5

    throw v6
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1522
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    .line 1523
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1524
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    .line 1525
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 1574
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    .line 1575
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1577
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1578
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v2, :cond_1

    .line 1579
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 1581
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 1967
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    if-eqz v3, :cond_0

    .line 1971
    .line 1997
    :goto_0
    return-void

    .line 1974
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    .line 1976
    move-object v3, v0

    invoke-super {v3}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1978
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v3

    move-object v1, v3

    .line 1979
    .local v1, "state":[I
    const/4 v3, 0x0

    move v2, v3

    .line 1982
    .local v2, "changed":Z
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 1984
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 1985
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1986
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 1988
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v3, :cond_1

    .line 1989
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1992
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 1993
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 1996
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    .line 1997
    goto :goto_0

    .line 1982
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getBoxBackgroundColor()I
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 2

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomEnd:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 2

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomStart:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 2

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopEnd:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 2

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopStart:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getCounterMaxLength()I
    .locals 2

    .prologue
    .line 1148
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1157
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1158
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 1160
    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1535
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getErrorCurrentTextColors()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method final getErrorTextCurrentColor()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2090
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1547
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 1548
    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1547
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0

    .line 1548
    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 1035
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperTextViewCurrentTextColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 830
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final getHintCollapsedTextHeight()F
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2085
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2080
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1742
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1731
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0
.end method

.method public isCounterEnabled()Z
    .locals 2

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .prologue
    .line 977
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method final isHelperTextDisplayed()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2075
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextIsDisplayed()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public isHelperTextEnabled()Z
    .locals 2

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 2

    .prologue
    .line 1559
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public isHintEnabled()Z
    .locals 2

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method final isHintExpanded()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2070
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .locals 2

    .prologue
    .line 1751
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method isProvidingHint()Z
    .locals 2

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 1885
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move/from16 v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    invoke-super/range {v10 .. v15}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1887
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v10, :cond_0

    .line 1888
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1891
    :cond_0
    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v10, :cond_1

    .line 1892
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/textfield/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    move-object v6, v10

    .line 1893
    .local v6, "rect":Landroid/graphics/Rect;
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v12, v6

    invoke-static {v10, v11, v12}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1895
    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    move v7, v10

    .line 1896
    .local v7, "l":I
    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v8, v10

    .line 1897
    .local v8, "r":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/textfield/TextInputLayout;->calculateCollapsedTextTopBounds()I

    move-result v10

    move v9, v10

    .line 1899
    .local v9, "t":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v11, v7

    move-object v12, v6

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1901
    invoke-virtual {v13}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    move v13, v8

    move-object v14, v6

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1903
    invoke-virtual {v15}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1899
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1907
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v11, v7

    move v12, v9

    move v13, v8

    move v14, v5

    move v15, v3

    sub-int/2addr v14, v15

    move-object v15, v0

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1908
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 1912
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v10, :cond_1

    .line 1913
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 1916
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "l":I
    .end local v8    # "r":I
    .end local v9    # "t":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 1585
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/textfield/TextInputLayout;->updatePasswordToggleView()V

    .line 1586
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1587
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1507
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    if-nez v3, :cond_0

    .line 1508
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1509
    .line 1518
    :goto_0
    return-void

    .line 1511
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    move-object v2, v3

    .line 1512
    .local v2, "ss":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1513
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1514
    move-object v3, v2

    iget-boolean v3, v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    if-eqz v3, :cond_1

    .line 1515
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    .line 1517
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->requestLayout()V

    .line 1518
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1496
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v3, v0

    invoke-super {v3}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1497
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1498
    .local v2, "ss":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1499
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1501
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    .line 1502
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout;
    return-object v0
.end method

.method public passwordVisibilityToggleRequested(Z)V
    .locals 5

    .prologue
    .line 1820
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "shouldSkipAnimations":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v3, :cond_1

    .line 1822
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    move v2, v3

    .line 1824
    .local v2, "selection":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordTransformation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1825
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1826
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    .line 1832
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 1833
    move v3, v1

    if-eqz v3, :cond_0

    .line 1834
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3}, Lcom/google/android/material/internal/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 1838
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 1840
    .end local v2    # "selection":I
    :cond_1
    return-void

    .line 1828
    .restart local v2    # "selection":I
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1829
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    goto :goto_0
.end method

.method public setBoxBackgroundColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "boxBackgroundColor":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 481
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 482
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 484
    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "boxBackgroundColorId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 471
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 4

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "boxBackgroundMode":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-ne v2, v3, :cond_0

    .line 410
    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    .line 413
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 414
    goto :goto_0
.end method

.method public setBoxCornerRadii(FFFF)V
    .locals 7

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "boxCornerRadiusTopStart":F
    move v2, p2

    .local v2, "boxCornerRadiusTopEnd":F
    move v3, p3

    .local v3, "boxCornerRadiusBottomStart":F
    move v4, p4

    .local v4, "boxCornerRadiusBottomEnd":F
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopStart:F

    move v6, v1

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopEnd:F

    move v6, v2

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomEnd:F

    move v6, v4

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomStart:F

    move v6, v3

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 538
    :cond_0
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopStart:F

    .line 539
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusTopEnd:F

    .line 540
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomEnd:F

    .line 541
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/material/textfield/TextInputLayout;->boxCornerRadiusBottomStart:F

    .line 542
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 544
    :cond_1
    return-void
.end method

.method public setBoxCornerRadiiResources(IIII)V
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "boxCornerRadiusTopStartId":I
    move v2, p2

    .local v2, "boxCornerRadiusTopEndId":I
    move v3, p3

    .local v3, "boxCornerRadiusBottomEndId":I
    move v4, p4

    .local v4, "boxCornerRadiusBottomStartId":I
    move-object v5, v0

    move-object v6, v0

    .line 511
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    move-object v7, v0

    .line 512
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move-object v8, v0

    .line 513
    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object v9, v0

    .line 514
    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 510
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 515
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "boxStrokeColor":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 449
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    .line 450
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 452
    :cond_0
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 7

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 1072
    move v2, v1

    if-eqz v2, :cond_3

    .line 1073
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1074
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    sget v3, Lcom/google/android/material/R$id;->textinput_counter:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 1075
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    .line 1076
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1078
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1079
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1080
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 1081
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v2, :cond_2

    .line 1082
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 1090
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    .line 1092
    :cond_1
    return-void

    .line 1084
    :cond_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    goto :goto_0

    .line 1087
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 1088
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setCounterMaxLength(I)V
    .locals 4

    .prologue
    .line 1111
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "maxLength":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1112
    move v2, v1

    if-lez v2, :cond_1

    .line 1113
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    .line 1117
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v2, :cond_0

    .line 1118
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 1121
    :cond_0
    return-void

    .line 1115
    :cond_1
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    goto :goto_0

    .line 1118
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    goto :goto_1
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "textColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 914
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 916
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 917
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 919
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 1128
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1129
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1130
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1049
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "errorText":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1050
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1052
    .line 1063
    :goto_0
    return-void

    .line 1055
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1058
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1059
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->showError(Ljava/lang/CharSequence;)V

    .line 1063
    :goto_1
    goto :goto_0

    .line 1061
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    goto :goto_1
.end method

.method public setErrorEnabled(Z)V
    .locals 4

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorEnabled(Z)V

    .line 939
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 947
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 948
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "textColors":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 953
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1005
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "helperText":Ljava/lang/CharSequence;
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1011
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1013
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->showHelper(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1029
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "textColors":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 1030
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 4

    .prologue
    .line 988
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextEnabled(Z)V

    .line 989
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 968
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "hint":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v2, :cond_0

    .line 806
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 807
    move-object v2, v0

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 809
    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 4

    .prologue
    .line 1569
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    .line 1570
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 5

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "enabled":Z
    move v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eq v3, v4, :cond_1

    .line 846
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    .line 847
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-nez v3, :cond_2

    .line 849
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 850
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 852
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 855
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 870
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 871
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 874
    :cond_1
    return-void

    .line 857
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 858
    .local v2, "editTextHint":Ljava/lang/CharSequence;
    move-object v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 861
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 862
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 864
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 866
    :cond_4
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    goto :goto_0
.end method

.method public setHintTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 902
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 904
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 905
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 907
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 909
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1703
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1704
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1703
    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 1705
    return-void

    .line 1704
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1717
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "description":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 1718
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v2, :cond_0

    .line 1719
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1721
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1673
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1674
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1673
    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1675
    return-void

    .line 1674
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1687
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1688
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v2, :cond_0

    .line 1689
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleView:Lcom/google/android/material/internal/CheckableImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1691
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 4

    .prologue
    .line 1764
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 1765
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleEnabled:Z

    .line 1767
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 1770
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1774
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggledVisible:Z

    .line 1776
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->updatePasswordToggleView()V

    .line 1778
    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1792
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 1793
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 1794
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->applyPasswordToggleTint()V

    .line 1795
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1806
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1807
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 1808
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->applyPasswordToggleTint()V

    .line 1809
    return-void
.end method

.method setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V
    .locals 8
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 1202
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "textView":Landroid/widget/TextView;
    move v2, p2

    .local v2, "textAppearance":I
    const/4 v5, 0x0

    move v3, v5

    .line 1204
    .local v3, "useDefaultColor":Z
    move-object v5, v1

    move v6, v2

    :try_start_0
    invoke-static {v5, v6}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1206
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    move-object v5, v1

    .line 1207
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const v6, -0xff01

    if-ne v5, v6, :cond_0

    .line 1211
    const/4 v5, 0x1

    move v3, v5

    .line 1217
    .line 1218
    :cond_0
    :goto_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 1221
    move-object v5, v1

    sget v6, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {v5, v6}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1222
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$color;->design_error:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1224
    :cond_1
    return-void

    .line 1213
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1216
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x1

    move v3, v5

    goto :goto_0
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V
    .locals 4

    .prologue
    .line 1850
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "delegate":Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 1851
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1853
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eq v2, v3, :cond_0

    .line 620
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    .line 622
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 623
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 625
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 626
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 629
    :cond_0
    return-void
.end method

.method updateCounter(I)V
    .locals 11

    .prologue
    .line 1164
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "length":I
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    move v2, v3

    .line 1165
    .local v2, "wasCounterOverflowed":Z
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1166
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1168
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    .line 1194
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eq v3, v4, :cond_0

    .line 1195
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 1196
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 1197
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 1199
    :cond_0
    return-void

    .line 1172
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1174
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1177
    :cond_2
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    if-le v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    .line 1178
    move v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eq v3, v4, :cond_3

    .line 1179
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    :goto_2
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1183
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v3, :cond_3

    .line 1184
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1188
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    move-object v4, v0

    .line 1189
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1188
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    move-object v4, v0

    .line 1191
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$string;->character_counter_content_description:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 1192
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1190
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1177
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1179
    :cond_5
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    goto :goto_2
.end method

.method updateEditTextBackground()V
    .locals 5

    .prologue
    .line 1373
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 1374
    .line 1404
    :goto_0
    return-void

    .line 1377
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1378
    .local v1, "editTextBackground":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 1379
    goto :goto_0

    .line 1382
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 1384
    move-object v2, v1

    invoke-static {v2}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1385
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1388
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1390
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 1392
    invoke-virtual {v3}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1391
    invoke-static {v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    .line 1390
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1404
    :goto_1
    goto :goto_0

    .line 1393
    :cond_3
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 1395
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1397
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1396
    invoke-static {v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    .line 1395
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 1401
    :cond_4
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 1402
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->refreshDrawableState()V

    goto :goto_1
.end method

.method updateLabelState(Z)V
    .locals 5

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move v1, p1

    .local v1, "animate":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    .line 753
    return-void
.end method

.method updateTextInputBoxState()V
    .locals 5

    .prologue
    .line 2000
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-nez v3, :cond_1

    .line 2001
    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    move v1, v3

    .line 2005
    .local v1, "hasFocus":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move v2, v3

    .line 2008
    .local v2, "isHovered":Z
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2009
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2010
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    iput v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    .line 2023
    :goto_3
    move v3, v2

    if-nez v3, :cond_2

    move v3, v1

    if-eqz v3, :cond_b

    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2024
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    iput v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 2028
    :goto_4
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 2030
    :cond_3
    goto :goto_0

    .line 2004
    .end local v1    # "hasFocus":Z
    .end local v2    # "isHovered":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2005
    .restart local v1    # "hasFocus":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 2011
    .restart local v2    # "isHovered":Z
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2012
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v4

    iput v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_3

    .line 2013
    :cond_7
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 2014
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    iput v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_3

    .line 2015
    :cond_8
    move v3, v1

    if-eqz v3, :cond_9

    .line 2016
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    iput v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_3

    .line 2017
    :cond_9
    move v3, v2

    if-eqz v3, :cond_a

    .line 2018
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    iput v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_3

    .line 2020
    :cond_a
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    iput v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_3

    .line 2026
    :cond_b
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    goto :goto_4
.end method
