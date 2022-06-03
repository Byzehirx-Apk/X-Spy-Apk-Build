.class public Lcom/google/appinventor/components/runtime/util/PaintUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePaint(Landroid/graphics/Paint;I)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x18

    ushr-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v2

    .line 33
    return-void
.end method

.method public static changePaintTransparent(Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 42
    move-object v1, v0

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v1

    .line 43
    return-void
.end method

.method public static hexStringToInt(Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    move-object v4, v0

    move-object v1, v4

    .line 47
    move-object v4, v0

    const-string/jumbo v5, "#x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    const-string/jumbo v5, "&H"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    :cond_0
    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 51
    :cond_1
    move-object v4, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 52
    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    .line 55
    move-wide v2, v6

    long-to-int v4, v4

    move v0, v4

    return v0
.end method
