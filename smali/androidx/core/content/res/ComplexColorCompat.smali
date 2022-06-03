.class public final Landroidx/core/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "ComplexColorCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComplexColorCompat"


# instance fields
.field private mColor:I

.field private final mColorStateList:Landroid/content/res/ColorStateList;

.field private final mShader:Landroid/graphics/Shader;


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 6
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ComplexColorCompat;
    move-object v1, p1

    .local v1, "shader":Landroid/graphics/Shader;
    move-object v2, p2

    .local v2, "colorStateList":Landroid/content/res/ColorStateList;
    move v3, p3

    .local v3, "color":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 63
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 64
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 65
    return-void
.end method

.method private static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 14
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
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
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "resId":I
    move-object/from16 v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    move-object v3, v9

    .line 153
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v9, v3

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    move-object v4, v9

    .line 155
    .local v4, "attrs":Landroid/util/AttributeSet;
    :goto_0
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v13, v9

    move v9, v13

    move v10, v13

    move v5, v10

    .local v5, "type":I
    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    move v9, v5

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    move v9, v5

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 160
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "No start tag found"

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 162
    :cond_1
    move-object v9, v3

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 163
    .local v6, "name":Ljava/lang/String;
    move-object v9, v6

    move-object v7, v9

    const/4 v9, -0x1

    move v8, v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    :goto_1
    move v9, v8

    packed-switch v9, :pswitch_data_0

    .line 171
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": unsupported complex color tag "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 163
    :sswitch_0
    move-object v9, v7

    const-string/jumbo v10, "selector"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    move v8, v9

    goto :goto_1

    :sswitch_1
    move-object v9, v7

    const-string/jumbo v10, "gradient"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    move v8, v9

    goto :goto_1

    .line 165
    :pswitch_0
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v2

    invoke-static {v9, v10, v11, v12}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/content/res/ComplexColorCompat;->from(Landroid/content/res/ColorStateList;)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v9

    move-object v0, v9

    .line 168
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_2
    return-object v0

    .restart local v0    # "resources":Landroid/content/res/Resources;
    :pswitch_1
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v2

    invoke-static {v9, v10, v11, v12}, Landroidx/core/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/content/res/ComplexColorCompat;->from(Landroid/graphics/Shader;)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v9

    move-object v0, v9

    goto :goto_2

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x557f730 -> :sswitch_1
        0x4705f3df -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static from(I)Landroidx/core/content/res/ComplexColorCompat;
    .locals 7
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 76
    move v0, p0

    .local v0, "color":I
    new-instance v1, Landroidx/core/content/res/ComplexColorCompat;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v0

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    move-object v0, v1

    .end local v0    # "color":I
    return-object v0
.end method

.method static from(Landroid/content/res/ColorStateList;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 7
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v1, Landroidx/core/content/res/ComplexColorCompat;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    move-object v0, v1

    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method static from(Landroid/graphics/Shader;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 7
    .param p0    # Landroid/graphics/Shader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "shader":Landroid/graphics/Shader;
    new-instance v1, Landroidx/core/content/res/ComplexColorCompat;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    move-object v0, v1

    .end local v0    # "shader":Landroid/graphics/Shader;
    return-object v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 7
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "resId":I
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    :try_start_0
    invoke-static {v4, v5, v6}, Landroidx/core/content/res/ComplexColorCompat;->createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 144
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 141
    .restart local v0    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 142
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ComplexColorCompat"

    const-string/jumbo v5, "Failed to inflate ComplexColor."

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 144
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ComplexColorCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ComplexColorCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    return-object v0
.end method

.method public isGradient()Z
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ComplexColorCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    return v0

    .restart local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ComplexColorCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    return v0

    .restart local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStateChanged([I)Z
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ComplexColorCompat;
    move-object v1, p1

    .local v1, "stateSet":[I
    const/4 v4, 0x0

    move v2, v4

    .line 109
    .local v2, "changed":Z
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/content/res/ComplexColorCompat;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 111
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 110
    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v3, v4

    .line 112
    .local v3, "colorForState":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    if-eq v4, v5, :cond_0

    .line 113
    const/4 v4, 0x1

    move v2, v4

    .line 114
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 117
    .end local v3    # "colorForState":I
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    return v0
.end method

.method public setColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ComplexColorCompat;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 91
    return-void
.end method

.method public willDraw()Z
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ComplexColorCompat;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    return v0

    .restart local v0    # "this":Landroidx/core/content/res/ComplexColorCompat;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
