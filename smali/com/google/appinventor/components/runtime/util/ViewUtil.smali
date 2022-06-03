.class public final Lcom/google/appinventor/components/runtime/util/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static calculatePixels(Landroid/view/View;I)I
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    move v3, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v0, v2

    return v0
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 202
    return-void
.end method

.method public static setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 186
    return-void
.end method

.method public static setChildHeightForHorizontalLayout(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 70
    move-object v2, v4

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 71
    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v3

    .line 72
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 80
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 83
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 84
    .line 87
    :goto_1
    return-void

    .line 74
    :pswitch_0
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 75
    goto :goto_0

    .line 77
    :pswitch_1
    move-object v3, v2

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 78
    goto :goto_0

    .line 85
    :cond_0
    const-string/jumbo v3, "ViewUtil"

    const-string/jumbo v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 87
    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForTableLayout(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 161
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 162
    move-object v2, v4

    instance-of v3, v3, Landroid/widget/TableRow$LayoutParams;

    if-eqz v3, :cond_0

    .line 163
    move-object v3, v2

    check-cast v3, Landroid/widget/TableRow$LayoutParams;

    move-object v2, v3

    .line 164
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 172
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 175
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 176
    .line 179
    :goto_1
    return-void

    .line 166
    :pswitch_0
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 167
    goto :goto_0

    .line 169
    :pswitch_1
    move-object v3, v2

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 170
    goto :goto_0

    .line 177
    :cond_0
    const-string/jumbo v3, "ViewUtil"

    const-string/jumbo v4, "The view does not have table layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 179
    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForVerticalLayout(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 117
    move-object v2, v4

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 118
    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v3

    .line 119
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 129
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 130
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 133
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 134
    .line 137
    :goto_1
    return-void

    .line 121
    :pswitch_0
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 122
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    goto :goto_0

    .line 125
    :pswitch_1
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 126
    move-object v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    goto :goto_0

    .line 135
    :cond_0
    const-string/jumbo v3, "ViewUtil"

    const-string/jumbo v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 137
    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForHorizontalLayout(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 44
    move-object v2, v4

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 45
    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v3

    .line 46
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 56
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 57
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 60
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 61
    .line 64
    :goto_1
    return-void

    .line 48
    :pswitch_0
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 49
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50
    goto :goto_0

    .line 52
    :pswitch_1
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 53
    move-object v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 54
    goto :goto_0

    .line 62
    :cond_0
    const-string/jumbo v3, "ViewUtil"

    const-string/jumbo v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 64
    goto :goto_1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForTableLayout(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 141
    move-object v2, v4

    instance-of v3, v3, Landroid/widget/TableRow$LayoutParams;

    if-eqz v3, :cond_0

    .line 142
    move-object v3, v2

    check-cast v3, Landroid/widget/TableRow$LayoutParams;

    move-object v2, v3

    .line 143
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 151
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 154
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 155
    .line 158
    :goto_1
    return-void

    .line 145
    :pswitch_0
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 146
    goto :goto_0

    .line 148
    :pswitch_1
    move-object v3, v2

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 149
    goto :goto_0

    .line 156
    :cond_0
    const-string/jumbo v3, "ViewUtil"

    const-string/jumbo v4, "The view does not have table layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 158
    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForVerticalLayout(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 93
    move-object v2, v4

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 94
    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v3

    .line 95
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 103
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 107
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 108
    .line 111
    :goto_1
    return-void

    .line 97
    :pswitch_0
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 98
    goto :goto_0

    .line 100
    :pswitch_1
    move-object v3, v2

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 101
    goto :goto_0

    .line 109
    :cond_0
    const-string/jumbo v3, "ViewUtil"

    const-string/jumbo v4, "The view does not have linear layout parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 111
    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 194
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 196
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 197
    return-void
.end method

.method public static setShape(Landroid/view/View;IIZ)V
    .locals 9

    .prologue
    .line 206
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 207
    move-object v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 209
    move-object v5, v4

    move v6, v3

    if-eqz v6, :cond_0

    const/high16 v6, 0x41c80000    # 25.0f

    :goto_0
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 210
    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 211
    move-object v5, v4

    const/4 v6, 0x3

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 212
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    return-void

    .line 209
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
