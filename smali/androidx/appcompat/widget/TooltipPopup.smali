.class Landroidx/appcompat/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipPopup;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v2, v0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 54
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 55
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    .line 56
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    .line 59
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 61
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$layout;->abc_tooltip:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    .line 62
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    sget v4, Landroidx/appcompat/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 64
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 66
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3ea

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 67
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 68
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 70
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v3, Landroidx/appcompat/R$style;->Animation_AppCompat_Tooltip:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 71
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x18

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 73
    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 25

    .prologue
    .line 104
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/TooltipPopup;
    move-object/from16 v3, p1

    .local v3, "anchorView":Landroid/view/View;
    move/from16 v4, p2

    .local v4, "anchorX":I
    move/from16 v5, p3

    .local v5, "anchorY":I
    move/from16 v6, p4

    .local v6, "fromTouch":Z
    move-object/from16 v7, p5

    .local v7, "outParams":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v18, v7

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 105
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v8, v18

    .line 109
    .local v8, "tooltipPreciseAnchorThreshold":I
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 111
    move/from16 v18, v4

    move/from16 v9, v18

    .line 119
    .local v9, "offsetX":I
    :goto_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 121
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v12, v18

    .line 123
    .local v12, "offsetExtra":I
    move/from16 v18, v5

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v10, v18

    .line 124
    .local v10, "offsetBelow":I
    move/from16 v18, v5

    move/from16 v19, v12

    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 131
    .end local v12    # "offsetExtra":I
    .local v11, "offsetAbove":I
    :goto_1
    move-object/from16 v18, v7

    const/16 v19, 0x31

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 133
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move/from16 v19, v6

    if-eqz v19, :cond_2

    sget v19, Landroidx/appcompat/R$dimen;->tooltip_y_offset_touch:I

    :goto_2
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v12, v18

    .line 136
    .local v12, "tooltipOffset":I
    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroidx/appcompat/widget/TooltipPopup;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v13, v18

    .line 137
    .local v13, "appView":Landroid/view/View;
    move-object/from16 v18, v13

    if-nez v18, :cond_3

    .line 138
    const-string/jumbo v18, "TooltipPopup"

    const-string/jumbo v19, "Cannot find app view"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 139
    .line 184
    :goto_3
    return-void

    .line 114
    .end local v9    # "offsetX":I
    .end local v10    # "offsetBelow":I
    .end local v11    # "offsetAbove":I
    .end local v12    # "tooltipOffset":I
    .end local v13    # "appView":Landroid/view/View;
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v9, v18

    .restart local v9    # "offsetX":I
    goto :goto_0

    .line 127
    :cond_1
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v10, v18

    .line 128
    .restart local v10    # "offsetBelow":I
    const/16 v18, 0x0

    move/from16 v11, v18

    .restart local v11    # "offsetAbove":I
    goto :goto_1

    .line 133
    :cond_2
    sget v19, Landroidx/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    goto :goto_2

    .line 141
    .restart local v12    # "tooltipOffset":I
    .restart local v13    # "appView":Landroid/view/View;
    :cond_3
    move-object/from16 v18, v13

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 142
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-gez v18, :cond_4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    if-gez v18, :cond_4

    .line 145
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v14, v18

    .line 147
    .local v14, "res":Landroid/content/res/Resources;
    move-object/from16 v18, v14

    const-string/jumbo v19, "status_bar_height"

    const-string/jumbo v20, "dimen"

    const-string/jumbo v21, "android"

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v16, v18

    .line 148
    .local v16, "resourceId":I
    move/from16 v18, v16

    if-eqz v18, :cond_5

    .line 149
    move-object/from16 v18, v14

    move/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v15, v18

    .line 153
    .local v15, "statusBarHeight":I
    :goto_4
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v17, v18

    .line 154
    .local v17, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v20, v15

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move-object/from16 v22, v17

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "statusBarHeight":I
    .end local v16    # "resourceId":I
    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    :cond_4
    move-object/from16 v18, v13

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 158
    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 159
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v23, v18

    move/from16 v24, v19

    move-object/from16 v18, v23

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    aget v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-int v20, v20, v21

    aput v20, v18, v19

    .line 160
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v23, v18

    move/from16 v24, v19

    move-object/from16 v18, v23

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    aget v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-int v20, v20, v21

    aput v20, v18, v19

    .line 163
    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v20, v9

    add-int v19, v19, v20

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 165
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v14, v18

    .line 166
    .local v14, "spec":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v14

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 167
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v15, v18

    .line 169
    .local v15, "tooltipHeight":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v12

    sub-int v18, v18, v19

    move/from16 v19, v15

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 170
    .local v16, "yAbove":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v19, v10

    add-int v18, v18, v19

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v17, v18

    .line 171
    .local v17, "yBelow":I
    move/from16 v18, v6

    if-eqz v18, :cond_7

    .line 172
    move/from16 v18, v16

    if-ltz v18, :cond_6

    .line 173
    move-object/from16 v18, v7

    move/from16 v19, v16

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 184
    :goto_5
    goto/16 :goto_3

    .line 151
    .end local v15    # "tooltipHeight":I
    .end local v17    # "yBelow":I
    .local v14, "res":Landroid/content/res/Resources;
    .local v16, "resourceId":I
    :cond_5
    const/16 v18, 0x0

    move/from16 v15, v18

    .local v15, "statusBarHeight":I
    goto/16 :goto_4

    .line 175
    .local v14, "spec":I
    .local v15, "tooltipHeight":I
    .local v16, "yAbove":I
    .restart local v17    # "yBelow":I
    :cond_6
    move-object/from16 v18, v7

    move/from16 v19, v17

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    .line 178
    :cond_7
    move/from16 v18, v17

    move/from16 v19, v15

    add-int v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    .line 179
    move-object/from16 v18, v7

    move/from16 v19, v17

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    .line 181
    :cond_8
    move-object/from16 v18, v7

    move/from16 v19, v16

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5
.end method

.method private static getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 6

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "anchorView":Landroid/view/View;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 188
    .local v1, "rootView":Landroid/view/View;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v2, v4

    .line 189
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v2

    instance-of v4, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 193
    move-object v4, v1

    move-object v0, v4

    .line 207
    .end local v0    # "anchorView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 197
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v3, v4

    .line 198
    .local v3, "context":Landroid/content/Context;
    :goto_1
    move-object v4, v3

    instance-of v4, v4, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_2

    .line 199
    move-object v4, v3

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 200
    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 202
    :cond_1
    move-object v4, v3

    check-cast v4, Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 207
    :cond_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipPopup;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object v1, v2

    .line 95
    .local v1, "wm":Landroid/view/WindowManager;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 96
    goto :goto_0
.end method

.method isShowing()Z
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipPopup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/TooltipPopup;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/TooltipPopup;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 13

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipPopup;
    move-object v1, p1

    .local v1, "anchorView":Landroid/view/View;
    move v2, p2

    .local v2, "anchorX":I
    move/from16 v3, p3

    .local v3, "anchorY":I
    move/from16 v4, p4

    .local v4, "fromTouch":Z
    move-object/from16 v5, p5

    .local v5, "tooltipText":Ljava/lang/CharSequence;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    .line 81
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v7 .. v12}, Landroidx/appcompat/widget/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 85
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    move-object v6, v7

    .line 86
    .local v6, "wm":Landroid/view/WindowManager;
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v8, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method
