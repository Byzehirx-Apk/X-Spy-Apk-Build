.class public Landroidx/constraintlayout/solver/widgets/WidgetContainer;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 26
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 26
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 26
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public static getBounds(Ljava/util/ArrayList;)Landroidx/constraintlayout/solver/widgets/Rectangle;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)",
            "Landroidx/constraintlayout/solver/widgets/Rectangle;"
        }
    .end annotation

    .prologue
    .line 205
    move-object/from16 v0, p0

    .local v0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    new-instance v9, Landroidx/constraintlayout/solver/widgets/Rectangle;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    move-object v1, v9

    .line 206
    .local v1, "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 207
    move-object v9, v1

    move-object v0, v9

    .line 229
    .end local v0    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    :goto_0
    return-object v0

    .line 209
    .restart local v0    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    :cond_0
    const v9, 0x7fffffff

    move v2, v9

    .line 210
    .local v2, "minX":I
    const/4 v9, 0x0

    move v3, v9

    .line 211
    .local v3, "maxX":I
    const v9, 0x7fffffff

    move v4, v9

    .line 212
    .local v4, "minY":I
    const/4 v9, 0x0

    move v5, v9

    .line 213
    .local v5, "maxY":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v9

    .local v7, "widgetsSize":I
    :goto_1
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_5

    .line 214
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v8, v9

    .line 215
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v9

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 216
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v9

    move v2, v9

    .line 218
    :cond_1
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v9

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 219
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v9

    move v4, v9

    .line 221
    :cond_2
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    move v10, v3

    if-le v9, v10, :cond_3

    .line 222
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    move v3, v9

    .line 224
    :cond_3
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    move v10, v5

    if-le v9, v10, :cond_4

    .line 225
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    move v5, v9

    .line 213
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 228
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    move-object v9, v1

    move v10, v2

    move v11, v4

    move v12, v3

    move v13, v2

    sub-int/2addr v12, v13

    move v13, v5

    move v14, v4

    sub-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 229
    move-object v9, v1

    move-object v0, v9

    goto :goto_0
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 73
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 74
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    move-object v2, v3

    .line 75
    .local v2, "container":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 77
    .end local v2    # "container":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 78
    return-void
.end method

.method public varargs add([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v1, p1

    .local v1, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 87
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 88
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public findWidget(FF)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 15

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    const/4 v12, 0x0

    move-object v3, v12

    .line 146
    .local v3, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v12

    move v4, v12

    .line 147
    .local v4, "l":I
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v12

    move v5, v12

    .line 148
    .local v5, "t":I
    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move v6, v12

    .line 149
    .local v6, "r":I
    move v12, v5

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move v7, v12

    .line 150
    .local v7, "b":I
    move v12, v1

    move v13, v4

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_0

    move v12, v1

    move v13, v6

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_0

    move v12, v2

    move v13, v5

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_0

    move v12, v2

    move v13, v7

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_0

    .line 151
    move-object v12, v0

    move-object v3, v12

    .line 153
    :cond_0
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v9, v12

    .local v9, "mChildrenSize":I
    :goto_0
    move v12, v8

    move v13, v9

    if-ge v12, v13, :cond_3

    .line 154
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v12

    .line 155
    .local v10, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v12, v10

    instance-of v12, v12, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v12, :cond_2

    .line 156
    move-object v12, v10

    check-cast v12, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    move v13, v1

    move v14, v2

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->findWidget(FF)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v12

    move-object v11, v12

    .line 157
    .local v11, "f":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v12, v11

    if-eqz v12, :cond_1

    .line 158
    move-object v12, v11

    move-object v3, v12

    .line 160
    .line 153
    .end local v11    # "f":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 161
    :cond_2
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v12

    move v4, v12

    .line 162
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v12

    move v5, v12

    .line 163
    move v12, v4

    move-object v13, v10

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move v6, v12

    .line 164
    move v12, v5

    move-object v13, v10

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move v7, v12

    .line 165
    move v12, v1

    move v13, v4

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    move v12, v1

    move v13, v6

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1

    move v12, v2

    move v13, v5

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    move v12, v2

    move v13, v7

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1

    .line 166
    move-object v12, v10

    move-object v3, v12

    goto :goto_1

    .line 170
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    move-object v12, v3

    move-object v0, v12

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    return-object v0
.end method

.method public findWidgets(IIII)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v11

    .line 184
    .local v5, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    new-instance v11, Landroidx/constraintlayout/solver/widgets/Rectangle;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    move-object v6, v11

    .line 185
    .local v6, "area":Landroidx/constraintlayout/solver/widgets/Rectangle;
    move-object v11, v6

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 186
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v8, v11

    .local v8, "mChildrenSize":I
    :goto_0
    move v11, v7

    move v12, v8

    if-ge v11, v12, :cond_1

    .line 187
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v11

    .line 188
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    new-instance v11, Landroidx/constraintlayout/solver/widgets/Rectangle;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    move-object v10, v11

    .line 189
    .local v10, "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    move-object v11, v10

    move-object v12, v9

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v12

    move-object v13, v9

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v13

    move-object v14, v9

    .line 190
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    move-object v15, v9

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    .line 189
    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 191
    move-object v11, v6

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/Rectangle;->intersects(Landroidx/constraintlayout/solver/widgets/Rectangle;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 192
    move-object v11, v5

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 186
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 195
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    :cond_1
    move-object v11, v5

    move-object v0, v11

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    return-object v0
.end method

.method public getRootConstraintContainer()Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v4, v0

    move-object v1, v4

    .line 118
    .local v1, "item":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v2, v4

    .line 119
    .local v2, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    move-object v3, v4

    .line 120
    .local v3, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v4, v1

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v4, :cond_0

    .line 121
    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v4

    .line 123
    :cond_0
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 124
    move-object v4, v2

    move-object v1, v4

    .line 125
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v2, v4

    .line 126
    move-object v4, v1

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v4, :cond_0

    .line 127
    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v4

    goto :goto_0

    .line 130
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    return-object v0
.end method

.method public layout()V
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->updateDrawPosition()V

    .line 278
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 279
    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 282
    .local v1, "count":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 283
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v3, v4

    .line 284
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v4, v3

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v4, :cond_1

    .line 285
    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->layout()V

    .line 282
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    goto :goto_0
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 99
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 100
    return-void
.end method

.method public removeAllChildren()V
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 302
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    move-object v1, v0

    invoke-super {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    .line 64
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .locals 7

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v1, p1

    .local v1, "cache":Landroidx/constraintlayout/solver/Cache;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 293
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 294
    .local v2, "count":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 295
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v5

    .line 296
    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    return-void
.end method

.method public setOffset(II)V
    .locals 9

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 246
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 247
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 248
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v5, v6

    .line 249
    .local v5, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getRootX()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getRootY()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 247
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    return-void
.end method

.method public updateDrawPosition()V
    .locals 7

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    move-object v4, v0

    invoke-super {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 260
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 261
    .line 271
    :goto_0
    return-void

    .line 263
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 264
    .local v1, "count":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 265
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v3, v4

    .line 266
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 267
    move-object v4, v3

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v4, :cond_1

    .line 268
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 264
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    goto :goto_0
.end method
