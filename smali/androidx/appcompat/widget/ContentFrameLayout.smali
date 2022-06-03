.class public Landroidx/appcompat/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 69
    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, p1

    .local v1, "insets":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ContentFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 77
    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 196
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ContentFrameLayout;
    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 201
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ContentFrameLayout;
    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 186
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ContentFrameLayout;
    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 191
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ContentFrameLayout;
    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 176
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ContentFrameLayout;
    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 181
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ContentFrameLayout;
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 207
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v1, :cond_0

    .line 208
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    invoke-interface {v1}, Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    .line 210
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 215
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v1, :cond_0

    .line 216
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    invoke-interface {v1}, Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    .line 218
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/ContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    move-object v3, v12

    .line 100
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    move-object v12, v3

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v12, v13, :cond_8

    const/4 v12, 0x1

    :goto_0
    move v4, v12

    .line 102
    .local v4, "isPortrait":Z
    move v12, v1

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    move v5, v12

    .line 103
    .local v5, "widthMode":I
    move v12, v2

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    move v6, v12

    .line 105
    .local v6, "heightMode":I
    const/4 v12, 0x0

    move v7, v12

    .line 106
    .local v7, "fixedWidth":Z
    move v12, v5

    const/high16 v13, -0x80000000

    if-ne v12, v13, :cond_1

    .line 107
    move v12, v4

    if-eqz v12, :cond_9

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    :goto_1
    move-object v8, v12

    .line 108
    .local v8, "tvw":Landroid/util/TypedValue;
    move-object v12, v8

    if-eqz v12, :cond_1

    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_1

    .line 109
    const/4 v12, 0x0

    move v9, v12

    .line 110
    .local v9, "w":I
    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_a

    .line 111
    move-object v12, v8

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    move v9, v12

    .line 115
    :cond_0
    :goto_2
    move v12, v9

    if-lez v12, :cond_1

    .line 116
    move v12, v9

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    .line 117
    move v12, v1

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v10, v12

    .line 118
    .local v10, "widthSize":I
    move v12, v9

    move v13, v10

    .line 119
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    .line 118
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v1, v12

    .line 120
    const/4 v12, 0x1

    move v7, v12

    .line 125
    .end local v8    # "tvw":Landroid/util/TypedValue;
    .end local v9    # "w":I
    .end local v10    # "widthSize":I
    :cond_1
    move v12, v6

    const/high16 v13, -0x80000000

    if-ne v12, v13, :cond_3

    .line 126
    move v12, v4

    if-eqz v12, :cond_b

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    :goto_3
    move-object v8, v12

    .line 127
    .local v8, "tvh":Landroid/util/TypedValue;
    move-object v12, v8

    if-eqz v12, :cond_3

    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_3

    .line 128
    const/4 v12, 0x0

    move v9, v12

    .line 129
    .local v9, "h":I
    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_c

    .line 130
    move-object v12, v8

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    move v9, v12

    .line 134
    :cond_2
    :goto_4
    move v12, v9

    if-lez v12, :cond_3

    .line 135
    move v12, v9

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    .line 136
    move v12, v2

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v10, v12

    .line 137
    .local v10, "heightSize":I
    move v12, v9

    move v13, v10

    .line 138
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    .line 137
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v2, v12

    .line 143
    .end local v8    # "tvh":Landroid/util/TypedValue;
    .end local v9    # "h":I
    .end local v10    # "heightSize":I
    :cond_3
    move-object v12, v0

    move v13, v1

    move v14, v2

    invoke-super {v12, v13, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 145
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v12

    move v8, v12

    .line 146
    .local v8, "width":I
    const/4 v12, 0x0

    move v9, v12

    .line 148
    .local v9, "measure":Z
    move v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v1, v12

    .line 150
    move v12, v7

    if-nez v12, :cond_6

    move v12, v5

    const/high16 v13, -0x80000000

    if-ne v12, v13, :cond_6

    .line 151
    move v12, v4

    if-eqz v12, :cond_d

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    :goto_5
    move-object v10, v12

    .line 152
    .local v10, "tv":Landroid/util/TypedValue;
    move-object v12, v10

    if-eqz v12, :cond_6

    move-object v12, v10

    iget v12, v12, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_6

    .line 153
    const/4 v12, 0x0

    move v11, v12

    .line 154
    .local v11, "min":I
    move-object v12, v10

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_e

    .line 155
    move-object v12, v10

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    move v11, v12

    .line 159
    :cond_4
    :goto_6
    move v12, v11

    if-lez v12, :cond_5

    .line 160
    move v12, v11

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v11, v12

    .line 162
    :cond_5
    move v12, v8

    move v13, v11

    if-ge v12, v13, :cond_6

    .line 163
    move v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v1, v12

    .line 164
    const/4 v12, 0x1

    move v9, v12

    .line 169
    .end local v10    # "tv":Landroid/util/TypedValue;
    .end local v11    # "min":I
    :cond_6
    move v12, v9

    if-eqz v12, :cond_7

    .line 170
    move-object v12, v0

    move v13, v1

    move v14, v2

    invoke-super {v12, v13, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 172
    :cond_7
    return-void

    .line 100
    .end local v4    # "isPortrait":Z
    .end local v5    # "widthMode":I
    .end local v6    # "heightMode":I
    .end local v7    # "fixedWidth":Z
    .end local v8    # "width":I
    .end local v9    # "measure":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 107
    .restart local v4    # "isPortrait":Z
    .restart local v5    # "widthMode":I
    .restart local v6    # "heightMode":I
    .restart local v7    # "fixedWidth":Z
    :cond_9
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .line 112
    .local v8, "tvw":Landroid/util/TypedValue;
    .local v9, "w":I
    :cond_a
    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_0

    .line 113
    move-object v12, v8

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    move-object v14, v3

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    move v9, v12

    goto/16 :goto_2

    .line 126
    .end local v8    # "tvw":Landroid/util/TypedValue;
    .end local v9    # "w":I
    :cond_b
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .line 131
    .local v8, "tvh":Landroid/util/TypedValue;
    .local v9, "h":I
    :cond_c
    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_2

    .line 132
    move-object v12, v8

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    move-object v14, v3

    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    move v9, v12

    goto/16 :goto_4

    .line 151
    .local v8, "width":I
    .local v9, "measure":Z
    :cond_d
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    goto :goto_5

    .line 156
    .restart local v10    # "tv":Landroid/util/TypedValue;
    .restart local v11    # "min":I
    :cond_e
    move-object v12, v10

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_4

    .line 157
    move-object v12, v10

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    move-object v14, v3

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    move v11, v12

    goto :goto_6
.end method

.method public setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move-object v1, p1

    .local v1, "attachListener":Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    .line 81
    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ContentFrameLayout;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    .line 95
    :cond_0
    return-void
.end method
