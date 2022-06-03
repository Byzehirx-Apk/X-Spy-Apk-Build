.class public Landroidx/constraintlayout/widget/Placeholder;
.super Landroid/view/View;
.source "Placeholder.java"


# instance fields
.field private mContent:Landroid/view/View;

.field private mContentId:I

.field private mEmptyVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 45
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 46
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 45
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 46
    move-object v3, v0

    const/4 v4, 0x4

    iput v4, v3, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 55
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
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

    invoke-direct {v4, v5, v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 45
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 46
    move-object v4, v0

    const/4 v5, 0x4

    iput v5, v4, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 60
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move v4, p4

    .local v4, "defStyleRes":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 45
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 46
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 65
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    invoke-super {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 71
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 72
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Placeholder;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v2, v6

    .line 73
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move v3, v6

    .line 74
    .local v3, "N":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 75
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    move v5, v6

    .line 76
    .local v5, "attr":I
    move v6, v5

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_content:I

    if-ne v6, v7, :cond_1

    .line 77
    move-object v6, v0

    move-object v7, v2

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_1
    move v6, v5

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_emptyVisibility:I

    if-ne v6, v7, :cond_0

    .line 80
    move-object v6, v0

    move-object v7, v2

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    goto :goto_1

    .line 85
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "attr":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/Placeholder;
    return-object v0
.end method

.method public getEmptyVisibility()I
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/Placeholder;
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object/from16 v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    move-object v9, v1

    const/16 v10, 0xdf

    const/16 v11, 0xdf

    const/16 v12, 0xdf

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 123
    new-instance v9, Landroid/graphics/Paint;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    move-object v2, v9

    .line 124
    .local v2, "paint":Landroid/graphics/Paint;
    move-object v9, v2

    const/16 v10, 0xff

    const/16 v11, 0xd2

    const/16 v12, 0xd2

    const/16 v13, 0xd2

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 125
    move-object v9, v2

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 126
    move-object v9, v2

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 128
    new-instance v9, Landroid/graphics/Rect;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v9

    .line 129
    .local v3, "r":Landroid/graphics/Rect;
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v9

    .line 130
    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    move v4, v9

    .line 132
    .local v4, "cHeight":I
    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move v5, v9

    .line 133
    .local v5, "cWidth":I
    move-object v9, v2

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 134
    const-string/jumbo v9, "?"

    move-object v6, v9

    .line 135
    .local v6, "text":Ljava/lang/String;
    move-object v9, v2

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 136
    move v9, v5

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    move v7, v9

    .line 137
    .local v7, "x":F
    move v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    move v8, v9

    .line 138
    .local v8, "y":F
    move-object v9, v1

    move-object v10, v6

    move v11, v7

    move v12, v8

    move-object v13, v2

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "r":Landroid/graphics/Rect;
    .end local v4    # "cHeight":I
    .end local v5    # "cWidth":I
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_0
    return-void
.end method

.method public setContentId(I)V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move v1, p1

    .local v1, "id":I
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 170
    .line 187
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 173
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 175
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v2, v3

    .line 176
    .local v2, "layoutParamsContent":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 177
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 180
    .end local v2    # "layoutParamsContent":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 181
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 182
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Placeholder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 183
    .local v2, "v":Landroid/view/View;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 184
    move-object v3, v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    goto :goto_0
.end method

.method public setEmptyVisibility(I)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move v1, p1

    .local v1, "visibility":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 96
    return-void
.end method

.method public updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object v1, p1

    .local v1, "container":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    if-nez v4, :cond_0

    .line 195
    .line 204
    :goto_0
    return-void

    .line 197
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Placeholder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v2, v4

    .line 198
    .local v2, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 199
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v3, v4

    .line 200
    .local v3, "layoutParamsContent":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v4, v3

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 201
    move-object v4, v2

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v5, v3

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 202
    move-object v4, v2

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v5, v3

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 203
    move-object v4, v3

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 204
    goto :goto_0
.end method

.method public updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Placeholder;
    move-object v1, p1

    .local v1, "container":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 148
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    .line 153
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 154
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 155
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 156
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v2, v3

    .line 157
    .local v2, "layoutParamsContent":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 158
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    .line 161
    .end local v2    # "layoutParamsContent":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    return-void
.end method
