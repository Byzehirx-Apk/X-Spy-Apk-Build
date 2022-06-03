.class public Lgnu/kawa/models/WithTransform;
.super Ljava/lang/Object;
.source "WithTransform.java"

# interfaces
.implements Lgnu/kawa/models/Paintable;


# instance fields
.field paintable:Lgnu/kawa/models/Paintable;

.field transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/WithTransform;
    move-object v1, p1

    .local v1, "paintable":Lgnu/kawa/models/Paintable;
    move-object v2, p2

    .local v2, "transform":Ljava/awt/geom/AffineTransform;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 12
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/models/WithTransform;->paintable:Lgnu/kawa/models/Paintable;

    .line 13
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/models/WithTransform;->transform:Ljava/awt/geom/AffineTransform;

    .line 14
    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/WithTransform;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/WithTransform;->transform:Ljava/awt/geom/AffineTransform;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/models/WithTransform;->paintable:Lgnu/kawa/models/Paintable;

    invoke-interface {v2}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    invoke-interface {v1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/WithTransform;
    return-object v0
.end method

.method public paint(Ljava/awt/Graphics2D;)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/WithTransform;
    move-object v1, p1

    .local v1, "graphics":Ljava/awt/Graphics2D;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    move-object v2, v4

    .line 21
    .local v2, "saved":Ljava/awt/geom/AffineTransform;
    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lgnu/kawa/models/WithTransform;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v4, v5}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    .line 22
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/models/WithTransform;->paintable:Lgnu/kawa/models/Paintable;

    move-object v5, v1

    invoke-interface {v4, v5}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 27
    .line 28
    return-void

    .line 26
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    move-object v4, v3

    throw v4
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)Lgnu/kawa/models/Paintable;
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/WithTransform;
    move-object v1, p1

    .local v1, "tr":Ljava/awt/geom/AffineTransform;
    new-instance v3, Ljava/awt/geom/AffineTransform;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/models/WithTransform;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v4, v5}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    move-object v2, v3

    .line 39
    .local v2, "combined":Ljava/awt/geom/AffineTransform;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 40
    new-instance v3, Lgnu/kawa/models/WithTransform;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/models/WithTransform;->paintable:Lgnu/kawa/models/Paintable;

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/kawa/models/WithTransform;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/models/WithTransform;
    return-object v0
.end method
