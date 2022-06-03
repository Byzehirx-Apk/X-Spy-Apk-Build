.class public Lcom/airbnb/lottie/parser/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"

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
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/IntegerParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lcom/airbnb/lottie/parser/IntegerParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/IntegerParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/IntegerParser;->INSTANCE:Lcom/airbnb/lottie/parser/IntegerParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/IntegerParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/IntegerParser;
    move-object v1, p1

    .local v1, "reader":Landroid/util/JsonReader;
    move v2, p2

    .local v2, "scale":F
    move-object v3, v1

    invoke-static {v3}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Landroid/util/JsonReader;)F

    move-result v3

    move v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/parser/IntegerParser;
    return-object v0
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/IntegerParser;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/IntegerParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/parser/IntegerParser;
    return-object v0
.end method
