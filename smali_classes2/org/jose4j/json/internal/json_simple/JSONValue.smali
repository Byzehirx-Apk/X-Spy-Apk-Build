.class public Lorg/jose4j/json/internal/json_simple/JSONValue;
.super Ljava/lang/Object;
.source "JSONValue.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/JSONValue;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 260
    const/4 v2, 0x0

    move-object v0, v2

    .line 263
    .end local v0    # "s":Ljava/lang/String;
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 261
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 262
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 263
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method static escape(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 10

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move-object v1, p1

    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v7

    .line 272
    .local v2, "len":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_5

    .line 273
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    .line 274
    .local v4, "ch":C
    move v7, v4

    sparse-switch v7, :sswitch_data_0

    .line 298
    move v7, v4

    if-ltz v7, :cond_0

    move v7, v4

    const/16 v8, 0x1f

    if-le v7, v8, :cond_2

    :cond_0
    move v7, v4

    const/16 v8, 0x7f

    if-lt v7, v8, :cond_1

    move v7, v4

    const/16 v8, 0x9f

    if-le v7, v8, :cond_2

    :cond_1
    move v7, v4

    const/16 v8, 0x2000

    if-lt v7, v8, :cond_4

    move v7, v4

    const/16 v8, 0x20ff

    if-gt v7, v8, :cond_4

    .line 299
    :cond_2
    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 300
    .local v5, "ss":Ljava/lang/String;
    move-object v7, v1

    const-string/jumbo v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 301
    const/4 v7, 0x0

    move v6, v7

    .local v6, "k":I
    :goto_1
    move v7, v6

    const/4 v8, 0x4

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    rsub-int/lit8 v8, v9, 0x4

    if-ge v7, v8, :cond_3

    .line 302
    move-object v7, v1

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 301
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 276
    .end local v5    # "ss":Ljava/lang/String;
    .end local v6    # "k":I
    :sswitch_0
    move-object v7, v1

    const-string/jumbo v8, "\\\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 277
    .line 272
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :sswitch_1
    move-object v7, v1

    const-string/jumbo v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 280
    goto :goto_2

    .line 282
    :sswitch_2
    move-object v7, v1

    const-string/jumbo v8, "\\b"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 283
    goto :goto_2

    .line 285
    :sswitch_3
    move-object v7, v1

    const-string/jumbo v8, "\\f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 286
    goto :goto_2

    .line 288
    :sswitch_4
    move-object v7, v1

    const-string/jumbo v8, "\\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 289
    goto :goto_2

    .line 291
    :sswitch_5
    move-object v7, v1

    const-string/jumbo v8, "\\r"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 292
    goto :goto_2

    .line 294
    :sswitch_6
    move-object v7, v1

    const-string/jumbo v8, "\\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 295
    goto :goto_2

    .line 304
    .restart local v5    # "ss":Ljava/lang/String;
    .restart local v6    # "k":I
    :cond_3
    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 305
    goto :goto_2

    .line 307
    .end local v5    # "ss":Ljava/lang/String;
    .end local v6    # "k":I
    :cond_4
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_2

    .line 311
    .end local v4    # "ch":C
    :cond_5
    return-void

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "in":Ljava/io/Reader;
    :try_start_0
    new-instance v2, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;-><init>()V

    move-object v1, v2

    .line 47
    .local v1, "parser":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 50
    .end local v0    # "in":Ljava/io/Reader;
    .end local v1    # "parser":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :goto_0
    return-object v0

    .line 49
    .restart local v0    # "in":Ljava/io/Reader;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    new-instance v2, Ljava/io/StringReader;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 76
    .local v1, "in":Ljava/io/StringReader;
    move-object v2, v1

    invoke-static {v2}, Lorg/jose4j/json/internal/json_simple/JSONValue;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method

.method public static parseWithException(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "in":Ljava/io/Reader;
    new-instance v2, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;-><init>()V

    move-object v1, v2

    .line 98
    .local v1, "parser":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "in":Ljava/io/Reader;
    return-object v0
.end method

.method public static parseWithException(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    new-instance v2, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;-><init>()V

    move-object v1, v2

    .line 103
    .local v1, "parser":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    new-instance v3, Ljava/io/StringWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    .line 245
    .local v1, "writer":Ljava/io/StringWriter;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 246
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0

    .line 247
    .restart local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 249
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 122
    move-object v2, v1

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    .line 225
    :goto_0
    return-void

    .line 126
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 127
    move-object v2, v1

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 128
    move-object v2, v1

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    move-object v2, v1

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Double;

    if-eqz v2, :cond_4

    .line 134
    move-object v2, v0

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    :cond_2
    move-object v2, v1

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    :goto_1
    goto :goto_0

    .line 137
    :cond_3
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_4
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_7

    .line 142
    move-object v2, v0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    :cond_5
    move-object v2, v1

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    :goto_2
    goto :goto_0

    .line 145
    :cond_6
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_7
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    .line 150
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    goto :goto_0

    .line 154
    :cond_8
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    .line 155
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 156
    goto/16 :goto_0

    .line 159
    :cond_9
    move-object v2, v0

    instance-of v2, v2, Lorg/jose4j/json/internal/json_simple/JSONStreamAware;

    if-eqz v2, :cond_a

    .line 160
    move-object v2, v0

    check-cast v2, Lorg/jose4j/json/internal/json_simple/JSONStreamAware;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONStreamAware;->writeJSONString(Ljava/io/Writer;)V

    .line 161
    goto/16 :goto_0

    .line 164
    :cond_a
    move-object v2, v0

    instance-of v2, v2, Lorg/jose4j/json/internal/json_simple/JSONAware;

    if-eqz v2, :cond_b

    .line 165
    move-object v2, v1

    move-object v3, v0

    check-cast v3, Lorg/jose4j/json/internal/json_simple/JSONAware;

    invoke-interface {v3}, Lorg/jose4j/json/internal/json_simple/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 166
    goto/16 :goto_0

    .line 169
    :cond_b
    move-object v2, v0

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_c

    .line 170
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONObject;->writeJSONString(Ljava/util/Map;Ljava/io/Writer;)V

    .line 171
    goto/16 :goto_0

    .line 174
    :cond_c
    move-object v2, v0

    instance-of v2, v2, Ljava/util/Collection;

    if-eqz v2, :cond_d

    .line 175
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString(Ljava/util/Collection;Ljava/io/Writer;)V

    .line 176
    goto/16 :goto_0

    .line 179
    :cond_d
    move-object v2, v0

    instance-of v2, v2, [B

    if-eqz v2, :cond_e

    .line 180
    move-object v2, v0

    check-cast v2, [B

    check-cast v2, [B

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([BLjava/io/Writer;)V

    .line 181
    goto/16 :goto_0

    .line 184
    :cond_e
    move-object v2, v0

    instance-of v2, v2, [S

    if-eqz v2, :cond_f

    .line 185
    move-object v2, v0

    check-cast v2, [S

    check-cast v2, [S

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([SLjava/io/Writer;)V

    .line 186
    goto/16 :goto_0

    .line 189
    :cond_f
    move-object v2, v0

    instance-of v2, v2, [I

    if-eqz v2, :cond_10

    .line 190
    move-object v2, v0

    check-cast v2, [I

    check-cast v2, [I

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([ILjava/io/Writer;)V

    .line 191
    goto/16 :goto_0

    .line 194
    :cond_10
    move-object v2, v0

    instance-of v2, v2, [J

    if-eqz v2, :cond_11

    .line 195
    move-object v2, v0

    check-cast v2, [J

    check-cast v2, [J

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([JLjava/io/Writer;)V

    .line 196
    goto/16 :goto_0

    .line 199
    :cond_11
    move-object v2, v0

    instance-of v2, v2, [F

    if-eqz v2, :cond_12

    .line 200
    move-object v2, v0

    check-cast v2, [F

    check-cast v2, [F

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([FLjava/io/Writer;)V

    .line 201
    goto/16 :goto_0

    .line 204
    :cond_12
    move-object v2, v0

    instance-of v2, v2, [D

    if-eqz v2, :cond_13

    .line 205
    move-object v2, v0

    check-cast v2, [D

    check-cast v2, [D

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([DLjava/io/Writer;)V

    .line 206
    goto/16 :goto_0

    .line 209
    :cond_13
    move-object v2, v0

    instance-of v2, v2, [Z

    if-eqz v2, :cond_14

    .line 210
    move-object v2, v0

    check-cast v2, [Z

    check-cast v2, [Z

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([ZLjava/io/Writer;)V

    .line 211
    goto/16 :goto_0

    .line 214
    :cond_14
    move-object v2, v0

    instance-of v2, v2, [C

    if-eqz v2, :cond_15

    .line 215
    move-object v2, v0

    check-cast v2, [C

    check-cast v2, [C

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([CLjava/io/Writer;)V

    .line 216
    goto/16 :goto_0

    .line 219
    :cond_15
    move-object v2, v0

    instance-of v2, v2, [Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 220
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([Ljava/lang/Object;Ljava/io/Writer;)V

    .line 221
    goto/16 :goto_0

    .line 224
    :cond_16
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 225
    goto/16 :goto_0
.end method
