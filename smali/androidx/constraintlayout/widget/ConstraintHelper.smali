.class public abstract Landroidx/constraintlayout/widget/ConstraintHelper;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field protected mCount:I

.field protected mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

.field protected mIds:[I

.field private mReferenceIds:Ljava/lang/String;

.field protected mUseViewMeasure:Z

.field protected myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    move-object v2, v0

    const/16 v3, 0x20

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    move-object v3, v0

    const/16 v4, 0x20

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 57
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    .line 71
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 72
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
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

    .line 40
    move-object v4, v0

    const/16 v5, 0x20

    new-array v5, v5, [I

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 57
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    .line 77
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 78
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private addID(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v1, p1

    .local v1, "idString":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 169
    .line 201
    :goto_0
    return-void

    .line 171
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 172
    goto :goto_0

    .line 174
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 175
    const/4 v5, 0x0

    move v2, v5

    .line 177
    .local v2, "tag":I
    :try_start_0
    const-class v5, Landroidx/constraintlayout/widget/R$id;

    move-object v3, v5

    .line 178
    .local v3, "res":Ljava/lang/Class;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v4, v5

    .line 179
    .local v4, "field":Ljava/lang/reflect/Field;
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v2, v5

    .line 183
    .line 184
    .end local v3    # "res":Ljava/lang/Class;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :goto_1
    move v5, v2

    if-nez v5, :cond_2

    .line 185
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v1

    const-string/jumbo v7, "id"

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 185
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 188
    :cond_2
    move v5, v2

    if-nez v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_3

    .line 189
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v5

    .line 190
    .local v3, "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 191
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 192
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v5

    .line 196
    .end local v3    # "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    move v5, v2

    if-eqz v5, :cond_4

    .line 197
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setTag(ILjava/lang/Object;)V

    .line 201
    :goto_2
    goto :goto_0

    .line 181
    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_1

    .line 199
    :cond_4
    const-string/jumbo v5, "ConstraintHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find id of \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_2
.end method

.method private setIds(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v1, p1

    .local v1, "idList":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 208
    .line 220
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 212
    .local v2, "begin":I
    :goto_1
    move-object v4, v1

    const/16 v5, 0x2c

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v3, v4

    .line 213
    .local v3, "end":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 214
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 215
    .line 220
    goto :goto_0

    .line 217
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 218
    move v4, v3

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 219
    goto :goto_1
.end method


# virtual methods
.method public getReferencedIds()[I
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 86
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v2, v6

    .line 87
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move v3, v6

    .line 88
    .local v3, "N":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 89
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    move v5, v6

    .line 90
    .local v5, "attr":I
    move v6, v5

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v6, v7, :cond_0

    .line 91
    move-object v6, v0

    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 92
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 88
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "attr":I
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    if-eqz v3, :cond_0

    .line 143
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/View;->onMeasure(II)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setReferencedIds([I)V
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v1, p1

    .local v1, "ids":[I
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 112
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 113
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->setTag(ILjava/lang/Object;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move v1, p1

    .local v1, "tag":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 123
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 125
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    move v5, v1

    aput v5, v3, v4

    .line 126
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 127
    return-void
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .prologue
    .line 253
    return-void
.end method

.method public updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .prologue
    .line 261
    return-void
.end method

.method public updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 8

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v1, p1

    .local v1, "container":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 232
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    if-nez v5, :cond_1

    .line 233
    .line 243
    :goto_0
    return-void

    .line 235
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/Helper;->removeAllIds()V

    .line 236
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v5, v6, :cond_3

    .line 237
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    move v6, v2

    aget v5, v5, v6

    move v3, v5

    .line 238
    .local v3, "id":I
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 239
    .local v4, "view":Landroid/view/View;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 240
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Helper;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 236
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    .end local v3    # "id":I
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    goto :goto_0
.end method

.method public validateParams()V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    if-nez v3, :cond_0

    .line 155
    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v1, v3

    .line 158
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v1

    instance-of v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v3, :cond_1

    .line 159
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v2, v3

    .line 160
    .local v2, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 162
    .end local v2    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    goto :goto_0
.end method
