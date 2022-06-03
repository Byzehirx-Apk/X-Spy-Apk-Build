.class public Lorg/jose4j/json/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/json/JsonUtil$DupeKeyDisallowingLinkedHashMap;
    }
.end annotation


# static fields
.field private static final CONTAINER_FACTORY:Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lorg/jose4j/json/JsonUtil$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/jose4j/json/JsonUtil$1;-><init>()V

    sput-object v0, Lorg/jose4j/json/JsonUtil;->CONTAINER_FACTORY:Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/JsonUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
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
    .line 61
    move-object v0, p0

    .local v0, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;-><init>()V

    move-object v1, v3

    .line 62
    .local v1, "parser":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v3, v1

    move-object v4, v0

    sget-object v5, Lorg/jose4j/json/JsonUtil;->CONTAINER_FACTORY:Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 63
    .local v2, "parsed":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 65
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Parsing returned null"

    invoke-direct {v4, v5}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .end local v1    # "parser":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    .end local v2    # "parsed":Ljava/lang/Object;
    :catch_0
    move-exception v3

    :goto_0
    move-object v1, v3

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parsing error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 67
    .local v1, "parser":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    .restart local v2    # "parsed":Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    :try_start_1
    check-cast v3, Ljava/util/Map;
    :try_end_1
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .end local v0    # "jsonString":Ljava/lang/String;
    return-object v0

    .line 73
    .end local v1    # "parser":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    .end local v2    # "parsed":Ljava/lang/Object;
    .restart local v0    # "jsonString":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 75
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/jose4j/lang/JoseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expecting a JSON object at the root but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 69
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v3

    goto :goto_0
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
    .line 81
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/json/internal/json_simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    return-object v0
.end method

.method public static writeJson(Ljava/util/Map;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move-object v1, p1

    .local v1, "w":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 87
    return-void
.end method
