.class final Landroidx/core/content/res/GradientColorInflaterCompat;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    }
.end annotation


# static fields
.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/GradientColorInflaterCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .locals 11
    .param p0    # Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "colorItems":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    move v1, p1

    .local v1, "startColor":I
    move v2, p2

    .local v2, "endColor":I
    move v3, p3

    .local v3, "hasCenterColor":Z
    move v4, p4

    .local v4, "centerColor":I
    move-object v5, v0

    if-eqz v5, :cond_0

    .line 193
    move-object v5, v0

    move-object v0, v5

    .line 197
    .end local v0    # "colorItems":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    :goto_0
    return-object v0

    .line 194
    .restart local v0    # "colorItems":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 195
    new-instance v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move v8, v4

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    move-object v0, v5

    goto :goto_0

    .line 197
    :cond_1
    new-instance v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    move-object v0, v5

    goto :goto_0
.end method

.method static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 10
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object v5, v1

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    move-object v3, v5

    .line 74
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v9, v5

    move v5, v9

    move v6, v9

    move v4, v6

    .local v4, "type":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    move v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 80
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "No start tag found"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-static {v5, v6, v7, v8}, Landroidx/core/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "resources":Landroid/content/res/Resources;
    return-object v0
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 31
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 90
    move-object/from16 v1, p0

    .local v1, "resources":Landroid/content/res/Resources;
    move-object/from16 v2, p1

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v3, p2

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v4, p3

    .local v4, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v21, v2

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v5, v21

    .line 91
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v21, v5

    const-string/jumbo v22, "gradient"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 92
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    .line 93
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": invalid gradient color tag "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 96
    :cond_0
    move-object/from16 v21, v1

    move-object/from16 v22, v4

    move-object/from16 v23, v3

    sget-object v24, Landroidx/core/R$styleable;->GradientColor:[I

    invoke-static/range {v21 .. v24}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    move-object/from16 v6, v21

    .line 98
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "startX"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v21

    move/from16 v7, v21

    .line 100
    .local v7, "startX":F
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "startY"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v21

    move/from16 v8, v21

    .line 102
    .local v8, "startY":F
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "endX"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v21

    move/from16 v9, v21

    .line 104
    .local v9, "endX":F
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "endY"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v21

    move/from16 v10, v21

    .line 106
    .local v10, "endY":F
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "centerX"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v21

    move/from16 v11, v21

    .line 108
    .local v11, "centerX":F
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "centerY"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v21

    move/from16 v12, v21

    .line 110
    .local v12, "centerY":F
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "type"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_type:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v21

    move/from16 v13, v21

    .line 112
    .local v13, "type":I
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "startColor"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v21

    move/from16 v14, v21

    .line 114
    .local v14, "startColor":I
    move-object/from16 v21, v2

    const-string/jumbo v22, "centerColor"

    invoke-static/range {v21 .. v22}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v21

    move/from16 v15, v21

    .line 115
    .local v15, "hasCenterColor":Z
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "centerColor"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v21

    move/from16 v16, v21

    .line 117
    .local v16, "centerColor":I
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "endColor"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v21

    move/from16 v17, v21

    .line 119
    .local v17, "endColor":I
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "tileMode"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v21

    move/from16 v18, v21

    .line 121
    .local v18, "tileMode":I
    move-object/from16 v21, v6

    move-object/from16 v22, v2

    const-string/jumbo v23, "gradientRadius"

    sget v24, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v21

    move/from16 v19, v21

    .line 123
    .local v19, "gradientRadius":F
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    invoke-static/range {v21 .. v24}, Landroidx/core/content/res/GradientColorInflaterCompat;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v21

    move-object/from16 v20, v21

    .line 126
    .local v20, "colorStops":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    move-object/from16 v21, v20

    move/from16 v22, v14

    move/from16 v23, v17

    move/from16 v24, v15

    move/from16 v25, v16

    invoke-static/range {v21 .. v25}, Landroidx/core/content/res/GradientColorInflaterCompat;->checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v21

    move-object/from16 v20, v21

    .line 128
    move/from16 v21, v13

    packed-switch v21, :pswitch_data_0

    .line 141
    new-instance v21, Landroid/graphics/LinearGradient;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move-object/from16 v27, v20

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    move-object/from16 v27, v0

    move-object/from16 v28, v20

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    move-object/from16 v28, v0

    move/from16 v29, v18

    .line 142
    invoke-static/range {v29 .. v29}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v29

    invoke-direct/range {v22 .. v29}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v1, v21

    .end local v1    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 130
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :pswitch_0
    move/from16 v21, v19

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_1

    .line 131
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    const-string/jumbo v23, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 134
    :cond_1
    new-instance v21, Landroid/graphics/RadialGradient;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v19

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    move-object/from16 v26, v0

    move-object/from16 v27, v20

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    move-object/from16 v27, v0

    move/from16 v28, v18

    .line 135
    invoke-static/range {v28 .. v28}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v28

    invoke-direct/range {v22 .. v28}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v1, v21

    goto :goto_0

    .line 137
    :pswitch_1
    new-instance v21, Landroid/graphics/SweepGradient;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    move-object/from16 v25, v0

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    move-object/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    move-object/from16 v1, v21

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .locals 19
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object/from16 v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    move-object/from16 v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v3, p3

    .local v3, "theme":Landroid/content/res/Resources$Theme;
    move-object v14, v1

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v4, v14

    .line 154
    .local v4, "innerDepth":I
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x14

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v14

    .line 155
    .local v7, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x14

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v14

    .line 157
    .local v8, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    move-object v14, v1

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    move v5, v15

    .local v5, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_6

    move-object v14, v1

    .line 158
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    move v6, v15

    .local v6, "depth":I
    move v15, v4

    if-ge v14, v15, :cond_1

    move v14, v5

    const/4 v15, 0x3

    if-eq v14, v15, :cond_6

    .line 160
    :cond_1
    move v14, v5

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    move v14, v6

    move v15, v4

    if-gt v14, v15, :cond_0

    move-object v14, v1

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "item"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 164
    goto :goto_0

    .line 167
    :cond_3
    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v2

    sget-object v17, Landroidx/core/R$styleable;->GradientColorItem:[I

    invoke-static/range {v14 .. v17}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    move-object v9, v14

    .line 169
    .local v9, "a":Landroid/content/res/TypedArray;
    move-object v14, v9

    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    invoke-virtual {v14, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    move v10, v14

    .line 170
    .local v10, "hasColor":Z
    move-object v14, v9

    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    invoke-virtual {v14, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    move v11, v14

    .line 171
    .local v11, "hasOffset":Z
    move v14, v10

    if-eqz v14, :cond_4

    move v14, v11

    if-nez v14, :cond_5

    .line 172
    :cond_4
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    .line 173
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": <item> tag requires a \'color\' attribute and a \'offset\' "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "attribute!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 178
    :cond_5
    move-object v14, v9

    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move v12, v14

    .line 179
    .local v12, "color":I
    move-object v14, v9

    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move v13, v14

    .line 180
    .local v13, "offset":F
    move-object v14, v9

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    move-object v14, v8

    move v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 183
    move-object v14, v7

    move v15, v13

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 184
    goto/16 :goto_0

    .line 185
    .end local v6    # "depth":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasColor":Z
    .end local v11    # "hasOffset":Z
    .end local v12    # "color":I
    .end local v13    # "offset":F
    :cond_6
    move-object v14, v8

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_7

    new-instance v14, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v8

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v17}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v0, v14

    .line 186
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_1
    return-object v0

    .restart local v0    # "resources":Landroid/content/res/Resources;
    :cond_7
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_1
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 2

    .prologue
    .line 202
    move v0, p0

    .local v0, "tileMode":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 209
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v1

    .end local v0    # "tileMode":I
    :goto_0
    return-object v0

    .line 204
    .restart local v0    # "tileMode":I
    :pswitch_0
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v0, v1

    goto :goto_0

    .line 206
    :pswitch_1
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v0, v1

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
