.class public Lorg/jose4j/json/internal/json_simple/JSONObject;
.super Ljava/util/HashMap;
.source "JSONObject.java"

# interfaces
.implements Ljava/util/Map;
.implements Lorg/jose4j/json/internal/json_simple/JSONAware;
.implements Lorg/jose4j/json/internal/json_simple/JSONStreamAware;


# static fields
.field private static final serialVersionUID:J = -0x6fc977743e77bbcL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONObject;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONObject;
    move-object v1, p1

    .local v1, "map":Ljava/util/Map;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 36
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method

.method public static toJSONString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 90
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONObject;->writeJSONString(Ljava/util/Map;Ljava/io/Writer;)V

    .line 91
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "map":Ljava/util/Map;
    return-object v0

    .line 92
    .restart local v0    # "map":Ljava/util/Map;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 94
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 108
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    move-object v3, v0

    if-nez v3, :cond_0

    .line 110
    move-object v3, v2

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    :goto_0
    move-object v3, v2

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 115
    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Lorg/jose4j/json/internal/json_simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 117
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "key":Ljava/lang/String;
    return-object v0

    .line 112
    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public static writeJSONString(Ljava/util/Map;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v5, v0

    if-nez v5, :cond_0

    .line 50
    move-object v5, v1

    const-string/jumbo v6, "null"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 51
    .line 71
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v5, 0x1

    move v2, v5

    .line 55
    .local v2, "first":Z
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .line 57
    .local v3, "iter":Ljava/util/Iterator;
    move-object v5, v1

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 58
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    move v5, v2

    if-eqz v5, :cond_1

    .line 60
    const/4 v5, 0x0

    move v2, v5

    .line 63
    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v4, v5

    .line 64
    .local v4, "entry":Ljava/util/Map$Entry;
    move-object v5, v1

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 65
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jose4j/json/internal/json_simple/JSONObject;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    move-object v5, v1

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 67
    move-object v5, v1

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 68
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-static {v5, v6}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 69
    goto :goto_1

    .line 62
    .end local v4    # "entry":Ljava/util/Map$Entry;
    :cond_1
    move-object v5, v1

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 70
    :cond_2
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONObject;
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/json/internal/json_simple/JSONObject;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/JSONObject;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONObject;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/json/internal/json_simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/JSONObject;
    return-object v0
.end method

.method public writeJSONString(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONObject;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONObject;->writeJSONString(Ljava/util/Map;Ljava/io/Writer;)V

    .line 75
    return-void
.end method
