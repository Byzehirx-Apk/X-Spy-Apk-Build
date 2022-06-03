.class public Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final COLLAPSE_MODE_OFF:I = 0x0

.field public static final COLLAPSE_MODE_PARALLAX:I = 0x2

.field public static final COLLAPSE_MODE_PIN:I = 0x1

.field private static final DEFAULT_PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field collapseMode:I

.field parallaxMult:F


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 1161
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1143
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1144
    move-object v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1162
    return-void
.end method

.method public constructor <init>(III)V
    .locals 8

    .prologue
    .line 1165
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "gravity":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1143
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1144
    move-object v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 1147
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "c":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1143
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1144
    move-object v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1149
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_Layout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 1150
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseMode:I

    const/4 v7, 0x0

    .line 1151
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1153
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier:I

    const/high16 v7, 0x3f000000    # 0.5f

    .line 1154
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 1153
    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->setParallaxMultiplier(F)V

    .line 1157
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1158
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1169
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1144
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1170
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 1173
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1143
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1144
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1174
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 1179
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move-object v1, p1

    .local v1, "source":Landroid/widget/FrameLayout$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 1143
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1144
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1180
    return-void
.end method


# virtual methods
.method public getCollapseMode()I
    .locals 2

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    return v0
.end method

.method public getParallaxMultiplier()F
    .locals 2

    .prologue
    .line 1222
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    return v0
.end method

.method public setCollapseMode(I)V
    .locals 4

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move v1, p1

    .local v1, "collapseMode":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1190
    return-void
.end method

.method public setParallaxMultiplier(F)V
    .locals 4

    .prologue
    .line 1212
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move v1, p1

    .local v1, "multiplier":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1213
    return-void
.end method
