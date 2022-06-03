.class public Landroidx/core/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FetchStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x1f4

.field public static final FETCH_STRATEGY_ASYNC:I = 0x1

.field public static final FETCH_STRATEGY_BLOCKING:I = 0x0

.field public static final INFINITE_TIMEOUT_VALUE:I = -0x1

.field private static final ITALIC:I = 0x1

.field private static final NORMAL_WEIGHT:I = 0x190


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 332
    return-void
.end method

.method private static getType(Landroid/content/res/TypedArray;I)I
    .locals 7

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "typedArray":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 231
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    move v0, v3

    .line 235
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .line 233
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 234
    .local v2, "tv":Landroid/util/TypedValue;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    .line 235
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->type:I

    move v0, v3

    goto :goto_0
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v6, v3

    move v3, v6

    move v4, v6

    move v2, v4

    .local v2, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 174
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "No start tag found"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    return-object v0
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "certsId":I
    move v7, v1

    if-nez v7, :cond_0

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v0, v7

    .line 270
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 249
    .restart local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v2, v7

    .line 251
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    move-object v7, v2

    :try_start_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v3, v7

    .line 270
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v7, v3

    move-object v0, v7

    goto :goto_0

    .line 255
    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 258
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroidx/core/content/res/FontResourcesParserCompat;->getType(Landroid/content/res/TypedArray;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 259
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 260
    move-object v7, v2

    move v8, v4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    move v5, v7

    .line 261
    .local v5, "certId":I
    move v7, v5

    if-eqz v7, :cond_2

    .line 262
    move-object v7, v3

    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 259
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 268
    .end local v4    # "i":I
    .end local v5    # "certId":I
    :cond_3
    :goto_2
    move-object v7, v3

    move-object v4, v7

    .line 270
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 266
    :cond_4
    move-object v7, v3

    move-object v8, v0

    move v9, v1

    :try_start_2
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto :goto_2

    .line 270
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    move-object v3, v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string/jumbo v6, "font-family"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object v3, v0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 183
    .local v2, "tag":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, "font-family"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v3

    move-object v0, v3

    .line 187
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v0

    .line 186
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 187
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    move-object/from16 v0, p0

    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    move-object v12, v0

    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    move-object v2, v12

    .line 194
    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v12, v1

    move-object v13, v2

    sget-object v14, Landroidx/core/R$styleable;->FontFamily:[I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    move-object v3, v12

    .line 195
    .local v3, "array":Landroid/content/res/TypedArray;
    move-object v12, v3

    sget v13, Landroidx/core/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 196
    .local v4, "authority":Ljava/lang/String;
    move-object v12, v3

    sget v13, Landroidx/core/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 197
    .local v5, "providerPackage":Ljava/lang/String;
    move-object v12, v3

    sget v13, Landroidx/core/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 198
    .local v6, "query":Ljava/lang/String;
    move-object v12, v3

    sget v13, Landroidx/core/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move v7, v12

    .line 199
    .local v7, "certsId":I
    move-object v12, v3

    sget v13, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    move v8, v12

    .line 201
    .local v8, "strategy":I
    move-object v12, v3

    sget v13, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    move v9, v12

    .line 203
    .local v9, "timeoutMs":I
    move-object v12, v3

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    move-object v12, v4

    if-eqz v12, :cond_1

    move-object v12, v5

    if-eqz v12, :cond_1

    move-object v12, v6

    if-eqz v12, :cond_1

    .line 205
    :goto_0
    move-object v12, v0

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    .line 206
    move-object v12, v0

    invoke-static {v12}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 208
    :cond_0
    move-object v12, v1

    move v13, v7

    invoke-static {v12, v13}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v12

    move-object v10, v12

    .line 209
    .local v10, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    new-instance v12, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    new-instance v14, Landroidx/core/provider/FontRequest;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v10

    invoke-direct/range {v15 .. v19}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move v15, v8

    move/from16 v16, v9

    invoke-direct/range {v13 .. v16}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroidx/core/provider/FontRequest;II)V

    move-object v0, v12

    .line 225
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :goto_1
    return-object v0

    .line 212
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v12

    .line 213
    .local v10, "fonts":Ljava/util/List;, "Ljava/util/List<Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;>;"
    :goto_2
    move-object v12, v0

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    .line 214
    move-object v12, v0

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2

    goto :goto_2

    .line 215
    :cond_2
    move-object v12, v0

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 216
    .local v11, "tag":Ljava/lang/String;
    move-object v12, v11

    const-string/jumbo v13, "font"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 217
    move-object v12, v10

    move-object v13, v0

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/core/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 221
    :goto_3
    goto :goto_2

    .line 219
    :cond_3
    move-object v12, v0

    invoke-static {v12}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 222
    .end local v11    # "tag":Ljava/lang/String;
    :cond_4
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 223
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_1

    .line 225
    :cond_5
    new-instance v12, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v10

    move-object v15, v10

    .line 226
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 225
    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {v13, v14}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    move-object v0, v12

    goto :goto_1
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    move-object/from16 v2, p0

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v3, p1

    .local v3, "resources":Landroid/content/res/Resources;
    move-object/from16 v17, v2

    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v17

    move-object/from16 v4, v17

    .line 286
    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    sget-object v19, Landroidx/core/R$styleable;->FontFamilyFont:[I

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    move-object/from16 v5, v17

    .line 287
    .local v5, "array":Landroid/content/res/TypedArray;
    move-object/from16 v17, v5

    sget v18, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_0

    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    :goto_0
    move/from16 v6, v17

    .line 290
    .local v6, "weightAttr":I
    move-object/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x190

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v7, v17

    .line 291
    .local v7, "weight":I
    move-object/from16 v17, v5

    sget v18, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_1

    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    :goto_1
    move/from16 v8, v17

    .line 294
    .local v8, "styleAttr":I
    const/16 v17, 0x1

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_2
    move/from16 v9, v17

    .line 295
    .local v9, "isItalic":Z
    move-object/from16 v17, v5

    sget v18, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_3

    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    :goto_3
    move/from16 v10, v17

    .line 298
    .local v10, "ttcIndexAttr":I
    move-object/from16 v17, v5

    sget v18, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    .line 299
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_4

    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    :goto_4
    move/from16 v11, v17

    .line 302
    .local v11, "variationSettingsAttr":I
    move-object/from16 v17, v5

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 303
    .local v12, "variationSettings":Ljava/lang/String;
    move-object/from16 v17, v5

    move/from16 v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v13, v17

    .line 304
    .local v13, "ttcIndex":I
    move-object/from16 v17, v5

    sget v18, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_5

    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    :goto_5
    move/from16 v14, v17

    .line 307
    .local v14, "resourceAttr":I
    move-object/from16 v17, v5

    move/from16 v18, v14

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v15, v17

    .line 308
    .local v15, "resourceId":I
    move-object/from16 v17, v5

    move/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    .line 309
    .local v16, "filename":Ljava/lang/String;
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    :goto_6
    move-object/from16 v17, v2

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 311
    move-object/from16 v17, v2

    invoke-static/range {v17 .. v17}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 287
    .end local v6    # "weightAttr":I
    .end local v7    # "weight":I
    .end local v8    # "styleAttr":I
    .end local v9    # "isItalic":Z
    .end local v10    # "ttcIndexAttr":I
    .end local v11    # "variationSettingsAttr":I
    .end local v12    # "variationSettings":Ljava/lang/String;
    .end local v13    # "ttcIndex":I
    .end local v14    # "resourceAttr":I
    .end local v15    # "resourceId":I
    .end local v16    # "filename":Ljava/lang/String;
    :cond_0
    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_android_fontWeight:I

    goto/16 :goto_0

    .line 291
    .restart local v6    # "weightAttr":I
    .restart local v7    # "weight":I
    :cond_1
    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_android_fontStyle:I

    goto/16 :goto_1

    .line 294
    .restart local v8    # "styleAttr":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 295
    .restart local v9    # "isItalic":Z
    :cond_3
    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_android_ttcIndex:I

    goto :goto_3

    .line 299
    .restart local v10    # "ttcIndexAttr":I
    :cond_4
    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    goto :goto_4

    .line 304
    .restart local v11    # "variationSettingsAttr":I
    .restart local v12    # "variationSettings":Ljava/lang/String;
    .restart local v13    # "ttcIndex":I
    :cond_5
    sget v17, Landroidx/core/R$styleable;->FontFamilyFont_android_font:I

    goto :goto_5

    .line 313
    .restart local v14    # "resourceAttr":I
    .restart local v15    # "resourceId":I
    .restart local v16    # "filename":Ljava/lang/String;
    :cond_6
    new-instance v17, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-object/from16 v25, v17

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    move-object/from16 v19, v16

    move/from16 v20, v7

    move/from16 v21, v9

    move-object/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v15

    invoke-direct/range {v18 .. v24}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    move-object/from16 v2, v17

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    return-object v2
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x1

    move v1, v2

    .line 319
    .local v1, "depth":I
    :goto_0
    move v2, v1

    if-lez v2, :cond_0

    .line 320
    move-object v2, v0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 326
    :goto_1
    goto :goto_0

    .line 322
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 323
    goto :goto_1

    .line 325
    :pswitch_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 329
    :cond_0
    return-void

    .line 320
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "stringArray":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 277
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 278
    .local v5, "item":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    .end local v5    # "item":Ljava/lang/String;
    :cond_0
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "stringArray":[Ljava/lang/String;
    return-object v0
.end method
