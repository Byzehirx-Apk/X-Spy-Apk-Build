.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/FlowLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;,
        Lcom/google/android/material/chip/ChipGroup$LayoutParams;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checkedId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

.field private chipSpacingHorizontal:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private chipSpacingVertical:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

.field private protectFromCheckedChange:Z

.field private singleSelection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->chipGroupStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    move-object v7, v0

    new-instance v8, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v8, v7, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    .line 95
    move-object v7, v0

    new-instance v8, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v8, v7, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    .line 98
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 99
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 112
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Lcom/google/android/material/R$styleable;->ChipGroup:[I

    move v10, v3

    sget v11, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ChipGroup:I

    const/4 v12, 0x0

    new-array v12, v12, [I

    .line 113
    invoke-static/range {v7 .. v12}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v4, v7

    .line 120
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacing:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    move v5, v7

    .line 121
    .local v5, "chipSpacing":I
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    move v10, v5

    .line 122
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 121
    invoke-virtual {v7, v8}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 123
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingVertical:I

    move v10, v5

    .line 124
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 123
    invoke-virtual {v7, v8}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 125
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->ChipGroup_singleLine:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 126
    move-object v7, v0

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->ChipGroup_singleSelection:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 127
    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->ChipGroup_checkedChip:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    move v6, v7

    .line 128
    .local v6, "checkedChip":I
    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 129
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 132
    :cond_0
    move-object v7, v4

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {v7, v8}, Lcom/google/android/material/internal/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 134
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/chip/ChipGroup;
    return v0
.end method

.method static synthetic access$400(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/chip/ChipGroup;
    return v0
.end method

.method static synthetic access$500(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/chip/ChipGroup;
    return v0
.end method

.method static synthetic access$600(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/chip/ChipGroup;
    return-object v0
.end method

.method private setCheckedId(I)V
    .locals 5

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "checkedId":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 298
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v2, :cond_0

    .line 299
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 301
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "checked":Z
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/material/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 305
    .local v3, "checkedView":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_0

    .line 306
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 307
    move-object v4, v3

    check-cast v4, Lcom/google/android/material/chip/Chip;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 308
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v5, v1

    instance-of v5, v5, Lcom/google/android/material/chip/Chip;

    if-eqz v5, :cond_1

    .line 176
    move-object v5, v1

    check-cast v5, Lcom/google/android/material/chip/Chip;

    move-object v4, v5

    .line 177
    .local v4, "chip":Lcom/google/android/material/chip/Chip;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v5, :cond_0

    .line 179
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 181
    :cond_0
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 185
    .end local v4    # "chip":Lcom/google/android/material/chip/Chip;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/google/android/material/internal/FlowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method

.method public check(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "id":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    if-ne v2, v3, :cond_0

    .line 237
    .line 249
    :goto_0
    return-void

    .line 240
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v2, :cond_1

    .line 241
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 244
    :cond_1
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 245
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 248
    :cond_2
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 249
    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/internal/FlowLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearCheck()V
    .locals 5

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 274
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 275
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 276
    .local v2, "child":Landroid/view/View;
    move-object v3, v2

    instance-of v3, v3, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 277
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/chip/Chip;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 282
    move-object v3, v0

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 283
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    new-instance v1, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 2
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChipSpacingHorizontal()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 2
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    return v0
.end method

.method public isSingleSelection()Z
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipGroup;
    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/internal/FlowLayout;->onFinishInflate()V

    .line 167
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 168
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 169
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    invoke-direct {v1, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "chipSpacing":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 315
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 316
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "chipSpacingHorizontal":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 332
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 333
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setItemSpacing(I)V

    .line 334
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 336
    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 341
    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    .line 321
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "chipSpacingVertical":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 352
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 353
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setLineSpacing(I)V

    .line 354
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 356
    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 361
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setFlexWrap(I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "flexWrap":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    .line 293
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move-object v1, p1

    .local v1, "listener":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v2

    .line 160
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "dividerMode":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setShowDividerVertical(I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "dividerMode":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setSingleLine(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 366
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 393
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 4

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup;
    move v1, p1

    .local v1, "singleSelection":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 380
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 382
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipGroup;->clearCheck()V

    .line 384
    :cond_0
    return-void
.end method
