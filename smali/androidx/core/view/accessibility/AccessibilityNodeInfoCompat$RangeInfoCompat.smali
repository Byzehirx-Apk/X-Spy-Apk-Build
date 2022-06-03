.class public Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeInfoCompat"
.end annotation


# static fields
.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2


# instance fields
.field final mInfo:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 800
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    move-object v1, p1

    .local v1, "info":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 801
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 802
    return-void
.end method

.method public static obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    .locals 11

    .prologue
    .line 790
    move v0, p0

    .local v0, "type":I
    move v1, p1

    .local v1, "min":F
    move v2, p2

    .local v2, "max":F
    move v3, p3

    .local v3, "current":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 791
    new-instance v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    .line 792
    invoke-static {v6, v7, v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    .line 794
    .end local v0    # "type":I
    :goto_0
    return-object v0

    .restart local v0    # "type":I
    :cond_0
    new-instance v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getCurrent()F
    .locals 3

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 811
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v1

    move v0, v1

    .line 813
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getMax()F
    .locals 3

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 824
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v1

    move v0, v1

    .line 826
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getMin()F
    .locals 3

    .prologue
    .line 836
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 837
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v1

    move v0, v1

    .line 839
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 854
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v1

    move v0, v1

    .line 856
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
