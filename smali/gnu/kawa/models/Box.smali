.class public abstract Lgnu/kawa/models/Box;
.super Lgnu/kawa/models/Model;
.source "Box.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field cellSpacing:Lgnu/kawa/models/Viewable;

.field components:[Lgnu/kawa/models/Viewable;

.field numComponents:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Box;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lgnu/kawa/models/Viewable;)V
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Box;
    move-object v1, p1

    .local v1, "component":Lgnu/kawa/models/Viewable;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    move-object v2, v4

    .line 56
    .local v2, "arr":[Lgnu/kawa/models/Viewable;
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/models/Box;->numComponents:I

    move v3, v4

    .line 57
    .local v3, "n":I
    move v4, v3

    if-nez v4, :cond_1

    .line 58
    move-object v4, v0

    const/4 v5, 0x4

    new-array v5, v5, [Lgnu/kawa/models/Viewable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    iput-object v5, v4, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    .line 65
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    move v5, v3

    move-object v6, v1

    aput-object v6, v4, v5

    .line 66
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/kawa/models/Box;->numComponents:I

    .line 67
    return-void

    .line 59
    :cond_1
    move-object v4, v2

    array-length v4, v4

    move v5, v3

    if-gt v4, v5, :cond_0

    .line 61
    move-object v4, v0

    const/4 v5, 0x2

    move v6, v3

    mul-int/2addr v5, v6

    new-array v5, v5, [Lgnu/kawa/models/Viewable;

    iput-object v5, v4, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    .line 62
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    const/4 v7, 0x0

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    move-object v2, v4

    goto :goto_0
.end method

.method public abstract getAxis()I
.end method

.method public getCellSpacing()Lgnu/kawa/models/Viewable;
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Box;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Box;
    return-object v0
.end method

.method public final getComponent(I)Lgnu/kawa/models/Viewable;
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Box;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/models/Box;
    return-object v0
.end method

.method public final getComponentCount()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Box;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/models/Box;->numComponents:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/models/Box;
    return v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Box;
    move-object v1, p1

    .local v1, "display":Lgnu/kawa/models/Display;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/models/Display;->addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public setCellSpacing(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Box;
    move-object v1, p1

    .local v1, "cellSpacing":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/math/IntNum;

    if-nez v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 22
    :cond_0
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v2, v4

    .line 23
    .local v2, "size":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/models/Box;->getAxis()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/awt/Dimension;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/awt/Dimension;-><init>(II)V

    :goto_0
    move-object v3, v4

    .line 25
    .local v3, "dim":Ljava/awt/Dimension;
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lgnu/kawa/models/Spacer;->rigidArea(Ljava/awt/geom/Dimension2D;)Lgnu/kawa/models/Spacer;

    move-result-object v5

    iput-object v5, v4, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    .line 26
    .line 38
    .end local v2    # "size":I
    .end local v3    # "dim":Ljava/awt/Dimension;
    :goto_1
    return-void

    .line 23
    .restart local v2    # "size":I
    :cond_1
    new-instance v4, Ljava/awt/Dimension;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/awt/Dimension;-><init>(II)V

    goto :goto_0

    .line 37
    .end local v2    # "size":I
    :cond_2
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lgnu/kawa/models/Viewable;

    iput-object v5, v4, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    goto :goto_1
.end method
