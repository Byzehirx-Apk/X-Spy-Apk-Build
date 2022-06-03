.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "ColorStateListInflaterCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x10000


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ColorStateListInflaterCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "r":Landroid/content/res/Resources;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object v5, v1

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    move-object v3, v5

    .line 68
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

    .line 73
    :cond_0
    move v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 74
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "No start tag found"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-static {v5, v6, v7, v8}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "r":Landroid/content/res/Resources;
    return-object v0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 10
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "r":Landroid/content/res/Resources;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "theme":Landroid/content/res/Resources$Theme;
    move-object v5, v1

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 93
    .local v4, "name":Ljava/lang/String;
    move-object v5, v4

    const-string/jumbo v6, "selector"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    .line 95
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": invalid color state list tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Landroidx/core/content/res/ColorStateListInflaterCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "r":Landroid/content/res/Resources;
    return-object v0
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 27
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
    .line 107
    move-object/from16 v2, p0

    .local v2, "r":Landroid/content/res/Resources;
    move-object/from16 v3, p1

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v4, p2

    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v5, p3

    .local v5, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v21, v3

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v6, v21

    .line 110
    .local v6, "innerDepth":I
    const/high16 v21, -0x10000

    move/from16 v9, v21

    .line 112
    .local v9, "defaultColor":I
    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    move-object/from16 v10, v21

    .line 113
    .local v10, "stateSpecList":[[I
    move-object/from16 v21, v10

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v11, v21

    .line 114
    .local v11, "colorList":[I
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 116
    .local v12, "listSize":I
    :cond_0
    :goto_0
    move-object/from16 v21, v3

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    move/from16 v26, v21

    move/from16 v21, v26

    move/from16 v22, v26

    move/from16 v8, v22

    .local v8, "type":I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    move-object/from16 v21, v3

    .line 117
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    move/from16 v26, v21

    move/from16 v21, v26

    move/from16 v22, v26

    move/from16 v7, v22

    .local v7, "depth":I
    move/from16 v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    move/from16 v21, v8

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 118
    :cond_1
    move/from16 v21, v8

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move/from16 v21, v7

    move/from16 v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    move-object/from16 v21, v3

    .line 119
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "item"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 120
    goto :goto_0

    .line 123
    :cond_2
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v4

    sget-object v24, Landroidx/core/R$styleable;->ColorStateListItem:[I

    invoke-static/range {v21 .. v24}, Landroidx/core/content/res/ColorStateListInflaterCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    move-object/from16 v13, v21

    .line 124
    .local v13, "a":Landroid/content/res/TypedArray;
    move-object/from16 v21, v13

    sget v22, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const v23, -0xff01

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v14, v21

    .line 127
    .local v14, "baseColor":I
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v15, v21

    .line 128
    .local v15, "alphaMod":F
    move-object/from16 v21, v13

    sget v22, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 129
    move-object/from16 v21, v13

    sget v22, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    move/from16 v23, v15

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    move/from16 v15, v21

    .line 134
    :cond_3
    :goto_1
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 138
    .local v16, "j":I
    move-object/from16 v21, v4

    invoke-interface/range {v21 .. v21}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v21

    move/from16 v17, v21

    .line 139
    .local v17, "numAttrs":I
    move/from16 v21, v17

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v18, v21

    .line 140
    .local v18, "stateSpec":[I
    const/16 v21, 0x0

    move/from16 v19, v21

    .local v19, "i":I
    :goto_2
    move/from16 v21, v19

    move/from16 v22, v17

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 141
    move-object/from16 v21, v4

    move/from16 v22, v19

    invoke-interface/range {v21 .. v22}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v21

    move/from16 v20, v21

    .line 142
    .local v20, "stateResId":I
    move/from16 v21, v20

    const v22, 0x10101a5

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move/from16 v21, v20

    const v22, 0x101031f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move/from16 v21, v20

    sget v22, Landroidx/core/R$attr;->alpha:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 145
    move-object/from16 v21, v18

    move/from16 v22, v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v23, v4

    move/from16 v24, v19

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v23

    if-eqz v23, :cond_6

    move/from16 v23, v20

    :goto_3
    aput v23, v21, v22

    .line 140
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 130
    .end local v16    # "j":I
    .end local v17    # "numAttrs":I
    .end local v18    # "stateSpec":[I
    .end local v19    # "i":I
    .end local v20    # "stateResId":I
    :cond_5
    move-object/from16 v21, v13

    sget v22, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 131
    move-object/from16 v21, v13

    sget v22, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    move/from16 v23, v15

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    move/from16 v15, v21

    goto/16 :goto_1

    .line 145
    .restart local v16    # "j":I
    .restart local v17    # "numAttrs":I
    .restart local v18    # "stateSpec":[I
    .restart local v19    # "i":I
    .restart local v20    # "stateResId":I
    :cond_6
    move/from16 v23, v20

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    goto :goto_3

    .line 149
    .end local v20    # "stateResId":I
    :cond_7
    move-object/from16 v21, v18

    move/from16 v22, v16

    invoke-static/range {v21 .. v22}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v21

    move-object/from16 v18, v21

    .line 154
    move/from16 v21, v14

    move/from16 v22, v15

    invoke-static/range {v21 .. v22}, Landroidx/core/content/res/ColorStateListInflaterCompat;->modulateColorAlpha(IF)I

    move-result v21

    move/from16 v19, v21

    .line 155
    .local v19, "color":I
    move/from16 v21, v12

    if-eqz v21, :cond_8

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 156
    :cond_8
    move/from16 v21, v19

    move/from16 v9, v21

    .line 159
    :cond_9
    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v19

    invoke-static/range {v21 .. v23}, Landroidx/core/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v21

    move-object/from16 v11, v21

    .line 160
    move-object/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v23, v18

    invoke-static/range {v21 .. v23}, Landroidx/core/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[I

    move-object/from16 v10, v21

    .line 161
    add-int/lit8 v12, v12, 0x1

    .line 162
    goto/16 :goto_0

    .line 164
    .end local v7    # "depth":I
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "baseColor":I
    .end local v15    # "alphaMod":F
    .end local v16    # "j":I
    .end local v17    # "numAttrs":I
    .end local v18    # "stateSpec":[I
    .end local v19    # "color":I
    :cond_a
    move/from16 v21, v12

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 165
    .local v13, "colors":[I
    move/from16 v21, v12

    move/from16 v0, v21

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 166
    .local v14, "stateSpecs":[[I
    move-object/from16 v21, v11

    const/16 v22, 0x0

    move-object/from16 v23, v13

    const/16 v24, 0x0

    move/from16 v25, v12

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    move-object/from16 v21, v10

    const/16 v22, 0x0

    move-object/from16 v23, v14

    const/16 v24, 0x0

    move/from16 v25, v12

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    new-instance v21, Landroid/content/res/ColorStateList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v14

    move-object/from16 v24, v13

    invoke-direct/range {v22 .. v24}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v2, v21

    .end local v2    # "r":Landroid/content/res/Resources;
    return-object v2
.end method

.method private static modulateColorAlpha(IF)I
    .locals 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 181
    move v0, p0

    .local v0, "color":I
    move v1, p1

    .local v1, "alphaMod":F
    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    move v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v2, v3

    .line 182
    .local v2, "alpha":I
    move v3, v0

    const v4, 0xffffff

    and-int/2addr v3, v4

    move v4, v2

    const/16 v5, 0x18

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "color":I
    return v0
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "res":Landroid/content/res/Resources;
    move-object v1, p1

    .local v1, "theme":Landroid/content/res/Resources$Theme;
    move-object v2, p2

    .local v2, "set":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "attrs":[I
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 175
    :goto_0
    move-object v0, v4

    .end local v0    # "res":Landroid/content/res/Resources;
    return-object v0

    .line 174
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 175
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_0
.end method
