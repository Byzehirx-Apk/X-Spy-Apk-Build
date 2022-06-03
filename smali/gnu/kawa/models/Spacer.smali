.class public Lgnu/kawa/models/Spacer;
.super Lgnu/kawa/models/Model;
.source "Spacer.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field maxSize:Ljava/awt/geom/Dimension2D;

.field minSize:Ljava/awt/geom/Dimension2D;

.field preferredSize:Ljava/awt/geom/Dimension2D;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Spacer;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method

.method public static rigidArea(II)Lgnu/kawa/models/Spacer;
    .locals 7

    .prologue
    .line 50
    move v0, p0

    .local v0, "width":I
    move v1, p1

    .local v1, "height":I
    new-instance v2, Ljava/awt/Dimension;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-static {v2}, Lgnu/kawa/models/Spacer;->rigidArea(Ljava/awt/geom/Dimension2D;)Lgnu/kawa/models/Spacer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "width":I
    return-object v0
.end method

.method public static rigidArea(Ljava/awt/geom/Dimension2D;)Lgnu/kawa/models/Spacer;
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "d":Ljava/awt/geom/Dimension2D;
    new-instance v2, Lgnu/kawa/models/Spacer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/models/Spacer;-><init>()V

    move-object v1, v2

    .line 42
    .local v1, "spacer":Lgnu/kawa/models/Spacer;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    .line 43
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    .line 44
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/kawa/models/Spacer;->preferredSize:Ljava/awt/geom/Dimension2D;

    .line 45
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "d":Ljava/awt/geom/Dimension2D;
    return-object v0
.end method


# virtual methods
.method public getMaximumSize()Ljava/awt/Dimension;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Spacer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    invoke-static {v1}, Lgnu/kawa/models/Display;->asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Spacer;
    return-object v0
.end method

.method public getMaximumSize2D()Ljava/awt/geom/Dimension2D;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Spacer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Spacer;
    return-object v0
.end method

.method public getMinimumSize()Ljava/awt/Dimension;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Spacer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    invoke-static {v1}, Lgnu/kawa/models/Display;->asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Spacer;
    return-object v0
.end method

.method public getMinimumSize2D()Ljava/awt/geom/Dimension2D;
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Spacer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Spacer;
    return-object v0
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Spacer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Spacer;->preferredSize:Ljava/awt/geom/Dimension2D;

    invoke-static {v1}, Lgnu/kawa/models/Display;->asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Spacer;
    return-object v0
.end method

.method public getPreferredSize2D()Ljava/awt/geom/Dimension2D;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Spacer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Spacer;->preferredSize:Ljava/awt/geom/Dimension2D;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Spacer;
    return-object v0
.end method

.method public isRigid()Z
    .locals 6

    .prologue
    .line 30
    move-object v1, p0

    .local v1, "this":Lgnu/kawa/models/Spacer;
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    if-ne v2, v3, :cond_0

    .line 31
    const/4 v2, 0x1

    move v1, v2

    .line 36
    .end local v1    # "this":Lgnu/kawa/models/Spacer;
    :goto_0
    return v1

    .line 32
    .restart local v1    # "this":Lgnu/kawa/models/Spacer;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v2}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v4}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v2}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v4}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 35
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Spacer;
    move-object v1, p1

    .local v1, "display":Lgnu/kawa/models/Display;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/models/Display;->addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V

    .line 56
    return-void
.end method
