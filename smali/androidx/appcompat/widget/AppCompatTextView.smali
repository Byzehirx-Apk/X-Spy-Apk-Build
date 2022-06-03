.class public Landroidx/appcompat/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/core/widget/AutoSizeableTextView;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private mPrecomputedTextFuture:Ljava/util/concurrent/Future;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const v6, 0x1010084

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 90
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 92
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 93
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 94
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 95
    return-void
.end method

.method private consumeTextFutureAndSetBlocking()V
    .locals 4

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 466
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    move-object v1, v2

    .line 467
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroidx/core/text/PrecomputedTextCompat;>;"
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 468
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/text/PrecomputedTextCompat;

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    .line 473
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroidx/core/text/PrecomputedTextCompat;>;"
    :cond_0
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v2

    :goto_1
    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 180
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    .line 181
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 183
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 184
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 186
    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_0

    .line 350
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    .line 356
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :goto_0
    return v0

    .line 352
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 353
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_0

    .line 331
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    .line 337
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :goto_0
    return v0

    .line 333
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 334
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 337
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_0

    .line 312
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    .line 318
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :goto_0
    return v0

    .line 314
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 315
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 318
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_0

    .line 369
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    .line 375
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :goto_0
    return-object v0

    .line 371
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 372
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object v0, v1

    goto :goto_0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_1

    .line 291
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 299
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :goto_1
    return v0

    .line 291
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 295
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_2

    .line 296
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeTextType()I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 299
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getFirstBaselineToTopHeight(Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getLastBaselineToBottomHeight(Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 138
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 166
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 478
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    return-object v0
.end method

.method public getTextMetricsParamsCompat()Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "outAttrs":Landroid/view/inputmethod/EditorInfo;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatHintHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextView;
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 191
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v6, :cond_0

    .line 192
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/AppCompatTextHelper;->onLayout(ZIIII)V

    .line 194
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 501
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/TextView;->onMeasure(II)V

    .line 502
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "lengthBefore":I
    move v4, p4

    .local v4, "lengthAfter":I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 210
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v5, :cond_0

    sget-boolean v5, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 213
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "autoSizeMinTextSize":I
    move v2, p2

    .local v2, "autoSizeMaxTextSize":I
    move v3, p3

    .local v3, "autoSizeStepGranularity":I
    move v4, p4

    .local v4, "unit":I
    sget-boolean v5, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v5, :cond_1

    .line 250
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v5, :cond_0

    .line 254
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 6
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "presetSizes":[I
    move v2, p2

    .local v2, "unit":I
    sget-boolean v3, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v3, :cond_1

    .line 272
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 275
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "autoSizeTextType":I
    sget-boolean v2, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v2, :cond_1

    .line 227
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v2, :cond_0

    .line 230
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 109
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 101
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 5

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "actionModeCallback":Landroid/view/ActionMode$Callback;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    .line 426
    invoke-static {v3, v4}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    .line 425
    invoke-super {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 427
    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "firstBaselineToTopHeight":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 387
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "lastBaselineToBottomHeight":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 397
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public setLineHeight(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "lineHeight":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 417
    return-void
.end method

.method public setPrecomputedText(Landroidx/core/text/PrecomputedTextCompat;)V
    .locals 4
    .param p1    # Landroidx/core/text/PrecomputedTextCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "precomputed":Landroidx/core/text/PrecomputedTextCompat;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V

    .line 461
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 151
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 153
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 172
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 173
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 175
    :cond_0
    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 4
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroidx/core/text/PrecomputedTextCompat;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 495
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->requestLayout()V

    .line 496
    return-void
.end method

.method public setTextMetricsParamsCompat(Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .locals 4
    .param p1    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move-object v1, p1

    .local v1, "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setTextMetricsParams(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat$Params;)V

    .line 448
    return-void
.end method

.method public setTextSize(IF)V
    .locals 6

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextView;
    move v1, p1

    .local v1, "unit":I
    move v2, p2

    .local v2, "size":F
    sget-boolean v3, Landroidx/appcompat/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v3, :cond_1

    .line 199
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 202
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSize(IF)V

    goto :goto_0
.end method
