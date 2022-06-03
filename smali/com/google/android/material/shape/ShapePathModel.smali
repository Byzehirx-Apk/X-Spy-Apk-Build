.class public Lcom/google/android/material/shape/ShapePathModel;
.super Ljava/lang/Object;
.source "ShapePathModel.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# static fields
.field private static final DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

.field private static final DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topRightCorner:Lcom/google/android/material/shape/CornerTreatment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/material/shape/CornerTreatment;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

    .line 28
    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 42
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 43
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 44
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 45
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 46
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 47
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 48
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v2, v1, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 49
    return-void
.end method


# virtual methods
.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/ShapePathModel;
    return-object v0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/ShapePathModel;
    return-object v0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/ShapePathModel;
    return-object v0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/ShapePathModel;
    return-object v0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/ShapePathModel;
    return-object v0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/ShapePathModel;
    return-object v0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/ShapePathModel;
    return-object v0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/shape/ShapePathModel;
    return-object v0
.end method

.method public setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "cornerTreatment":Lcom/google/android/material/shape/CornerTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 58
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 59
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 60
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 61
    return-void
.end method

.method public setAllEdges(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "edgeTreatment":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 70
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 71
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 72
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 73
    return-void
.end method

.method public setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "bottomEdge":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 237
    return-void
.end method

.method public setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "bottomLeftCorner":Lcom/google/android/material/shape/CornerTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 183
    return-void
.end method

.method public setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "bottomRightCorner":Lcom/google/android/material/shape/CornerTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 165
    return-void
.end method

.method public setCornerTreatments(Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "topLeftCorner":Lcom/google/android/material/shape/CornerTreatment;
    move-object v2, p2

    .local v2, "topRightCorner":Lcom/google/android/material/shape/CornerTreatment;
    move-object v3, p3

    .local v3, "bottomRightCorner":Lcom/google/android/material/shape/CornerTreatment;
    move-object v4, p4

    .local v4, "bottomLeftCorner":Lcom/google/android/material/shape/CornerTreatment;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 89
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 90
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 91
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 92
    return-void
.end method

.method public setEdgeTreatments(Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "leftEdge":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v2, p2

    .local v2, "topEdge":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v3, p3

    .local v3, "rightEdge":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v4, p4

    .local v4, "bottomEdge":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 108
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 109
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 110
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 111
    return-void
.end method

.method public setLeftEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "leftEdge":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 255
    return-void
.end method

.method public setRightEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "rightEdge":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 219
    return-void
.end method

.method public setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "topEdge":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 201
    return-void
.end method

.method public setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "topLeftCorner":Lcom/google/android/material/shape/CornerTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 129
    return-void
.end method

.method public setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/ShapePathModel;
    move-object v1, p1

    .local v1, "topRightCorner":Lcom/google/android/material/shape/CornerTreatment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 147
    return-void
.end method
