.class public final Landroidx/core/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# static fields
.field private static final EM_STRING:Ljava/lang/String; = "m"

.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/core/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PaintCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 15
    .param p0    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "paint":Landroid/graphics/Paint;
    move-object/from16 v1, p1

    .local v1, "string":Ljava/lang/String;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_0

    .line 46
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v9

    move v0, v9

    .line 104
    .end local v0    # "paint":Landroid/graphics/Paint;
    :goto_0
    return v0

    .line 48
    .restart local v0    # "paint":Landroid/graphics/Paint;
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v2, v9

    .line 50
    .local v2, "length":I
    move v9, v2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 52
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 55
    :cond_1
    move-object v9, v0

    const-string/jumbo v10, "\udb3f\udffd"

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    move v3, v9

    .line 56
    .local v3, "missingGlyphWidth":F
    move-object v9, v0

    const-string/jumbo v10, "m"

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    move v4, v9

    .line 58
    .local v4, "emGlyphWidth":F
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    move v5, v9

    .line 60
    .local v5, "width":F
    move v9, v5

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    .line 62
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 65
    :cond_2
    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->codePointCount(II)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    .line 68
    move v9, v5

    const/high16 v10, 0x40000000    # 2.0f

    move v11, v4

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 69
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 82
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    .line 83
    .local v6, "sumWidth":F
    const/4 v9, 0x0

    move v7, v9

    .line 84
    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v2

    if-ge v9, v10, :cond_4

    .line 85
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    move v8, v9

    .line 86
    .local v8, "charCount":I
    move v9, v6

    move-object v10, v0

    move-object v11, v1

    move v12, v7

    move v13, v7

    move v14, v8

    add-int/2addr v13, v14

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    add-float/2addr v9, v10

    move v6, v9

    .line 87
    move v9, v7

    move v10, v8

    add-int/2addr v9, v10

    move v7, v9

    .line 88
    goto :goto_1

    .line 89
    .end local v8    # "charCount":I
    :cond_4
    move v9, v5

    move v10, v6

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    .line 90
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 94
    .end local v6    # "sumWidth":F
    .end local v7    # "i":I
    :cond_5
    move v9, v5

    move v10, v3

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6

    .line 96
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 101
    :cond_6
    invoke-static {}, Landroidx/core/graphics/PaintCompat;->obtainEmptyRects()Landroidx/core/util/Pair;

    move-result-object v9

    move-object v6, v9

    .line 102
    .local v6, "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    move-object v9, v0

    const-string/jumbo v10, "\udb3f\udffd"

    const/4 v11, 0x0

    const-string/jumbo v12, "\udb3f\udffd"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object v13, v6

    iget-object v13, v13, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 103
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    move v12, v2

    move-object v13, v6

    iget-object v13, v13, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    move-object v9, v6

    iget-object v9, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Rect;

    move-object v10, v6

    iget-object v10, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    move v0, v9

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private static obtainEmptyRects()Landroidx/core/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v1, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    move-object v0, v1

    .line 109
    .local v0, "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Landroidx/core/util/Pair;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v3, v4}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 111
    sget-object v1, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 116
    :goto_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    return-object v0

    .line 113
    .restart local v0    # "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 114
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method
