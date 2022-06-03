.class final Lcom/google/android/material/textfield/IndicatorViewController;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# static fields
.field private static final CAPTION_OPACITY_FADE_ANIMATION_DURATION:I = 0xa7

.field private static final CAPTION_STATE_ERROR:I = 0x1

.field private static final CAPTION_STATE_HELPER_TEXT:I = 0x2

.field private static final CAPTION_STATE_NONE:I = 0x0

.field private static final CAPTION_TRANSLATE_Y_ANIMATION_DURATION:I = 0xd9

.field static final COUNTER_INDEX:I = 0x2

.field static final ERROR_INDEX:I = 0x0

.field static final HELPER_INDEX:I = 0x1


# instance fields
.field private captionAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private captionArea:Landroid/widget/FrameLayout;

.field private captionDisplayed:I

.field private captionToShow:I

.field private final captionTranslationYPx:F

.field private captionViewsAdded:I

.field private final context:Landroid/content/Context;

.field private errorEnabled:Z

.field private errorText:Ljava/lang/CharSequence;

.field private errorTextAppearance:I

.field private errorView:Landroid/widget/TextView;

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextEnabled:Z

.field private helperTextTextAppearance:I

.field private helperTextView:Landroid/widget/TextView;

.field private indicatorArea:Landroid/widget/LinearLayout;

.field private indicatorsAdded:I

.field private final textInputView:Lcom/google/android/material/textfield/TextInputLayout;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "textInputView":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 119
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 120
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 121
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    .line 123
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/textfield/IndicatorViewController;I)I
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    move v0, v2

    .end local v0    # "x0":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0
.end method

