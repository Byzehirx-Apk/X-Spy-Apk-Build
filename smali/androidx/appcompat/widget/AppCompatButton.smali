.class public Landroidx/appcompat/widget/AppCompatButton;
.super Landroid/widget/Button;
.source "AppCompatButton.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/core/widget/AutoSizeableTextView;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->buttonStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
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

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 74
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 76
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 77
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 78
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 79
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Button;->drawableStateChanged()V

    .line 156
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    .line 157
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 159
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 160
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 162
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
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_0

    .line 322
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    .line 328
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    return v0

    .line 324
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 325
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 328
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
    .line 305
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_0

    .line 306
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    .line 312
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    return v0

    .line 308
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 309
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 312
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
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_0

    .line 290
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    .line 296
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    return v0

    .line 292
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 293
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 296
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
    .line 337
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_0

    .line 338
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    .line 344
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    return-object v0

    .line 340
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 341
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 344
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
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    sget-boolean v1, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_1

    .line 272
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Button;->getAutoSizeTextType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 280
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :goto_1
    return v0

    .line 272
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 276
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v1, :cond_2

    .line 277
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeTextType()I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 280
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
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
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 122
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
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
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 150
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatButton;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 175
    move-object v2, v1

    const-class v3, Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 181
    move-object v2, v1

    const-class v3, Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
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

    invoke-super/range {v6 .. v11}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 187
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v6, :cond_0

    .line 188
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/AppCompatTextHelper;->onLayout(ZIIII)V

    .line 190
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
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

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 206
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v5, :cond_0

    sget-boolean v5, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 209
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
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move v1, p1

    .local v1, "autoSizeMinTextSize":I
    move v2, p2

    .local v2, "autoSizeMaxTextSize":I
    move v3, p3

    .local v3, "autoSizeStepGranularity":I
    move v4, p4

    .local v4, "unit":I
    sget-boolean v5, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v5, :cond_1

    .line 238
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v5, :cond_0

    .line 242
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

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
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "presetSizes":[I
    move v2, p2

    .local v2, "unit":I
    sget-boolean v3, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v3, :cond_1

    .line 256
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 259
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

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
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move v1, p1

    .local v1, "autoSizeTextType":I
    sget-boolean v2, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v2, :cond_1

    .line 219
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v2, :cond_0

    .line 222
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
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
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 84
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 85
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 5

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "actionModeCallback":Landroid/view/ActionMode$Callback;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    .line 369
    invoke-static {v3, v4}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    .line 368
    invoke-super {v2, v3}, Landroid/widget/Button;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 370
    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move v1, p1

    .local v1, "allCaps":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v2, :cond_0

    .line 358
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 360
    :cond_0
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
    .line 106
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 107
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 109
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
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 135
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 137
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 167
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 170
    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 6

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatButton;
    move v1, p1

    .local v1, "unit":I
    move v2, p2

    .local v2, "size":F
    sget-boolean v3, Landroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v3, :cond_1

    .line 195
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 198
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSize(IF)V

    goto :goto_0
.end method
