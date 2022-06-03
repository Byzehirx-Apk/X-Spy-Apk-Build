.class public Landroidx/constraintlayout/widget/Constraints$LayoutParams;
.super Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public elevation:F

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 67
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 91
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v3, v7

    .line 92
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    move v4, v7

    .line 93
    .local v4, "N":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_c

    .line 94
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    move v6, v7

    .line 95
    .local v6, "attr":I
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    if-ne v7, v8, :cond_1

    .line 96
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 93
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    :cond_1
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    if-ne v7, v8, :cond_2

    .line 98
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 99
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    goto :goto_1

    .line 100
    :cond_2
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    if-ne v7, v8, :cond_3

    .line 101
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    goto :goto_1

    .line 102
    :cond_3
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    if-ne v7, v8, :cond_4

    .line 103
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    goto :goto_1

    .line 104
    :cond_4
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    if-ne v7, v8, :cond_5

    .line 105
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    goto :goto_1

    .line 106
    :cond_5
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    if-ne v7, v8, :cond_6

    .line 107
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    goto :goto_1

    .line 108
    :cond_6
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

    if-ne v7, v8, :cond_7

    .line 109
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    goto :goto_1

    .line 110
    :cond_7
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    if-ne v7, v8, :cond_8

    .line 111
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    goto/16 :goto_1

    .line 112
    :cond_8
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    if-ne v7, v8, :cond_9

    .line 113
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    goto/16 :goto_1

    .line 114
    :cond_9
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    if-ne v7, v8, :cond_a

    .line 115
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    goto/16 :goto_1

    .line 116
    :cond_a
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    if-ne v7, v8, :cond_b

    .line 117
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    goto/16 :goto_1

    .line 118
    :cond_b
    move v7, v6

    sget v8, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    if-ne v7, v8, :cond_0

    .line 119
    move-object v7, v0

    move-object v8, v3

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    goto/16 :goto_1

    .line 122
    .end local v6    # "attr":I
    :cond_c
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 67
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 87
    return-void
.end method
