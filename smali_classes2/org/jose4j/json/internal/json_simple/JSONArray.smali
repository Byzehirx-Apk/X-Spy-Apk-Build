.class public Lorg/jose4j/json/internal/json_simple/JSONArray;
.super Ljava/util/ArrayList;
.source "JSONArray.java"

# interfaces
.implements Lorg/jose4j/json/internal/json_simple/JSONAware;
.implements Lorg/jose4j/json/internal/json_simple/JSONStreamAware;


# static fields
.field private static final serialVersionUID:J = 0x36ed996451b68eedL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONArray;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONArray;
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    return-void
.end method

.method public static toJSONString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "collection":Ljava/util/Collection;
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 92
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString(Ljava/util/Collection;Ljava/io/Writer;)V

    .line 93
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "collection":Ljava/util/Collection;
    return-object v0

    .line 94
    .restart local v0    # "collection":Ljava/util/Collection;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 96
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([B)Ljava/lang/String;
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "array":[B
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 122
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([BLjava/io/Writer;)V

    .line 123
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[B
    return-object v0

    .line 124
    .restart local v0    # "array":[B
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 126
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([C)Ljava/lang/String;
    .locals 7

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "array":[C
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 332
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([CLjava/io/Writer;)V

    .line 333
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[C
    return-object v0

    .line 334
    .restart local v0    # "array":[C
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 336
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([D)Ljava/lang/String;
    .locals 7

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "array":[D
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 272
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([DLjava/io/Writer;)V

    .line 273
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[D
    return-object v0

    .line 274
    .restart local v0    # "array":[D
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 276
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([F)Ljava/lang/String;
    .locals 7

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "array":[F
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 242
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([FLjava/io/Writer;)V

    .line 243
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[F
    return-object v0

    .line 244
    .restart local v0    # "array":[F
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 246
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "array":[I
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 182
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([ILjava/io/Writer;)V

    .line 183
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[I
    return-object v0

    .line 184
    .restart local v0    # "array":[I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 186
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "array":[J
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 212
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([JLjava/io/Writer;)V

    .line 213
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[J
    return-object v0

    .line 214
    .restart local v0    # "array":[J
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 216
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "array":[Ljava/lang/Object;
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 362
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([Ljava/lang/Object;Ljava/io/Writer;)V

    .line 363
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[Ljava/lang/Object;
    return-object v0

    .line 364
    .restart local v0    # "array":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 366
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([S)Ljava/lang/String;
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "array":[S
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 152
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([SLjava/io/Writer;)V

    .line 153
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[S
    return-object v0

    .line 154
    .restart local v0    # "array":[S
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 156
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toJSONString([Z)Ljava/lang/String;
    .locals 7

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "array":[Z
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 302
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([ZLjava/io/Writer;)V

    .line 303
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "array":[Z
    return-object v0

    .line 304
    .restart local v0    # "array":[Z
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 306
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static writeJSONString(Ljava/util/Collection;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "collection":Ljava/util/Collection;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v5, v0

    if-nez v5, :cond_0

    .line 50
    move-object v5, v1

    const-string/jumbo v6, "null"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 51
    .line 73
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v5, 0x1

    move v2, v5

    .line 55
    .local v2, "first":Z
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .line 57
    .local v3, "iter":Ljava/util/Iterator;
    move-object v5, v1

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 58
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    move v5, v2

    if-eqz v5, :cond_1

    .line 60
    const/4 v5, 0x0

    move v2, v5

    .line 64
    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 65
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v4

    if-nez v5, :cond_2

    .line 66
    move-object v5, v1

    const-string/jumbo v6, "null"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    goto :goto_1

    .line 62
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    move-object v5, v1

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 70
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 71
    goto :goto_1

    .line 72
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    move-object v5, v1

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 73
    goto :goto_0
.end method

.method public static writeJSONString([BLjava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "array":[B
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 102
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 104
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 110
    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJSONString([CLjava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "array":[C
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 312
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 313
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 314
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "[\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 317
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 319
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 320
    move-object v3, v1

    const-string/jumbo v4, "\",\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 321
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 324
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "\"]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJSONString([DLjava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "array":[D
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 252
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 253
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 254
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 257
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 259
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 260
    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 261
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJSONString([FLjava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "array":[F
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 222
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 223
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 224
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 227
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 229
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 230
    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 231
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJSONString([ILjava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "array":[I
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 162
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 164
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 167
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 169
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 170
    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 171
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJSONString([JLjava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "array":[J
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 192
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 193
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 194
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 197
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 199
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 200
    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 201
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJSONString([Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "array":[Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 342
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 343
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 344
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 347
    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 349
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 350
    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 351
    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 354
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJSONString([SLjava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "array":[S
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 132
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 133
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 134
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 137
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    aget-short v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 140
    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-short v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJSONString([ZLjava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "array":[Z
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 282
    move-object v3, v1

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 283
    :cond_0
    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 284
    move-object v3, v1

    const-string/jumbo v4, "[]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 287
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 289
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 290
    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 291
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-boolean v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONArray;
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->toJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/JSONArray;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONArray;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/JSONArray;
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
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONArray;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString(Ljava/util/Collection;Ljava/io/Writer;)V

    .line 77
    return-void
.end method