.method static synthetic access$102(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "x1":Landroid/animation/Animator;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    move-object v0, v2

    .end local v0    # "x0":Lcom/google/android/material/textfield/IndicatorViewController;
    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/textfield/IndicatorViewController;
    return-object v0
.end method

.method private canAdjustIndicatorPadding()Z
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move v2, p2

    .local v2, "captionEnabled":Z
    move-object v3, p3

    .local v3, "captionView":Landroid/widget/TextView;
    move/from16 v4, p4

    .local v4, "captionState":I
    move/from16 v5, p5

    .local v5, "captionToHide":I
    move/from16 v6, p6

    .local v6, "captionToShow":I
    move-object v7, v3

    if-eqz v7, :cond_0

    move v7, v2

    if-nez v7, :cond_1

    .line 292
    .line 302
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    move v7, v4

    move v8, v6

    if-eq v7, v8, :cond_2

    move v7, v4

    move v8, v5

    if-ne v7, v8, :cond_3

    .line 296
    :cond_2
    move-object v7, v1

    move-object v8, v0

    move-object v9, v3

    move v10, v6

    move v11, v4

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    .line 297
    :goto_1
    invoke-direct {v8, v9, v10}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 296
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 298
    move v7, v6

    move v8, v4

    if-ne v7, v8, :cond_3

    .line 299
    move-object v7, v1

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 302
    :cond_3
    goto :goto_0

    .line 296
    :cond_4
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 12

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "captionView":Landroid/widget/TextView;
    move v2, p2

    .local v2, "display":Z
    move v5, v2

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    move v3, v5

    .line 306
    .local v3, "endValue":F
    move-object v5, v1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v3

    aput v10, v8, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object v4, v5

    .line 307
    .local v4, "opacityAnimator":Landroid/animation/ObjectAnimator;
    move-object v5, v4

    const-wide/16 v6, 0xa7

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 308
    move-object v5, v4

    sget-object v6, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return-object v0

    .line 305
    .end local v3    # "endValue":F
    .end local v4    # "opacityAnimator":Landroid/animation/ObjectAnimator;
    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 10

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "captionView":Landroid/widget/TextView;
    move-object v3, v1

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    neg-float v8, v8

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 314
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object v2, v3

    .line 315
    .local v2, "translationYAnimator":Landroid/animation/ObjectAnimator;
    move-object v3, v2

    const-wide/16 v4, 0xd9

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 316
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return-object v0
.end method

.method private getCaptionViewFromDisplayState(I)Landroid/widget/TextView;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "captionDisplayState":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 339
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :goto_0
    return-object v0

    .line 334
    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    move-object v0, v2

    goto :goto_0

    .line 336
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    move-object v0, v2

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCaptionStateError(I)Z
    .locals 4

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "captionState":I
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 490
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 488
    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0

    .line 490
    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isCaptionStateHelperText(I)Z
    .locals 4

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "captionState":I
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 504
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 502
    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0

    .line 504
    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setCaptionViewVisibilities(II)V
    .locals 6

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "captionToHide":I
    move v2, p2

    .local v2, "captionToShow":I
    move v4, v1

    move v5, v2

    if-ne v4, v5, :cond_0

    .line 259
    .line 281
    :goto_0
    return-void

    .line 262
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 263
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v4

    move-object v3, v4

    .line 264
    .local v3, "captionViewToShow":Landroid/widget/TextView;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 265
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    move-object v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 270
    .end local v3    # "captionViewToShow":Landroid/widget/TextView;
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    .line 271
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v4

    move-object v3, v4

    .line 272
    .local v3, "captionViewDisplayed":Landroid/widget/TextView;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 273
    move-object v4, v3

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 276
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .end local v3    # "captionViewDisplayed":Landroid/widget/TextView;
    :cond_2
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 281
    goto :goto_0
.end method

.method private setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 5
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "captionView":Landroid/widget/TextView;
    move-object v2, p2

    .local v2, "typeface":Landroid/graphics/Typeface;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 526
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 528
    :cond_0
    return-void
.end method

.method private setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V
    .locals 5

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "indicatorsAdded":I
    move v3, v2

    if-nez v3, :cond_0

    .line 408
    move-object v3, v1

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 410
    :cond_0
    return-void
.end method

.method private shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "captionView":Landroid/widget/TextView;
    move-object v2, p2

    .local v2, "captionText":Ljava/lang/CharSequence;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 190
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    if-ne v3, v4, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 193
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 189
    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0

    .line 193
    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateCaptionViewsVisibility(IIZ)V
    .locals 17

    .prologue
    .line 201
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move/from16 v1, p1

    .local v1, "captionToHide":I
    move/from16 v2, p2

    .local v2, "captionToShow":I
    move/from16 v3, p3

    .local v3, "animate":Z
    move v8, v3

    if-eqz v8, :cond_0

    .line 202
    new-instance v8, Landroid/animation/AnimatorSet;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v8

    .line 203
    .local v4, "captionAnimator":Landroid/animation/AnimatorSet;
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    .line 204
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v8

    .line 206
    .local v5, "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v8, v0

    move-object v9, v5

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v12, 0x2

    move v13, v1

    move v14, v2

    invoke-direct/range {v8 .. v14}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 214
    move-object v8, v0

    move-object v9, v5

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v12, 0x1

    move v13, v1

    move v14, v2

    invoke-direct/range {v8 .. v14}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 222
    move-object v8, v4

    move-object v9, v5

    invoke-static {v8, v9}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 223
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v8

    move-object v6, v8

    .line 224
    .local v6, "captionViewToHide":Landroid/widget/TextView;
    move-object v8, v0

    move v9, v2

    invoke-direct {v8, v9}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v8

    move-object v7, v8

    .line 226
    .local v7, "captionViewToShow":Landroid/widget/TextView;
    move-object v8, v4

    new-instance v9, Lcom/google/android/material/textfield/IndicatorViewController$1;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move v12, v2

    move-object v13, v6

    move v14, v1

    move-object v15, v7

    invoke-direct/range {v10 .. v15}, Lcom/google/android/material/textfield/IndicatorViewController$1;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    move-object v8, v4

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 248
    .line 251
    .end local v4    # "captionAnimator":Landroid/animation/AnimatorSet;
    .end local v5    # "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v6    # "captionViewToHide":Landroid/widget/TextView;
    .end local v7    # "captionViewToShow":Landroid/widget/TextView;
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 252
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    move v9, v3

    invoke-virtual {v8, v9}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 253
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 254
    return-void

    .line 249
    :cond_0
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-direct {v8, v9, v10}, Lcom/google/android/material/textfield/IndicatorViewController;->setCaptionViewVisibilities(II)V

    goto :goto_0
.end method


# virtual methods
.method addIndicator(Landroid/widget/TextView;I)V
    .locals 13

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "indicator":Landroid/widget/TextView;
    move v2, p2

    .local v2, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-nez v5, :cond_0

    .line 360
    move-object v5, v0

    new-instance v6, Landroid/widget/LinearLayout;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 361
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 362
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 364
    move-object v5, v0

    new-instance v6, Landroid/widget/FrameLayout;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 365
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    const/4 v7, -0x1

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-instance v5, Landroidx/legacy/widget/Space;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 371
    .local v3, "spacer":Landroidx/legacy/widget/Space;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v4, v5

    .line 372
    .local v4, "spacerLp":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 375
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 379
    .end local v3    # "spacer":Landroidx/legacy/widget/Space;
    .end local v4    # "spacerLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 381
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    .line 386
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 388
    return-void

    .line 384
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method adjustIndicatorPadding()V
    .locals 6

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->canAdjustIndicatorPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 347
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 349
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x0

    .line 345
    invoke-static {v1, v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 352
    :cond_0
    return-void
.end method

.method cancelCaptionAnimator()V
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 322
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 324
    :cond_0
    return-void
.end method

.method errorIsDisplayed()Z
    .locals 3

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    invoke-direct {v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0
.end method

.method errorShouldBeShown()Z
    .locals 3

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    invoke-direct {v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0
.end method

.method getErrorText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return-object v0
.end method

.method getErrorViewCurrentTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getErrorViewTextColors()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHelperText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return-object v0
.end method

.method getHelperTextViewColors()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHelperTextViewCurrentTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method helperTextIsDisplayed()Z
    .locals 3

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    invoke-direct {v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0
.end method

.method helperTextShouldBeShown()Z
    .locals 3

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    invoke-direct {v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0
.end method

.method hideError()V
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 164
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 166
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 168
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 175
    :cond_0
    :goto_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v6, 0x0

    .line 176
    invoke-direct {v4, v5, v6}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 175
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 177
    return-void

    .line 172
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    goto :goto_0
.end method

.method hideHelperText()V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 142
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 143
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 145
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    .line 146
    invoke-direct {v4, v5, v6}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 145
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 147
    return-void
.end method

.method isCaptionView(I)Z
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isErrorEnabled()Z
    .locals 2

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0
.end method

.method isHelperTextEnabled()Z
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/IndicatorViewController;
    return v0
.end method

.method removeIndicator(Landroid/widget/TextView;I)V
    .locals 7

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "indicator":Landroid/widget/TextView;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 392
    .line 404
    :goto_0
    return-void

    .line 395
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    .line 396
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    .line 397
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    .line 398
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 402
    :goto_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 403
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    .line 404
    goto :goto_0

    .line 400
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method setErrorEnabled(Z)V
    .locals 7

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 415
    .line 439
    :goto_0
    return-void

    .line 419
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 421
    move v2, v1

    if-eqz v2, :cond_2

    .line 422
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 423
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    sget v3, Lcom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 424
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    .line 425
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 427
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 428
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 430
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 438
    :goto_1
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    .line 439
    goto :goto_0

    .line 432
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    .line 433
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 434
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 435
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 436
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    goto :goto_1
.end method

.method setErrorTextAppearance(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    .line 548
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 549
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 551
    :cond_0
    return-void
.end method

.method setErrorViewTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "textColors":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 542
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 544
    :cond_0
    return-void
.end method

.method setHelperTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    .line 571
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 572
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 574
    :cond_0
    return-void
.end method

.method setHelperTextEnabled(Z)V
    .locals 7

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 452
    .line 477
    :goto_0
    return-void

    .line 456
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 458
    move v2, v1

    if-eqz v2, :cond_2

    .line 459
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 460
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    sget v3, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 461
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    .line 462
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 464
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 467
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 468
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 476
    :goto_1
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    .line 477
    goto :goto_0

    .line 470
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->hideHelperText()V

    .line 471
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 472
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 473
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 474
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    goto :goto_1
.end method

.method setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "textColors":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 565
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 567
    :cond_0
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 5

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eq v2, v3, :cond_0

    .line 518
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    .line 519
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 520
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 522
    :cond_0
    return-void
.end method

.method showError(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "errorText":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 151
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 156
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 158
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    move-object v7, v1

    .line 159
    invoke-direct {v5, v6, v7}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 158
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 160
    return-void
.end method

.method showHelper(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/IndicatorViewController;
    move-object v1, p1

    .local v1, "helperText":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 127
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 132
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 134
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    move-object v7, v1

    .line 135
    invoke-direct {v5, v6, v7}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 134
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 136
    return-void
.end method
