.class public Lgnu/kawa/models/DrawImage;
.super Lgnu/kawa/models/Model;
.source "DrawImage.java"

# interfaces
.implements Lgnu/kawa/models/Paintable;
.implements Ljava/io/Serializable;


# instance fields
.field description:Ljava/lang/String;

.field image:Ljava/awt/image/BufferedImage;

.field src:Lgnu/text/Path;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/models/Model;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v1, p1

    .local v1, "image":Ljava/awt/image/BufferedImage;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/models/Model;-><init>()V

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    .line 43
    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 10

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 54
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    move v1, v3

    .line 55
    .local v1, "w":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    move v2, v3

    .line 56
    .local v2, "h":I
    new-instance v3, Ljava/awt/geom/Rectangle2D$Float;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v1

    int-to-float v7, v7

    move v8, v2

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/models/DrawImage;
    return-object v0
.end method

.method public getImage()Ljava/awt/Image;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 67
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/DrawImage;
    return-object v0
.end method

.method public getSrc()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/models/DrawImage;
    return-object v0
.end method

.method loadImage()V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    if-nez v2, :cond_0

    .line 31
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    invoke-virtual {v3}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    iput-object v3, v2, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 38
    :cond_0
    return-void

    .line 33
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 35
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    invoke-static {v2}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v1, p1

    .local v1, "display":Lgnu/kawa/models/Display;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/models/Display;->addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public paint(Ljava/awt/Graphics2D;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v1, p1

    .local v1, "graphics":Ljava/awt/Graphics2D;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 48
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    move-result v2

    .line 49
    return-void
.end method

.method public setSrc(Lgnu/text/Path;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v1, p1

    .local v1, "src":Lgnu/text/Path;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    .line 75
    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)Lgnu/kawa/models/Paintable;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/DrawImage;
    move-object v1, p1

    .local v1, "tr":Ljava/awt/geom/AffineTransform;
    new-instance v2, Lgnu/kawa/models/WithTransform;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/kawa/models/WithTransform;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/models/DrawImage;
    return-object v0
.end method
