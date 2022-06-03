.class public Lgnu/kawa/swingviews/SwingPaintable;
.super Ljavax/swing/JPanel;
.source "SwingPaintable.java"


# instance fields
.field dim:Ljava/awt/Dimension;

.field paintable:Lgnu/kawa/models/Paintable;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Paintable;)V
    .locals 12

    .prologue
    .line 15
    move-object v1, p0

    .local v1, "this":Lgnu/kawa/swingviews/SwingPaintable;
    move-object v2, p1

    .local v2, "paintable":Lgnu/kawa/models/Paintable;
    move-object v6, v1

    invoke-direct {v6}, Ljavax/swing/JPanel;-><init>()V

    .line 16
    move-object v6, v1

    move-object v7, v2

    iput-object v7, v6, Lgnu/kawa/swingviews/SwingPaintable;->paintable:Lgnu/kawa/models/Paintable;

    .line 18
    move-object v6, v2

    invoke-interface {v6}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v6

    move-object v3, v6

    .line 19
    .local v3, "rect":Ljava/awt/geom/Rectangle2D;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v4, v6

    .line 20
    .local v4, "h":I
    move-object v6, v3

    invoke-virtual {v6}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v5, v6

    .line 21
    .local v5, "w":I
    move-object v6, v1

    new-instance v7, Ljava/awt/Dimension;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move v9, v5

    move v10, v4

    invoke-direct {v8, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    iput-object v7, v6, Lgnu/kawa/swingviews/SwingPaintable;->dim:Ljava/awt/Dimension;

    .line 22
    return-void
.end method


# virtual methods
.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingPaintable;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/swingviews/SwingPaintable;->dim:Ljava/awt/Dimension;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/swingviews/SwingPaintable;
    return-object v0
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingPaintable;
    move-object v1, p1

    .local v1, "g":Ljava/awt/Graphics;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/swingviews/SwingPaintable;->paintable:Lgnu/kawa/models/Paintable;

    move-object v3, v1

    check-cast v3, Ljava/awt/Graphics2D;

    invoke-interface {v2, v3}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V

    .line 28
    return-void
.end method
