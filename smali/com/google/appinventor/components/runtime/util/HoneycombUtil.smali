.class public Lcom/google/appinventor/components/runtime/util/HoneycombUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VIEWGROUP_MEASURED_HEIGHT_STATE_SHIFT:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static combineMeasuredStates(Landroid/view/ViewGroup;II)I
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static resolveSizeAndState(Landroid/view/ViewGroup;III)I
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public static viewSetRotate(Landroid/view/View;D)V
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 37
    return-void
.end method
