.class public Lcom/airbnb/lottie/parser/PointFParser;
.super Ljava/lang/Object;
.source "PointFParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/PointFParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/airbnb/lottie/parser/PointFParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/PointFParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/PointFParser;->INSTANCE:Lcom/airbnb/lottie/parser/PointFParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/PointFParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/PointFParser;
    move-object v1, p1

    .local v1, "reader":Landroid/util/JsonReader;
    move v2, p2

    .local v2, "scale":F
    move-object v5, v1

    invoke-virtual {v5}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    move-object v3, v5

    .line 16
    .local v3, "token":Landroid/util/JsonToken;
    move-object v5, v3

    sget-object v6, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v5, v6, :cond_0

    .line 17
    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v5

    move-object v0, v5

    .line 28
    .end local v0    # "this":Lcom/airbnb/lottie/parser/PointFParser;
    :goto_0
    return-object v0

    .line 18
    .restart local v0    # "this":Lcom/airbnb/lottie/parser/PointFParser;
    :cond_0
    move-object v5, v3

    sget-object v6, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v5, v6, :cond_1

    .line 19
    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 20
    :cond_1
    move-object v5, v3

    sget-object v6, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v5, v6, :cond_3

    .line 24
    new-instance v5, Landroid/graphics/PointF;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    move v8, v2

    mul-float/2addr v7, v8

    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    double-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v4, v5

    .line 25
    .local v4, "point":Landroid/graphics/PointF;
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 26
    move-object v5, v1

    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 28
    :cond_2
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 30
    .end local v4    # "point":Landroid/graphics/PointF;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot convert json to point. Next token is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/PointFParser;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/PointFParser;->parse(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/parser/PointFParser;
    return-object v0
.end method
