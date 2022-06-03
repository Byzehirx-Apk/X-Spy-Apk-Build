.class public Lcom/airbnb/lottie/parser/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/ColorParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/airbnb/lottie/parser/ColorParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/ColorParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/ColorParser;->INSTANCE:Lcom/airbnb/lottie/parser/ColorParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ColorParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    move-object/from16 v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ColorParser;
    move-object/from16 v1, p1

    .local v1, "reader":Landroid/util/JsonReader;
    move/from16 v2, p2

    .local v2, "scale":F
    move-object v12, v1

    invoke-virtual {v12}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v12

    sget-object v13, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_0
    move v3, v12

    .line 16
    .local v3, "isArray":Z
    move v12, v3

    if-eqz v12, :cond_0

    .line 17
    move-object v12, v1

    invoke-virtual {v12}, Landroid/util/JsonReader;->beginArray()V

    .line 19
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v4, v12

    .line 20
    .local v4, "r":D
    move-object v12, v1

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v6, v12

    .line 21
    .local v6, "g":D
    move-object v12, v1

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v8, v12

    .line 22
    .local v8, "b":D
    move-object v12, v1

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v10, v12

    .line 23
    .local v10, "a":D
    move v12, v3

    if-eqz v12, :cond_1

    .line 24
    move-object v12, v1

    invoke-virtual {v12}, Landroid/util/JsonReader;->endArray()V

    .line 27
    :cond_1
    move-wide v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    .line 28
    move-wide v12, v4

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    move-wide v4, v12

    .line 29
    move-wide v12, v6

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    move-wide v6, v12

    .line 30
    move-wide v12, v8

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    move-wide v8, v12

    .line 31
    move-wide v12, v10

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    move-wide v10, v12

    .line 34
    :cond_2
    move-wide v12, v10

    double-to-int v12, v12

    move-wide v13, v4

    double-to-int v13, v13

    move-wide v14, v6

    double-to-int v14, v14

    move-wide v15, v8

    double-to-int v15, v15

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v0, v12

    .end local v0    # "this":Lcom/airbnb/lottie/parser/ColorParser;
    return-object v0

    .line 15
    .end local v3    # "isArray":Z
    .end local v4    # "r":D
    .end local v6    # "g":D
    .end local v8    # "b":D
    .end local v10    # "a":D
    .restart local v0    # "this":Lcom/airbnb/lottie/parser/ColorParser;
    :cond_3
    const/4 v12, 0x0

    goto :goto_0
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

    .local v0, "this":Lcom/airbnb/lottie/parser/ColorParser;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/ColorParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/parser/ColorParser;
    return-object v0
.end method
