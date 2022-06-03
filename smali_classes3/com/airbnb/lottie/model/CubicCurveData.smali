.class public Lcom/airbnb/lottie/model/CubicCurveData;
.super Ljava/lang/Object;
.source "CubicCurveData.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final controlPoint1:Landroid/graphics/PointF;

.field private final controlPoint2:Landroid/graphics/PointF;

.field private final vertex:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/CubicCurveData;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v1, v0

    new-instance v2, Landroid/graphics/PointF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 16
    move-object v1, v0

    new-instance v2, Landroid/graphics/PointF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 17
    move-object v1, v0

    new-instance v2, Landroid/graphics/PointF;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/CubicCurveData;
    move-object v1, p1

    .local v1, "controlPoint1":Landroid/graphics/PointF;
    move-object v2, p2

    .local v2, "controlPoint2":Landroid/graphics/PointF;
    move-object v3, p3

    .local v3, "vertex":Landroid/graphics/PointF;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 22
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 23
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 24
    return-void
.end method


# virtual methods
.method public getControlPoint1()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/CubicCurveData;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/CubicCurveData;
    return-object v0
.end method

.method public getControlPoint2()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/CubicCurveData;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/CubicCurveData;
    return-object v0
.end method

.method public getVertex()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/CubicCurveData;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/CubicCurveData;
    return-object v0
.end method

.method public setControlPoint1(FF)V
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/CubicCurveData;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 28
    return-void
.end method

.method public setControlPoint2(FF)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/CubicCurveData;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 36
    return-void
.end method

.method public setVertex(FF)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/CubicCurveData;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 44
    return-void
.end method
