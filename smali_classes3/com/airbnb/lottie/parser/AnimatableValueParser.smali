.class public Lcom/airbnb/lottie/parser/AnimatableValueParser;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/AnimatableValueParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static parse(Landroid/util/JsonReader;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move v1, p1

    .local v1, "scale":F
    move-object v2, p2

    .local v2, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v3, p3

    .local v3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    move-object v4, v0

    move-object v5, v2

    move v6, v1

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method private static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, p2

    .local v2, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    move-object v3, v0

    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method static parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    sget-object v6, Lcom/airbnb/lottie/parser/ColorParser;->INSTANCE:Lcom/airbnb/lottie/parser/ColorParser;

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;-><init>(Ljava/util/List;)V

    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method static parseDocumentData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    sget-object v6, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;)V

    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method public static parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method public static parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move v2, p2

    .local v2, "isDp":Z
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move v6, v2

    if-eqz v6, :cond_0

    .line 33
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    :goto_0
    move-object v7, v1

    sget-object v8, Lcom/airbnb/lottie/parser/FloatParser;->INSTANCE:Lcom/airbnb/lottie/parser/FloatParser;

    invoke-static {v5, v6, v7, v8}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/List;)V

    .line 32
    move-object v0, v3

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 33
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method static parseGradientColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move v2, p2

    .local v2, "points":I
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    move-object v6, v1

    new-instance v7, Lcom/airbnb/lottie/parser/GradientColorParser;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v2

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/parser/GradientColorParser;-><init>(I)V

    .line 71
    invoke-static {v5, v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    .line 70
    move-object v0, v3

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method static parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    sget-object v6, Lcom/airbnb/lottie/parser/IntegerParser;->INSTANCE:Lcom/airbnb/lottie/parser/IntegerParser;

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method static parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    .line 44
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v5

    move-object v6, v1

    sget-object v7, Lcom/airbnb/lottie/parser/PointFParser;->INSTANCE:Lcom/airbnb/lottie/parser/PointFParser;

    invoke-static {v4, v5, v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;-><init>(Ljava/util/List;)V

    .line 43
    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method static parseScale(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    sget-object v6, Lcom/airbnb/lottie/parser/ScaleXYParser;->INSTANCE:Lcom/airbnb/lottie/parser/ScaleXYParser;

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;)V

    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method static parseShapeData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    .line 55
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v5

    move-object v6, v1

    sget-object v7, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    invoke-static {v4, v5, v6, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    .line 54
    move-object v0, v2

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method
