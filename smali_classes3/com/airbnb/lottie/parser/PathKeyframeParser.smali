.class Lcom/airbnb/lottie/parser/PathKeyframeParser;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/PathKeyframeParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 21
    .local v2, "animated":Z
    move-object v4, v0

    move-object v5, v1

    .line 22
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    sget-object v7, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE:Lcom/airbnb/lottie/parser/PathParser;

    move v8, v2

    .line 21
    invoke-static {v4, v5, v6, v7, v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    move-object v3, v4

    .line 24
    .local v3, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;"
    new-instance v4, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/value/Keyframe;)V

    move-object v0, v4

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 20
    .end local v2    # "animated":Z
    .end local v3    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;"
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
