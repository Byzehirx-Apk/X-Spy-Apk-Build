.class public Lorg/jose4j/json/JsonHeaderUtil;
.super Ljava/lang/Object;
.source "JsonHeaderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/JsonHeaderUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "jsonString":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "jsonString":Ljava/lang/String;
    return-object v0
.end method

.method public static toJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    return-object v0
.end method
