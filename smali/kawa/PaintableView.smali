.class Lkawa/PaintableView;
.super Ljavax/swing/text/View;
.source "ReplPane.java"


# instance fields
.field bounds:Ljava/awt/geom/Rectangle2D;

.field p:Lgnu/kawa/models/Paintable;


# direct methods
.method public constructor <init>(Ljavax/swing/text/Element;Lgnu/kawa/models/Paintable;)V
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lkawa/PaintableView;
    move-object v1, p1

    .local v1, "elem":Ljavax/swing/text/Element;
    move-object v2, p2

    .local v2, "paintable":Lgnu/kawa/models/Paintable;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/swing/text/View;-><init>(Ljavax/swing/text/Element;)V

    .line 239
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/PaintableView;->p:Lgnu/kawa/models/Paintable;

    .line 240
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    iput-object v4, v3, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    .line 241
    return-void
.end method


# virtual methods
.method public getAlignment(I)F
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lkawa/PaintableView;
    move v1, p1

    .local v1, "axis":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 269
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavax/swing/text/View;->getAlignment(I)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lkawa/PaintableView;
    :goto_0
    return v0

    .line 267
    .restart local v0    # "this":Lkawa/PaintableView;
    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    move v0, v2

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPreferredSpan(I)F
    .locals 7

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lkawa/PaintableView;
    move v1, p1

    .local v1, "axis":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 280
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid axis: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    .line 278
    .end local v0    # "this":Lkawa/PaintableView;
    :goto_0
    return v0

    .restart local v0    # "this":Lkawa/PaintableView;
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public modelToView(ILjava/awt/Shape;Ljavax/swing/text/Position$Bias;)Ljava/awt/Shape;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lkawa/PaintableView;
    move v1, p1

    .local v1, "pos":I
    move-object v2, p2

    .local v2, "a":Ljava/awt/Shape;
    move-object v3, p3

    .local v3, "b":Ljavax/swing/text/Position$Bias;
    move-object v7, v0

    invoke-virtual {v7}, Lkawa/PaintableView;->getStartOffset()I

    move-result v7

    move v4, v7

    .line 286
    .local v4, "p0":I
    move-object v7, v0

    invoke-virtual {v7}, Lkawa/PaintableView;->getEndOffset()I

    move-result v7

    move v5, v7

    .line 287
    .local v5, "p1":I
    move v7, v1

    move v8, v4

    if-lt v7, v8, :cond_1

    move v7, v1

    move v8, v5

    if-gt v7, v8, :cond_1

    .line 288
    move-object v7, v2

    invoke-interface {v7}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v7

    move-object v6, v7

    .line 289
    .local v6, "r":Ljava/awt/Rectangle;
    move v7, v1

    move v8, v5

    if-ne v7, v8, :cond_0

    .line 290
    move-object v7, v6

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Ljava/awt/Rectangle;->x:I

    move-object v9, v6

    iget v9, v9, Ljava/awt/Rectangle;->width:I

    add-int/2addr v8, v9

    iput v8, v7, Ljava/awt/Rectangle;->x:I

    .line 292
    :cond_0
    move-object v7, v6

    const/4 v8, 0x0

    iput v8, v7, Ljava/awt/Rectangle;->width:I

    .line 293
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lkawa/PaintableView;
    return-object v0

    .line 295
    .end local v6    # "r":Ljava/awt/Rectangle;
    .restart local v0    # "this":Lkawa/PaintableView;
    :cond_1
    new-instance v7, Ljavax/swing/text/BadLocationException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " not in range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move v10, v1

    invoke-direct {v8, v9, v10}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method public paint(Ljava/awt/Graphics;Ljava/awt/Shape;)V
    .locals 11

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lkawa/PaintableView;
    move-object v1, p1

    .local v1, "g":Ljava/awt/Graphics;
    move-object v2, p2

    .local v2, "a":Ljava/awt/Shape;
    move-object v8, v1

    check-cast v8, Ljava/awt/Graphics2D;

    move-object v3, v8

    .line 246
    .local v3, "g2":Ljava/awt/Graphics2D;
    move-object v8, v2

    invoke-interface {v8}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v8

    move-object v4, v8

    .line 247
    .local v4, "bounds":Ljava/awt/Rectangle;
    move-object v8, v3

    invoke-virtual {v8}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v8

    move-object v5, v8

    .line 248
    .local v5, "saveTransform":Ljava/awt/geom/AffineTransform;
    move-object v8, v3

    invoke-virtual {v8}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v8

    move-object v6, v8

    .line 251
    .local v6, "savePaint":Ljava/awt/Paint;
    move-object v8, v3

    move-object v9, v4

    :try_start_0
    iget v9, v9, Ljava/awt/Rectangle;->x:I

    move-object v10, v4

    iget v10, v10, Ljava/awt/Rectangle;->y:I

    invoke-virtual {v8, v9, v10}, Ljava/awt/Graphics2D;->translate(II)V

    .line 252
    move-object v8, v3

    sget-object v9, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v8, v9}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 253
    move-object v8, v0

    iget-object v8, v8, Lkawa/PaintableView;->p:Lgnu/kawa/models/Paintable;

    move-object v9, v3

    invoke-interface {v8, v9}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    move-object v8, v3

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 258
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 259
    .line 260
    return-void

    .line 257
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 258
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    move-object v8, v7

    throw v8
.end method

.method public viewToModel(FFLjava/awt/Shape;[Ljavax/swing/text/Position$Bias;)I
    .locals 10

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lkawa/PaintableView;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, p3

    .local v3, "a":Ljava/awt/Shape;
    move-object v4, p4

    .local v4, "bias":[Ljavax/swing/text/Position$Bias;
    move-object v6, v3

    check-cast v6, Ljava/awt/Rectangle;

    move-object v5, v6

    .line 300
    .local v5, "alloc":Ljava/awt/Rectangle;
    move v6, v1

    move-object v7, v5

    iget v7, v7, Ljava/awt/Rectangle;->x:I

    move-object v8, v5

    iget v8, v8, Ljava/awt/Rectangle;->width:I

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 301
    move-object v6, v4

    const/4 v7, 0x0

    sget-object v8, Ljavax/swing/text/Position$Bias;->Forward:Ljavax/swing/text/Position$Bias;

    aput-object v8, v6, v7

    .line 302
    move-object v6, v0

    invoke-virtual {v6}, Lkawa/PaintableView;->getStartOffset()I

    move-result v6

    move v0, v6

    .line 305
    .end local v0    # "this":Lkawa/PaintableView;
    :goto_0
    return v0

    .line 304
    .restart local v0    # "this":Lkawa/PaintableView;
    :cond_0
    move-object v6, v4

    const/4 v7, 0x0

    sget-object v8, Ljavax/swing/text/Position$Bias;->Backward:Ljavax/swing/text/Position$Bias;

    aput-object v8, v6, v7

    .line 305
    move-object v6, v0

    invoke-virtual {v6}, Lkawa/PaintableView;->getEndOffset()I

    move-result v6

    move v0, v6

    goto :goto_0
.end method
